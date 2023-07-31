.data
	quebra: .asciiz "\n"
	texto_leitura: .asciiz "Forneca sua idade: "
	texto_final : .asciiz "Sua idade eh: "
.text
	#Para ler inteiros
	li, $v0 , 4
	la $a0 , texto_leitura
	syscall
	li $v0,5
	syscall # O valor lido é guardado em v0
	move $t0 , $v0
	li, $v0 , 4
	#la $a0 , quebra
	#syscall
	la $a0 , texto_final
	syscall
	li $v0 , 1
	move $a0 , $t0
	syscall