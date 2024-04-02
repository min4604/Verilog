/*	2-1 SELECTOR_TEST
	testbench for testing the functionality of the SEL_2_1	*/
`timescale	1ns/1ns								// <time_unit> / <time_precision>
module	SEL_2_1_tb;
reg	[1:0] IN;									//Set IN as 2bit array reg
reg	SEL_IN;										//Set SEL_IN as reg
wire	OUT;									//Set OUT as wire

	SEL_2_1	SEL	( IN[0], IN[1], SEL_IN, OUT );	//Module Instantiation 
	always	#100	SEL_IN = ~SEL_IN;			//every 100 time_unit reverse SEL_IN
	always	 #40	IN = IN + 1;				//every 40 time_unit let IN = IN +1
	initial	begin
			SEL_IN = 0; IN = 0;					//When start set DEL_IN =0 and IN =0
		#300	$finish;						//finish simulation when 300 time_unit
	end
endmodule
