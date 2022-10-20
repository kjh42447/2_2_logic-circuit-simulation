module two_comparator(a, b, Gi, Ei, Li, Go, Eo, Lo);

	input [1:0]	a;
	input [1:0]	b;
	input 		Gi, Ei, Li;

	output		Go;
	output		Eo;
	output		Lo;
	
	reg		Go, Eo, Lo;

	always @ (a or b or Gi or Ei or Li)
		begin
			if ( Ei == 1)
				begin
					Go = ~(a[1] & ~b[1] | ~a[1]&b[1]) & a[0] & ~b[0] | a[1] & ~b[1];
					Eo = ~(a[0] & ~b[0] | ~a[0]&b[0]) & ~(a[1] & ~b[1] | ~a[1] & b[1]);
					Lo = ~(a[1] & ~b[1] | ~a[1]&b[1]) & ~a[0] & b[0] | ~a[1] & b[1];
				end
			else
				begin
					Go = Gi;
					Eo = Ei;
					Lo = Li;
				end
		end

endmodule