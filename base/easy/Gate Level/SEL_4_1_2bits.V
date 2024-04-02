/*	4-1 2bits SELECTOR
	When SEL = 00b then OUT = A
	When SEL = 01b then OUT = B
	When SEL = 10b then OUT = C
	When SEL = 11b then OUT = D	*/
module	SEL_4_1_2bits	( A, B, C, D, SEL, OUT );
input	[1:0] A, B, C, D, SEL;								//Set 4 of 2bits array input
output	[1:0] OUT;											//Set 2bits array output
wire	SEL1_NOT, SEL0_NOT;									//Set 10 wire
wire	AND_A1, AND_B1, AND_C1, AND_D1;
wire	AND_A0, AND_B0, AND_C0, AND_D0;
	not	U1	( SEL1_NOT, SEL[1] ),							//Let SEL1_NOT = not SEL[1] ; as assign SEL1_NOT = ~SEL[1]
		U2	( SEL0_NOT, SEL[0] );							//Let SEL0_NOT = not SEL[0] ; as assign SEL0_NOT = ~SEL[0]
	and	UAND_A1	( AND_A1, A[1], SEL1_NOT, SEL0_NOT ),		//Let AND_A1 = A[1] and SEL1_NOT and SEL0_NOT ; as assign AND_A1 = A[1] & SEL1_NOT & SEL0_NOT
		UAND_B1	( AND_B1, B[1], SEL1_NOT, SEL[0] ),			//Let AND_B1 = B[1] and SEL1_NOT and SEL[0] ; 	as assign AND_B1 = B[1] & SEL1_NOT & SEL[0]
		UAND_C1	( AND_C1, C[1], SEL[1]  , SEL0_NOT ),		//Let AND_C1 = C[1] and SEL[1] and SEL0_NOT ; 	as assign AND_C1 = C[1] & SEL[1] & SEL0_NOT
		UAND_D1	( AND_D1, D[1], SEL[1]  , SEL[0] );			//Let AND_D1 = D[1] and SEL[1] and SEL[0] ; 	as assign AND_D1 = D[1] & SEL[1] & SEL[0]
	and	UAND_A0	( AND_A0, A[0], SEL1_NOT, SEL0_NOT ),		//Let AND_A0 = A[0] and SEL1_NOT and SEL0_NOT ; as assign AND_A0 = A[0] & SEL1_NOT & SEL0_NOT
		UAND_B0	( AND_B0, B[0], SEL1_NOT, SEL[0] ),			//Let AND_B0 = B[0] and SEL1_NOT and SEL[0] ; 	as assign AND_B0 = B[0] & SEL1_NOT & SEL[0]
		UAND_C0	( AND_C0, C[0], SEL[1]  , SEL0_NOT ),		//Let AND_C0 = C[0] and SEL[1] and SEL0_NOT ; 	as assign AND_C0 = C[0] & SEL[1] & SEL0_NOT
		UAND_D0	( AND_D0, D[0], SEL[1]  , SEL[0] );			//Let AND_D0 = D[0] and SEL[1] and SEL[0] ; 	as assign AND_D0 = D[0] & SEL[1] & SEL[0]
	or	OUT1	( OUT[1] , AND_A1, AND_B1, AND_C1, AND_D1 ),//Let OUT[1] = AND_A1 or AND_B1 or AND_C1 or AND_D1 ; as assign OUT[1] = AND_A1 | AND_B1 | AND_C1 | AND_D1
		OUTO	( OUT[0] , AND_A0, AND_B0, AND_C0, AND_D0 );//Let OUT[0] = AND_A0 or AND_B0 or AND_C0 or AND_D0 ; as assign OUT[0] = AND_A0 | AND_B0 | AND_C0 | AND_D0
endmodule
