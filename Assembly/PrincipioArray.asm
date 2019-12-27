# Programa para entender o uso do array
.data
Vet_1: .space 16 # um vetor de inteiros com 3 posições ( 4 bits * 3 = 12)

.text 
	#numero lidos do teclado para colocar no vetor
	
	#primeiro valor lido
	addi $v0,$zero,5
	syscall
	move $s0,$v0
	
	#segundo valor lido
	addi $v0,$zero,5
	syscall
	move $s1,$v0
	
	
	#primeiro valor lido
	addi $v0,$zero,5
	syscall
	move $s2,$v0
	
	addi $v0,$zero,5
	syscall
	move $s3,$v0
	
	# colocando inteiros no vetor : para colocar numero inteiros no vetor vamos utilizar um contador, no nosso caso o contador vai ser o $t0
	move $t0,$zero #contador 
	
	sw $s0,Vet_1($t0) # posição 0 do vetor vai receber o valor que está em $s0
	
	addi $t0,$t0,4 # como um intiro é composto por 4 bits, então temos que somar +4 ao contador para nosso vetor ficar aninhado á memória
	
	sw $s1,Vet_1($t0)
	
	addi $t0,$t0,4  # como um inteiro é composto por 4 bits, então temos que somar +4
	
	sw $s2,Vet_1($t0)
	
	addi $t0,$t0,4  # como um inteiro é composto por 4 bits, então temos que somar +4
	
	#print valor do vetor
	lw $t9,Vet_1($zero)
	li $v0,1
	move $a0,$t9
	syscall
	
	
addi $v0,$zero,0
syscall

