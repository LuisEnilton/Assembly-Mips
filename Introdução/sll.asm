.text
	li $t1 , 10
	
	sll $s1 , $t1 , 10 # faz deslc a esquerda de t1 de 2 casas e guarda em t0
	
	li $v0 ,1
	
	move $a0 , $s1
	
	syscall