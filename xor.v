module xor_gate (x1, y1, out);

	input[15:0] x1, y1;
	output[15:0] out;
	
	assign out = x1 ^ y1;

endmodule
