`timescale 1ns/10ps

module tb_SequenceDetector;
	reg	clk, reset, in;
	wire	out;

	SequenceDetector tb(clk, reset, in, out);

	initial
		begin
			$dumpfile("test_SequenceDetector_out.vcd");
			$dumpvars(-1, tb);
			$monitor("%b", out);
		end

	initial
		clk = 0;
	
	always
		#50 clk = !clk;

	initial
		begin
			reset = 1; in = 1; #50;
			reset = 0; in = 0; #70;
			reset = 1; in = 0; #100;
			reset = 1; in = 1; #100;
			reset = 1; in = 1; #100;
			reset = 1; in = 1; #100;
			reset = 1; in = 1; #100;
			reset = 1; in = 1; #100;
			reset = 1; in = 0; #100;
			reset = 1; in = 0; #100;
			reset = 1; in = 1; #100;
			reset = 1; in = 1; #100;
			reset = 1; in = 1; #100;
			reset = 1; in = 1; #100;
			$finish;
		end
endmodule