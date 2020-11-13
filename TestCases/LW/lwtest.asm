# This test file is designed to test the Logisim MIPS
# implementation for Spencer Little and James Northup's
# submission for project 1. This test file contains
# tests for lw.
# TCSS 372 - 11/11/2020

.text

# lw test
# result state: t0 = 1, t1 = 2, t2 = 3
lw 	$t0, 0($at)		# t0 = 1
lw	$t1, 4($at)		# t1 = 2
lw	$t2, 8($at)		# t2 = 3



.data

.word 	1
.word	2
.word	3
