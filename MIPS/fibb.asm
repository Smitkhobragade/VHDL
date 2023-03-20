fibonacci:

  move $t1, $0
  move $t2, $sp
  li $t3, 1
    addi $sp, $sp, -4           # push initial $t0 on stack
  sw $t0, 0($sp)

  recursive_call:
    beq $sp, $t2, fib_exit       # if stack is empty, exit

    lw $t4, 0($sp)               # pop next $t4 off stack
    addi $sp, $sp, 4

    bleu $t4, $t3, early_return

      sub $t4, $t4, 1            # push $t4 - 1 on stack
      addi $sp, $sp, -4
      sw $t4, 0($sp)

      sub $t4, $t4, 1            # push $t4 - 2 on stack
      addi $sp, $sp, -4
      sw $t4, 0($sp)

      j recursive_call

    early_return:

      add $t1, $t1, $t4
      j recursive_call

  fib_exit:
jr $31