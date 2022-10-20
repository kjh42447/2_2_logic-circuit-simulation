`timescale 1ns/10ps

module tb_OddParityChecker;
	reg [8:0]		data_in;
	wire		error_out;

	OddParityChecker tb(.data_in(data_in), .error_out(error_out));

	initial
		begin
			$dumpfile("test_OddParityChecker_out.vcd");
			$dumpvars(-1, tb);
			$monitor("%b", error_out);
		end

	initial
		begin
			data_in = 9'b000000000;	#10;
			data_in = 9'b101000011;	#10;
			data_in = 9'b110100010;	#10;
			data_in = 9'b111111111;	#10;
		end

endmodule