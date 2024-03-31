/*	4-1 SELECTOR use and、or、not gate
	When SEL = 00b then OUT = A
	When SEL = 01b then OUT = B
	When SEL = 10b then OUT = C
	When SEL = 11b then OUT = D */
module	SEL_4_1	( A, B, C, D, SEL, OUT );
input	A, B, C, D;									//Set 4 input 					
input	[1:0] SEL;									//Set 2bits array input
output	OUT;										//Set output
wire	SEL1_NOT, SEL0_NOT, AND1, AND2, AND3, AND4; //Set 6 wire
	not	U1	( SEL1_NOT, SEL[1] ),					//Let SEL1_NOT = not SEL[1] ; as assign SEL1_NOT = ~SEL[1]
		U2	( SEL0_NOT, SEL[0] );					//Let SEL0_NOT = not SEL[0] ; as assign SEL0_NOT = ~SEL[0]
	and	U3	( AND1, A, SEL1_NOT, SEL0_NOT ),		//Let AND1 = A and SEL1_NOT and SEL0_NOT ; as assign AND1 = A & SEL1_NOT & SEL0_NOT
		U4	( AND2, B, SEL1_NOT, SEL[0] ),			//Let AND2 = B and SEL1_NOT and SEL[0] ; as assign AND2 = B & SEL1_NOT & SEL[0]
		U5	( AND3, C, SEL[1]  , SEL0_NOT ),		//Let AND3 = C and SEL[1] and SEL0_NOT ; as assign AND3 = C & SEL[1] & SEL0_NOT
		U6	( AND4, D, SEL[1]  , SEL[0] );			//Let AND4 = D and SEL[1] and SEL[0] ; as assign AND4 = D & SEL[1] & SEL[0]
	or	U7	( OUT , AND1, AND2, AND3, AND4 );		//Let OUT = AND1 or AND2 or AND3 or AND4 ; as assign OUT = AND1 | AND2 | AND3 | AND4
endmodule