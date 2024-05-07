module register (D, clk, Q, rst);
	input[15:0] D;
   input clk, rst, enable;
	output [15:0] Q;
	
	always @ (posedge clk) begin
		if  (rst) begin
			Q <= 16'b0000000000000000;
		end else if (enable) begin
			Q <= D;
		end 
		
endmodule
