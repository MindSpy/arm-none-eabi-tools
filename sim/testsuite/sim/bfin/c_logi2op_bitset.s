//Original:/testcases/core/c_logi2op_bitset/c_logi2op_bitset.dsp
// Spec Reference: Logi2op
# mach: bfin

.include "testutils.inc"
	start



imm32 r0, 0x00000000;
imm32 r1, 0x00000000;
imm32 r2, 0x00000000;
imm32 r3, 0x00000000;
imm32 r4, 0x00000000;
imm32 r5, 0x00000000;
imm32 r6, 0x00000000;
imm32 r7, 0x00000000;

// bit set
BITSET( R0 , 0 ); /* r0 = 0x00000001 */
BITSET( R1 , 1 ); /* r1 = 0x00000002 */
BITSET( R2 , 2 ); /* r2 = 0x00000004 */
BITSET( R3 , 3 ); /* r3 = 0x00000008 */
BITSET( R4 , 4 ); /* r4 = 0x00000010 */
BITSET( R5 , 5 ); /* r5 = 0x00000020 */
BITSET( R6 , 6 ); /* r6 = 0x00000040 */
BITSET( R7 , 7 ); /* r7 = 0x00000080 */
CHECKREG r0, 0x00000001;
CHECKREG r1, 0x00000002;
CHECKREG r2, 0x00000004;
CHECKREG r3, 0x00000008;
CHECKREG r4, 0x00000010;
CHECKREG r5, 0x00000020;
CHECKREG r6, 0x00000040;
CHECKREG r7, 0x00000080;

// bit set
BITSET( R0 , 8 ); /* r0 = 0x00000100 */
BITSET( R1 , 9 ); /* r1 = 0x00000200 */
BITSET( R2 , 10 ); /* r2 = 0x00000400 */
BITSET( R3 , 11 ); /* r3 = 0x00000800 */
BITSET( R4 , 12 ); /* r4 = 0x00001000 */
BITSET( R5 , 13 ); /* r5 = 0x00002000 */
BITSET( R6 , 14 ); /* r6 = 0x00004000 */
BITSET( R7 , 15 ); /* r7 = 0x00008000 */
CHECKREG r0, 0x00000101;
CHECKREG r1, 0x00000202;
CHECKREG r2, 0x00000404;
CHECKREG r3, 0x00000808;
CHECKREG r4, 0x00001010;
CHECKREG r5, 0x00002020;
CHECKREG r6, 0x00004040;
CHECKREG r7, 0x00008080;

// bit set
BITSET( R0 , 16 ); /* r0 = 0x00000100 */
BITSET( R1 , 17 ); /* r1 = 0x00000200 */
BITSET( R2 , 18 ); /* r2 = 0x00000400 */
BITSET( R3 , 19 ); /* r3 = 0x00000800 */
BITSET( R4 , 20 ); /* r4 = 0x00001000 */
BITSET( R5 , 21 ); /* r5 = 0x00002000 */
BITSET( R6 , 22 ); /* r6 = 0x00004000 */
BITSET( R7 , 23 ); /* r7 = 0x00008000 */
CHECKREG r0, 0x00010101;
CHECKREG r1, 0x00020202;
CHECKREG r2, 0x00040404;
CHECKREG r3, 0x00080808;
CHECKREG r4, 0x00101010;
CHECKREG r5, 0x00202020;
CHECKREG r6, 0x00404040;
CHECKREG r7, 0x00808080;

// bit set
BITSET( R0 , 24 ); /* r0 = 0x00000100 */
BITSET( R1 , 25 ); /* r1 = 0x00000200 */
BITSET( R2 , 26 ); /* r2 = 0x00000400 */
BITSET( R3 , 27 ); /* r3 = 0x00000800 */
BITSET( R4 , 28 ); /* r4 = 0x00001000 */
BITSET( R5 , 29 ); /* r5 = 0x00002000 */
BITSET( R6 , 30 ); /* r6 = 0x00004000 */
BITSET( R7 , 31 ); /* r7 = 0x00008000 */
CHECKREG r0, 0x01010101;
CHECKREG r1, 0x02020202;
CHECKREG r2, 0x04040404;
CHECKREG r3, 0x08080808;
CHECKREG r4, 0x10101010;
CHECKREG r5, 0x20202020;
CHECKREG r6, 0x40404040;
CHECKREG r7, 0x80808080;


pass
