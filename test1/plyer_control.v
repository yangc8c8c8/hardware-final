module Player_control(clk,reset,play,keys,PmodJB_1,PmodJB_2,PmodJB_4);
	input  clk,reset,play;
	input  [13:0]keys;
	output PmodJB_1,PmodJB_2,PmodJB_4;
	
	reg [9:0]duty;
	wire [31:0]freqh,freql,freq,freq_out;
	wire PWM_music,done,clk20;
	
	PWM_generater music_gen(reset,clk,freq,duty,done,PWM_music);
	
	PWMdividor divid(.clk(clk),
					 .reset(reset),
					 .freqh(freqh),
					 .freql(freql),
					 .done(done),
					 .freq_out(freq_out));

	clock_divider #(20) clk16_divider(clk,clk20);
	
	always@(posedge clk20)begin
		if(duty==10'd0)
			duty<=10'd512;
		else
			duty<=duty/10'd2;
	end
					 
	assign freq=play?freq_out:32'd0;
	assign freqh=keys[0]?32'd494:
				 keys[1]?32'd440:
				 keys[2]?32'd392:
	             keys[3]?32'd349:
				 keys[4]?32'd329:
				 keys[5]?32'd294:
				 keys[6]?32'd262:32'd0;
	assign freql=keys[7]?32'd247:
				 keys[8]?32'd220:
				 keys[9]?32'd196:
				 keys[10]?32'd175:
				 keys[11]?32'd165:
				 keys[12]?32'd147:
				 keys[13]?32'd131:32'd0;
	assign PmodJB_1=PWM_music;
	assign PmodJB_2=1'b1;
	assign PmodJB_4=1'b1;
	
endmodule