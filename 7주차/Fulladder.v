module Fulladder(a, b, Cin, Sum, Cout);

	input	a, b, Cin;
	output	Sum, Cout;

	wire	s0, c0, c1;

	assign	s0 = a^b;
	assign	c0 = a&b;
	assign	c1 = s0&Cin;
	assign	Sum = s0^Cin;
	assign	Cout = c0|c1;

endmodule