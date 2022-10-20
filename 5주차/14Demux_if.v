module Demux_if(in, sel, out);
	input 		in;
	input [1:0]	sel;
	output [3:0]	out;

	reg [3:0]		out;

	always @(sel or in)
		begin
			if (sel == 2'b00)
				out = 1;
			else if (sel == 2'b01)
				out = 2;
			else if (sel == 2'b10)
				out = 4;
			else if (sel == 2'b11)
				out = 8;
		end
endmodule