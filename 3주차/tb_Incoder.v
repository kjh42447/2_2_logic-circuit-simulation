`timescale 1ns/10ps

module tb_Incoder;
	reg [7:0]	d;
	wire [2:0]	a;
	wire	v;
	reg	en;
	integer	i;

	Incoder tb(.d(d), .a(a), .v(v), .en(en));
	
	initial
		begin
			$dumpfile("test_Incoder_out_vcd");
			$dumpvars(-1, tb);
			$monitor("%b, %b, %b", d, a, v);
		end

	initial
		begin
			d = 8'h00;
			en = 1'b0;

			#10;

			en = 1'b1;

			#10;

			for (i = 0; i <= 255; i = i+1)
				begin
				#10  d = d + 1;
				end

			#10;

		end
endmodule