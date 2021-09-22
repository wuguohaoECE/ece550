module four_bit_splitter(in, Out);

	parameter SIZE = 4;
	input in;
	
	
	output [SIZE-1:0] Out;
	assign Out[0] = in;
	assign Out[1] = in;
	assign Out[2] = in;
	assign Out[3] = in;

endmodule