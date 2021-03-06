module decoder3to8(din, en, dout);
  input [2:0] din; //3bit input
  input en; //enable
  output reg [7:0] dout; //8bit output
  
  //all combinations for 3 inputs to 8 outputs
always @ (en,din) 

begin 

 dout = 8'b00000000;

 if (en==1'b1) 

 begin 

 case (din) 

 3'b000: dout[0]=1; 

 3'b001: dout[1]=1; 

 3'b010: dout[2]=1; 

 3'b011: dout[3]=1; 

 3'b100: dout[4]=1; 

 3'b101: dout[5]=1; 

 3'b110: dout[6]=1; 

 3'b111: dout[7]=1; 

 default: begin 

  dout[0]=0;

  dout[1]=0;

  dout[2]=0;

  dout[3]=0;

  dout[4]=0;

  dout[5]=0;

  dout[6]=0;

  dout[7]=0; 

  end 

  endcase 

 end 

end

endmodule