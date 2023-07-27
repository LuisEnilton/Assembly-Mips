
.data #Area para dados da memoria principaç
	msg: .asciiz "Ola,Mundo"  #mensagem a ser exibida
	A :  .byte 	24   
.text  #Area de Instruções do Programa

	#Instrução para imprimir string
	li $v0 , 1
	
#	la $a0, msg#Indica o Enderreço onde está a msg
	la $a0, A	
	
	syscall 
