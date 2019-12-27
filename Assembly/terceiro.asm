# Questão 05 List revisão
.data


.text
# a) a = $t0
addi  $s0,$zero,0

# b) b = $s2     c = $s3    d = $s4
addi $s2,$zero,42
addi $s3,$zero,0
addi $s4,$zero,0

# c) a = (b+c) / (c-d)
add $t2,$s2,$s3 # soamndo os valores
add $t7,$s3,$s4 # somando os valores
div $t2,$t7 # divisão
mflo $s3 # coletado o valor da divisão
add $s0,$zero,$s3

li $v0,1
move $a0,$s3
syscall






