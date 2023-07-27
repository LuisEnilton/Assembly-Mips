.data
	A: .word  56
	B: .word 45

.text
	li $v0,1
	
	lw $t0,A
	lw $t1,B
	
	add $a0 ,$t0,$t1
	
	syscall 
