main:
 li $t1, 10
 li $t2, 20
 li $t3, 30
 bgt $t1, $t2, l1
 bgt $t2, $t3, l3
 #largest = t3
 move $a0, $t3
 j end
l1:
 bgt $t1, $t3, l2
 #largest = t1
 move $a0, $t1
 j end
l2:
 #largest = t3
 move $a0, $t3
 j end
 
l3:
 #largest = t2
 move $a0, $t2
 j end
end:
 li $v0, 1
 syscall
 li $v0, 10
 syscall