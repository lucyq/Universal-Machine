#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <sys/stat.h>

#include "seq.h"
#include "assert.h"
#include "uarray.h"
#include "bitpack.h"

enum opcodes {CONDMOVE = 0, SEGLOAD, SEGSTORE, ADD, MULTI, DIVIDE,
              NAND, HALT, MAPSEG, UNMAPSEG, OUT, IN, LOADPROG, LOADVAL};

typedef uint32_t Um_instruction;
typedef uint32_t *word;
typedef uint32_t Um_segmentID;
                  
/* * * * * * * * * * * * * * * * * * * * * * * * * *
 *   S T R U C T U R E   D E C L A R A T I O N S   *
 * * * * * * * * * * * * * * * * * * * * * * * * * */              

typedef struct Memory {
        Seq_T segments;
        Seq_T unused_ids;
        UArray_T seg_zero;
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

static void initialize_segment(UArray_T segment); 
static UArray_T copy_segment(UArray_T copied_segment, UArray_T segment_zero);
static void addSequenceIndices(Memory mem, Um_segmentID nextID);

static inline Memory initialize_memory() {
        
        Memory mem = malloc(sizeof(*mem)); 
        mem->segments = Seq_new(mem->num_indices);        
        mem->unused_ids = Seq_new(mem->num_indices);
        
        mem->num_indices = 100;
        
        addSequenceIndices(mem, 0);
        
        return mem; 
}

void initialize_segzero(FILE *file_ptr, Memory mem, int totalwords) {
        UArray_T seg_zero = UArray_new(totalwords, sizeof(uint32_t));
        
        uint32_t instruct = 0;
        uint32_t instruct_byte;
        int instruction_count = 0;
        unsigned lsb = 32;
        
        while((instruct_byte = getc(file_ptr)) != (unsigned)EOF) {
           
                lsb = lsb - 8;
                instruct = Bitpack_newu(instruct, 8, lsb, instruct_byte);
                
                if (lsb == 0) {
                        *(uint32_t *) UArray_at(seg_zero, instruction_count) = instruct;
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


/* Access segmented memory at segment b offset c and loads into register a*/
static inline void segmented_load(unsigned ra, unsigned rb, unsigned rc, 
                           uint32_t registers[], Memory mem) 
{        
        UArray_T segment = Seq_get(mem->segments, registers[rb]);       

        word value = UArray_at(segment, registers[rc]);
        
        registers[ra] = *value;    
}

/* Stores value at register c into segmented memory */
static inline void segmented_store(unsigned ra, unsigned rb, unsigned rc, 
                            uint32_t registers[], Memory mem)
{               
        UArray_T segment = Seq_get(mem->segments, registers[ra]);
 
        word value = UArray_at(segment, registers[rb]);
        
        *value = registers[rc];  
}

/* Creates a new segment with a number of words equal to the value in register 
 * a
 */
static inline void map_segment(unsigned rb, unsigned rc, 
                        uint32_t registers[], Memory mem)
{
        uint32_t seg_length = registers[rc];
        Um_segmentID curr_ID;
    
        UArray_T new_segment = UArray_new(seg_length, sizeof(uint32_t));
   
        if (Seq_length(mem->unused_ids) == 1) {
                Um_segmentID nextID = Seq_length(mem->segments);
                addSequenceIndices(mem, nextID);
        }       
        curr_ID = (Um_segmentID)(uintptr_t)Seq_remlo(mem->unused_ids);
        
        initialize_segment(new_segment);
     
        Seq_put(mem->segments, curr_ID, new_segment);
      
               
        
        registers[rb] = curr_ID;
}

/* initializes segment to hold words containing 0 */
static void initialize_segment(UArray_T segment) 
{
        uint32_t i;
        for ( i = 0; i < (uint32_t)UArray_length(segment); i++ ) {
                word value = UArray_at(segment, i);
                *value = 0;      
        }
}

/* Frees segmented memory associated with segID at register ra, then stores 
 * segID for later use 
 */
static inline void unmap_segment(unsigned rc, uint32_t registers[], Memory mem)
{       
        UArray_T removed_segment = (UArray_T)Seq_get(mem->segments, 
                                                     registers[rc]);

        UArray_free(&removed_segment);
        
        Seq_put(mem->segments, registers[rc], NULL);

        Seq_addlo(mem->unused_ids, (void *)(uintptr_t)registers[rc]);        
}

/* Segmented memory associated with segID at register ra is duplicated and
 * stored into segment zero 
 */
static inline void load_program(unsigned rb, unsigned rc, uint32_t registers[], 
                        Memory mem, uint32_t *program_counter)
{                
        *program_counter = registers[rc];
        
        if ( registers[rb] == 0 ) {
                return;
        }
        
        UArray_T copied_segment = (Seq_get(mem->segments, registers[rb]));
        
        UArray_T segment_zero = (Seq_get(mem->segments, 0));
    
        if ( segment_zero != NULL ) {
                UArray_free(&segment_zero);
        }
        
        segment_zero = copy_segment(copied_segment, segment_zero);
        
}

/* Copies the value of one segment into segment zero */
static UArray_T copy_segment(UArray_T copied_segment, UArray_T segment_zero)
{
        int i;
        int segment_length = UArray_length(copied_segment);
        
        segment_zero = UArray_new(segment_length, UArray_size(copied_segment));
        
        for ( i = 0; i < segment_length; i++ ) {
                word value = *((word*)UArray_at(copied_segment, i));
               
                word *duplicate_value = (word *)UArray_at(segment_zero, i);
                *duplicate_value = value;
        }
        return segment_zero;
}

static inline void free_memory(Memory mem) {
        

        int i;
        
        for (i = 0; i < Seq_length(mem->segments); i++) {
                if (Seq_get(mem->segments, i) != NULL) {
                        UArray_T segment = Seq_get(mem->segments, i); 
                        UArray_free(&segment);
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
        
        Um_instruction codeword = *((Um_instruction*) UArray_at(mem->seg_zero, 
                                                             *program_counter));  
        int opcode;
        opcode = decode(codeword, registers, mem, program_counter);
        
        while ( opcode != HALT ) {
                codeword = *((Um_instruction*) UArray_at(mem->seg_zero, 
                                                             *program_counter));                       

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

        uint32_t ra = 0;
        uint32_t rb = 0;
        uint32_t rc = 0;
       
        if(opcode < 7) {
		ra = ((codeword & ra_mask) >> 6);
		rb = ((codeword & rb_mask) >> 3);
		rc = (codeword & rc_mask);
        }
        else if(opcode == 8 || opcode == 12) {
		rb = ((codeword & rb_mask) >> 3);
		rc = (codeword & rc_mask);
        } else if (opcode != 7) {
  		rc = (codeword & rc_mask);
        }
                
        switch ( opcode ) {
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