# escreva um programa que leia inteiros, salve-os em um array e então calculo a soma de todos os pares
# aula dia 30-09

.data 
vetor: .space 10
str1: .asciiz "Digite 10 inteiros"

.text

main: #imprime uma string
	addi $v0, $zero, 4 
	la $a0, str1
	syscall
	#looping para a leitura de 10 int
	addi $s0, $zero, 10 #constante
	la $s7, vetor #vetor[0]
LOOP1:	#le um int
	addi $v0, $zero, 5  
      	syscall
      	sw $v0, 0($s7)       #salva o inteiro no vetor	   	
      	addi $s7, $s7, 4     # vetor++
        addi $s0, $s0, -1    #avanca contador do loop
        bne $s0, $zero, LOOP1 #testa se o contador chegou em 0
                
        add $s6, $zero, $zero #acumulaodr de pares
        add $s0, $zero, $zero # i = 0
        add $s1, $zero, 10 # constante
        la $s7, vetor #endereço do vetor[0]
        addi $s3, $zero, 0x00000001 # Uma máscara é uma seuqencia de bists em que vc poe em suas casas de interesse
FOR1:	beq $s0, $s1, EXIT1 #interacao do loop
        lw $s2, 0($s7)  #le vetor[i]
        and $t0, $s2, $s3 #teste se par/impar
        bne $t0, $zero, NEXT1
       	add $s6, $s6, $s2 # acumulador += vetor[i]
        
NEXT1:  addi $s7, $s7, 4 #vetor++
        addi $s0, $s0, 1 # i++
        j  FOR1
EXIT1: #imprime o resulado da acumulacao dos pares
	li $v0, 1
	add $a0, $zero, $s6
	syscall
	addi $v0, $zero, 10 #return 0
        
        
        addi $v0, $zero, 10
        syscall
        
      	
	      	