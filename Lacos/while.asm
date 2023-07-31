.data
	saudacao : .asciiz "Digite um numero: "
	espaco : .asciiz " "
.text
	li $v0 , 4
	la $a0 , saudacao
	syscall
	li $v0 , 5
	syscall
	move $t0 , $v0
	li $t1,0
while:
	bgt  $t1,$t0,saida
	li $v0 , 1
	move $a0 , $t1
	addi $t1 , $t1 , 1
	syscall
	li $v0 , 4
	la $a0 , espaco
	syscall
	j while
saida:	
	
