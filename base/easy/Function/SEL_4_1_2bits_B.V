/*	4-1 2bits SELECTOR use function
	When SEL = 00b then OUT = A
	When SEL = 01b then OUT = B
	When SEL = 10b then OUT = C
	When SEL = 11b then OUT = D	*/
module	SEL_4_1_2bits	( A, B, C, D, SEL, OUT );
input	[1:0] A, B, C, D, SEL;								//Set 4 of 2bits array input
output	[1:0] OUT;											//Set 2bits array output

	assign	OUT = SEL4_1_2bits_FUNC ( A, B, C, D, SEL );			//Let OUT as SEL4_1_2bits_FUNC return 

function	[1:0] SEL4_1_2bits_FUNC;								//declares a function named SEL4_1_2bits_FUNC
input	[1:0] A, B, C, D;									//Set 4 of 2bits arrays function input
input	[1:0] SEL;											//Set 2bits array function inpurt
	case ( SEL )											//use case to accomplishs SEL4_2
		0:SEL4_1_2bits_FUNC = A;
		1:SEL4_1_2bits_FUNC = B;
		2:SEL4_1_2bits_FUNC = C;
		3:SEL4_1_2bits_FUNC = D;
	endcase
endfunction

endmodule
