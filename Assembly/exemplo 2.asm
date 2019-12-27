#------------------------------------------------------------------------
#segundo programa em assembly MIPS32
#
# DDA 24/11/13
#Desc: Preenche o array arr1 com inteiros consecutivos e a seguir os soma
#------------------------------------------------------------------------
#dados do programa
.data
arr1:	.word	0 : 19         # "array" of words to contain fib values
size1:	.word	19 			   #tamanho do array	
#codigo do programa
.text
		addi	$t0, $zero, 0			#inicializa o contador com 0
		add		$s0, $zero, $zero		#inicializa o registrador da soma com 0
		la		$t1, size1				#carrega endereço de size2 em $t1
		lw		$t1, 0($t1)				#carrega o tamanho do array arr1 em $t1
		la		$t2, arr1				#carrega o end do 1a palavra do arr1 em $t2
		add		$t3, $zero,$zero		#contador de posição do array
LOOP1:	beq		$t0, $t1, END1			#testa se o contador é igual a size1
		addi	$t0,$t0,1				#incrementa o contador
		add		$t4, $t2,$t3			#calcula o end. do prox. elemento do array
		sw		$t0,0($t4)				#salva o valor do contatos na prox. pos. do array
		addi	$t3,$t3,4				#incrementa o contador de posição
		j		LOOP1							
END1:	addi	$t0, $zero, 0			#inicializa o contador com 0
		add		$t3, $zero,$zero		#contador de posição do array
LOOP2:	beq		$t0, $t1, END2			#testa se o contador é igual a size1
		add		$t4, $t2,$t3			#calcula o end. do prox. elemento do array
		lw		$s1, 0,($t4)			#carrega o prox. elemento do array em $s1
		add		$s0, $s0, $s1			#soma o prox. elemento ao total
		addi	$t0,$t0,1				#incrementa o contador
		addi	$t3,$t3,4				#incrementa o contador de posição
		j		LOOP2
END2:	#apresenta um inteiro
		add		$a0, $s0,$zero		# coloca em $a0 o resultado
		li		$v0, 1
		syscall
		# Termino do programa
      	li   	$v0, 10          	# código de termino
      	syscall               		# chamada do sistema	

	