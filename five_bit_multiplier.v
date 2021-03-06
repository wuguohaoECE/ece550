
module five_bit_multiplier(A, B, product);

	input [4:0] A, B;
	output[9:0] product;
	wire a0b0,a0b1,a0b2,a0b3,a0b4,a1b0,a1b1,a1b2,a1b3,a1b4,a2b0,a2b1,a2b2,a2b3,a2b4,a3b0,a3b1,a3b2,a3b3,a3b4,a4b0,a4b1,a4b2,a4b3,a4b4;
	wire s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16;
	wire c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15;
	wire [4:0] temp;
	wire gnd;
		
	assign a0b0 = A[0]&B[0];
	assign a0b1 = A[0]&B[1];
	assign a0b2 = A[0]&B[2];
	assign a0b3 = A[0]&B[3];
	assign a0b4 = A[0]&B[4];
	assign a1b0 = A[1]&B[0];
	assign a1b1 = A[1]&B[1];
	assign a1b2 = A[1]&B[2];
	assign a1b3 = A[1]&B[3];
	assign a1b4 = A[1]&B[4];
	assign a2b0 = A[2]&B[0];
	assign a2b1 = A[2]&B[1];
	assign a2b2 = A[2]&B[2];
	assign a2b3 = A[2]&B[3];
	assign a2b4 = A[2]&B[4];
	assign a3b0 = A[3]&B[0];
	assign a3b1 = A[3]&B[1];
	assign a3b2 = A[3]&B[2];
	assign a3b3 = A[3]&B[3];
	assign a3b4 = A[3]&B[4];
	assign a4b0 = A[4]&B[0];
	assign a4b1 = A[4]&B[1];
	assign a4b2 = A[4]&B[2];
	assign a4b3 = A[4]&B[3];
	assign a4b4 = A[4]&B[4];
	assign gnd = 1'b0;
	
	full_adder FA0(a1b0, a0b1, gnd, s1,c1);
	full_adder FA1(a2b0, a1b1, a0b2, s2,c2);
	full_adder FA2(a2b1, a1b2, a0b3, s3,c3);
	full_adder FA3(a2b2, a1b3, a0b4, s4,c4);
	full_adder FA4(a3b2, a2b3, a1b4, s5,c5);
	full_adder FA5(a4b2, a3b3, a2b4, s6,c6);
	full_adder FA6(a4b3, a3b4, gnd, s7,c7);
	assign s8 = a4b4;
	
	full_adder FA7(s2, c1, gnd, s9,c9);
	full_adder FA8(s3, c2, a3b0, s10,c10);
	full_adder FA9(c3, a4b0, a3b1, s11,c11);
	full_adder FA10(s5, c4, a4b1, s12,c12);
	full_adder FA11(s6, c5, gnd, s13,c13);
	full_adder FA12(s7, c6, gnd, s14,c14);
	full_adder FA13(s8, c7, gnd, s15,c15);
	
	
	full_adder FA14(s10, c9, gnd, s17,c17);
	full_adder FA15(s11, c10, s4, s18,c18);
	full_adder FA16(s12, c11, gnd, s19,c19);
	full_adder FA17(s13, c12, gnd, s20,c20);
	full_adder FA18(s14, c13, gnd, s21,c21);
	full_adder FA19(s15, c14, gnd, s22,c22);
	
	
	
	assign product[0] = a0b0;
	assign product[1] = s1;
	assign product[2] = s9;
	assign product[3] = s17;
	
	full_adder full_adder1(s18, c17, gnd, product[4], temp[0]);
	full_adder full_adder2(s19, c18, temp[0], product[5], temp[1]);
	
	full_adder full_adder3(s20, c19, temp[1], product[6], temp[2]);
	full_adder full_adder4(s21, c20, temp[2], product[7], temp[3]);
	full_adder full_adder5(s22, c21, temp[3], product[8], temp[4]);
	full_adder full_adder6(c15, c22, temp[4], product[9], );

endmodule

