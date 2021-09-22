module eight_bit_splitter(in, Out);

	parameter SIZE = 8;
	input in;
	
	
	output [SIZE-1:0] Out;
	assign Out[0] = in;
	assign Out[1] = in;
	assign Out[2] = in;
	assign Out[3] = in;
	assign Out[4] = in;
	assign Out[5] = in;
	assign Out[6] = in;
	assign Out[7] = in;

endmodule