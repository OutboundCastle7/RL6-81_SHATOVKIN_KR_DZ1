module Counter (clk, reset, out_pos);
	input clk;
	input reset;
	output reg [0:2] out_pos;
	
	always @ (negedge clk)
	begin
		if (reset == 0)
			out_pos = 0;
		else
			out_pos <= out_pos + 1'd1;
	end
endmodule