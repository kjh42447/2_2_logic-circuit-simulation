`timescale 1ns/10ps

module tb_Fullsubtracter_stru;
	reg	x, y, bin;
	wire	d, b;
	
	Fullsubtracter_stru tb(x, y, bin, d, b);

	initial
	begin
		$dumpfile("test_Fullsubtracter_stru_out.vcd");
		$dumpvars(-1,tb);
		$monitor("%b", d);
		$monitor("%b", b);
	end

	initial
		begin
			x = 0; y = 0; bin = 0; #100;
			x = 0; y = 1; bin = 0; #100;
			x = 1; y = 0; bin = 0; #100;
			x = 1; y = 1; bin = 0; #100;
			x = 0; y = 0; bin = 1; #100;
			x = 0; y = 1; bin = 1; #100;
			x = 1; y = 0; bin = 1; #100;
			x = 1; y = 1; bin = 1; #100;
		end

endmodule