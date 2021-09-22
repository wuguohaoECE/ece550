module five_bit_multiplier_tb();
	 parameter SIZE = 4;
    reg [4:0] A, B;
	 wire [9:0] product;
	 reg [9:0] i,j;
	 reg            clock;
    five_bit_multiplier_interface five_bit_multiplier_interface(A, B,product);

    initial

    begin
        $display($time, " << Starting the Simulation >>");
        clock = 1'b0;    // at time 0
		  check_five_bit_multiplier();
        $stop;
    end	 
	 
    // Clock generator
    always
         #10     clock = ~clock;
			
	 task check_five_bit_multiplier;	 
		 begin
			for (i=1; i<10'b1111; i=i+1) 
			begin
				for (j=1; j<10'b1111; j=j+1) 
				begin
					@(negedge clock);
					A = i;
					B = j;
					@(negedge clock);
				   if (product!= i*j) begin
						 $display("A=%d,B=%d,product=%d, is wrong binary form A=%b,B=%b,product=%b",A,B,product,A,B,product);
				   end
				   else begin
						 $display("A=%d,B=%d,product=%d is correct",A,B,product);
				   end
				end
			end
		 end
	endtask
endmodule