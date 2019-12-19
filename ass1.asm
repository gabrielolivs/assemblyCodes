# Questão 02 PROVA-SUB
# Leia 4 variáveis (x, y, z, w) fazendo o cálculo de uma equanção em uma função
.data

.text

	#Lendo um número inteiro do teclado X
	addi $v0,$zero,5 # read integer
	syscall
	move $a0,$v0 #movendo o valor lido para uma variável
	
	#Lendo um número inteiro do teclado Y
	addi $v0,$zero,5 # read integer
	syscall
	move $a1,$v0 #movendo o valor lido para uma variável
	
	#Lendo um número inteiro do teclado Z
	#contador i
	addi $v0,$zero,5 # read integer
	syscall
	move $a2,$v0 #movendo o valor lido para uma variável
	
	#Lendo um número inteiro do teclado W
	#contador j
	addi $v0,$zero,5 # read integer
	syscall
	move $a3,$v0 #movendo o valor lido para uma variável

	 
For1:
      addi $s6,$zero,1 # contador (i = 1)
      
      slt $t9,$s6,$a2
      beq $t9,$zero,For2
      
      mul $s0,$a0,$s6 # (x * i)
      
      addi $s6,$s6,1 # i = i + 1
      j For1 #volta para o loop
      
For2:
      addi $s7,$zero,1 # contador (j = 1)
      
      slt $t8,$s7,$a3
      beq $t8,$zero,function
      
      mul $s1,$a1,$s7 # (y * j)
      
      addi $s6,$s6,1 # i = i + 1
      j For2 #volta para o loop
      
	
function: 
	 addi $sp,$sp,-12
	 sw $t2, 8($sp)
	 sw $t3, 4($sp)
	 sw $s4, 0($sp)    
	
	 #movendo valores para variaveis temporárias 
	 add $t2,$zero,$s0
	 add $t3,$zero,$s1
	 
	 add $s4,$t2,$t3 #resultado
	 
	li $v0,1
        move $a0,$s4
        syscall
        
        lw $s4, 0 ($sp)
	lw $t3, 4 ($sp)
	lw $t2, 8 ($sp)
	addi $sp, $sp, 12
	
	jr $ra
	 	 
	 
	
	
	 
            
      	 
	


	 
	 
	 
	 
	
