`timescale 1ns/10ps

module tb_clk_div;
	reg clk, rst;

	clk_div tb(clk, rst, s);
	
	initial
		begin
			$dumpfile("test_clk_div_out.vcd");
			$dumpvars(-1, tb);
			$monitor("%b", s);
		end

	initial
		clk = 1'b0;

	always
		#500	clk = ~clk;
	
	initial
		begin
			rst = 1'b1;	#1000;
			rst = 1'b0;	#500;
			rst = 1'b1;	#1000000000;
			$finish;
		end
endmodule