module KeyENC(key,key_encoded);
	input  [47:0]key;
	output [5:0]key_encoded;
	
	assign key_encoded =key[ 0]?6'd 0:
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
endmodule