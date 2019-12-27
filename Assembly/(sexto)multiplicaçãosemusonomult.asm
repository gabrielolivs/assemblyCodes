#multiplicação sem o uso de subrotinas
.data



.text
	#lendo inteiro
	addi $v0,$zero,5
	syscall
	move $s0,$v0 #movendo o inteiro para o registrador $s2
	
	#lendo inteiro
	addi $v0,$zero,5
	syscall
	move $s2,$v0 #movendo o inteiro para o registrador $s2
	
	#multiplicação
	#Sabemos que uma multiplicação é um soma sucessiva
	#ex: 2x2 = 2+2 | 2*6 = 2+2+2+2+2+2
	
	move $s6,$zero # i = 0, contador ($s6 é 'i')
	add  $s7,$zero,$s2 #condição
	
	# a função SLT verifica se i >= n, ou seja, $s6 >= $s7, se for verdade armazena 0 se não armazena 1
	
FOR1:   #Configuração do FOR
	slt $t0,$s6,$s7
	beq $t0,$zero,EXIT
	
	add $s5,$s5,$s0 #soma sucessivas para a multiplicação
	
	#COnfiguração do FOR
	addi $s6,$s6,1 # i = i + 1
	j FOR1 #volta para o loop || Jump pula para uma instruçã ou função que vc criou
	  
EXIT: 
 	li $v0,1
 	move $a0,$s5
 	syscall
 	
addi $v0,$zero,10
syscall 
