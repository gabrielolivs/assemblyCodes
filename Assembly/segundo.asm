# imprimindo um inteiro
.data 



.text
addi $s0,$zero,50

li $v0,1
add $a0,$s0,$zero
syscall

addi $v0,$zero,10
syscall
