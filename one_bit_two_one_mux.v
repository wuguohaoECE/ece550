// S = 0 select A, S = 1 select B
module one_bit_two_one_mux(A, B, S, Out);

	parameter SIZE = 1;
	input A,B;
	input S; //compile successfully but no test. need to test whether need splitter
	
	
	output Out;
	wire notS;
	wire and1, and2;
	
	not first_not(notS, S);
	and first_and(and1, A, notS);
	and second_and(and2, B, S);
	
	
	sixteen_bit_or first_or(Out, and1, and2);
	

endmodule