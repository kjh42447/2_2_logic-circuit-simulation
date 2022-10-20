`timescale 1ns/10ps

module tb_sram;
	reg	clk, cs, we, rd;
	reg [4:0] addr;
	reg [7:0] wr_data;
	wire [7:0] rd_data;

	parameter	ADDRESS_BITS = 5, DATA_WIDTH = 8, NUM_REG = 32, STEP = 20;

	integer i;

	sram #(.ADDRESS_BITS(ADDRESS_BITS), .NUM_REG(NUM_REG), .DATA_WIDTH(DATA_WIDTH)) tb(clk, cs, we, rd, addr, wr_data, rd_data);

	initial
		begin
			$dumpfile("test_sram_out.vcd");
			$dumpvars(-1, tb);
			$monitor("%b", rd_data);
		end

	always
		#(STEP/2) clk = ~clk;

	initial
		begin
			clk =0; cs = 0; we = 0; rd = 1; #(STEP*2);
			
			cs = 1; we = 1; addr = 5'b00000; wr_data = 7'b0000000; #STEP;
			for (i = 0; i < 31; i = i+1)
				begin
					addr = addr+1;
					wr_data = wr_data+3;
					#STEP;
				end
			cs = 0; #(STEP*2);

			cs = 1; we = 0; rd = 0; #STEP;
			for(i = 0; i < 31; i = i+1)
				begin
					addr = addr - 1;
					#STEP;
				end
			$finish;
		end
endmodule
	