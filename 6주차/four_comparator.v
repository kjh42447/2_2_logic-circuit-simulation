module four_comparator(a, b, Gi, Ei, Li, Go, Eo, Lo);
	
	input [3:0]	a;
	input [3:0]	b;
	input		Gi, Ei, Li;
	
	output		Go, Eo, Lo;
	
	wire	Go, Eo, Lo;
	wire	x, y, z;
	
	two_comparator submodule1(.a(a[3:2]), .b(b[3:2]), .Gi(Gi), .Ei(Ei), .Li(Li), .Go(x), .Eo(y), .Lo(z));
	two_comparator submodule2(.a(a[1:0]), .b(b[1:0]), .Gi(x), .Ei(y), .Li(z), .Go(Go), .Eo(Eo), .Lo(Lo));

endmodule
