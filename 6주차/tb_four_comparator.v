`timescale 1ns/10ps

module tb_four_comparator;
	reg [3:0]	a;
	reg [3:0]	b;
	reg	Gi, Ei, Li;

	wire	Go;
	wire	Eo;
	wire	Lo;

	four_comparator tb(.a(a), .b(b), .Gi(Gi), .Ei(Ei), .Li(Li), .Go(Go), .Eo(Eo), .Lo(Lo)); 

	initial
		begin
			$dumpfile("test_four_comparator_out.vcd");
			$dumpvars(-1, tb);
			$monitor("%b", Go);
			$monitor("%b", Eo);
			$monitor("%b", Lo);
		end

	initial
		begin	
			Gi = 0;	Ei = 1;	Li = 0;
			a = 4'b00;	b = 4'b00;	#10;
			a = 4'b01;	b = 4'b00;	#10;
			a = 4'b01;	b = 4'b01;	#10;
			a = 4'b01;	b = 4'b10;	#10;
			a = 4'b10;	b = 4'b10;	#10;
			a = 4'b11;	b = 4'b10;	#10;
			a = 4'b11;	b = 4'b11;	#10;
		end
endmodule