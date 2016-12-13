module Player_control(clk,reset,play,music,PmodJB_1,PmodJB_2,PmodJB_4);
	input  clk,reset,play;
	input  [1:0]music;
	output PmodJB_1,PmodJB_2,PmodJB_4;
	
	`define HIGH 1'b0
	`define LOW  1'b1
	
	reg  state,nextstate;
	reg  [31:0]freq,now_freq,nextnow_freq;
	wire PWM_music;
	
	PWM_generater music_gen(reset,clk,freq,10'd512,done,PWM_music);
	
	always@(*)begin
		if(reset)
			freq=32'd0;
		else begin
			freq= (~play)	   ?32'd0  :
				  music==2'b00 ?32'd131:
				  music==2'b01 ?32'd261:
				  music==2'b10 ?32'd393:now_freq;
		end
	end
	
	always@(posedge clk)begin
		if(reset)begin
			state	<=`LOW;
			now_freq<=32'd131;
		end
		else begin
			state	<=nextstate;
			now_freq<=nextnow_freq;
		end
	end
	
	always@(*)begin
		case(state)
			`HIGH:begin
				nextstate   =done?`LOW  :`HIGH;
				nextnow_freq=done?32'd131:32'd393;
			end
			`LOW:begin
				nextstate   =done?`HIGH :`LOW ;
				nextnow_freq=done?32'd393:32'd131;
			end
			default begin
			    nextstate   =`LOW;
                nextnow_freq=32'd131;
			end
		endcase
	end
	
	assign PmodJB_1=PWM_music;
	assign PmodJB_2=1'b1;
	assign PmodJB_4=1'b1;
	
endmodule