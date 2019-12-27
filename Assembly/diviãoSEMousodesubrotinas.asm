# dividindo dois inteiro na mão (sem uso de rotinas)
.data 


.text
# registradores utilizados $s0,$s2,
	#lendo primeiro numero do teclado
	addi $v0,$zero,5
	syscall
	move $s0,$v0
	
	#lendo segundo numero do teclado
	addi $v0,$zero,5
	syscall
	move $s2,$v0

	#Sabemos que uma multiplicação é uma soma sucessiva de numeros, a divisão é o contrário, ou seja, é uma subtração sucessiva de numeros
	#ex: temos que guardar a quantidade de laços que o for vai fazer... 2 / 2 = 2 (laços, fazendo a subtração) | 6/2 = 3 laços(fazendo a subtração sucessiva)
	move $s7,$zero # i = 0 | i vai ser nossa respota final, veja abaixo
	move $s5,$s0
FOR:	
	slt $t0,$s7,$s0
	beq $s5,$zero,EXIT   # bne = branch not equal(se não for igual), beq = branch in equal(se for igual)
	
	sub $s5,$s5,$s2
	
	addi $s7,$s7,1 # i = i + 1
	j FOR
EXIT: 	
	li $v0,1
	move $a0,$s7
	syscall

addi $v0,$zero,10
syscall
	