/*	2-1 SELECTOR
	When SEL = 0 OUT = A
	When SEL = 1 OUT = B 	*/
module	SEL_2_1	( A, B, SEL, OUT );
input	A, B, SEL;						//Set 3 input
output	OUT;							//Set output

	assign	OUT = ( SEL == 0 )? A : B;	// if( SEL == 0) then OUT = A else OUT = B

endmodule
