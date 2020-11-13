# This test file is designed to test the Logisim MIPS
# implementation for Spencer Little and James Northup's
# submission for project 1. This test file contains
# tests for sw.
# TCSS 372 - 11/11/2020

.text
	lw $t0, 0($at)		# t0 = 1
	lw $t3, 4($at)		# t3 = 10
# beq test
# result state 68($a0) = 10
loop:	slt $t4, $t3, $t0	# t4 = 1 if t3 < t0
	beq $t4, $t0, done	# if t4 = t0 = 1 finish
	sub $t3, $t3, $t0 	# subtract one from t3
	add $t5, $t5, $t0	# increment t5
	beq $t0, $t0, loop 
done:
	sw $t5, 68($at)


.data 

.word   1
.word 	10
