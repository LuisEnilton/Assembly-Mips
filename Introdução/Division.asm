.data
	quebra: .asciiz "\n"

.text

	li $t0 , 32
	
	li $t1 , 4
	
	div $t0 , $t1
	#Parte inteira em $s0	
	mflo $s0
	#Parte resto em $s1
	mfhi $s1
	
	li $v0 , 1
	mflo $a0
	syscall
	li $v0 , 4
	la $a0 quebra
	syscall
	li $v0 , 1
	mfhi $a0
	
	syscall
	
	
