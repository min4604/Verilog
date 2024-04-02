/*	4-1 SELECTOR_TEST
	testbench for testing the functionality of the SEL_4_1	*/
`timescale	1ns/1ns											// <time_unit> / <time_precision>
module	SEL_4_1_tb;
reg	[3:0] IN;													//Set IN as 4bits array reg
reg	[1:0] SEL_IN;												//Set SEL_IN as 2bit array reg 
wire	OUT;													//Set OUT as wire

	SEL_4_1	SEL	( IN[0], IN[1], IN[2], IN[3], SEL_IN, OUT );	//Module Instantiation 
	always	#100	SEL_IN = SEL_IN + 1;						//every 100 time_unit let SEL_IN =SEL_IN +1
	always	 #40	IN = IN + 1;								//every 40 time_unit let IN =IN +1
	initial	begin
			IN = 0; SEL_IN = 0;									//When start set DEL_IN =0 and IN =0
		#700	$finish;										//finish simulation when 300 time_unit
	end
endmodule
