# colocando valores inteiros em um vetor utilizando laços
# para facilitar o vetor vai possuir 3 posições
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
	beq $t3,$zero,EXIT
	
	#lendo inteiros
	# inteiro do teclado
 	addi $v0,$zero,5
 	syscall
 	move $s0,$v0
 	
 	sw $s0,Vet($t1)
 	addi $t1,$t1,4
 	addi $t0,$t0,1
 	j FOR
 EXIT : 
 	addi $v0,$zero,10
 	syscall
 	
 