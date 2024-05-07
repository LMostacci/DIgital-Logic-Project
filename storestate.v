module storestate  (D, clk, Q, rst);
	input[3:0] D;
    input clk, rst, enable;
	output [3:0] Q;
	
	always @ (posedge clk) begin
        if  (rst)
            Q <= 4'b0000;
        else if (enable)
            Q <= D;
	end 
endmodule
