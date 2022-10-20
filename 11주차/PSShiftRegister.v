module PSShiftRegister(clk, rst, load, din, sin, sout, qout);
	input clk, rst, load, sin;
	input [7:0] din;
	output sout;
	output [7:0] qout;
	
	reg [7:0] qout;
	wire sout;
	
	assign sout = qout[7];
	
	always @ (negedge rst)
		qout = 8'b00000000;
	
	always @ (posedge clk)
		if (load)
			qout = din;
		else
			qout = {qout[6:0], 1'b0};

endmodule
		