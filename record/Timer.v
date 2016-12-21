module Timer(clk26,clk13,reset,start,Digit,Display);
	input clk26,clk13,reset;
	input start;
	output [3:0]Digit;
	output [6:0]Display;

	reg [3:0]BCD0,BCD1;
	reg carry;
	
	seven_segments(clk13,BCD0,BCD1,4'd0,4'd0,Digit,Display);
	
	always@(posedge clk26)begin
		if(reset)begin
			BCD0 <=4'd0;
			BCD1 <=4'd0;
			carry<=1'd0;
		end
		else if(start)begin
			BCD0 <=BCD0==4'd9 ?4'd0:BCD0+1'd1;
			BCD1 <=BCD1==4'd9 ?4'd0:carry?(BCD1+4'd1):BCD1;
			carry<=BCD0==4'd8 ?1'd1:1'd0;
		end
		else begin
			BCD0 <=4'd0;
			BCD1 <=4'd0;
			carry<=1'd0;
		end
	end
	
endmodule