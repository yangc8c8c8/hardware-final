module Record(reset,play,Begin,EDIT,beat,freqDEC_REC,start,gameSTART,beat_num,direction,select,
			  clk2,arbiter,keys,h_cnt,v_cnt,vga_valid,shift_beat,RED,GREEN,BLUE);
	input  reset,Begin,EDIT,play;
	input  beat;
	output [5:0]freqDEC_REC;
	output start;
	output [9:0]beat_num;
	
	input  clk2,vga_valid,shift_beat;
	input  [5:0]arbiter;
	input  [47:0]keys;
	input  [3:0]direction;
	input  select;
	input  [9:0]h_cnt,v_cnt;
	output [3:0]RED,GREEN,BLUE;
	
	output gameSTART;
	
	`define IDLEstate   3'b000
	`define RECORDstate 3'b001
	`define PLAYstate   3'b010
	`define STOPstate	3'b011
	`define EDITstate	3'b100
	`define MAXbeat_num 10'd1023
	
	//recording variables
	wire contREC,contPLAY;
	wire [9:0]read_addr;
	reg [2:0]state,nextstate;
	reg [9:0]max_address,nextmax_addr;
	reg [9:0]beat_num,nextbeat_num;
	reg [5:0]pitch_selec,nextpitch_selec;
	reg [5:0]pitch,nextpitch;
	wire [5:0]pitch_saved;
	reg write_en,nextwrite_en;
	reg gameSTART;
	
	//display variables
	wire [11:0]data,pixel_saved;
	wire [16:0]pixel_addr;
	wire [3:0]arbiter_mod12,arbiter_div12;
	wire black,black_edit,black_edit_play;
	wire [11:0]gray=12'b000011110000;
	wire [11:0]red=12'b111100000000;
	wire [11:0]orange=12'b111110110100;
	wire [9:0]position,position_w;
	wire [9:0]red_position,red_position_w;
	wire [9:0]pressed,pressed_w;
	wire [9:0]edit_display_helper;
	wire [9:0]play_display_helper;
	reg  [9:0]x[0:63];
	reg  [11:0]pixel_proper;
	reg	 [9:0]y[0:63];
	reg  [9:0]sheet_offset,nextsheet_offset;
	reg	 [5:0]index;
	reg  [63:0]active_y;
	reg  [63:0]pixel_proper_helper;
	integer i,j,k;
	
	
	//---------------------memorying & playing------------------//
	
	blk_mem_gen_1 blk_mem_gen_1_inst(	//6*1024
      .clka(clk2),
      .clkb(clk2),
      .wea(write_en),
      .addra(beat_num),
      .addrb(read_addr),
      .dina(pitch),
      .doutb(pitch_saved)
    ); 
	
	always @(posedge beat)begin
		if(reset)begin
			state		<=`IDLEstate;
			beat_num	<=10'd0;
			max_address <=10'd0;
			write_en	<=1'b0;
			pitch		<=6'd0;
			sheet_offset<=10'd0;
			pitch_selec <=6'd0;
			gameSTART	<=1'b0;
		end
		else begin
			state		<=nextstate;
			beat_num	<=nextbeat_num;
			max_address <=nextmax_addr;
			write_en	<=nextwrite_en;
			pitch		<=nextpitch;
			sheet_offset<=nextsheet_offset;
			pitch_selec <=nextpitch_selec;
			gameSTART	<=state==`PLAYstate?1'b1:1'b0;
		end
	end
    
	always @(*)begin
		case(state)
			`IDLEstate:begin
				nextstate	=Begin?`RECORDstate:
							 EDIT ?`EDITstate  :
							 play ?`PLAYstate  :`IDLEstate;
				nextbeat_num=10'd0;
				nextmax_addr=max_address;
				nextwrite_en=Begin?1'b1:1'b0;
				nextpitch   =6'd48;
				nextsheet_offset=10'd0;
				nextpitch_selec=6'd0;
			end
			`RECORDstate:begin
				nextstate	=contREC?`RECORDstate :`IDLEstate;
				nextbeat_num=contREC?(beat_num+10'd1):10'd0;
				nextmax_addr=contREC?(beat_num+10'd1):max_address;
				nextwrite_en=contREC?1'b1:1'b0;
				nextpitch   =arbiter;
				nextsheet_offset=10'd0;
				nextpitch_selec=6'd0;
			end
			`PLAYstate:begin
				nextstate	=play	 ?(beat_num<max_address?`PLAYstate:`STOPstate):`IDLEstate;
				nextbeat_num=contPLAY?(beat_num+10'd1):10'd0;
				nextmax_addr=max_address;
				nextwrite_en=1'b0;
				nextpitch   =6'd48;
				nextsheet_offset=contPLAY?(sheet_offset+10'd1):10'd0;
				nextpitch_selec=6'd0;
			end
			`STOPstate:begin
				nextstate	=play?`STOPstate:`IDLEstate;
				nextbeat_num=10'd0;
				nextmax_addr=max_address;
				nextwrite_en=1'b0;
				nextpitch   =6'd48;
				nextsheet_offset=10'd0;
				nextpitch_selec=6'd0;
			end
			`EDITstate:begin
				nextstate	=EDIT?`EDITstate:`IDLEstate;
				nextbeat_num=direction[0]?(beat_num==10'd0 ?beat_num:beat_num-10'd1):
							 direction[1]?(beat_num==max_address?beat_num:beat_num+10'd1):beat_num;
				nextmax_addr=max_address;
				nextwrite_en=select;
				nextpitch   =pitch_selec;
				nextsheet_offset=sheet_offset==beat_num?(direction[0]?(beat_num==10'd0 ?sheet_offset:sheet_offset-10'd1):sheet_offset):
								 (sheet_offset+10'd63)==beat_num?(direction[1]?(beat_num==10'd1023 ?sheet_offset:sheet_offset+10'd1):sheet_offset):sheet_offset;
				nextpitch_selec=direction[2]?(pitch_selec==6'd0  ?pitch_selec:pitch_selec-6'd1):
								direction[3]?(pitch_selec==6'd47 ?pitch_selec:pitch_selec+6'd1):pitch_selec;
			end
			default begin
				nextstate	=`IDLEstate;
				nextbeat_num=10'd0;
				nextmax_addr=10'd0;
				nextwrite_en=1'b0;
				nextsheet_offset=10'd0;
				nextpitch   =6'd48;
				nextpitch_selec=6'd0;
			end
		endcase
	end
	
	assign read_addr=EDIT?edit_display_helper:(play?play_display_helper:beat_num);
	assign start   =state==`RECORDstate?1'd1:1'd0;
	assign freqDEC_REC =state==`PLAYstate?pitch_saved:6'd63;  //larger than 48 will be decoded as 0 hz
	assign contPLAY=play &&(beat_num<max_address);
	assign contREC =Begin&&(beat_num<`MAXbeat_num);
	//*****************MEMORYING END***************************//
	
	//-----------------displayiny------------------------------//
	
	assign pixel_addr=h_cnt+640*(v_cnt-10'd384);
	
	pitch2position p2p(arbiter,pressed,black);
	pitch2position p2p_edit_play(pitch_saved,position,black_edit_play);
	pitch2position p2p_edit(pitch_selec,red_position,black_edit);
 
    blk_mem_gen_0 blk_mem_gen_0_inst(		//12*61440
      .clka(clk2),
      .wea(0),
      .addra(pixel_addr),
      .dina(data[11:0]),
      .douta(pixel_saved)
    ); 
	
	
	always@(posedge beat)begin
		if(reset)begin
			for(j=0;j<64;j=j+1)begin
					x[j]<=10'd640;
			end
			index	<=6'd0;
			active_y<=64'd0;
		end
		else begin
			if(state==`PLAYstate&&nextstate==`PLAYstate)begin
				index	<=index+6'd1;
				for(j=0;j<64;j=j+1)begin
					x[j]<=j==index?(black_edit_play?position:(position+10'd4)):x[j];
					active_y[j]<=j==index?(pixel_saved<6'd48 ?1'b1:1'b0):(y[j]==10'd384 ?1'b0:active_y[j]);
				end
			end
			else if((state!=`PLAYstate&&nextstate==`PLAYstate)||(state==`PLAYstate&&nextstate!=`PLAYstate))begin
				for(j=0;j<64;j=j+1)begin
					x[j]<=10'd640;
				end
				index	<=6'd0;
				active_y<=64'd0;
			end
			else begin
				index	<=index+6'd1;
				for(j=0;j<64;j=j+1)begin
					x[j]<=j==index?(black?pressed:(pressed+10'd4)):x[j];
					active_y[j]<=j==index?(arbiter<6'd48 ?1'b1:1'b0):(y[j]==10'd0 ?1'b0:active_y[j]);
				end
			end
		end
	end
	
	always@(posedge shift_beat)begin
		if(reset)begin
			for(i=0;i<64;i=i+1)begin
				y[i]<=10'd384;
			end
		end
		else begin
			if(state==`PLAYstate)begin
				for(j=0;j<64;j=j+1)begin
					y[j]<= active_y[j]?(y[j]==10'd384 ?10'd384:(y[j]+10'd1)):  10'd0;
				end
			end
			else begin
				for(j=0;j<64;j=j+1)begin
					y[j]<= active_y[j]?(y[j]==10'd0   ?  10'd0:(y[j]-10'd1)):10'd384;
				end
			end
		end
	end
	
	always@(*)begin
		if(EDIT)begin
			if(v_cnt<=10'd384)begin
				if(edit_display_helper==beat_num)begin
					pixel_proper=h_cnt>=red_position&&h_cnt<red_position_w?red:
								 h_cnt>=position&&h_cnt<position_w?orange:12'd0;
				end
				else begin
					pixel_proper=h_cnt>=position&&h_cnt<position_w?orange:12'd0;
				end
			end
			else begin
				pixel_proper=pixel_saved;
			end
		end
		else if (play)begin
			if(v_cnt<=10'd384)begin
				for(k=0;k<64;k=k+1)begin
					pixel_proper_helper[k]=((v_cnt<=y[k]+10'd6)&&v_cnt>y[k]&&(h_cnt<=x[k]+10'd12)&&h_cnt>x[k])?1'b1:1'b0;
				end
				pixel_proper=|pixel_proper_helper?orange:12'd0;
			end
			else begin
				pixel_proper=pixel_saved;
			end
		end
		else begin
			if(v_cnt<=10'd384)begin
				for(k=0;k<64;k=k+1)begin
					pixel_proper_helper[k]=((v_cnt<=y[k]+10'd6)&&v_cnt>y[k]&&(h_cnt<=x[k]+10'd12)&&h_cnt>x[k])?1'b1:1'b0;
				end
				pixel_proper=|pixel_proper_helper?orange:12'd0;
			end
			else begin
				if(h_cnt>=pressed&&h_cnt<pressed_w)begin
					pixel_proper=black?(v_cnt<=10'd439 ?gray:pixel_saved):(pixel_saved==12'd0 ?pixel_saved:gray);
				end
				else begin
					pixel_proper=pixel_saved;
				end
			end
		end
	end
	
	assign edit_display_helper=sheet_offset+v_cnt/6;
	assign play_display_helper=sheet_offset;
	assign pressed_w =pressed +(black	  ?10'd12:10'd23);
	assign position_w=position+(black_edit_play?10'd12:10'd23);
	assign red_position_w=red_position+(black_edit?10'd12:10'd23);
	assign {RED,GREEN,BLUE}=vga_valid?pixel_proper:12'd0;
	
	//******************DISPLAY END****************************//
	
endmodule