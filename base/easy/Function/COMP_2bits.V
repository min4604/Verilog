/*	2bit COMPARATER use function
	when X>Y then LG =1 other output =0
	when X<Y then SM =1 other output =0
	when X>Y then EQ =1 other output =0		*/
module	COMP_2bits	( X, Y, LG, EQ, SM );
input	[1:0] X, Y;										//Set 2 of 2bits array input 						
output	LG, EQ, SM;										//set 3 output
	assign	{ LG, EQ, SM } = FUNC_COMP ( X, Y );		//Let OUT as FUNC_COMP return 

function	 [2:0] FUNC_COMP;							//declares a function named FUNC_COMP
input	[1:0] X, Y;										//Set 2 of 2bits arrays function input
	if ( X > Y )										////use if else to accomplishs COMP_2bits
			FUNC_COMP = 3'b100;
	else 	if ( X < Y )
			FUNC_COMP = 3'b001;
		else
			FUNC_COMP = 3'b010;
endfunction

endmodule
