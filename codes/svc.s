SVC_Handler
	TST   LR, #4
	MRSEQ R1, MSP
	MRSNE R1, PSP
	;r1 <- sp
	LDR   R0, [R1,#24]
	;r0 <- pc
	SUB   R0, 2
	;r0 <- instruction pointer
	LDR   R1, [R0]
	; r1 <- instruction
	AND   R0, R1, 0xFF
	
	B     SVC_Handler_Main
