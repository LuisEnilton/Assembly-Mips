.data
	saudacao: .asciiz "Digite um numero: "
	msg1: .asciiz "O numero eh Par: "
	msg2: .asciiz "O numero eh Impar: "
.text
	
	

.main:	
	li $v0 ,4
	la $a0 , saudacao
	jal imprimeString
	li $v0 , 5
	syscall
	move $a0 , $v0 #O numero será um argumento da função
	jal ehpar
	bnez  $v0 , final_par
	la $a0 , msg2
	jal imprimeString
	j final

	
ehpar:
	li $t0 2
	div $a0,$t0
	mfhi $t1
	beqz $t1 , par
	li $v0 , 0
	jr $ra
par:
	li $v0 1 
	jr $ra		


final_par:
	 la $a0 , msg1
	 jal imprimeString
	 j final
#Função recebe uma string em $a0
imprimeString:
	li $v0 , 4
	syscall
	jr $ra

final:
	li $v0 , 10
	syscall
	