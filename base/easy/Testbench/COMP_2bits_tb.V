/*	2bit COMPARATER_TEST
	testbench for testing the functionality of the COMP_2bits	*/
`timescale	1ns/1ns								// <time_unit> / <time_precision>
module	COMP_2bits_tb;
reg	[1:0] X, Y;									//Set 2 of 2bits array reg
wire	LG, EQ, SM;								//Set 3 wire

	COMP_2bits	COMP	( X, Y, LG, EQ, SM );	//Module Instantiation
	always	#40	X = X + 1;						//every 40 time_unit let x=x+1
	always	#160	Y = Y + 1;					//every 160 time_unnit let y=y+1
	initial	begin
			X = 0; Y = 0;						//When start Set X= 0、Y= 0
		#800	$finish;						//finish simulation when 800 time_unit
	end
endmodule
