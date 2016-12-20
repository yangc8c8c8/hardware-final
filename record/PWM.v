module PWM_generater(reset,clk,freq,duty_cycle,PWM);
	input  reset,clk;
	input  [31:0]freq;
	input  [9:0]duty_cycle;
	output reg PWM;
	
	wire  [31:0]count_max =100_000_000/freq;
	wire  [31:0]count_duty=count_max*duty_cycle/1024;
	reg   [31:0]count;
	
	always@(posedge clk or posedge reset)begin
		if(reset)begin
			count<=32'd0;
			PWM  <=1'b0;
		end
		else begin
			count<=(count<count_max ?count+1:32'd0);
			PWM  <=(count<count_duty?1'b1   :1'b0 );
		end
	end
endmodule