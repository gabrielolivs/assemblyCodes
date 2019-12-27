############################################################
#
#
#•••
#int arr[10];
#int i, *pa;
#pa  = &arr[0];
#for ( i = 0; i < 10; i++){
#  *pa = i * i;
#  pa++;
#} 	
#•••

#
# DDA 29.08.2016
############################################################

.data

#arr: .word 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
arr: .space 40 # 4 x 10 words (dado em bytes)
sz:  .word 10

i:   .word
pa:  .word

.text
        la     $t0, arr # t0 <- &arr[0]
        la     $t7, sz
        lw     $t7, 0($t7)
        
        add    $s0, $zero, $zero  # i = 0
        add    $t6, $t0, $zero    #copia de &arr[0]
        addi   $t7, $t7, -1       # tam array [0,9]
FOR1:   beq    $s0, $t7, SAI1
        
        mul    $t1, $s0, $s0      # i^2
        sw     $t1, 0($t6)
        
        addi   $t6, $t6, 4        #pa++
        addi   $s0, $s0, 1
SAI1:   li     $v0, 10
        syscall