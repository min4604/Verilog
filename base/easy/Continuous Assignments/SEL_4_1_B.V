/*	4-1 SELECTOR
	When SEL = 00b then OUT = A
	When SEL = 01b then OUT = B
	When SEL = 10b then OUT = C
	When SEL = 11b then OUT = D 	*/
module	SEL_4_1	( A, B, C, D, SEL, OUT );
input	A, B, C, D;											//Set 4 input 
input	[1:0] SEL;											//Set 2bits array input
output	OUT;												//Set output

	assign	OUT = ( SEL[1] == 0 )?							//if( SEL[1] == 0 ) then if( SEL[0] == 0) then OUT = A else OUT = B  
		 (( SEL[0] == 0 )? A: B ):(( SEL[0] == 0 )? C: D );	//else if( SEL[0] == 0) then OUT = C else OUT = D  

endmodule
