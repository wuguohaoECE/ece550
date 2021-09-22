// S = 0 select A, S = 1 select B
module sixteen_bit_two_one_mux(A, B, S, Out);

	parameter SIZE = 16;
	input [SIZE-1:0] A,B;
	input S; //compile successfully but no test. need to test whether need splitter
	
	
	output [SIZE-1:0] Out;
	wire notS;
	wire [SIZE-1:0] s1,s2;
	wire [SIZE-1:0] and1, and2;
	
	not first_not(notS, S);
	sixteen_bit_splitter splitter1(S,s1);
	sixteen_bit_splitter splitter2(notS,s2);
	sixteen_bit_and first_and(and1, A, s2);
	sixteen_bit_and second_and(and2, B, s1);
	
	
	sixteen_bit_or first_or(Out, and1, and2);
	

endmodule