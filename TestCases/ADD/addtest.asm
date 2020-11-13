# This test file is designed to test the Logisim MIPS
# implementation for Spencer Little and James Northup's
# submission for project 1. This test file contains
# tests for add.
# TCSS 372 - 11/11/2020

.text

# add test
# result state t1 = 3
lw  $t0, 0($at)			# t0 = 1
lw  $t1, 4($at)			# t1 = 2

add $t1, $t0, $t1 		# t0 + t1 = 1 + 2 = 3
add $t1, $t1, $t2		# t1 + t2 = 3 + 0 = 3



.data

.word 	1
.word	2
