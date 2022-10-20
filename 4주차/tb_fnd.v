`timescale 1ns/10ps

module tb_fnd;
	wire	leda, ledb, ledc, ledd, lede, ledf, ledg;
	reg	clk;
	reg[3:0]	bcd;
	reg[6:0]	fnd_data;
	
	fnd tb(.bcd(bcd), .clk(clk), .leda(leda), .ledb(ledb), .ledc(ledc), .ledd(ledd), .lede(lede), .ledf(ledf), .ledg(ledg));
	
	initial
		begin
			$dumpfile("test_fnd_out_vcd");
			$dumpvars(-1, tb);
			$monitor("%b", bcd);
		end

	initial
		begin
			clk = 1'b0;
			bcd = 4'b0000;
			repeat(32)
				begin 
					#10 clk = ~clk;
					//clk 사용을 확인하기 위해 하강에지에 bcd의 값을 변경
					if(~clk)	bcd = bcd+1;
				end
		end
endmodule