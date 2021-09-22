module five_bit_multiplier_interface(A, B, product);

	input [4:0] A, B;
	output[9:0] product;
	five_bit_multiplier five_bit_multiplier(A,B,product);

endmodule
