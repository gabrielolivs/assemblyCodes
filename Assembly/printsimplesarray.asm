.data
Vet_1: .word 4

.text 
	
	move $t7,$zero #contador de pos

	lw $s7,Vet_1($t7) #$s7 recebe endereço da primeira pos dp vetor

	li $v0,1
	move $a0,$s7
	syscall
