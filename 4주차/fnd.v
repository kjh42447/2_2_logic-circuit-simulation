module fnd(bcd, clk, leda, ledb, ledc, ledd, lede, ledf, ledg);
	input [3:0]	bcd;
	input 		clk;
	output		leda;
	output		ledb;
	output		ledc;
	output		ledd;
	output		lede;
	output		ledf;
	output		ledg;

	reg [6:0]		fnd_data;
	wire	clk, leda, ledb, ledc, ledd, lede, ledf, ledg;
	
	initial
		fnd_data = 7'h7e;

	always @ (clk)
	begin
		if(clk) begin
			case(bcd)
				4'h0 : fnd_data = 7'h7e;
				4'h1 : fnd_data = 7'h30;
				4'h2 : fnd_data = 7'h6d;
				4'h3 : fnd_data = 7'h79;
				4'h4 : fnd_data = 7'h33;
				4'h5 : fnd_data = 7'h5b;
				4'h6 : fnd_data = 7'h5f;
				4'h7 : fnd_data = 7'h72;
				4'h8 : fnd_data = 7'h7f;
				4'h9 : fnd_data = 7'h7b;
				4'ha : fnd_data = 7'h77;
				4'hb : fnd_data = 7'h1f;
				4'hc : fnd_data = 7'h4e;
				4'hd : fnd_data = 7'h3d;
				4'he : fnd_data = 7'h5f;
				4'hf : fnd_data = 7'h47;
			endcase

		end

	end

	assign leda=fnd_data[6];
	assign ledb=fnd_data[5];
	assign ledc=fnd_data[4];
	assign ledd=fnd_data[3];
	assign lede=fnd_data[2];
	assign ledf=fnd_data[1];
	assign ledg=fnd_data[0];

endmodule