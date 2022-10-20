module sram(clk, cs, we, rd, addr, wr_data, rd_data);
	input	clk, cs, we, rd;
	input	[ADDRESS_BITS-1:0] addr;
	input	[DATA_WIDTH-1:0] wr_data;
	output	[DATA_WIDTH-1:0] rd_data;

	parameter	ADDRESS_BITS = 5, DATA_WIDTH = 8, NUM_REG = 32;

	reg	[DATA_WIDTH-1:0] mem[NUM_REG-1:0];
	reg	[DATA_WIDTH-1:0] data;

	always @ (posedge clk)
		begin
			if (cs&we)
				mem[addr] = wr_data;
			else if (cs&(!rd))
				data = mem[addr];
			else
				data = data;
		end
	
	assign rd_data = data;
endmodule