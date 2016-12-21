module Record(reset,play,Begin,freq,beat,freqREC,start);
	input  reset,Begin,play;
	input  [31:0]freq;
	input  beat;
	output [31:0]freqREC;
	output start;
	
	`define IDLEstate   2'b00
	`define RECORDstate 2'b01
	`define PLAYstate   2'b10
	`define STOPstate	2'b11
	`define MAXbeat_num 9'd511
	
	wire contREC,contPLAY;
	reg [1:0]state,nextstate;
	reg [8:0]address,nextaddr;
	reg [8:0]beat_num,nextbeat_num;
	reg [10:0]pitch[0:511];
	
	always @(posedge beat)begin
		if(reset)begin
			state	<=`IDLEstate;
			beat_num<=9'd0;
			address <=9'd0;
		end
		else begin
			state	<=nextstate;
			beat_num<=nextbeat_num;
			address <=nextaddr;
		end
	end
	
	always@(posedge beat)begin
		if(reset)
			pitch[beat_num]<=11'd0;
		else if(state==`RECORDstate)
			pitch[beat_num]<=freq[10:0];
		else
			pitch[beat_num]<=pitch[beat_num];
	end
    
	always @(*)begin
		case(state)
			`IDLEstate:begin
				nextstate	=Begin?`RECORDstate:
							 play ?`PLAYstate  :`IDLEstate;
				nextbeat_num=9'd0;
				nextaddr	=address;
			end
			`RECORDstate:begin
				nextstate	=contREC?`RECORDstate :`IDLEstate;
				nextbeat_num=contREC?(beat_num+9'd1):9'd0;
				nextaddr	=contREC?(beat_num+9'd1):address ;
			end
			`PLAYstate:begin
				nextstate	=play	 ?(beat_num<address?`PLAYstate:`STOPstate):`IDLEstate;
				nextbeat_num=contPLAY?(beat_num+9'd1):9'd0;
				nextaddr	=address;
			end
			`STOPstate:begin
				nextstate	=play?`STOPstate:`IDLEstate;
				nextbeat_num=9'd0;
				nextaddr	=address;
			end
			default begin
				nextstate	=`IDLEstate;
				nextbeat_num=9'd0;
				nextaddr	=9'd0;
			end
		endcase
	end
	
	assign start   =state==`RECORDstate?1'd1:1'd0;
	assign freqREC =state==`PLAYstate?{21'd0,pitch[beat_num]}:32'd0; 
	assign contPLAY=play &&(beat_num<address)	  ;
	assign contREC =Begin&&(beat_num<`MAXbeat_num);
	
endmodule