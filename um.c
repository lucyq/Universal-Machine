#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <sys/stat.h>

#include "seq.h"
#include "assert.h"

#include "bitpack.h"

enum opcodes {CONDMOVE = 0, SEGLOAD, SEGSTORE, ADD, MULTI, DIVIDE,
              NAND, HALT, MAPSEG, UNMAPSEG, OUT, IN, LOADPROG, LOADVAL};

typedef uint32_t Um_instruction;
typedef uint32_t Um_segmentID;
                  
/* * * * * * * * * * * * * * * * * * * * * * * * * *
 *   S T R U C T U R E   D E C L A R A T I O N S   *
 * * * * * * * * * * * * * * * * * * * * * * * * * */              
typedef struct SegArr {
        int len;
        uint32_t *arr;
} *SegArr;


typedef struct Memory {
        Seq_T segments;
        Seq_T unused_ids;
        SegArr seg_zero;
        int num_indices;
} *Memory;
              

/* * * * * * * * * * * * * * * * * * * * * * * * *
 *   F U N C T I O N   D E C L A R A T I O N S   *
 * * * * * * * * * * * * * * * * * * * * * * * * */

static void read_file(int argc, char *argv[], Memory mem);

static int decode(uint32_t codeword, uint32_t registers[],
                        Memory mem, uint32_t *program_counter);                                  


/*
 * - - - I N S T R U C T I O N S - - - *
 */
static inline void cond_move(unsigned ra, unsigned rb, 
                             unsigned rc, uint32_t registers[])
{       
        if ( registers[rc] != 0 ) {
                registers[ra] = registers[rb];
        }       
}

static inline void addition(unsigned ra, unsigned rb, unsigned  rc, 
                            uint32_t registers[])
{
        registers[ra] = (registers[rb] + registers[rc]);
        
}

static inline void multiply(unsigned ra, unsigned rb, 
                            unsigned rc, uint32_t registers[])
{
        registers[ra] = (registers[rb] * registers[rc]);
        
}

static inline void nand(unsigned ra, unsigned rb, 
                        unsigned rc, uint32_t registers[])
{
        registers[ra] = ~(registers[rb] & registers[rc]); 
}

static inline void division(unsigned ra, unsigned rb, 
                            unsigned rc, uint32_t registers[])
{
        registers[ra] = registers[rb] / registers[rc];
}

static inline void load_value(unsigned ra, uint32_t value, 
                              uint32_t registers[])
{
        registers[ra] = value; 
}

static inline void input(unsigned rc, uint32_t registers[])
{
        uint32_t input_value = fgetc(stdin);
        
        if ( input_value == (unsigned)EOF ) {
                input_value = 0;
                input_value = ~input_value;

        }
        registers[rc] = input_value;
}

static inline void output(unsigned rc, uint32_t registers[]) 
{    
        fputc(registers[rc], stdout);
}

/*
 * - - - M E M O R Y - - - *
 */
//static void copy_segment(SegArr copied_segment, SegArr segment_zero);
static void addSequenceIndices(Memory mem, Um_segmentID nextID);
static Memory initialize_memory();

static Memory initialize_memory() {
        
        Memory mem = malloc(sizeof(*mem)); 
        mem->num_indices = 100;
        mem->segments = Seq_new(mem->num_indices);        
        mem->unused_ids = Seq_new(mem->num_indices);
        
        
        addSequenceIndices(mem, 0);
        
        return mem; 
}

void initialize_segzero(FILE *file_ptr, Memory mem, int totalwords) {
        SegArr seg_zero = malloc(sizeof(*seg_zero));
        seg_zero->arr = malloc(totalwords * sizeof(uint32_t));
        seg_zero->len = totalwords;
                
        uint32_t instruct = 0;
        uint32_t instruct_byte;
        int instruction_count = 0;
        unsigned lsb = 32;
        
        while((instruct_byte = getc(file_ptr)) != (unsigned)EOF) {
           
                lsb = lsb - 8;
                instruct = Bitpack_newu(instruct, 8, lsb, instruct_byte);
                
                if (lsb == 0) {
                        seg_zero->arr[instruction_count] = instruct;
                        instruction_count++;
                        lsb = 32;
                }
        }
        Seq_put(mem->segments, 0, seg_zero);
        Seq_remlo(mem->unused_ids);
        mem->seg_zero = seg_zero;
      
        fclose(file_ptr);
}

