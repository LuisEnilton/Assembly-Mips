.data
	PI: .float 3.141592
	zero: .float 0.0
	saudacao : .asciiz "Digite seu float: "
.text
	li $v0 , 4
	la $a0 , saudacao
	syscall
	li $v0 , 6
	syscall
	li $v0 , 2 #Imprimir float
	lwc1 $f1 , zero
	add.s $f12 ,$f1 , $f0
	#movf.s $f12 , $f1 #Deve ser guardar no registrador $f12 do coprocessador 1 para imprimir
	syscall