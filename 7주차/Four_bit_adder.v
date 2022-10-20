module Four_bit_adder(a, b, Cin, Sum, Cout);

	input [3:0]	a;
	input [3:0]	b;
	input		Cin;
	output [3:0]	Sum;
	output		Cout;

	wire	c0, c1, c2;

	Fulladder Fa0(.a(a[0]), .b(b[0]), .Cin(Cin), .Sum(Sum[0]), .Cout(c0));
	Fulladder Fa1(.a(a[1]), .b(b[1]), .Cin(c0), .Sum(Sum[1]), .Cout(c1));
	Fulladder Fa2(.a(a[2]), .b(b[2]), .Cin(c1), .Sum(Sum[2]), .Cout(c2));
	Fulladder Fa3(.a(a[3]), .b(b[3]), .Cin(c2), .Sum(Sum[3]), .Cout(Cout));

endmodule