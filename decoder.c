/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 *                                                                   *
 *                            decoder                                *
 *                                                                   *
 *                File: decoder.c                                    *
 *             Authors: Andrew Burgos and Lucy Qin                   *
 *       Date Modified: November 13, 2014                            *
 *             Purpose: Decodes 32-bit UM instructions by            *
 *                      extracting the opcode and relevant           *
 *                      information about the registers based on     *
 *                      the opcode                                   *
 *                                                                   *
 *                                                                   *
 *                                                                   *
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */


#include "decoder.h"

//static void store_regs(uint32_t codeword, instruction decoded);
//static void store_three_regs(uint32_t codeword, instruction decoded);
//static void check_registers(instruction decoded, unsigned used_registers);


/* 
 * Extracts the opcode from the 32-bit UM instruction and calls the 
 * appropriate functions to store information about the registers 
 */



/* 
 * Checks that values stored are valid and that the registers accessed exist. 
 * Checks are completed based on the number of registers used by a UM
 * instruction

static void check_registers(instruction decoded, unsigned used_registers) 
{
        assert(decoded->rc <= 7);
        if ( used_registers == 1 ) {
                return;
        }
        
        assert(decoded->rb <= 7);
        if ( used_registers == 2 ) {
                return;
        }
        assert(decoded->ra <= 7);

}
 */