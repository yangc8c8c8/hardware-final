<<<<<<< HEAD
module pitch2position(pitch,position,black);
	input  [5:0]pitch;
	output reg [9:0]position;
	output reg black;
	
	always@(*)begin
		case(pitch)
			6'd 0:begin
				position=10'd  1;
				black=1'b0;
			end
			6'd 1:begin
				position=10'd 18;
				black=1'b1;
			end
			6'd 2:begin
				position=10'd 24;
				black=1'b0;
			end
			6'd 3:begin
				position=10'd 41;
				black=1'b1;
			end
			6'd 4:begin
				position=10'd 47;
				black=1'b0;
			end
			6'd 5:begin
				position=10'd 70;
				black=1'b0;
			end
			6'd 6:begin
				position=10'd 86;
				black=1'b1;
			end
			6'd 7:begin
				position=10'd 93;
				black=1'b0;
			end
			6'd 8:begin
				position=10'd110;
				black=1'b1;
			end
			6'd 9:begin
				position=10'd116;
				black=1'b0;
			end
			6'd10:begin
				position=10'd133;
				black=1'b1;
			end
			6'd11:begin
				position=10'd138;
				black=1'b0;
			end
			
			6'd12:begin
				position=10'd161;
				black=1'b0;
			end
			6'd13:begin
				position=10'd178;
				black=1'b1;
			end
			6'd14:begin 
				position=10'd184;  
				black=1'b0; 
			end
			6'd15:begin 
				position=10'd201;  
				black=1'b1; 
			end
			6'd16:begin 
				position=10'd208;  
				black=1'b0; 
			end
			6'd17:begin 
				position=10'd231;  
				black=1'b0; 
			end
			6'd18:begin 
				position=10'd247;  
				black=1'b1; 
			end
			6'd19:begin 
				position=10'd254;  
				black=1'b0; 
			end
			6'd20:begin 
				position=10'd270;  
				black=1'b1; 
			end
			6'd21:begin 
				position=10'd276;  
				black=1'b0; 
			end
			6'd22:begin 
				position=10'd293;  
				black=1'b1; 
			end
			6'd23:begin 
				position=10'd299;  
				black=1'b0; 
			end
			
			6'd24:begin 
				position=10'd321;  
				black=1'b0; 
			end
			6'd25:begin 
				position=10'd338;  
				black=1'b1; 
			end
			6'd26:begin 
				position=10'd344;  
				black=1'b0; 
			end
			6'd27:begin 
				position=10'd360;  
				black=1'b1; 
			end
			6'd28:begin 
				position=10'd367; 
				black=1'b0; 
			end
			6'd29:begin 
				position=10'd390; 
				black=1'b0; 
			end
			6'd30:begin 
				position=10'd406; 
				black=1'b1; 
			end
			6'd31:begin 
				position=10'd413; 
				black=1'b0;
			end
			6'd32:begin 
				position=10'd429;  
				black=1'b1; 
			end
			6'd33:begin 
				position=10'd436;  
				black=1'b0; 
			end
			6'd34:begin 
				position=10'd452;  
				black=1'b1; 
			end
			6'd35:begin 
				position=10'd459;  
				black=1'b0; 
			end
			
			6'd36:begin 
				position=10'd480;  
				black=1'b0;
			end
			6'd37:begin 
				position=10'd497;  
				black=1'b1; 
			end
			6'd38:begin
				position=10'd504;  
				black=1'b0; 
			end
			6'd39:begin 
				position=10'd520;  
				black=1'b1; 
			end
			6'd40:begin 
				position=10'd527;  
				black=1'b0; 
			end
			6'd41:begin 
				position=10'd550;  
				black=1'b0;				
			end
			6'd42:begin 
				position=10'd566;  
				black=1'b1; 
			end
			6'd43:begin 
				position=10'd573;  
				black=1'b0; 
			end
			6'd44:begin 
				position=10'd589;   
				black=1'b1; 
			end
			6'd45:begin 
				position=10'd596;  
				black=1'b0; 
			end
			6'd46:begin 
				position=10'd612;   
				black=1'b1; 
			end
			6'd47:begin 
				position=10'd618;   
				black=1'b0; 
			end
			default begin
				position=10'd640;
				black=1'd0;
			end
		endcase
	end
	
