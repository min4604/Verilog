/*	4-1 SELECTOR
	When SEL = 00b then OUT = A
	When SEL = 01b then OUT = B
	When SEL = 10b then OUT = C
	When SEL = 11b then OUT = D 	*/
module	SEL_4_1	( A, B, C, D, SEL, OUT );
input	A, B, C, D;							//Set 4 input 
input	[1:0] SEL;							//Set 2bits array input
output	OUT;								//Set output

	assign	OUT = ~SEL[1] & ~SEL[0] & A		// and : & ; or : | ; not : ~ ;
			| ~SEL[1] &  SEL[0] & B
			|  SEL[1] & ~SEL[0] & C
			|  SEL[1] &  SEL[0] & D;

endmodule
