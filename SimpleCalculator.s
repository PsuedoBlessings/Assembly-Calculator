#int leftval = 0
#int rightval = 0
#int answer = 0 

#int operation = 0;

#cout << "Enter the first number" << endl

#cin >> leftval

#cout << "Enter the second number" << endl

#cin >> rightval

#cout << "Enter the operation type" << endl

#cin >> operation

# switch(operation)
#{
    #case 0: //add
        # answer = leftval + rightval
        #break;
    #case 1: //subtraction
        # answer = leftval - rightval
        #break;
    #case 2: //multiply
        # answer = leftval * rightval
        #break;
#}

#return 0;

    .data

leftvaltxt: .asciiz "Enter the first number"
rightvaltxt: .asciiz "Enter the second number"
optypetxt: .asciiz "Enter the operation type"
answertxt: .asciiz "The result is"

    .text
    .globl main

    main:
            li      $v0, 4 #immediatley loading 4 bytes for words into register $v0
            la      $a0, leftvaltxt # Loading the Address of leftvaltxt
            syscall #cout << "Enter the first number" << endl

            li $v0, 5 #immediatley loading 5 bytes for integer into register $v0
            syscall #cin >> leftval

            move $t0, $v0 # moving the integer from $v0 to $t0, $t0 will be leftval

           
            li      $v0, 4 #immediatley loading 4 bytes for words into register $v0
            la      $a0, rightvaltxt # Loading the Address of rightvaltxt
            syscall #cout << "Enter the second number" << endl

            li $v0, 5 #immediatley loading 5 bytes for integer into register $v0
            syscall #cin >> rightval

            move $t1, $v0 # moving the integer from $v0 to $t1, $t1 will be rightval
           
           
            li      $v0, 4 #immediatley loading 4 bytes for words into register $v0
            la      $a0, optypetxt # Loading the Address of optypetxt
            syscall #cout << "Enter the operation type" << endl

            li $v0, 5 #immediatley loading 5 bytes for integer into register $v0
            syscall #cin >> operation

            move $t2, $v0 # moving the integer from $v0 to $t2, $t2 will be operation
        
            beq		$t2, 0, ADD	# if $t2 == 0, ADD
            beq		$t2, 1, SUB	# if $t2 == 1, SUB
            beq		$t2, 2, MULTIPLY # if $t2 == 2, MULTIPLY
            
        ADD:
            add		$t3, $t0, $t1		# $t3 = $01 + 1t2
            li		$v0, 1		# $v0 = 1 
            move 	$a0, $t3		# $a0 = $31
            syscall
            li $v0, 10
            syscall

        SUB:
            sub		$t3, $t0, $t1		# $t3 = $01 + 1t2
            li		$v0, 1		# $v0 = 1 
            move 	$a0, $t3		# $a0 = $31
            syscall
            li $v0, 10
            syscall

        MULTIPLY:
            mulou	$t3, $t0, $t1		# $t3 = $01 + 1t2
            li		$v0, 1		# $v0 = 1 
            move 	$a0, $t3		# $a0 = $31
            syscall
            li $v0, 10
            syscall









