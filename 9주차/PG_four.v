module PG_four(a, b, p, g);
	input [3:0] a, b;
	output [3:0]  p, g;

	wire [3:0] p, g;

	PG pg0(a[0], b[0], p[0], g[0]);
	PG pg1(a[1], b[1], p[1], g[1]);
	PG pg2(a[2], b[2], p[2], g[2]);
	PG pg3(a[3], b[3], p[3], g[3]);

endmodule