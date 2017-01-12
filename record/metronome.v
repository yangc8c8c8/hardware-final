module Metronome(LEDclk,reset,start,LED);
	input LEDclk,reset,start;
	output [15:0]LED;

	reg [15:0]light;
	reg light_dir;
	
	always@(posedge LEDclk)begin
		if(reset)begin
			light	 <=16'b0000_0001_0000_0000;
			light_dir<=1'b1;
		end
		else if(start)begin
			light	 <=light_dir?(light[15]?light:(light<<1)):(light[0]?light:(light>>1));
			light_dir<=light_dir?(light[15]?1'b0:light_dir):(light[0]?1'b1:light_dir);
		end
		else begin
			light	 <=16'b0000_0001_0000_0000;
			light_dir<=1'b1;
		end
	end
	
	assign LED=light;
	
endmodule