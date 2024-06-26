/*	2-1 SELECTOR
	When SEL = 0 OUT = A
	When SEL = 1 OUT = B	*/
module	SEL_2_1	( A, B, SEL, OUT );
input	A, B, SEL;							//Set 3 input
output	OUT;								//Set output	

	assign	OUT = SEL2_1_FUNC ( A, B, SEL );//Let OUT as SEL2_1_FUNC return

function	SEL2_1_FUNC;					//declares a function named SEL2_1_FUNC
input	A, B, SEL;							//Set 3 function input
	case ( SEL )							//use case to  chouse return A or B. when SEL =0 return A when  SEL = 1 return  B  
		0:SEL2_1_FUNC = A;
		1:SEL2_1_FUNC = B;
	endcase
endfunction

endmodule
