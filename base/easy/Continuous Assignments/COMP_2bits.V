/*	2bit COMPARATER
	when X>Y then LG =1 other output =0
	when X<Y then SM =1 other output =0
	when X>Y then EQ =1 other output =0		*/
module	COMP_2bits	( X, Y, LG, EQ, SM );
input	[1:0] X, Y;										//Set 2 of 2bits array input 						
output	LG, EQ, SM;										//set 3 output

	assign	LG = X[0] & ~Y[1] & ~Y[0]					//and : & ; or : | ;not : ~ ; nxor : ~^
			| X[1] & X[0] & ~Y[0]
			| X[1] & ~Y[1];
	assign	EQ = ( X[1] ~^ Y[1] ) & ( X[0] ~^ Y[0] );
	assign	SM = ~X[0] & Y[1] & Y[0]
			| ~X[1] & ~X[0] & Y[0]
			| ~X[1] & Y[1];

endmodule