/* Adds additional sequences once unused_id and segment sequences 
 * have been filled 
 */
void addSequenceIndices(Memory mem, Um_segmentID nextID) {

        int i;
        for ( i = 0; i < mem->num_indices; i++ ) {
                Seq_addhi(mem->segments, NULL);
        }
        
        for ( i = 0; i < mem->num_indices; i++ ) {       
                Seq_addhi(mem->unused_ids, (void *)(uintptr_t)nextID);
                nextID++;
        }
        mem->num_indices = mem->num_indices * 2;
}

static void segmented_load(unsigned ra, unsigned rb, unsigned rc, 
                           uint32_t registers[], Memory mem); 

/* Access segmented memory at segment b offset c and loads into register a*/
static void segmented_load(unsigned ra, unsigned rb, unsigned rc, 
                           uint32_t registers[], Memory mem) 
{        
        SegArr segment = Seq_get(mem->segments, registers[rb]);       

        int index = registers[rc];
        registers[ra] = segment->arr[index];
        
}
static void segmented_store(unsigned ra, unsigned rb, unsigned rc, 
                            uint32_t registers[], Memory mem);

/* Stores value at register c into segmented memory */
static void segmented_store(unsigned ra, unsigned rb, unsigned rc, 
                            uint32_t registers[], Memory mem)
{               
        SegArr segment = Seq_get(mem->segments, registers[ra]);
 
        segment->arr[registers[rb]] = registers[rc];
}

/* Creates a new segment with a number of words equal to the value in register 
 * a
 */
static void map_segment(unsigned rb, unsigned rc, 
                        uint32_t registers[], Memory mem);


static void map_segment(unsigned rb, unsigned rc, 
                        uint32_t registers[], Memory mem)
{       
        SegArr new_segment = malloc(sizeof(*new_segment));
        new_segment->len = registers[rc];
        
        new_segment->arr = calloc(registers[rc], sizeof(uint32_t));
              
        if (Seq_length(mem->unused_ids) == 1) {
                Um_segmentID nextID = Seq_length(mem->segments);
                addSequenceIndices(mem, nextID);
        }       
        Um_segmentID curr_ID = (Um_segmentID)(uintptr_t)Seq_remlo(mem->unused_ids);
      
        Seq_put(mem->segments, curr_ID, new_segment);
        
        registers[rb] = curr_ID;
}


/* Frees segmented memory associated with segID at register ra, then stores 
 * segID for later use 
 */
static void unmap_segment(unsigned rc, uint32_t registers[], Memory mem);

static void unmap_segment(unsigned rc, uint32_t registers[], Memory mem)
{       
        SegArr removed_segment = (SegArr)Seq_get(mem->segments, 
                                                 registers[rc]);

        free(removed_segment);
        
        Seq_put(mem->segments, registers[rc], NULL);

        Seq_addlo(mem->unused_ids, (void *)(uintptr_t)registers[rc]);        
}

/* Segmented memory associated with segID at register ra is duplicated and
 * stored into segment zero 
 */
static void load_program(unsigned rb, unsigned rc, uint32_t registers[], 
                        Memory mem, uint32_t *program_counter);


static void load_program(unsigned rb, unsigned rc, uint32_t registers[], 
                        Memory mem, uint32_t *program_counter)
{                
        *program_counter = registers[rc];
        
        if ( registers[rb] == 0 ) {
                return;
        }
        
        SegArr copied_segment = (Seq_get(mem->segments, registers[rb]));
        
        SegArr segment_zero = (Seq_get(mem->segments, 0));
    
        if (segment_zero != NULL) {
                free(segment_zero);
        }
        segment_zero = malloc(sizeof(*segment_zero));
        segment_zero->len = copied_segment->len;
        
        for (int i = 0; i < segment_zero->len; i++ ) {
                segment_zero[i] = copied_segment[i];
        }
       
}

