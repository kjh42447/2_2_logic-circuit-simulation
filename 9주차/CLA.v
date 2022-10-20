module CLA_four(a, b, cin, s, cout);
	input [3:0] a, b;
	input cin;
	output [3:0] s;
	output cout;

	wire [3:0] s;
	wire cout;
	
	wire [3:0] p, g, c;

	PG_four pg(a, b, p, g);
	CLL cll(p, g, cin, c);
	XOR_Adder ad(a, b, c[2:0], cin, s);

	assign cout = c[3];

endmodule