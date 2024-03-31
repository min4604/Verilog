/*	2-1 SELECTOR use and or not gate	
	When SEL = 0 OUT = A
	When SEL = 1 OUT = B */
module	SEL2_1	( A, B, SEL, OUT );
input	A, B, SEL;					//Set 3 input
output	OUT;						//Set output
wire	SEL_NOT, AND1, AND2;		//Set 3 wire
	not	U1	( SEL_NOT, SEL );		//Let SEL_NOT = not SEL ; as assign SEL_NOT = ~SEL
	and	U2	( AND1, B, SEL ),		//Let AND1 = B and SEL ; as assign AND1 = B & SEL
		U3	( AND2, A, SEL_NOT );	//Let AND2 = A and SEL_NOT ; as assign AND2 = A & SEL_NOT 
	or	U4	( OUT , AND1, AND2 );	//Let OUT = AND1 or AND2 ; as assign OUT = AND1 |AND2

endmodule
