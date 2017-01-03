module PWMdividor (clk,reset,freqh,freql,done,freq_out);
	input  clk,reset,done;
	input  [31:0]freqh,freql;
	output [31:0]freq_out;
	
	`define HIGH 1'b0
	`define LOW  1'b1
	
	reg  state,nextstate;
	reg  [31:0]freq,now_freq,nextnow_freq;
	
	assign freq_out=now_freq;
	
	always@(posedge clk)begin
		if(reset)begin
			state	<=`LOW;
			now_freq<=freql;
		end
		else begin
			state	<=nextstate;
			now_freq<=nextnow_freq;
		end
	end
	
	always@(*)begin
		case(state)
			`HIGH:begin
				nextstate   =done?`LOW  :`HIGH;
				nextnow_freq=done?freql :freqh;
			end
			`LOW:begin
				nextstate   =done?`HIGH :`LOW ;
				nextnow_freq=done?freqh :freql;
			end
			default begin
			    nextstate   =`LOW ;
                nextnow_freq=freql;
			end
		endcase
	end
	
endmodule