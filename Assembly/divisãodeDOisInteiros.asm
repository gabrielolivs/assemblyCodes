#fazendo divisoes de numeros inteiros 

.data

.text
 
 # numero 1
 
 addi $v0,$zero,5
 syscall
 
 move $s0,$v0 # na mão: add $s0,$zero,$v0 // movendoo valor do teclado para um registrador
 
 # numero 2
 
 addi $v0,$zero,5
 syscall
 
 move $s7,$v0
 
 #divisão
 
 div $s0,$s7
 mflo $s4 #movendo para o low-order
 
 li $v0,1
 move $a0,$s4 # na mão: add $a0,$zero,$s4 // imrpimindo inteiro 
 syscall
 
 add $v0,$zero,10
 syscall