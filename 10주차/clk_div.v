module clk_div(clk, rst, s);
	input clk, rst;
	output s;

	reg s;
	
	integer clkCount = 0;
	parameter S0 = 1'b0, S1 = 1'b1;

	initial
		s = S0;

	always @(negedge rst)
		begin
			s = S0;
			clkCount = 0;
		end
	
	always@(posedge clk)
		begin
			clkCount = clkCount+1;
			case(s)
				S0:
					if(clkCount>=500000)
						begin
							s = S1;
							clkCount = 0;
						end
					else
						s = S0;
				S1:
					if(clkCount>=500000)
						begin
							s = S0;
							clkCount = 0;
						end
					else
						s = S1;
			endcase
		end
endmodule
							