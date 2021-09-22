module full_adder(a, b, cin, sum, cout);

	input a, b, cin;
	output sum, cout;
	wire xor1, and1, and2;
	
	xor first_xor(xor1, a,b);
	xor second_xor(sum, xor1, cin);
	
	and first_and(and1, xor1, cin);
	and second_and(and2, a, b);
	
	or first_or(cout, and1, and2);
	

endmodule
