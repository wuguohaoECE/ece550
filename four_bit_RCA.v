module four_bit_RCA(A, B, sum, cin, cout,ovf);
	
	parameter SIZE = 4;
	
	input [SIZE-1:0] A, B;
	output [SIZE-1:0] sum;
	input cin;
	output cout,ovf;
	wire [SIZE-2:0] temp;
	
	full_adder full_adder1(A[0], B[0], cin, sum[0], temp[0]);
	full_adder full_adder2(A[1], B[1], temp[0], sum[1], temp[1]);
	
	full_adder full_adder3(A[2], B[2], temp[1], sum[2], temp[2]);
	full_adder full_adder4(A[3], B[3], temp[2], sum[3], cout);
	xor firstXor(ovf,temp[2], cout);
	

endmodule