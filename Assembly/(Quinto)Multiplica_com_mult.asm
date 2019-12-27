#multiplicaçao de dois numero com o uso do mul
.data 

.text 
 #Lendo o primeiro inteiro
  	addi $v0,$zero,5
  	syscall
  	move $t1,$v0
  	
 #Lendo o segundo inteiro
  	addi $v0,$zero,5
  	syscall
  	move $t3,$v0
  	
 #Multiplciação com o uso do mult
 	mult $t1,$t3
 	mflo $s0
 	
 #impriminro o resultado
 	li $v0,1
 	move $a0,$s0 #na mão; add $a0,$zero,$s0
 	syscall
 
 addi $v0,$zero,10
 syscall
 	
 	