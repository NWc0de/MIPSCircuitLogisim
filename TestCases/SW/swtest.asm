# This test file is designed to test the Logisim MIPS
# implementation for Spencer Little and James Northup's
# submission for project 1. This test file contains
# tests for sw.
# TCSS 372 - 11/11/2020

.text

# sw test
# result state 64($a0) = 10
lw 	$t3, 0($at)		# t3 = 10
sw	$t3, 64($at)		# store t3



.data

.word 	10
