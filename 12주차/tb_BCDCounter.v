`timescale 1ns/10ps

module tb_BCDCounter;
	reg reset, stepclk, updown;
	wire [3:0] cnt_out;

	BCDCounter tb(reset, stepclk, updown, cnt_out);

	initial
		begin
			$dumpfile("test_BCDCounter_out.vcd");
			$dumpvars(-1, tb);
			$monitor("%b", cnt_out);
		end

	initial
		stepclk = 0;

	always
		#50 stepclk = !stepclk;

	initial
		begin
			reset = 1; updown = 0; #50;
			reset = 0; updown = 0; #70;
			reset = 1; updown = 1; #1000;
			reset = 1; updown = 0; #1000;
			$finish;
		end
endmodule