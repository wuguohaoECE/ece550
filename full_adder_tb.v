module full_adder_tb();
    reg [SIZE-1:0] A, B;
	 reg cin;
    wire [SIZE-1:0] sum;
	 wire cout;

    four_bit_RCA my_four_bit_RCA(A, B, sum, cin, cout);

    initial begin
        $monitor(A,B,sum,cout);
        for (int i=0; i<16; i=i+1) begin;
            {B,A} = i;
            #1;
        end
    end
endmodule