# hello.asm-- A "Hello World" program.
# Registers used:
# $v0 - syscall parameter and return value.
# $a0 - syscall parameter-- the string to print.


.text
main:
la $a0, hello_msg 		# load the addr of hello_msg into $a0.
li $v0, 4			# 4 is the print_string syscall.
syscall				# do the syscall.
li $v0, 10			# 10 is the exit syscall.
syscall				# do the syscall.

# Data for the program:
.data
hello_msg: .ascii "Hello"	# The word "Hello"
           .ascii " " 		# the space.
           .ascii "All" 	# The word "World"
           .ascii "\n"		# A newline.
           