# This test file is designed to test the Logisim MIPS
# implementation for Spencer Little and James Northup's
# submission for project 1. This test file contains
# tests for and.
# TCSS 372 - 11/11/2020

.text

# and test 
# result state t4 = 0, t5 = 10
lw  	$t3, 0($at)		# t3 = 10
lw  	$t4, 4($at)		# t4 = 16
lw	$t7, 8($at)		# t7 = 15
and	$t4, $t4, $t3		# t4 = 10 & 16 = 0
and	$t5, $t7, $t3		# t5 = 10 & 15 = 10

.data 

.word 	10
.word	16
.word 	15