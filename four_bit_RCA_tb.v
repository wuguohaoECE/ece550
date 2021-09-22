module four_bit_RCA_tb();
	 parameter SIZE = 4;
    reg [SIZE-1:0] A, B;
	 reg cin;
    wire [SIZE-1:0] sum;
	 wire cout;
	 reg [SIZE:0] i;
	 reg [SIZE:0] j;
    four_bit_RCA my_four_bit_RCA(A, B, sum, cin, cout);

    initial begin
		$monitor("A = %b, B = %b, sum = %b, cout = %b", A,B,sum,cout);
		cin = 0;
		for (i=0; i<16; i=i+1) 
		begin
			for (j=0; j<15; j=j+1) 
			begin
				A = i;
				B = j;
				#10;
			end
		end
    end
endmodule