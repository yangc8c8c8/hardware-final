module extend(reset,clk,original,extended);
	input reset,clk,original;
	output extended;
	
	parameter size=17;
	`define WAIT 	1'b0
	`define EXTEND	1'b1
	
	reg state,nextstate;
	reg [size-1:0]count,nextcount;
	
	always @(posedge clk or posedge reset)begin
		if(reset)begin
			count<=17'd0;
			state<=`WAIT;
		end
		else begin
			count<=nextcount;
			state<=nextstate;
		end
	end
	
	always @(*)begin
		case(state)
			`WAIT:begin
				nextstate=original?`EXTEND:`WAIT;
				nextcount=original?count+17'd1:count;
			end
			`EXTEND:begin
				nextstate=count[size-1]?`WAIT:`EXTEND;
				nextcount=count[size-1]?17'd0:count+17'd1;
			end
			default:begin
				nextstate=`WAIT;
				nextcount=17'd0;
			end
		endcase
	end
	
	assign extended=nextstate;//nextstate==`EXTEND
	
endmodule