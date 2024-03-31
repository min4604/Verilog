/*	XOR_2 use Continuous Assignments disign by xor	*/
module	EXOR	( IN1, IN2, OUT );
input	IN1, IN2;				//Set 2 input
output	OUT;					//Set 2 output
	assign	OUT = IN1 ^ IN2;	//xor : ^ ;
endmodule
