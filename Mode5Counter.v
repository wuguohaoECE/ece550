module Mode5Counter
(
    input wire clk, reset, 
    input wire level, 
    output reg Mealy_tick,
	 output [2:0] stateMealy_reg_out, stateMealy_next_out
);

localparam [7:0] // 2 states are required for Mealy
    zeroMealy = 3'b000,
    oneMealy =  3'b001,
	 twoMealy =  3'b010,
	 threeMealy =  3'b011,
	 fourMealy =  3'b100,
	 fiveMealy =  3'b101,
	 sixMealy =  3'b110,
	 sevenMealy =  3'b111;
    
reg [2:0] stateMealy_reg, stateMealy_next; 
assign stateMealy_reg_out = stateMealy_reg;
assign stateMealy_next_out = stateMealy_next;

always @(posedge clk, posedge reset)
begin
    if(reset) // go to state zero if rese
        begin
        stateMealy_reg <= zeroMealy;
        end
    else // otherwise update the states
        begin
        stateMealy_reg <= stateMealy_next;
        end
end

// Mealy Design 
always @(stateMealy_reg, level)
begin
    // store current state as next
    stateMealy_next = stateMealy_reg; // required: when no case statement is satisfied
    
    Mealy_tick = 1'b0; // set tick to zero (so that 'tick = 1' is available for 1 cycle only)
    case(stateMealy_reg)
        zeroMealy: 
            if(level)  
                begin // if level is 1, then go to state one,
                    stateMealy_next = oneMealy; // otherwise remain in same state.
                end
        oneMealy: 
            if(level)  
                begin // if level is 1, then go to state two,
                    stateMealy_next = twoMealy; // otherwise remain in same state.
                    
                end
        twoMealy: 
            if(level)  
                begin // if level is 1, then go to state three,
                    stateMealy_next = threeMealy; // otherwise remain in same state.
                    
                end
        threeMealy: 
            if(level)  
                begin // if level is 1, then go to state four,
                    stateMealy_next = fourMealy; // otherwise remain in same state.
                    Mealy_tick = 1'b1;
                end
        fourMealy: 
            if(level)  
                begin // if level is 1, then go to state one,
                    stateMealy_next = zeroMealy; // otherwise remain in same state.
                end
				else
					begin
						Mealy_tick = 1'b1;
					end
    endcase
end

endmodule