module BCD_adder(a, b, Cin, Cout, Result);

	input [3:0]	a;
	input [3:0]	b;
	input		Cin;
	output [3:0]	Result;
	output		Cout;

	wire		c, c_n;
	wire [3:0]		z;
	wire [3:0]		cc;

	Four_bit_adder Fba0(.a(a), .b(b), .Cin(Cin), .Sum(z), .Cout(c));

	assign Cout = c | (z[3]&z[2]) | (z[3]&z[1]);
	assign cc = Cout ? 4'b0110 : 4'b0000;

	Four_bit_adder Fba1(.a(cc), .b(z), .Cin(1'b0), .Sum(Result), .Cout(c_n));

endmodule