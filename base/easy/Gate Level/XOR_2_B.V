/*	XOR_2 use xor gate	*/
module	XOR_2	( IN1, IN2, OUT );
input	IN1, IN2;				//set 2 input
output	OUT;					//set output
	xor	U1	( OUT, IN1, IN2 );	//Let OUT = IN1 xor IN2 ; as assign OUT = IN1 ^ IN2
endmodule
