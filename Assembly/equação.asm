#resolva a equação a = 42  b = 56  c = 60   (a * b) + c / c + b
.data

.text
 # a = $s0        b = $s1         c = $s2
 addi $s0,$zero,2
 addi $s1,$zero,6
 addi $s2,$zero,1
 
 # multiplicação a*b | $s0 * $s1
 
 move $t0,$zero # i = 0
 
FOR:    slt $t2,$t0,$s1 # se i >= n == 0 se V || i >= n ==1 se F
	beq $t2,$zero,EXIT #compara se t2 != zero
	
	add $t7,$t7,$s0 #soma sucessiva
	
	addi $t0,$t0,1 # i = i + 1
	j FOR
EXIT : #printa o valor da multiplicação da conta
        li $v0,1
        move $a0,$t7 #resultado se encontra no registrador $s7
        syscall

add $t4,$t7,$s2 # (a*b) + c
add $t8,$s2,$zero # c

div $t4,$t8 #execulta a divisão
mflo $s5 # insere no registrador lo o resultado

li $v0,1
move $a0,$s5
syscall

addi $v0,$zero,10
syscall
 