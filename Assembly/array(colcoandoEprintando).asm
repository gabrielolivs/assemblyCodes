#printando um vetor com FOR
.data 
Vet: .word 0,0,0

.text 
	#tamanho do vetor
	addi $v0,$zero,5
 	syscall
 	move $s7,$v0

 	addi $t0,$zero,0 # i = 0
 	addi $t1,$zero,0 # posição do vetor
 
FOR: 	
	slt $t3,$t0,$s7
	beq $t3,$zero,AUX
	
	#lendo inteiros
	# inteiro do teclado
 	addi $v0,$zero,5
 	syscall
 	move $s0,$v0
 	
 	sw $s0,Vet($t1) # colocando o inteiro na posição do vetor
 	addi $t1,$t1,4 # contando o numero de bits da memória
 	addi $t0,$t0,1 # i = i + 1
 	j FOR
 
 AUX:
 	move $t7,$zero # contador do segundo for | j = 0
 	move $t9,$zero # contaode posição
 	
 PRINT : 
 	#pritando os valores do vetor
 	slt $t3,$t7,$s7
	beq $t3,$zero,EXIT
	
	lw $t1,Vet($t9)
	
	li $v0,1
	move $a0,$t1
 	syscall
 	
 	addi $t9,$t9,4 # contando as casas
 	addi $t7,$t7,1 # j = j + 1
 	j PRINT
 
 EXIT: 
 	li $v0,10
 	syscall
 	
