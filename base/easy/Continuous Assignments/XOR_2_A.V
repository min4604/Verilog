/*	XOR_2 use Continuous Assignments  disign by and or not	 */
module	XOR_2	( IN1, IN2, OUT );
input	IN1, IN2;							//Set 2 input
output	OUT;								//Set output
	assign	OUT = ~IN1 & IN2 | IN1 & ~IN2;	//and : & ; or : | ; not : ~
endmodule