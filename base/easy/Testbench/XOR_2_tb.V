/*	EXOR_TEST	
 	testbench for testing the functionality of the XOR_2*/
`timescale	1ns/1ns    // <time_unit> / <time_precision>
module	XOR_2_tb;
reg	[1:0] IN;								//Set IN as 2bit array reg
wire	OUT;								//Set OUT as wire
integer i;									//Set a counter i as integer
	XOR_2	XOR_2	( IN[0], IN[1], OUT );	//Module Instantiation
	initial	begin
			IN = 0;							
		for	( i = 0; i <= 4; i = i + 1 )
			begin
				#100	IN = IN + 1;		// Wait for 100 time units then IN++
			end
			$finish;						//finish simulation
	end
endmodule
