.data
	n: .word 
	quebra_: .asciiz "\n"
	espaco_ : .asciiz " "
	array: .word 1 , 2 , 3, 4, 5 
.text

	
	
	li $t0,0
	li $t2 ,20
	loop:
		beq $t0,$t2,saida	
		li $v0 , 1
		lw $a0, array($t0)
		syscall
		addi $t0,$t0,4
		jal espaco	
		j loop
	saida:
		j final

espaco:
	li $v0,4
	la $a0 , espaco_
	syscall		
	jr $ra	
quebra:
	li $v0,4
	la $a0 , quebra_
	syscall
	
final:
	li $v0,10
	syscall	
