/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 *                                                                   *
 *                            decoder                                *
 *                                                                   *
 *                File: decoder.h                                    *
 *             Authors: Andrew Burgos and Lucy Qin                   *
 *       Date Modified: November 13, 2014                            *
 *             Purpose: Header for decoder module, which decodes     *
 *                      32-bit UM instructions by                    *
 *                      extracting the opcode and relevant           *
 *                      information about the registers based on     *
 *                      the opcode                                   *
 *                                                                   *
 *                                                                   *
 *                                                                   *
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */


#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include "assert.h"
#include "bitpack.h"

//extern void decode(uint32_t codeword, instruction decoded);