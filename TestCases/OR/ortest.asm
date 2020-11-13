# This test file is designed to test the Logisim MIPS
# implementation for Spencer Little and James Northup's
# submission for project 1. This test file contains
# tests for or.
# TCSS 372 - 11/11/2020

.text

lw 	$t5, 0($at)		# t5 = 10
lw  	$t6, 4($at)		# t6 = 6
lw	$t7, 8($at)		# t7 = 15

# or test
# result state t5 = 14, t6 = 15
or	$t5, $t5, $t6		# t5 = 10 | 6 = 14
or	$t6, $t4, $t7		# t6 = 0 | 15 = 15


.data 

.word 	10
.word   6
.word	15