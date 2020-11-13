# This test file is designed to test the Logisim MIPS
# implementation for Spencer Little and James Northup's
# submission for project 1. This test file contains
# tests for sub.
# TCSS 372 - 11/11/2020

.text

# sub test
# result state t6 = 6, t7 = 15
lw	$t0, 0($at)		# t0 = 1
lw	$t1, 4($at)		# t1 = 6
lw	$t5, 8($at)		# t5 = 10
add 	$t1, $t1, $t5		# t1 = 6 + 10

sub 	$t6, $t1, $t5		# t6 = 16 - 10
sub 	$t7, $t1, $t0		# t7 = 16 - 1

.data 

.word 	1
.word	6
.word 	10

