`timescale 1ns/10ps

module tb_Demux_if;
	reg		in;
	reg [1:0]		sel;

	wire [3:0]		out;

	Demux_if tb(.in(in), .sel(sel), .out(out));

	initial
		begin
			$dumpfile("test_Demux_if_out.vcd");
			$dumpvars(-1, tb);
			$monitor("%b", out);
		end

	initial
		begin
			in = 1;
			sel = 2'b00;	#10;
			sel = 2'b01;	#10;
			sel = 2'b10;	#10;
			sel = 2'b11;	#10;
		end
endmodule