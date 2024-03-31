/*	XOR_2 use and or not gate   */
module	XOR_2	( IN1, IN2, OUT );
input	IN1, IN2;					//Set two input 
output	OUT;						//Set output
wire	NOT1,NOT2,AND1,AND2;		//Set  4 wires
	not	U1	( NOT1, IN1 ),			//let NOT1 = not IN1  ; as assign NOT1 = !IN1
		U2	( NOT2, IN2 );			//Let NOT2 = not IN2  ; as assign NOT2 = !IN2
	and	U3	( AND1, NOT1, IN2 ),	//Let AND1 = NOT1 and IN2 ; as assign AND1 = NOT1 & IN2
		U4	( AND2, NOT2, IN1 );	//Let AND2 = NOT2 and IN1 ; as assign AND2 = NOT2 & IN1
	or	U5	( OUT , AND1, AND2 );	//Let OUT  = AND1 or AND2 ; as assign OUT  = AND1 | AND2
endmodule
