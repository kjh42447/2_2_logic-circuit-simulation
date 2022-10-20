module XOR_Adder(a, b, c, cin, s);
	input [3:0] a, b;
	input [2:0] c;
	input cin;
	output [3:0] s;

	wire [3:0] s;

	assign s[0] = a[0]^b[0]^cin;
	assign s[1] = a[1]^b[1]^c[0];
	assign s[2] = a[2]^b[2]^c[1];
	assign s[3] = a[3]^b[3]^c[2];

endmodule