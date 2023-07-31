.data
	texto_leitura : .asciiz "Digite o seu numero : "
	msg1: .asciiz "O numero eh igual a 0"
	msg2: .asciiz "O numero eh menor que 0"
	msg3: .asciiz "O numero eh maior que 0"
.text
	li $v0 ,4
	la $a0 , texto_leitura
	syscall
	li $v0 , 5
	syscall
	move $t0 , $v0
	beq $t0 , $zero , zero
	blt $t0 , $zero , menor
	j maior # poderia usar bgt
		
zero:	
	li $v0 , 4
	la $a0 , msg1
	syscall
	j final
menor:	
	li $v0 , 4
	la $a0 , msg2
	syscall
	j final
maior:	
	li $v0 , 4
	la $a0 , msg3
	syscall
	j final	
final:
	li $v0 , 10
	syscall	