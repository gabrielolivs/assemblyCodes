#exercício utilizando divisão com subrotinas

.data 

.text

#leitura do primeiro dado
addi $v0,$zero,5
syscall
move $s0,$v0

#lendo segundo dado
addi $v0,$zero,5
syscall
move $s1,$v0

div $s0,$s1
mflo $s7

li $v0,1
move $a0,$s7
syscall

addi $v0,$zero,10
syscall