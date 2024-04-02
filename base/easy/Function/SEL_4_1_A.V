/*	4-1 SELECTOR use function
	When SEL = 00b then OUT = A
	When SEL = 01b then OUT = B
	When SEL = 10b then OUT = C
	When SEL = 11b then OUT = D 	*/
module	SEL_4_1	( A, B, C, D, SEL, OUT );
input	A, B, C, D;									//Set 4 input
input	[1:0] SEL;									//Set 2bits array input
output	OUT;										//Set output

	assign	OUT = SEL4_1_FUNC ( A, B, C, D, SEL );	//Let OUT as SEL4_1_FUNC return 

function	SEL4_1_FUNC;							//declares a function named SEL4_1_FUNC
input	A, B, C, D;									//Set 4 function input
input	[1:0] SEL;									//Set 2bits array of function input
	if ( SEL[1] == 0 )								
		if ( SEL[0] == 0 )
			SEL4_1_FUNC = A;
		else
			SEL4_1_FUNC = B;
	else
		if ( SEL[0] == 0 )
			SEL4_1_FUNC = C;
		else
			SEL4_1_FUNC = D;
endfunction

endmodule
