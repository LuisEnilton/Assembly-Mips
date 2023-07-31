.data
	quebra: .asciiz "\n"
.text
	#Se for nº negativo usa sra pq ele conserva o sinal
	li $t0 , -32
	
	li $t1 , 34
	#Deslocamento a direita
	sra $s2 , $t0 , 2
	
	li $v0 , 1
	
	move $a0 , $s2
	
	syscall
	
	li $v0 , 4
	la $a0 quebra
	
	syscall
	
	srl $s2 , $t1 , 2 ## se a divisão n for exata o numero é truncado
	li $v0 , 1
	move $a0 , $s2
	
	syscall
	