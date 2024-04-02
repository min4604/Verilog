
/*	4-1 2bits SELECTOR_TEST
	testbench for testing the functionality of the SEL_4_2	*/
`timescale	1ns/1ns										// <time_unit> / <time_precision>
module	SEL_4_1_2bits_tb;
reg	[1:0] A, B, C, D;									// Set 4 input as 2bits array reg
reg	[1:0] SEL_IN;										// Set  input as 2bits array reg
wire	[1:0] OUT;										// Set output as 2bits array wire

	SEL_4_1_2bits	SEL	( A, B, C, D, SEL_IN, OUT );			//Module Instantiation 
	always	#100	SEL_IN = SEL_IN + 1;				//every 100 time_unit let SEL_IN =SEL_IN +1
	always	 #40										//every 40 time_unit let A = A+1 、B = B+1 、C = C+1 、D = D+1
		begin
			A = A + 1;
			B = B + 1;
			C = C + 1;
			D = D + 1;
		end
	initial	begin
			A = 0; B = 1; C = 2; D = 3; SEL_IN = 0;		//when start set A=0、B=1、C=2、D=3、SEL_IN =0
		#700	$finish;								//finish simulation when 700 time_unit
	end
endmodule
