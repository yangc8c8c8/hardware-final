module Player_control(clk,clk2,reset,Begin,EDIT,play,keys,direction,select,h_cnt,v_cnt,vga_valid,beat_num,start,PmodJB_1,PmodJB_2,PmodJB_4,RED,GREEN,BLUE);
	input  clk,clk2,reset,Begin,EDIT,play,vga_valid;
	input  [47:0]keys;
	input  [3:0]direction;
	input  select;
	input  [9:0]h_cnt,v_cnt;
	output PmodJB_1,PmodJB_2,PmodJB_4;
	output [3:0]RED,GREEN,BLUE;
	output start;
	output [8:0]beat_num;
	
	wire gameSTART;
	wire [31:0]freq,freqREC,freq_out;
	wire PWM_music,beat,pixel_shift;
	wire [8:0]address;
	wire [10:0]pitch[0:511];
	wire [5:0]arbiter,freqDEC_REC;
	wire [8:0]beat_num;
	
	PWM_generater shift_gen(reset,clk,32'd112 ,10'd512,pixel_shift	);
	PWM_generater beat2_gen(reset,clk,32'd16  ,10'd512,beat     	);
	PWM_generater music_gen(reset,clk,freq_out,10'd512,PWM_music	);
	
	Record REC(.reset(reset),
			   .clk2(clk2),
			   .arbiter(arbiter),
			   .keys(keys),
			   .direction(direction),
			   .select(select),
			   .h_cnt(h_cnt),
			   .v_cnt(v_cnt),
			   .vga_valid(vga_valid),
			   .shift_beat(pixel_shift),
			   .play(play),
			   .EDIT(EDIT),
			   .Begin(Begin),
			   .beat(beat),
			   .freqDEC_REC(freqDEC_REC),
			   .start(start),
			   .gameSTART(gameSTART),
			   .RED(RED),
			   .GREEN(GREEN),
			   .BLUE(BLUE),
			   .beat_num(beat_num));
			   
	JudgeModule JM(.gameSTART(gameSTART),
				  
				  );
	FrequncyDEC freqdec1(keys,freq);
	KeyDEC	keydec1(freqDEC_REC,freqREC);
	KeyENC	keyEnc1(keys,arbiter);
	
	assign freq_out=play?freqREC:freq;
	assign PmodJB_1=PWM_music;
	assign PmodJB_2=1'b1;
	assign PmodJB_4=1'b1;
	
endmodule