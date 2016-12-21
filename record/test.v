module Record_mode(clk,reset,Begin,Play,Digit,Display,PS2_CLK,PS2_DATA,
				   Pmod_JB_1,Pmod_JB_2,Pmod_JB_4,hsync,vsync,vgaRed,vgaBlue,vgaGreen);
	input  clk;
	input  reset;
	input  Begin,Play;
	inout  PS2_DATA,PS2_CLK;
	output Pmod_JB_1,Pmod_JB_2,Pmod_JB_4;
	output [3:0]Digit;
	output [6:0]Display;
	output hsync,vsync;
	output [3:0]vgaRed,vgaGreen,vgaBlue;
	
	wire clk26,clk16,clk13,clk2;
	wire reset_debounced;
	wire reset_onepulse ;
	wire key_valid,vga_valid;
	wire [8:0]last_change;
	wire [511:0]key_down;
	wire RECstart;
	wire [47:0]pressed_key;
	wire [9:0]h_cnt,v_cnt;
	
	clock_divider #(2)	clk2_divider (clk,clk2 );
	clock_divider #(13) clk13_divider(clk,clk13);
	clock_divider #(16) clk16_divider(clk,clk16);
	clock_divider #(26) clk26_divider(clk,clk26);
	
	debounced pb_deb_reset(reset_debounced,reset,clk16);
	onepulse pb_1p_reset(reset_debounced,reset_onepulse,clk16);
	
	KeyboardDecoder keyboardDEC(key_down,last_change,key_valid,PS2_DATA,PS2_CLK,reset,clk);
	KeysDecoder keysDEC(key_down,last_change,key_valid,clk,reset,pressed_key);
	
	Timer (clk26,clk13,reset,RECstart,Digit,Display);
	
	vga_controller(clk2,reset,hsync,vsync,vga_valid,h_cnt,v_cnt);
	
	Player_control controler(.clk(clk),
							 .clk2(clk2),
							 .reset(reset_onepulse),
							 .Begin(Begin),
							 .play(Play),
							 .keys(pressed_key),
							 .h_cnt(h_cnt),.v_cnt(v_cnt),
							 .vga_valid(vga_valid),
							 .start(RECstart),
							 .PmodJB_1(Pmod_JB_1),
							 .PmodJB_2(Pmod_JB_2),
							 .PmodJB_4(Pmod_JB_4),
							 .RED(vgaRed),
							 .GREEN(vgaGreen),
							 .BLUE(vgaBlue));
endmodule