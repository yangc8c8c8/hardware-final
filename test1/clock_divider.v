module clock_divider(clk, clk26);
	input clk;
	output clk26;
	
	parameter size=26;
	reg [size-1:0]num;
	wire [size-1:0]next_num;
	
	always@(posedge clk)begin
		num<=next_num;
	end
	
	assign next_num=num+1;
	assign clk26=num[size-1];
	
endmodule