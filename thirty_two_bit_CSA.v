module thirty_two_bit_CSA(A, B, sum, cin, cout,ovf);
	
	parameter SIZE = 32;
	parameter BIT = SIZE/2;
	parameter WIDTH = SIZE/2;
	
	input [SIZE-1:0] A, B;
	output [SIZE-1:0] sum;
	input cin;
	output cout, ovf;
	wire [BIT-1:0] potential_high_1, potential_high_2;
	wire temp,temp1, temp2;
	wire ovf1,ovf2;
	wire uselesswire;
	
	sixteen_bit_RCA sixteen_bit_RCA_low(A[BIT-1:0], B[BIT-1:0], sum[BIT-1:0], cin, temp,uselesswire);
	
	sixteen_bit_RCA sixteen_bit_RCA_high_1(A[SIZE-1:BIT], B[SIZE-1:BIT], potential_high_1, 1'b0, temp1,ovf1);
	sixteen_bit_RCA sixteen_bit_RCA_high_2(A[SIZE-1:BIT], B[SIZE-1:BIT], potential_high_2, 1'b1, temp2,ovf2);
	
	sixteen_bit_two_one_mux sixteen_bit_two_one_mux(potential_high_1,potential_high_2,temp, sum[SIZE-1:BIT]);
	one_bit_two_one_mux one_bit_two_one_mux1(temp1,temp2,temp,cout);
	one_bit_two_one_mux one_bit_two_one_mux2(ovf1,ovf2,temp,ovf);
	

endmodule


