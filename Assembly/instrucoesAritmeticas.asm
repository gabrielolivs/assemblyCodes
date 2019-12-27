############################################################
#instrucoesAritmeticas.m
#
#DDA 21.08.2016
############################################################
.data
va:   .word 42
vb:   .word 10
vc:   .word 0x000000FF
vd:   .word 0xFFF00000
#-----------------------------------------------------------
.text

#carrega variáveis
la    $s0, va
lw    $s0, 0($s0)
la    $s1, vb
lw    $s1, 0($s1)
la    $s2, vc
lw    $s2, 0($s2)
la    $s3, vd
lw    $s3, 0($s3)

#add e suas variantes
add   $t0, $s0, $s1
addi  $t1, $s0, 42  
addiu $t2, $s0, 42
addu  $t3, $s0, $s1
#aui   $t4, 0xFFFF <- não implementado no MARS

#contagem de zeros e uns iniciais
clo   $t4, $s3
clz   $t5, $s2

#divisão
div   $s0, $s1
mflo  $t6      #<- geralmente duas instruções depois do div
mfhi  $t7
divu  $s0, $s1  
mflo  $t0      #<- geralmente duas instruções depois do div
mfhi  $t1

madd  $s0, $s1 #hilo += (long long) s * (long long) t
maddu $s0, $s1 #hilo += (long long) s * (long long) t (wo overflow)

mtlo  $s1
mthi  $s1
msub  $s0, $s1 #hilo -= (long long) s * (long long) t
msubu $s0, $s1 #hilo -= (long long) s * (long long) t (wo overflow)

mul   $t0,$s0, $s1
mult  $s0, $s1
multu $s0, $s1

sub   $t0, $s0, $s1
subu  $t3, $s0, $s1

#finaliza o programa
li    $v0, 10
syscall
#-----------------------------------------------------------
