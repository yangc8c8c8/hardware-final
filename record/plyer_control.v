module Player_control(clk,clk2,reset,Begin,play,keys,h_cnt,v_cnt,vga_valid,start,PmodJB_1,PmodJB_2,PmodJB_4,RED,GREEN,BLUE);
	input  clk,clk2,reset,Begin,play,vga_valid;
	input  [47:0]keys;
	input  [9:0]h_cnt,v_cnt;
	output PmodJB_1,PmodJB_2,PmodJB_4;
	output [3:0]RED,GREEN,BLUE;
	output start;
	
	wire [31:0]freq,freqREC,freq_out;
	wire PWM_music,beat;
	wire [8:0]address;
	wire [10:0]pitch[0:511];
	wire [5:0]arbiter;
	wire [8:0]beat_num;
	
	PWM_generater beat_gen (reset,clk,32'd8   ,10'd512,beat     );
	PWM_generater music_gen(reset,clk,freq_out,10'd512,PWM_music);
	
	Record REC(reset,play,Begin,freq,beat,freqREC,start,beat_num);
	PixelGen Piano(clk2,arbiter,h_cnt,v_cnt,vga_valid,beat_num,RED,GREEN,BLUE);
	
	assign freq_out=play?freqREC:freq;
	assign freq=keys[ 0]?32'd130:
				keys[ 1]?32'd138:
				keys[ 2]?32'd146:
				keys[ 3]?32'd155:
				keys[ 4]?32'd164:
				keys[ 5]?32'd174:
				keys[ 6]?32'd185:
				keys[ 7]?32'd196:
				keys[ 8]?32'd207:
				keys[ 9]?32'd220:
				keys[10]?32'd233:
				keys[11]?32'd246:
				keys[12]?32'd261:
				keys[13]?32'd277:
				keys[14]?32'd293:
				keys[15]?32'd311:
				keys[16]?32'd329:
				keys[17]?32'd349:
				keys[18]?32'd369:
				keys[19]?32'd392:
				keys[20]?32'd415:
				keys[21]?32'd440:
				keys[22]?32'd466:
				keys[23]?32'd493:
				keys[24]?32'd523:
				keys[25]?32'd554:
				keys[26]?32'd587:
				keys[27]?32'd622:
				keys[28]?32'd659:
				keys[29]?32'd698:
				keys[30]?32'd739:
				keys[31]?32'd783:
				keys[32]?32'd830:
				keys[33]?32'd880:
				keys[34]?32'd932:
				keys[35]?32'd987:
				keys[36]?32'd1046:
				keys[37]?32'd1108:
				keys[38]?32'd1174:
				keys[39]?32'd1244:
				keys[40]?32'd1318:
				keys[41]?32'd1396:
				keys[42]?32'd1480:
				keys[43]?32'd1568:
				keys[44]?32'd1661:
				keys[45]?32'd1760:
				keys[46]?32'd1864:
				keys[47]?32'd1975:32'd0;

	assign arbiter=keys[ 0]?6'd 0:
	               keys[ 1]?6'd 1:
	               keys[ 2]?6'd 2:
	               keys[ 3]?6'd 3:
	               keys[ 4]?6'd 4:
	               keys[ 5]?6'd 5:
	               keys[ 6]?6'd 6:
	               keys[ 7]?6'd 7:
	               keys[ 8]?6'd 8:
	               keys[ 9]?6'd 9:
	               keys[10]?6'd10:
	               keys[11]?6'd11:
	               keys[12]?6'd12:
	               keys[13]?6'd13:
	               keys[14]?6'd14:
	               keys[15]?6'd15:
	               keys[16]?6'd16:
	               keys[17]?6'd17:
	               keys[18]?6'd18:
	               keys[19]?6'd19:
	               keys[20]?6'd20:
	               keys[21]?6'd21:
	               keys[22]?6'd22:
	               keys[23]?6'd23:
	               keys[24]?6'd24:
	               keys[25]?6'd25:
	               keys[26]?6'd26:
	               keys[27]?6'd27:
	               keys[28]?6'd28:
	               keys[29]?6'd29:
	               keys[30]?6'd30:
	               keys[31]?6'd31:
	               keys[32]?6'd32:
	               keys[33]?6'd33:
	               keys[34]?6'd34:
	               keys[35]?6'd35:
	               keys[36]?6'd36:
	               keys[37]?6'd37:
	               keys[38]?6'd38:
	               keys[39]?6'd39:
	               keys[40]?6'd40:
	               keys[41]?6'd41:
	               keys[42]?6'd42:
	               keys[43]?6'd43:
	               keys[44]?6'd44:
	               keys[45]?6'd45:
	               keys[46]?6'd46:
	               keys[47]?6'd47:6'd48;
	assign PmodJB_1=PWM_music;
	assign PmodJB_2=1'b1;
	assign PmodJB_4=1'b1;
	
endmodule