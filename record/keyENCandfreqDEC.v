module KeyENC_and_FreqDEC(key,key_encoded1,key_encoded2,freq1,freq2);
	input  [47:0]key;
	output [5:0]key_encoded1,key_encoded2;
	output [31:0]freq1,freq2;
	
	wire [47:0]used_bit=48'd1<<key_encoded1;
	wire [47:0]key_tmp =key^used_bit;
	
	assign key_encoded1=key[ 0]?6'd 0:
						key[ 1]?6'd 1:
						key[ 2]?6'd 2:
						key[ 3]?6'd 3:
						key[ 4]?6'd 4:
						key[ 5]?6'd 5:
						key[ 6]?6'd 6:
						key[ 7]?6'd 7:
						key[ 8]?6'd 8:
						key[ 9]?6'd 9:
						key[10]?6'd10:
						key[11]?6'd11:
						key[12]?6'd12:
						key[13]?6'd13:
						key[14]?6'd14:
						key[15]?6'd15:
						key[16]?6'd16:
						key[17]?6'd17:
						key[18]?6'd18:
						key[19]?6'd19:
						key[20]?6'd20:
						key[21]?6'd21:
						key[22]?6'd22:
						key[23]?6'd23:
						key[24]?6'd24:
						key[25]?6'd25:
						key[26]?6'd26:
						key[27]?6'd27:
						key[28]?6'd28:
						key[29]?6'd29:
						key[30]?6'd30:
						key[31]?6'd31:
						key[32]?6'd32:
						key[33]?6'd33:
						key[34]?6'd34:
						key[35]?6'd35:
						key[36]?6'd36:
						key[37]?6'd37:
						key[38]?6'd38:
						key[39]?6'd39:
						key[40]?6'd40:
						key[41]?6'd41:
						key[42]?6'd42:
						key[43]?6'd43:
						key[44]?6'd44:
						key[45]?6'd45:
						key[46]?6'd46:
						key[47]?6'd47:6'd48;
						
	assign freq1=key_tmp[ 0]?32'd130:
				 key_tmp[ 1]?32'd138:
				 key_tmp[ 2]?32'd146:
				 key_tmp[ 3]?32'd155:
				 key_tmp[ 4]?32'd164:
				 key_tmp[ 5]?32'd174:
				 key_tmp[ 6]?32'd185:
				 key_tmp[ 7]?32'd196:
				 key_tmp[ 8]?32'd207:
				 key_tmp[ 9]?32'd220:
				 key_tmp[10]?32'd233:
				 key_tmp[11]?32'd246:
				 key_tmp[12]?32'd261:
				 key_tmp[13]?32'd277:
				 key_tmp[14]?32'd293:
				 key_tmp[15]?32'd311:
				 key_tmp[16]?32'd329:
				 key_tmp[17]?32'd349:
				 key_tmp[18]?32'd369:
				 key_tmp[19]?32'd392:
				 key_tmp[20]?32'd415:
				 key_tmp[21]?32'd440:
				 key_tmp[22]?32'd466:
				 key_tmp[23]?32'd493:
				 key_tmp[24]?32'd523:
				 key_tmp[25]?32'd554:
				 key_tmp[26]?32'd587:
				 key_tmp[27]?32'd622:
				 key_tmp[28]?32'd659:
				 key_tmp[29]?32'd698:
				 key_tmp[30]?32'd739:
				 key_tmp[31]?32'd783:
				 key_tmp[32]?32'd830:
				 key_tmp[33]?32'd880:
				 key_tmp[34]?32'd932:
				 key_tmp[35]?32'd987:
				 key_tmp[36]?32'd1046:
				 key_tmp[37]?32'd1108:
				 key_tmp[38]?32'd1174:
				 key_tmp[39]?32'd1244:
				 key_tmp[40]?32'd1318:
				 key_tmp[41]?32'd1396:
				 key_tmp[42]?32'd1480:
				 key_tmp[43]?32'd1568:
				 key_tmp[44]?32'd1661:
				 key_tmp[45]?32'd1760:
				 key_tmp[46]?32'd1864:
				 key_tmp[47]?32'd1975:32'd0;
	
	assign key_encoded2=key_tmp[ 0]?6'd 0:
						key_tmp[ 1]?6'd 1:
						key_tmp[ 2]?6'd 2:
						key_tmp[ 3]?6'd 3:
						key_tmp[ 4]?6'd 4:
						key_tmp[ 5]?6'd 5:
						key_tmp[ 6]?6'd 6:
						key_tmp[ 7]?6'd 7:
						key_tmp[ 8]?6'd 8:
						key_tmp[ 9]?6'd 9:
						key_tmp[10]?6'd10:
						key_tmp[11]?6'd11:
						key_tmp[12]?6'd12:
						key_tmp[13]?6'd13:
						key_tmp[14]?6'd14:
						key_tmp[15]?6'd15:
						key_tmp[16]?6'd16:
						key_tmp[17]?6'd17:
						key_tmp[18]?6'd18:
						key_tmp[19]?6'd19:
						key_tmp[20]?6'd20:
						key_tmp[21]?6'd21:
						key_tmp[22]?6'd22:
						key_tmp[23]?6'd23:
						key_tmp[24]?6'd24:
						key_tmp[25]?6'd25:
						key_tmp[26]?6'd26:
						key_tmp[27]?6'd27:
						key_tmp[28]?6'd28:
						key_tmp[29]?6'd29:
						key_tmp[30]?6'd30:
						key_tmp[31]?6'd31:
						key_tmp[32]?6'd32:
						key_tmp[33]?6'd33:
						key_tmp[34]?6'd34:
						key_tmp[35]?6'd35:
						key_tmp[36]?6'd36:
						key_tmp[37]?6'd37:
						key_tmp[38]?6'd38:
						key_tmp[39]?6'd39:
						key_tmp[40]?6'd40:
						key_tmp[41]?6'd41:
						key_tmp[42]?6'd42:
						key_tmp[43]?6'd43:
						key_tmp[44]?6'd44:
						key_tmp[45]?6'd45:
						key_tmp[46]?6'd46:
						key_tmp[47]?6'd47:6'd48;
						
	assign freq2=key[ 0]?32'd130:
				 key[ 1]?32'd138:
				 key[ 2]?32'd146:
				 key[ 3]?32'd155:
				 key[ 4]?32'd164:
				 key[ 5]?32'd174:
				 key[ 6]?32'd185:
				 key[ 7]?32'd196:
				 key[ 8]?32'd207:
				 key[ 9]?32'd220:
				 key[10]?32'd233:
				 key[11]?32'd246:
				 key[12]?32'd261:
				 key[13]?32'd277:
				 key[14]?32'd293:
				 key[15]?32'd311:
				 key[16]?32'd329:
				 key[17]?32'd349:
				 key[18]?32'd369:
				 key[19]?32'd392:
				 key[20]?32'd415:
				 key[21]?32'd440:
				 key[22]?32'd466:
				 key[23]?32'd493:
				 key[24]?32'd523:
				 key[25]?32'd554:
				 key[26]?32'd587:
				 key[27]?32'd622:
				 key[28]?32'd659:
				 key[29]?32'd698:
				 key[30]?32'd739:
				 key[31]?32'd783:
				 key[32]?32'd830:
				 key[33]?32'd880:
				 key[34]?32'd932:
				 key[35]?32'd987:
				 key[36]?32'd1046:
				 key[37]?32'd1108:
				 key[38]?32'd1174:
				 key[39]?32'd1244:
				 key[40]?32'd1318:
				 key[41]?32'd1396:
				 key[42]?32'd1480:
				 key[43]?32'd1568:
				 key[44]?32'd1661:
				 key[45]?32'd1760:
				 key[46]?32'd1864:
				 key[47]?32'd1975:32'd0;
		
endmodule