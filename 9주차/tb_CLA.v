`timescale 1ns/10ps

module tb_CLA_four;
	reg [3:0] a, b;
	reg cin;
	wire [3:0] s;
	wire cout;

	CLA_four tb(a, b, cin, s, cout);

	initial
		begin
			$dumpfile("test_CLA_out.vcd");
			$dumpvars(-1, tb);
			$monitor("%b", s);
		end

	initial
		begin
			cin = 0;
			a = 4'b0000;	b = 4'b0000;	#10;
			a = 4'b0110;	b = 4'b0010;	#10;
			a = 4'b1100;	b = 4'b0010;	#10;
			a = 4'b0011;	b = 4'b1001;	#10;
			a = 4'b0110;	b = 4'b1111;	#10;
			a = 4'b0011;	b = 4'b1011;	#10;
			a = 4'b1001;	b = 4'b1100;	#10;
			cin = 1;
			a = 4'b0000;	b = 4'b0000;	#10;
			a = 4'b0110;	b = 4'b0010;	#10;
			a = 4'b1100;	b = 4'b0010;	#10;
			a = 4'b0011;	b = 4'b1001;	#10;
			a = 4'b0110;	b = 4'b1111;	#10;
			a = 4'b0011;	b = 4'b1011;	#10;
			a = 4'b1001;	b = 4'b1100;	#10;
		end

endmodule