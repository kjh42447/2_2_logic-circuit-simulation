module BCDCounter(reset, stepclk, updown, cnt_out);
	input reset, stepclk, updown;
	output [3:0] cnt_out;

	wire [3:0] cnt_out;

	parameter S0 = 0, S1 = 1, S2 = 2, S3 = 3, S4 = 4, S5 = 5, S6 = 6, S7 = 7, S8 = 8, S9 = 9;
	reg [3:0] state = S0;

	always @ (posedge stepclk or negedge reset)
		begin
			if (~reset)
				state = S0;
			else
				case(state)
					S0:
						if(~updown)	state = S1;
						else		state = S9;
					S1:
						if(~updown)	state = S2;
						else		state = S0;
					S2:
						if(~updown)	state = S3;
						else		state = S1;
					S3:
						if(~updown)	state = S4;
						else		state = S2;
					S4:
						if(~updown)	state = S5;
						else		state = S3;
					S5:
						if(~updown)	state = S6;
						else		state = S4;
					S6:
						if(~updown)	state = S7;
						else		state = S5;
					S7:
						if(~updown)	state = S8;
						else		state = S6;
					S8:
						if(~updown)	state = S9;
						else		state = S7;
					S9:
						if(~updown)	state = S0;
						else		state = S8;
				endcase
		end

	assign cnt_out = state;
endmodule