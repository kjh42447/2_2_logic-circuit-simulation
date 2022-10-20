module Fulladder4(x, y, cin, Sum, Carry);
	input	x, y, cin;
	output	Sum, Carry;

	wire	s0, c0, c1;
	
	assign	s0 = x^y;
	assign	c0 = x&y;
	assign	c1 = s0&cin;
	assign	Sum = s0^cin;
	assign	Carry = c0|c1;

endmodule