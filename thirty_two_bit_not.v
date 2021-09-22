module thirty_two_bit_not(out, A);

	parameter SIZE = 32;
	input [SIZE-1:0] A;
	
	
	output [SIZE-1:0] out;
	not not_0(out[0], A[0]);
	not not_1(out[1], A[1]);
	not not_2(out[2], A[2]);
	not not_3(out[3], A[3]);
	not not_4(out[4], A[4]);
	not not_5(out[5], A[5]);
	not not_6(out[6], A[6]);
	not not_7(out[7], A[7]);
	not not_8(out[8], A[8]);
	not not_9(out[9], A[9]);
	not not_10(out[10], A[10]);
	not not_11(out[11], A[11]);
	not not_12(out[12], A[12]);
	not not_13(out[13], A[13]);
	not not_14(out[14], A[14]);
	not not_15(out[15], A[15]);
	not not_16(out[16], A[16]);
	not not_17(out[17], A[17]);
	not not_18(out[18], A[18]);
	not not_19(out[19], A[19]);
	not not_20(out[20], A[20]);
	not not_21(out[21], A[21]);
	not not_22(out[22], A[22]);
	not not_23(out[23], A[23]);
	not not_24(out[24], A[24]);
	not not_25(out[25], A[25]);
	not not_26(out[26], A[26]);
	not not_27(out[27], A[27]);
	not not_28(out[28], A[28]);
	not not_29(out[29], A[29]);
	not not_30(out[30], A[30]);
	not not_31(out[31], A[31]);
endmodule