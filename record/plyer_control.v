<<<<<<< HEAD
module Player_control(clk,clk2,reset,Begin,EDIT,play,demo,clean,speed,keys,direction,select,delete,editObj,h_cnt,v_cnt,vga_valid,
					 edit,beat_num,beat,LEDclk,start,PmodJB_1,PmodJB_2,PmodJB_4,PmodJC_1,PmodJC_2,PmodJC_4,RED,GREEN,BLUE);
	input  clk,clk2,reset,Begin,EDIT,play,vga_valid,clean,demo;
	input  [1:0]speed;
	input  [47:0]keys;
	input  [3:0]direction;
	input  select,delete,editObj;
	input  [9:0]h_cnt,v_cnt;
	output PmodJB_1,PmodJB_2,PmodJB_4;
	output PmodJC_1,PmodJC_2,PmodJC_4;
	output [3:0]RED,GREEN,BLUE;
	output start;
	output beat,LEDclk,edit;
	output [9:0]beat_num;
	
	reg  [31:0]beat_speed,shift_speed,LEDspeed;
	wire [31:0]freq1,freqREC1,freq_out1;
	wire [31:0]freq2,freqREC2,freq_out2;
	wire PWM_music1,PWM_music2,beat,pixel_shift;
	wire [5:0]arbiter1,freqDEC_REC1;
	wire [5:0]arbiter2,freqDEC_REC2;
	
	PWM_generater LEDclk_gen(reset,clk,LEDspeed   ,10'd512,LEDclk     	);
	PWM_generater shift_gen (reset,clk,shift_speed,10'd512,pixel_shift  );
	PWM_generater beat_gen  (reset,clk,beat_speed ,10'd512,beat     	);
	PWM_generater music_gen1(reset,clk,freq_out1  ,10'd512,PWM_music1	);
	PWM_generater music_gen2(reset,clk,freq_out2  ,10'd512,PWM_music2	);
	
	Record REC(.reset(reset),
			   .clk2(clk2),
			   .arbiter1(arbiter1),
			   .arbiter2(arbiter2),
			   .direction(direction),
			   .select(select),
			   .delete(delete),
			   .editObj(editObj),
			   .h_cnt(h_cnt),
			   .v_cnt(v_cnt),
			   .vga_valid(vga_valid),
			   .shift_beat(pixel_shift),
			   .play(play),
			   .edit(edit),
			   .beat_num(beat_num),
			   .clean(clean),
			   .demo(demo),
			   .EDIT(EDIT),
			   .Begin(Begin),
			   .beat(beat),
			   .freqDEC_REC1(freqDEC_REC1),
			   .freqDEC_REC2(freqDEC_REC2),
			   .start(start),
			   .RED(RED),
			   .GREEN(GREEN),
			   .BLUE(BLUE));
			   
	KeyDEC	keydec1(freqDEC_REC1,freqREC1);
	KeyDEC	keydec2(freqDEC_REC2,freqREC2);
	KeyENC_and_FreqDEC	keyEnc_and_freqDEC1(keys,arbiter1,arbiter2,freq1,freq2);
	
	assign freq_out1=play?freqREC1:freq1;
	assign freq_out2=play?freqREC2:freq2;
	
	assign PmodJB_1=PWM_music1;
	assign PmodJB_2=1'b1;
	assign PmodJB_4=1'b1;
	assign PmodJC_1=PWM_music2;
	assign PmodJC_2=1'b1;
	assign PmodJC_4=1'b1;
	
	always@(*) begin 
		case(speed)
			2'b00:begin
				beat_speed =32'd16;
				shift_speed=32'd96;
				LEDspeed   =32'd64;
			end
			2'b01:begin
				beat_speed =32'd24;
				shift_speed=32'd144;
				LEDspeed   =32'd96;
			end
			2'b10:begin
				beat_speed =32'd28;
				shift_speed=32'd168;
				LEDspeed   =32'd112;
			end
			2'b11:begin
				beat_speed =32'd32;
				shift_speed=32'd192;
				LEDspeed   =32'd128;
			end
			default begin
				beat_speed =32'd16;
				shift_speed=32'd96;
				LEDspeed   =32'd64;
			end
		endcase
	end
	
=======
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
	
>>>>>>> origin/master
endmodule