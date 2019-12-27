####################################################
#parimpar.asm
#
#DESC: programa que lê um numero inteiro nao sinalizado e 
# testa se ele eh par ou impar
# 
#	DDA 08.10.2015
#
####################################################

.data
str1: 	.asciiz "Digite um numero:\0"	
str2: 	.asciiz "O numero eh \0"
str3: 	.asciiz "par\0"
str4: 	.asciiz "impar\0"

.text

init:	#imprime a str1 na saida padrão
	li	$v0, 4
	la	$a0, str1
	syscall
	
	#lê um inteiro da entrada padrão
	li	$v0,5
	syscall
	
	#chama a função parI
	add	$a0, $zero, $v0	#num lido como argumento	
	jal	parI
	add	$s0, $zero, $v0 #salva o retorno da função em um registrador
				#para nao perder seu valor
				 
	#imprime a str2 na saida padrão
	li	$v0, 4
	la	$a0, str2
	syscall
	
	beq	$s0,$zero, EHPAR
EHIMPAR:	
	li	$v0, 4
	la	$a0, str4
	syscall
	j	SAI
EHPAR:	li	$v0, 4
	la	$a0, str3
	syscall
SAI:
	#termina o programa
	li	$v0,10
	syscall
	
####################################################
#função que testa se um número eh par ou impar
#retorna 0 se for par, e 1 se for impar
parI:	#PUSH
	addi	$sp, $sp, -8
	sw	$ra, 4($sp)
	sw	$a0, 0($sp)
	#######
	addi	$t7,$zero,1
	and	$v0, $a0,$t7
	#POP
	sw	$ra, 4($sp)
	sw	$a0, 0($sp)
	addi	$sp, $sp,8		
	#######
	jr $ra
