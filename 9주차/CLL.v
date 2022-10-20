module CLL(p, g, cin, cout);
	input [3:0] p, g;
	input cin;
	output [3:0] cout;

	reg [3:0] cout;

	always@(p or g)
		begin
			cout[0] = g[0]|(cin&p[0]);
			cout[1] = g[1]|(g[0]&p[1])|(cin&p[0]&p[1]);
			cout[2] = g[2]|(g[1]&p[2])|(g[0]&p[1]&p[2])|(cin&p[0]&p[1]&p[2]);
			cout[3] = g[3]|(g[2]&p[3])|(g[1]&p[2]&p[3])|(g[0]&p[1]&p[2]&p[3])|(cin&p[0]&p[1]&p[2]&p[3]);
		end
endmodule