static void free_memory(Memory mem);
static void free_memory(Memory mem) {
        

        int i;
        
        for (i = 0; i < Seq_length(mem->segments); i++) {
                if (Seq_get(mem->segments, i) != NULL) {
                        SegArr segment = Seq_get(mem->segments, i); 
                        free(segment->arr);
                        free(segment);
                }
        }

        Seq_free(&(mem->segments));
        Seq_free(&(mem->unused_ids));
        
        free(mem);
}




/* * * * * * * * * * * * * * * * * * 
 *   I M P L E M E N T A T I O N   *
 * * * * * * * * * * * * * * * * * */

int main(int argc, char *argv[]) 
{
        /* initialize segmented memory */
        Memory mem = initialize_memory();        
        
        /* create registers */
        uint32_t registers[8] = {0, 0, 0, 0, 0, 0, 0, 0};  
       
        /* initialize program counter */
        uint32_t pc_value = 0;
        uint32_t *program_counter = &pc_value;
        
        read_file(argc, argv, mem);

        /* load in 32-bit instructions */
        Um_instruction codeword = mem->seg_zero->arr[*program_counter]; 
 
        int opcode;
        opcode = decode(codeword, registers, mem, program_counter);
        
        while ( opcode != HALT ) {
                codeword = mem->seg_zero->arr[*program_counter];                  

                opcode = decode(codeword, registers, mem, program_counter);
        }   
        
        free_memory(mem);
   
}

static void read_file(int argc, char *argv[], Memory mem) 
{
        if (argc != 2) {
                fprintf(stderr, "Error: please specify one file\n");
                exit(EXIT_FAILURE);
                free_memory(mem);
        }

        FILE *file_ptr = fopen(argv[1], "r");

        struct stat file_stats;

        if(stat(argv[1], &file_stats) == -1) {
                fprintf(stderr, "Error within file\n");
                exit(EXIT_FAILURE);
                fclose(file_ptr);
                free_memory(mem);
        }
        
        if (file_stats.st_size % 4 != 0) {
                fprintf(stderr, "Error: File does not contain ");
                fprintf(stderr, "correctly formatted instruction\n");
                exit(EXIT_FAILURE);
                fclose(file_ptr);
                free_memory(mem);
                
        }
        int totalwords = file_stats.st_size / 4;
        
        initialize_segzero(file_ptr, mem, totalwords);
        
        
}


static int decode(uint32_t codeword, uint32_t registers[],
                        Memory mem, uint32_t *program_counter)                           
{
        uint32_t op_mask = 4026531840;
	uint32_t ra_mask = 448;
	uint32_t rb_mask = 56;
	uint32_t rc_mask = 7;
	uint32_t opcode = ((codeword & op_mask) >> 28);

        uint32_t ra = ((codeword & ra_mask) >> 6);
        uint32_t rb = ((codeword & rb_mask) >> 3); 
        uint32_t rc = (codeword & rc_mask); 
    
        switch (opcode) {
                case 0:
                        cond_move(ra, rb, rc, 
                                  registers);
                        break;
                case 1:
                        segmented_load(ra, rb, rc,
                                       registers, mem);
                        break;
                case 2: 
                        segmented_store(ra, rb, rc,
                                        registers, mem);
                        break;
                case 3:
                        addition(ra, rb, rc, 
                                 registers);
                        break;
                case 4:
                        multiply(ra, rb, rc, 
                                 registers);
                        break;
                case 5: 
                        division(ra, rb, rc,
                                 registers);
                        break;
                case 6: 
                        nand(ra, rb, rc, registers);
                        break;
                case 7: 
                        return opcode;
                case 8: 
                        map_segment(rb, rc, registers, mem);
                        break;
                case 9: 
                        unmap_segment(rc, registers, mem);
                        break;
                case 10: 
                        output(rc, registers);
                        break;
                case 11: 
                        input(rc, registers);
                        break;
                case 12: 
                        load_program(rb, rc, registers, 
                                     mem, program_counter); 
                        break;
                case 13: 
                        ra_mask = 234881024;
                        uint32_t ra = ((codeword & ra_mask) >> 25);
                        uint32_t val_mask = 33554431;
                        uint32_t value = (codeword & val_mask);
                        load_value(ra, value, registers);
                        break;
        }
        if (opcode != 12) {
                *program_counter = *program_counter + 1;
        
        } 
        return opcode;
                
}