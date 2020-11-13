# This test file is designed to test the Logisim MIPS
# implementation for Spencer Little and James Northup's
# submission for project 1. This test file contains
# tests for all operations for the sake of convenience.
# indiviudal test files are also available.
# TCSS 372 - 11/11/2020

.text

# lw test
# result state: t0 = 1, t1 = 2, t2 = 3
lw 	$t0, 0($at)		# t0 = 1
lw	$t1, 4($at)		# t1 = 2
add	$t2, $t0, $t1		# t2 = 2

# sw test
# result state 64($a0) = 10
lw 	$t3, 8($at)		# t3 = 10
sw	$t3, 64($at)		# store t3

# beq test
# result state 68($a0) = 10
loop:	slt $t4, $t3, $t0	# t4 = 1 if t3 < t0
	beq $t4, $t0, done	# if t4 = t0 = 1 finish
	sub $t3, $t3, $t0 	# subtract one from t3
	add $t5, $t5, $t0	# increment t5
	beq $t0, $t0, loop 
done:
	sw $t5, 68($at)
	
# add test
# result state t1 = 6
add $t1, $t0, $t1 		# t0 + t1 = 1 + 2 = 3
add $t1, $t1, $t2		# t1 + t2 = 3 + 3 = 6

# sub test
# result state t6 = 6, t7 = 15
add $t1, $t1, $t5		# t1 = 6 + 10
sub $t6, $t1, $t5		# t6 = 16 - 10
sub $t7, $t1, $t0		# t7 = 16 - 1

# and test 
# result state t4 = 0, t5 = 10
lw 	$t3, 8($at)		# t3 = 10
lw	$t4, 12($at)		# t4 = 16
and	$t4, $t4, $t3		# t4 = 10 & 16 = 0
and	$t5, $t7, $t3		# t5 = 10 & 15 = 10

# or test
# result state t5 = 14, t6 = 15
or	$t5, $t5, $t6		# t5 = 10 | 6 = 14
or	$t6, $t4, $t7		# t6 = 0 | 15 = 15

# slt test
# result state t0 = 1, t1 = 0
slt	$t0, $t5, $t6		# t0 = t5 < t6 ? 1 : 0
slt	$t1, $t6, $t5		# t1 = t6 < t5 ? 1 : 0






.data 

.word 	1
.word	2
.word	10
.word	16 
