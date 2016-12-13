module onepulse(pb_debounced,pb_single_pulse,clk);
	input clk,pb_debounced;
	output reg pb_single_pulse;
	reg pb_debounced_delay;
	
	always @(posedge clk)begin
		pb_single_pulse<=pb_debounced&&~pb_debounced_delay;
		pb_debounced_delay<=pb_debounced;
	end
	
endmodule