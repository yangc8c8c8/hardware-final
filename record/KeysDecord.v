module KeysDecoder(key_down,last_change,key_valid,clk,reset,pressed_key);
	input  clk,reset;
	input  key_valid;
	input  [8:0]last_change;
	input  [511:0]key_down;
	output [47:0]pressed_key;
	
	wire [8:0]Keys_Code[0:47]={
		9'b0_0001_0010, // L-Do  
		9'b0_0001_1010, // L-Do# 
		9'b0_0010_0010, // L-Re  
		9'b0_0010_0001, // L-Re# 
		9'b0_0010_1010, // L-Mi  
		9'b0_0011_0010, // L-Fa  
		9'b0_0011_0001, // L-Fa# 
		9'b0_0011_1010, // L-So  
		9'b0_0100_0001, // L-So# 
		9'b0_0100_1001, // L-La  
		9'b0_0100_1010, // L-La# 
		9'b0_0101_1001, // L-Si  
		
		9'b0_0001_1100, // M-Do   
		9'b0_0001_1011, // M-Do#  
		9'b0_0010_0011, // M-Re   
		9'b0_0010_1011, // M-Re#  
		9'b0_0011_0100, // M-Mi   
		9'b0_0011_0011, // M-Fa   
		9'b0_0011_1011, // M-Fa#  
		9'b0_0100_0010, // M-So   
		9'b0_0100_1011, // M-So#  
		9'b0_0100_1100, // M-La   
		9'b0_0101_0010, // M-La#  
		9'b0_0101_1010, // M-Si   
		
		9'b0_0001_0101, // H-Do  
		9'b0_0001_1101, // H-Do# 
		9'b0_0010_0100, // H-Re  
		9'b0_0010_1101, // H-Re# 
		9'b0_0010_1100, // H-Mi  
		9'b0_0011_0101, // H-Fa  
		9'b0_0011_1100, // H-Fa# 
		9'b0_0100_0011, // H-So  
		9'b0_0100_0100, // H-So# 
		9'b0_0100_1101, // H-La  
		9'b0_0101_0100, // H-La# 
		9'b0_0101_1011, // H-Si  
		
		9'b0_0001_0110, // 2H-Do 
		9'b0_0001_1110, // 2H-Do#
		9'b0_0010_0110, // 2H-Re 
		9'b0_0010_0101, // 2H-Re#
		9'b0_0010_1110, // 2H-Mi 
		9'b0_0011_0110, // 2H-Fa 
		9'b0_0011_1101, // 2H-Fa#
		9'b0_0011_1110, // 2H-So 
		9'b0_0100_0110, // 2H-So#
		9'b0_0100_0101, // 2H-La 
		9'b0_0100_1110, // 2H-La#
		9'b0_0101_0101, // 2H-Si 
	};
	
	always @(posedge clk)begin
		if(reset) begin
			pressed_key <= 48'd0;
		end
		else begin
			if(key_valid)begin
				pressed_key[ 0]<=key_down[Keys_Code[ 0]];
				pressed_key[ 1]<=key_down[Keys_Code[ 1]];
				pressed_key[ 2]<=key_down[Keys_Code[ 2]];
				pressed_key[ 3]<=key_down[Keys_Code[ 3]];
				pressed_key[ 4]<=key_down[Keys_Code[ 4]];
				pressed_key[ 5]<=key_down[Keys_Code[ 5]];
				pressed_key[ 6]<=key_down[Keys_Code[ 6]];
				pressed_key[ 7]<=key_down[Keys_Code[ 7]];
				pressed_key[ 8]<=key_down[Keys_Code[ 8]];
				pressed_key[ 9]<=key_down[Keys_Code[ 9]];
				pressed_key[10]<=key_down[Keys_Code[10]];
				pressed_key[11]<=key_down[Keys_Code[11]];
				pressed_key[12]<=key_down[Keys_Code[12]];
				pressed_key[13]<=key_down[Keys_Code[13]];
				pressed_key[14]<=key_down[Keys_Code[14]];
				pressed_key[15]<=key_down[Keys_Code[15]];
				pressed_key[16]<=key_down[Keys_Code[16]];
				pressed_key[17]<=key_down[Keys_Code[17]];
				pressed_key[18]<=key_down[Keys_Code[18]];
				pressed_key[19]<=key_down[Keys_Code[19]];
				pressed_key[20]<=key_down[Keys_Code[20]];
				pressed_key[21]<=key_down[Keys_Code[21]];
				pressed_key[22]<=key_down[Keys_Code[22]];
				pressed_key[23]<=key_down[Keys_Code[23]];
				pressed_key[24]<=key_down[Keys_Code[24]];
				pressed_key[25]<=key_down[Keys_Code[25]];
				pressed_key[26]<=key_down[Keys_Code[26]];
				pressed_key[27]<=key_down[Keys_Code[27]];
				pressed_key[28]<=key_down[Keys_Code[28]];
				pressed_key[29]<=key_down[Keys_Code[29]];
				pressed_key[30]<=key_down[Keys_Code[30]];
				pressed_key[31]<=key_down[Keys_Code[31]];
				pressed_key[32]<=key_down[Keys_Code[32]];
				pressed_key[33]<=key_down[Keys_Code[33]];
				pressed_key[34]<=key_down[Keys_Code[34]];
				pressed_key[35]<=key_down[Keys_Code[35]];
				pressed_key[36]<=key_down[Keys_Code[36]];
				pressed_key[37]<=key_down[Keys_Code[37]];
				pressed_key[38]<=key_down[Keys_Code[38]];
				pressed_key[39]<=key_down[Keys_Code[39]];
				pressed_key[40]<=key_down[Keys_Code[40]];
				pressed_key[41]<=key_down[Keys_Code[41]];
				pressed_key[42]<=key_down[Keys_Code[42]];
				pressed_key[43]<=key_down[Keys_Code[43]];
				pressed_key[44]<=key_down[Keys_Code[44]];
				pressed_key[45]<=key_down[Keys_Code[45]];
				pressed_key[46]<=key_down[Keys_Code[46]];
				pressed_key[47]<=key_down[Keys_Code[47]];
			end
			else begin
				pressed_key<=pressed_key;
			end
		end
	end
	
endmodule