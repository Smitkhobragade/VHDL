main:
 li $t1, 1
 li $t2, 1
 li $t3, 20
 li $t4, 1
 
loop:
 beq $t2, $t3, end
 move $a0, $t4
 li $v0, 1
 syscall
 add $t4, $t4, $t2
 add $t2, $t2, $t1
 li $a0, 32
 li $v0, 11
 syscall

 j loop

end:

 li $v0, 10
 syscall