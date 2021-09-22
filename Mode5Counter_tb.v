
module Mode5Counter_tb();
	 parameter SIZE = 4;
    reg clk,reset,level,clock;
	 wire Mealy_tick;
	 wire [2:0] stateMealy_reg_out, stateMealy_next_out;
    Mode5Counter Mode5Counter(clock, reset, level, Mealy_tick,stateMealy_reg_out,stateMealy_next_out);

    initial

    begin
        $display($time, " << Starting the Simulation >>");
        clock = 1'b0;    // at time 0
		  reset = 1'b0;
		  level = 1'b1;
		  #50
		  reset = 1'b1;
		  #30
		  reset = 1'b0;
		  #300
        $stop;
    end	 
	 
    // Clock generator
    always
         #10     clock = ~clock;
			
endmodule