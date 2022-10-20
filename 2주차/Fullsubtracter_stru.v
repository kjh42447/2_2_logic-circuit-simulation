module Fullsubtracter_stru(x, y, bin, d, b);

	input	x, y, bin;
	output	d, b;

	wire d0, b0, b1;

	Halfsubtracter h0(x, y, d0, b0);
	Halfsubtracter h1(d0, bin, d, b1);

	assign	b = b0|b1;

endmodule