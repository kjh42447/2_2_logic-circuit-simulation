module SequenceDetector(clk, reset, in, out);
	input	clk, reset, in;
	output	out;
	wire	out;
	reg [2:0]	state;
	parameter S0=0, S1=1, S2=2, S3=3, S4=4;

	always @ (posedge clk or negedge reset)
		if (~reset)
			state = S0;
		else
			case (state)
				S0 : 	if (in)	state = S1;
					else	state = S0;
				S1 : 	if (in)	state = S2;
					else	state = S0;
				S2: 	if (in)	state = S3;
					else	state = S0;
				S3 : 	if (in)	state = S4;
					else	state = S0;
				S4 : 	if (in)	state = S4;
					else	state = S0;
			endcase
	assign out = (state == S4);
endmodule