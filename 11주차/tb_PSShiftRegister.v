`timescale 1ns/10ps

module tb_PSShiftRegister;
	reg clk, rst, load, sin;
	reg [7:0] din;
	wire sout;
	wire [7:0] qout;

	PSShiftRegister tb(clk, rst, load, din, sin, sout, qout);
	
	initial
		begin
			$dumpfile("test_PSShiftRegister_out.vcd");
			$dumpvars(-1, tb);
			$monitor("%b", sout);
		end

	initial
		clk = 1'b0;

	always
		#50 clk = !clk;

	initial
		begin
			din = 8'b00000000; rst = 1; load = 0; sin = 0; #100;
			din = 8'b00000000; rst = 0; load = 0; sin = 0; #25;
			din = 8'b10111011; rst = 1; load = 1; sin = 0; #100;
			din = 8'b00000000; rst = 1; load = 0; sin = 0; #800;
			$finish;
		end
endmodule