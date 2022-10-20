module OddParityChecker(data_in, error_out);
	input [8:0]	data_in;
	output 		error_out;
	
	reg		error_out;
	
	task paritycheck;
		input [8:0]	data;
		output		error;
		
		begin
			error = !(^data);
		end
	endtask

	always @ (data_in) begin
		paritycheck(data_in, error_out);
	end

endmodule