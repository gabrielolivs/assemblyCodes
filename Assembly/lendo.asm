#lendo um inteiro e imprimindo-o

.data

.text

addi $v0,$zero,5
syscall

move $s7,$v0

li $v0,1
move $a0,$s7
syscall 

addi $v0,$zero,10
syscall
