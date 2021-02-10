#ni puto caso esto no lo saqué
##EXAMEN 2016 22 DICIEMBRE
				
				.data
V:		.word -8,-5,-1,2,4,5,7,9,10,11,0,15,14


				.text
main:	li $t0,12		#t0 = num elem
		li $t1,1		#t1 = i
		li $t2,11		#t2 = numelem-1
		la $t3,V
		li $t4,2		#divide para saber si es par
		li $t6,9		#comprueba si >9
		li $t7,4		#comprueba si <4
		
mientras:	bgt $t1,$t2,finpara	#i <= numelem-1
			lw $s0,0($t3)
			
			beq $s0,$0,finpara	#V[i] <> 0
			
			div $t1,$t4
			mfhi $t5
			beq $t5,$0,finsi	#i = impar
			
			ble $s0,$t6,finsi	#V[i] > 9
			
			bge $s0,$t7,finsi 	#V[i] < 4
			
			neg $s1,$s0
			
			sw $s1,0($t3)
			
finsi:		addi $t1,$t1,1
			addi $t3,$t3,4
			j mientras
			
finpara:	li $v0,4
			la $a0,
			syscall		#imprime vector modificado