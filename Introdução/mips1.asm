
.data #Area para dados da memoria principa�
	msg: .asciiz "Ola,Mundo"  #mensagem a ser exibida
	A :  .byte 	24   
.text  #Area de Instru��es do Programa

	#Instru��o para imprimir string
	li $v0 , 1
	
#	la $a0, msg#Indica o Enderre�o onde est� a msg
	la $a0, A	
	
	syscall 
