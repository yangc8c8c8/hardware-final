module Player_control(clk,reset,Begin,play,keys,PmodJB_1,PmodJB_2,PmodJB_4);
	input  clk,reset,Begin,play;
	input  [47:0]keys;
	output PmodJB_1,PmodJB_2,PmodJB_4;
	
	wire [31:0]freq,freqREC,freq_out;
	wire PWM_music,beat;
	wire [8:0]address;
	wire [10:0]pitch[0:511];
	
	PWM_generater beat_gen (reset,clk,32'd8   ,10'd512,beat     );
	PWM_generater music_gen(reset,clk,freq_out,10'd512,PWM_music);
	
	Recording REC(reset,play,Begin,freq,beat,freqREC);
	
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

	assign PmodJB_1=PWM_music;
	assign PmodJB_2=1'b1;
	assign PmodJB_4=1'b1;
	
endmodule