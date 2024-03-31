/*	XOR_2 use function 	*/
module	XOR_2	( IN1, IN2, OUT );
input	IN1, IN2;							//Set 2 input
output	OUT;								//Set output
	assign	OUT = EXOR_FUNC ( IN1, IN2 );	//Let OUT as EXOR_FUNC return 

function	EXOR_FUNC; 	//declares a function named EXOR_FUNC
input	IN1, IN2;		//Set 2 function input
	if	( IN1 ^ IN2 )	// if IN1 xor IN2 then return 1 else return 0
		EXOR_FUNC = 1;
	else
		EXOR_FUNC = 0;
endfunction

endmodule
