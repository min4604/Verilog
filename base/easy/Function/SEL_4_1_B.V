/*	4-1 SELECTOR use function
	When SEL = 00b then OUT = A
	When SEL = 01b then OUT = B
	When SEL = 10b then OUT = C
	When SEL = 11b then OUT = D	*/
module	SEL_4_1	( A, B, C, D, SEL, OUT );
input	A, B, C, D;									//Set 4 input
input	[1:0] SEL;									//Set 2bits array input
output	OUT;										//Set output

	assign	OUT = SEL4_1_FUNC ( A, B, C, D, SEL );	//Let OUT as SEL4_1_FUNC return 

function	SEL4_1_FUNC;							//declares a function named SEL4_1_FUNC
input	A, B, C, D;									//Set 4 function input
input	[1:0] SEL;									//Set 2bits array of function input
	case ( SEL )									//use case to choose return A or B or C or D
		0:SEL4_1_FUNC = A;							//when SEL =0 return A,when SEL =1 return B,when SEL =2 return C, when SEL =3 return D
		1:SEL4_1_FUNC = B;						
		2:SEL4_1_FUNC = C;
		3:SEL4_1_FUNC = D;
	endcase
endfunction

endmodule
