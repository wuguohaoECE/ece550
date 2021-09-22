module sixteen_bit_splitter(in, Out);

	parameter SIZE = 16;
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
	assign Out[8] = in;
	assign Out[9] = in;
	assign Out[10] = in;
	assign Out[11] = in;
	assign Out[12] = in;
	assign Out[13] = in;
	assign Out[14] = in;
	assign Out[15] = in;

endmodule