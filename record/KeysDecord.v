<<<<<<< HEAD
module KeysDecoder(key_down,last_change,key_valid,clk,reset,pressed_key,direction,select,delete);
	input  clk,reset;
	input  key_valid;
	input  [8:0]last_change;
	input  [511:0]key_down;
	output reg[47:0]pressed_key;
	output reg[3:0]direction;
	output reg select,delete;
	integer i;
	
	wire [8:0]Dir_Code[0:3]={
		9'b0_0111_0101, //8-up
		9'b0_0111_0010, //2-down
		9'b0_0110_1011, //4-left
		9'b0_0111_0100  //6-right
		};
	
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
		9'b0_0101_0101 // 2H-Si 
	};
	
	always @(posedge clk)begin
		if(reset) begin
			pressed_key <= 48'd0;
			direction	<=	4'd0;
		end
		else begin
			if(key_valid)begin
				for(i=0;i<48;i=i+1)begin
					pressed_key[ i]<=key_down[Keys_Code[ i]];
				end
				for(i=0;i<4;i=i+1)begin
					direction[i]<=key_down[Dir_Code[ i]];
				end
				select<=key_down[9'b0_0010_1001];	//space
				delete<=key_down[9'b0_0001_0001];   //Left_ALT
			end
			else begin
				pressed_key <=pressed_key;
				direction	<=direction;
				select		<=select;
				delete		<=delete;
			end
		end
	end
	
=======
module KeysDecoder(key_down,last_change,key_valid,clk,reset,pressed_key,direction,select);
	input  clk,reset;
	input  key_valid;
	input  [8:0]last_change;
	input  [511:0]key_down;
	output reg[47:0]pressed_key;
	output reg[3:0]direction;
	output reg select;
	integer i;
	
	wire [8:0]Dir_Code[0:3]={
		9'b0_0111_0101, //8-up
		9'b0_0111_0010, //2-down
		9'b0_0110_1011, //4-left
		9'b0_0111_0100  //6-right
		};
	
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
		9'b0_0101_0101 // 2H-Si 
	};
	
	always @(posedge clk)begin
		if(reset) begin
			pressed_key <= 48'd0;
			direction	<=	4'd0;
		end
		else begin
			if(key_valid)begin
				for(i=0;i<48;i=i+1)begin
					pressed_key[ i]<=key_down[Keys_Code[ i]];
				end
				for(i=0;i<4;i=i+1)begin
					direction[i]<=key_down[Dir_Code[ i]];
				end
				select<=key_down[9'b0_0010_1001];	//space
			end
			else begin
				pressed_key <=pressed_key;
				direction	<=direction;
				select		<=select;
			end
		end
	end
	
>>>>>>> origin/master
endmodule