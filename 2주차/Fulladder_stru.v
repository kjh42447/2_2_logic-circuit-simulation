module Fulladder_stru(a, b, cin, Sum, Carry);
	
	input	a, b, cin;
	output	Sum, Carry;

	wire	s0, co, c1;
	
	Halfadder h0(a, b, s0, c0);
	Halfadder h1(s0, cin, sum, c1);

	assign	Carry = c0|c1;

endmodule