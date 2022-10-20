`timescale 1ns/10ps

module tb_two_comparator;
	reg [1:0]	a;
	reg [1:0]	b;

	wire	G;
	wire	E;
	wire	L;

	two_comparator tb(.a(a), .b(b), .G(G), .E(E), .L(L)); 

	initial
		begin
			$dumpfile("test_two_comparator_out.vcd");
			$dumpvars(-1, tb);
			$monitor("%b", G);
			$monitor("%b", E);
			$monitor("%b", L);
		end

	initial
		begin	
			a = 2'b00;	b = 2'b00;	#10;
			a = 2'b01;	b = 2'b00;	#10;
			a = 2'b01;	b = 2'b01;	#10;
			a = 2'b01;	b = 2'b10;	#10;
			a = 2'b10;	b = 2'b10;	#10;
			a = 2'b11;	b = 2'b10;	#10;
			a = 2'b11;	b = 2'b11;	#10;
		end
endmodule