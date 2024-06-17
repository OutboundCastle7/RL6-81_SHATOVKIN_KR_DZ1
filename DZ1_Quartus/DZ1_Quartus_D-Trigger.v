module D_trig (clk, D, Q, nQ);
	input clk, D;
	output Q, nQ;
	reg q;
	
	assign Q = q;
	assign nQ = ~Q;
	
	always @ (posedge clk)
		q <= D;
endmodule
	