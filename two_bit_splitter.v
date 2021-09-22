module two_bit_splitter(in, Out);

	parameter SIZE = 2;
	input in;
	
	
	output [SIZE-1:0] Out;
	assign Out[0] = in;
	assign Out[1] = in;

endmodule