module PG(a, b, p, g);
	input a, b;
	output p, g;

	assign p = a^b;
	assign g = a&b;
endmodule