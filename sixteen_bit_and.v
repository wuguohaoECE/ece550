module sixteen_bit_and(out, A, B);

	parameter SIZE = 16;
	input [SIZE-1:0] A,B;
	
	
	output [SIZE-1:0] out;
	
	and and_0(out[0], A[0], B[0]);
	and and_1(out[1], A[1], B[1]);
	and and_2(out[2], A[2], B[2]);
	and and_3(out[3], A[3], B[3]);
	and and_4(out[4], A[4], B[4]);
	and and_5(out[5], A[5], B[5]);
	and and_6(out[6], A[6], B[6]);
	and and_7(out[7], A[7], B[7]);
	and and_8(out[8], A[8], B[8]);
	and and_9(out[9], A[9], B[9]);
	and and_10(out[10], A[10], B[10]);
	and and_11(out[11], A[11], B[11]);
	and and_12(out[12], A[12], B[12]);
	and and_13(out[13], A[13], B[13]);
	and and_14(out[14], A[14], B[14]);
	and and_15(out[15], A[15], B[15]);

endmodule