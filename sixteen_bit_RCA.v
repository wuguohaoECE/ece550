module sixteen_bit_RCA(A, B, sum, cin, cout,ovf);
	
	parameter SIZE = 16;
	parameter BIT = SIZE/2;
	
	input [SIZE-1:0] A, B;
	output [SIZE-1:0] sum;
	input cin;
	output cout,ovf;
	wire temp;
	
	eight_bit_RCA eight_bit_RCA_low(A[BIT-1:0], B[BIT-1:0], sum[BIT-1:0], cin, temp);
	eight_bit_RCA eight_bit_RCA_high(A[SIZE-1:BIT], B[SIZE-1:BIT], sum[SIZE-1:BIT], temp, cout,ovf);
	

endmodule