.data
	A: .word  56
	B: .word 45
	quebra: .asciiz "\n"

.text
	li $v0,1
	
	lw $t0,A
	lw $t1,B
	
	add $a0 ,$t0,$t1
	
	syscall 
	li $v0,4
	la $a0 quebra
	syscall
	
	li $v0,1
	addi $a0,$t0,15
	
	syscall
