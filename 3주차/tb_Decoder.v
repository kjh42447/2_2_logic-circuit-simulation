`timescale 1ns/10ps

module tb_Decoder;
	reg [2:0]	x;
	reg	en;
	wire [7:0]	D;
	integer	i;

	Decoder tb(.x(x), .en(en), .D(D));
	
	initial
		begin
			$dumpfile("test_Decoder_out_vcd");
			$dumpvars(-1, tb);
			$monitor("%b", D);
		end

	initial
		begin
			en = 1'b0;
			x = 3'b000;

			#100;

			en = 1'b1;

			#50;

			for (i = 0; i <= 7; i = i+1)
				begin
				#50  x = x + 1;
				end

			#50;

		end
endmodule