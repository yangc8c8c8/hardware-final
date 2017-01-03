module debounced(pb_debounced,pb,clk);
	input pb,clk;
	output pb_debounced;
	reg [3:0]shift_reg;
	
	always@(posedge clk)begin
		shift_reg[3:0]<={shift_reg[2:0],pb};
	end
	assign pb_debounced=(&shift_reg?1'b1:1'b0);

endmodule