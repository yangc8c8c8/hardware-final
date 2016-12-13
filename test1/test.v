module test(clk,reset,play,keys,Pmod_JB_1,Pmod_JB_2,Pmod_JB_4);
	input clk;
	input reset;
	input play;
	input [13:0]keys;
	output Pmod_JB_1,Pmod_JB_2,Pmod_JB_4;
	
	wire clk16;
	wire reset_debounced;
	wire reset_onepulse ;
	
	
	clock_divider #(16) clk16_divider(clk,clk16);
	
	debounced pb_deb_reset(reset_debounced,reset,clk16);
	onepulse pb_1p_reset(reset_debounced,reset_onepulse,clk16);
	
	Player_control controler(.clk(clk),
							 .reset(reset_onepulse),
							 .play(play),
							 .keys(keys),
							 .PmodJB_1(Pmod_JB_1),
							 .PmodJB_2(Pmod_JB_2),
							 .PmodJB_4(Pmod_JB_4));
endmodule