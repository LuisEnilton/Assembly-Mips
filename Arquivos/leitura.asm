.data
	localArquivo: .asciiz " G:\a.txt"
	conteudoArquivo: .space 1024
.text
	#abrir o arquivo
	li $v0, 13
	la $a0,localArquivo #endereço do arquivo 
	li $a1,0 #modo leitura
	syscall #descritor em $v0
	move $s0 , $v0
	
	move $a0,$s0
	li $v0 ,14  #ler conteudo do arquivo
	la $a1,conteudoArquivo #buffer que armazena o conteudo
	li $a2 , 1024
	syscall #leitura realizada
	
	#imprimir
	li $v0,4
	move $a0,$a1
	syscall
	
	#fechar
	li $v0 , 16
	move $a0,$s0
	syscall