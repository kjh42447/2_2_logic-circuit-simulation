`timescale 1ns/1ps
module tb_AndOr;
	reg a, b;
	wire and_out, or_out, not_out;
	integer i;

	AndOr tb(a, b, and_out, or_out, not_out);
	
	initial
	begin
		$dumpfile("test_out.vcd");
		$dumpvars(-1,tb);
		$monitor("%b", and_out);
		$monitor("%b", or_out);
		$monitor("%b", not_out);
	end

	initial
	begin
		a=0;
		b=0;
		for(i=0; i<32; i=i+1)
		begin
			#20;
			a=i;
			b=i+1;
		end
		$finish;
	end
endmodule