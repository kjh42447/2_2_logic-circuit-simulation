`timescale 1ns/10ps

module tb_BCD_adder;
	reg [3:0]		a;
	reg [3:0]		b;
	
	wire		Cout;
	wire [3:0]		Result;
	
	BCD_adder tb(.a(a), .b(b), .Cin(1'b0), .Cout(Cout), .Result(Result));

	initial
		begin
			$dumpfile("test_BCD_adder_out.vcd");
			$dumpvars(-1, tb);
			$monitor("%b", Result);
		end

	initial
		begin
			a = 4'b0000;	b = 4'b0000;	#10;
			a = 4'b0001;	b = 4'b0010;	#10;
			a = 4'b0101;	b = 4'b0010;	#10;
			a = 4'b0110;	b = 4'b0110;	#10;
			a = 4'b1000;	b = 4'b0111;	#10;
			a = 4'b1000;	b = 4'b1001;	#10;
		end
endmodule