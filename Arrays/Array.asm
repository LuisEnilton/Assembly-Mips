.data
	myArray: 
		.align 2 #alinha a palavra na posição correta
		.space 16 # array de 4 inteiros
.text
	move $t0,$zero #indice do array
	move $t1 ,$zero
	li $t2,16 # quantidade de iterações
	loop:
		
		beq $t0 , $t2,saida
		sw $t1,myArray($t0)
		addi $t0,$t0,4
		addi $t1,$t1,1
		j loop
	saida:
		move $t0,$zero
		imprime:
			beq $t0,$t2,saida2
			li $v0,1
			lw $t3,myArray($t0)
			move $a0,$t3
			syscall
			addi $t0,$t0,4
			j imprime
		saida2:
		
