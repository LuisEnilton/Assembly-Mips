.data
	msg1: .asciiz "O numero eh Par"
	msg2: .asciiz "O numero eh Impar"
.text
	#Leitura de inteiro
	li $v0 , 5
	syscall
	move $t0 , $v0
	li $t1 , 2
	div $t0 , $t1
	mfhi $t2
	beq $t2 , $zero , par
	bne $t2 , $zero , impar
par:
	li $v0 , 4
	la $a0 , msg1
	syscall
	#encerrar o programa
	li $v0 , 10
	syscall
impar:
	li $v0 , 4
	la $a0 , msg2
	syscall
	li $v0 , 10
	syscall	