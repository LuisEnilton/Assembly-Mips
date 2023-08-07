.data
	n: .word 
	quebra_: .asciiz "\n"
	espaco_ : .asciiz " "
	doisPontos_: ":"
	array: .word 197,199,199,199,199,200,202,205,202,205,205,203,203,204,203,200,201,198,195,
195,198,200,202,202,199,198,198,199,201,202,202,202,203,203,202,201,200,201,
201,201,199,199,199,200,200,200,200,200,201,202
 
	freq: .align 2 
		.space 44

#O vetor freq guarda as frequencias do 195(menor) até 205(maior) '195' corresponde ao indice 0 do vetor

.text
	
	.globl main  		
	main:
	jal limpar_vetor_freq
	li $t0,0
	li $t2 ,200 # 50 * 4
		while:
			beq $t0,$t2,saida  #quando terminar de processar os 50 pixels	
			lw  $s0, array($t0) #ler o valor 
		
			subi $s1,$s0,195 #Subtraimos o valor de 195 para descobrir o indice no vetor freq
			li $t3,4 
			mul $s1,$s1,$t3 #multiplica o indice por 4 pq é word
		
			lw $s2,freq($s1) #pegar o valor dessa frequencia atualmente
			addi $s2 , $s2,1 # aumenta a frequencia em 1
			sw $s2,freq($s1) #guardar de novo
		  
			addi $t0,$t0,4	
			j while
	saida:
	li $t0,0
	li $t2 ,44
		loop2:
			beq $t0 , $t2,saida2
			li $t1 , 4
			div $t0,$t1
			mflo $a0
			addi $a0 , $a0 , 195
			jal printInteiro
			jal doisPontos
			jal espaco
			lw  $a0 , freq($t0)
			jal printInteiro
			addi $t0,$t0,4
			jal quebra
			j loop2
	saida2:
		j final


limpar_vetor_freq:
		li $t0 , 0 #indice
		li $t1 , 44
		loop:
			beq $t0 , $t1,retorno
			sw $zero,freq($t0)
			addi $t0,$t0,4
		
			j loop
		retorno:
			jr $ra

#printa o que ta em $a0
printInteiro:
	li $v0,1
	syscall
	jr $ra	

espaco:
	li $v0,4
	la $a0 , espaco_
	syscall		
	jr $ra
doisPontos:
	li $v0,4
	la $a0 , doisPontos_
	syscall		
	jr $ra		
quebra:
	li $v0,4
	la $a0 , quebra_
	syscall
	jr $ra
final:
	li $v0,10
	syscall	
