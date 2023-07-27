.data
	char: .byte 'A' #caractere
.text
	li $v0,4 # imprimir char ou string
	
	la $a0,char
	
	li $v0,10
	
	syscall 
	
	