/*
	A 18bits ring counter
*/

module Ring_counter_18bits(
	input clk,				//Set input clk
	input res,				//Set input res
	input sw,				//Set input sw
	output reg [17:0] OUT	//Set a 18bits reg output  
);

always @(posedge clk) begin
	if(res ==1'b0)
		OUT=17'b00000000000000001;	//reset when res as low , and set OUT data as 00001H
	else if(sw==1'b1)
		OUT={OUT[16:0],OUT[17]};	//if sw as HIGH then shift laft and let MSB to LSB
	else
		OUT={OUT[0],OUT[17:1]};		//if sw as low then shift right and let LSB to MSB
end

endmodule