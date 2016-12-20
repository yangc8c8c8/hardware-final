module Record_mode(clk,reset,Begin,Play,PS2_CLK,PS2_DATA,Pmod_JB_1,Pmod_JB_2,Pmod_JB_4);
	input clk;
	input reset;
	input Begin,Play;
	inout PS2_DATA,PS2_CLK;
	output Pmod_JB_1,Pmod_JB_2,Pmod_JB_4;
	
	wire clk16;
	wire reset_debounced;
	wire reset_onepulse ;
	wire key_valid;
	wire [8:0]last_change;
	wire [511:0]key_down;
	
	wire [47:0]pressed_key;
	
	clock_divider #(16) clk16_divider(clk,clk16);
	
	debounced pb_deb_reset(reset_debounced,reset,clk16);
	onepulse pb_1p_reset(reset_debounced,reset_onepulse,clk16);
	
	KeyboardDecoder keyboardDEC(key_down,last_change,key_valid,PS2_DATA,PS2_CLK,reset,clk);
	KeysDecoder keysDEC(key_down,last_change,key_valid,clk,reset,pressed_key);
	
	Player_control controler(.clk(clk),
							 .reset(reset_onepulse),
							 .Begin(Begin),
							 .play(Play),
							 .keys(pressed_key),
							 .PmodJB_1(Pmod_JB_1),
							 .PmodJB_2(Pmod_JB_2),
							 .PmodJB_4(Pmod_JB_4));
endmodule