=======
module pitch2position(pitch,position,black);
	input  [5:0]pitch;
	output reg [9:0]position;
	output reg black;
	
	always@(*)begin
		case(pitch)
			6'd 0:begin
				position=10'd  1;
				black=1'b0;
			end
			6'd 1:begin
				position=10'd 18;
				black=1'b1;
			end
			6'd 2:begin
				position=10'd 24;
				black=1'b0;
			end
			6'd 3:begin
				position=10'd 41;
				black=1'b1;
			end
			6'd 4:begin
				position=10'd 47;
				black=1'b0;
			end
			6'd 5:begin
				position=10'd 70;
				black=1'b0;
			end
			6'd 6:begin
				position=10'd 86;
				black=1'b1;
			end
			6'd 7:begin
				position=10'd 93;
				black=1'b0;
			end
			6'd 8:begin
				position=10'd110;
				black=1'b1;
			end
			6'd 9:begin
				position=10'd116;
				black=1'b0;
			end
			6'd10:begin
				position=10'd133;
				black=1'b1;
			end
			6'd11:begin
				position=10'd138;
				black=1'b0;
			end
			
			6'd12:begin
				position=10'd161;
				black=1'b0;
			end
			6'd13:begin
				position=10'd178;
				black=1'b1;
			end
			6'd14:begin 
				position=10'd184;  
				black=1'b0; 
			end
			6'd15:begin 
				position=10'd201;  
				black=1'b1; 
			end
			6'd16:begin 
				position=10'd208;  
				black=1'b0; 
			end
			6'd17:begin 
				position=10'd231;  
				black=1'b0; 
			end
			6'd18:begin 
				position=10'd247;  
				black=1'b1; 
			end
			6'd19:begin 
				position=10'd254;  
				black=1'b0; 
			end
			6'd20:begin 
				position=10'd270;  
				black=1'b1; 
			end
			6'd21:begin 
				position=10'd276;  
				black=1'b0; 
			end
			6'd22:begin 
				position=10'd293;  
				black=1'b1; 
			end
			6'd23:begin 
				position=10'd299;  
				black=1'b0; 
			end
			
			6'd24:begin 
				position=10'd321;  
				black=1'b0; 
			end
			6'd25:begin 
				position=10'd338;  
				black=1'b1; 
			end
			6'd26:begin 
				position=10'd344;  
				black=1'b0; 
			end
			6'd27:begin 
				position=10'd360;  
				black=1'b1; 
			end
			6'd28:begin 
				position=10'd367; 
				black=1'b0; 
			end
			6'd29:begin 
				position=10'd390; 
				black=1'b0; 
			end
			6'd30:begin 
				position=10'd406; 
				black=1'b1; 
			end
			6'd31:begin 
				position=10'd413; 
				black=1'b0;
			end
			6'd32:begin 
				position=10'd429;  
				black=1'b1; 
			end
			6'd33:begin 
				position=10'd436;  
				black=1'b0; 
			end
			6'd34:begin 
				position=10'd452;  
				black=1'b1; 
			end
			6'd35:begin 
				position=10'd459;  
				black=1'b0; 
			end
			
			6'd36:begin 
				position=10'd480;  
				black=1'b0;
			end
			6'd37:begin 
				position=10'd497;  
				black=1'b1; 
			end
			6'd38:begin
				position=10'd504;  
				black=1'b0; 
			end
			6'd39:begin 
				position=10'd520;  
				black=1'b1; 
			end
			6'd40:begin 
				position=10'd527;  
				black=1'b0; 
			end
			6'd41:begin 
				position=10'd550;  
				black=1'b0;				
			end
			6'd42:begin 
				position=10'd566;  
				black=1'b1; 
			end
			6'd43:begin 
				position=10'd573;  
				black=1'b0; 
			end
			6'd44:begin 
				position=10'd589;   
				black=1'b1; 
			end
			6'd45:begin 
				position=10'd596;  
				black=1'b0; 
			end
			6'd46:begin 
				position=10'd612;   
				black=1'b1; 
			end
			6'd47:begin 
				position=10'd618;   
				black=1'b0; 
			end
			default begin
				position=10'd640;
				black=1'd0;
			end
		endcase
	end
	
>>>>>>> origin/master
endmodule