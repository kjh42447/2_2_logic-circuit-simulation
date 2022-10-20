`timescale 1ns/10ps

module tb_Fulladder_stru;
	reg	x, y, cin;
	wire	Sum, Carry;
	
	Fulladder_stru tb(x, y, cin, Sum, Carry);

	initial
	begin
		$dumpfile("test_Fulladder_strc_out.vcd");
		$dumpvars(-1,tb);
		$monitor("%b", Sum);
		$monitor("%b", Carry);
	end

	initial
		begin
			x = 0; y = 0; cin = 0; #100;
			x = 0; y = 1; cin = 0; #100;
			x = 1; y = 0; cin = 0; #100;
			x = 1; y = 1; cin = 0; #100;
			x = 0; y = 0; cin = 1; #100;
			x = 0; y = 1; cin = 1; #100;
			x = 1; y = 0; cin = 1; #100;
			x = 1; y = 1; cin = 1; #100;
		end

endmodule