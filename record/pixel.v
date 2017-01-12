<<<<<<< HEAD
module PixelGen(clk2,arbiter,h_cnt,v_cnt,vga_valid,RED,GREEN,BLUE);
	input  clk2,vga_valid;
	input  [5:0]arbiter;
	input  [9:0]h_cnt,v_cnt;
	output [3:0]RED,GREEN,BLUE;
	
	wire [11:0]data,pixel_saved;
	wire [16:0]pixel_addr;
	wire [3:0]arbiter_mod12,arbiter_div12;
	wire black;
	wire [11:0]gray=12'b000011110000;
	reg  [11:0]pixel_proper;
	reg  [9:0]pressed,pressed_w;
	
    assign pixel_addr=h_cnt+640*(v_cnt-10'd384);
 
    blk_mem_gen_0 blk_mem_gen_0_inst(
      .clka(clk2),
      .wea(0),
      .addra(pixel_addr),
      .dina(data[11:0]),
      .douta(pixel_saved)
    ); 
	
	always@(*)begin
		case(black)
			1'b0:begin
				pressed  =(arbiter_mod12+6'd1)/2*23+arbiter_div12*160+1'd1;
				pressed_w=((arbiter_mod12+6'd1)/2+6'd1)*23+arbiter_div12*160+1'd1;
			end
			1'b1:begin
				pressed  =6'd17+arbiter_mod12/2*23+arbiter_div12*160+1'd1;
				pressed_w=6'd17+arbiter_mod12/2*23+12+arbiter_div12*160+1'd1;
			end
			default begin
				pressed  =9'd0;
				pressed_w=9'd0;
			end
		endcase
	end
	
	always@(*)begin
		if(v_cnt<=10'd384)begin
			
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
	
	assign black=(arbiter_mod12==4'd1)||(arbiter_mod12==4'd3)||(arbiter_mod12==4'd6)||(arbiter_mod12==4'd8)||(arbiter_mod12==4'd10);
	assign arbiter_mod12=arbiter%12;
	assign arbiter_div12=arbiter/12;
	assign {RED,GREEN,BLUE}=vga_valid?pixel_proper:12'd0;
	
=======
module PixelGen(clk2,arbiter,h_cnt,v_cnt,vga_valid,RED,GREEN,BLUE);
	input  clk2,vga_valid;
	input  [5:0]arbiter;
	input  [9:0]h_cnt,v_cnt;
	output [3:0]RED,GREEN,BLUE;
	
	wire [11:0]data,pixel_saved;
	wire [16:0]pixel_addr;
	wire [3:0]arbiter_mod12,arbiter_div12;
	wire black;
	wire [11:0]gray=12'b000011110000;
	reg  [11:0]pixel_proper;
	reg  [9:0]pressed,pressed_w;
	
    assign pixel_addr=h_cnt+640*(v_cnt-10'd384);
 
    blk_mem_gen_0 blk_mem_gen_0_inst(
      .clka(clk2),
      .wea(0),
      .addra(pixel_addr),
      .dina(data[11:0]),
      .douta(pixel_saved)
    ); 
	
	always@(*)begin
		case(black)
			1'b0:begin
				pressed  =(arbiter_mod12+6'd1)/2*23+arbiter_div12*160+1'd1;
				pressed_w=((arbiter_mod12+6'd1)/2+6'd1)*23+arbiter_div12*160+1'd1;
			end
			1'b1:begin
				pressed  =6'd17+arbiter_mod12/2*23+arbiter_div12*160+1'd1;
				pressed_w=6'd17+arbiter_mod12/2*23+12+arbiter_div12*160+1'd1;
			end
			default begin
				pressed  =9'd0;
				pressed_w=9'd0;
			end
		endcase
	end
	
	always@(*)begin
		if(v_cnt<=10'd384)begin
			
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
	
	assign black=(arbiter_mod12==4'd1)||(arbiter_mod12==4'd3)||(arbiter_mod12==4'd6)||(arbiter_mod12==4'd8)||(arbiter_mod12==4'd10);
	assign arbiter_mod12=arbiter%12;
	assign arbiter_div12=arbiter/12;
	assign {RED,GREEN,BLUE}=vga_valid?pixel_proper:12'd0;
	
>>>>>>> origin/master
endmodule