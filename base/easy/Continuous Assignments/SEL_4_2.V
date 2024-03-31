/*	4-2 SELECTOR
	When SEL = 00b then OUT = A
	When SEL = 01b then OUT = B
	When SEL = 10b then OUT = C
	When SEL = 11b then OUT = D	*/
module	SEL_4_2	( A, B, C, D, SEL, OUT );
input	[1:0] A, B, C, D, SEL;					//Set 4*2bits array input
output	[1:0]OUT;								//Set 2bits array output

	assign	OUT[1] = ~SEL[1] & ~SEL[0] & A[1]	// and : & ; or : | ; not : ~ ;
			| ~SEL[1] &  SEL[0] & B[1]
			|  SEL[1] & ~SEL[0] & C[1]
			|  SEL[1] &  SEL[0] & D[1];

	assign	OUT[0] = ~SEL[1] & ~SEL[0] & A[0]	// and : & ; or : | ; not : ~ ;
			| ~SEL[1] &  SEL[0] & B[0]
			|  SEL[1] & ~SEL[0] & C[0]
			|  SEL[1] &  SEL[0] & D[0];

endmodule