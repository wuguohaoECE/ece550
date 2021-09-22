module eight_bit_RCA(A, B, sum, cin, cout,ovf);
	
	parameter SIZE = 8;
	
	input [7:0] A, B;
	output [7:0] sum;
	input cin;
	output cout,ovf;
	wire temp;
	wire uselesswire;
	
	four_bit_RCA four_bit_RCA_low(A[3:0], B[3:0], sum[3:0], cin, temp,uselesswire);
	four_bit_RCA four_bit_RCA_high(A[7:4], B[7:4], sum[7:4], temp, cout,ovf);
	

endmodule