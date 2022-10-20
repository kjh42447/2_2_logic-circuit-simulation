module Halfsubtracter(x, y, d, b);

	input	x, y;
	output	d, b;

	assign d = x^y;
	assign b = ~x&y;

endmodule