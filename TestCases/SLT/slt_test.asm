# This test file is designed to test the Logisim MIPS
# implementation for Spencer Little and James Northup's
# submission for project 1. This test file contains
# tests for slt.
# TCSS 372 - 11/11/2020

.text

lw 	$t5, 0($at)			# t5 = 5
lw	$t6, 4($at)			# t6 = 6

# slt test
# result state t0 = 1, t1 = 0
slt	$t0, $t5, $t6		# t0 = t5 < t6 ? 1 : 0
slt	$t1, $t6, $t5		# t1 = t6 < t5 ? 1 : 0

.data 

.word 	5
.word	6