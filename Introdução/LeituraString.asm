.data
	nome : .space 25
	saudacao : .asciiz  "Qual o seu nome? "
	resposta : .asciiz  "Ola,"
.text	

	li $v0 , 4
	la $a0 , saudacao
	syscall
	li $v0, 8
	la $a0 nome
	la $a1 25
	syscall
	#move $t0 ,$a0
	li $v0 , 4
	la $a0 , resposta
	syscall
	#move $a0 , $t0
	la $a0 , nome#Trabalhar  direto com registradores é mais rapido computacionalmente
	syscall#Eu tenho duas opções para recuperar o nome , mover o valor em a0 ou ler direto da memória