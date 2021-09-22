module sixteen_bit_or(out, A, B);

	parameter SIZE = 16;
	input [SIZE-1:0] A,B;
	
	
	output [SIZE-1:0] out;
	
	or or_0(out[0], A[0], B[0]);
	or or_1(out[1], A[1], B[1]);
	or or_2(out[2], A[2], B[2]);
	or or_3(out[3], A[3], B[3]);
	or or_4(out[4], A[4], B[4]);
	or or_5(out[5], A[5], B[5]);
	or or_6(out[6], A[6], B[6]);
	or or_7(out[7], A[7], B[7]);
	or or_8(out[8], A[8], B[8]);
	or or_9(out[9], A[9], B[9]);
	or or_10(out[10], A[10], B[10]);
	or or_11(out[11], A[11], B[11]);
	or or_12(out[12], A[12], B[12]);
	or or_13(out[13], A[13], B[13]);
	or or_14(out[14], A[14], B[14]);
	or or_15(out[15], A[15], B[15]);

endmodule