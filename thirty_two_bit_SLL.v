module thirty_two_bit_SLL(data_operandA, ctrl_shiftamt, data_result);
input [31:0] data_operandA;
input [4:0] ctrl_shiftamt;
output [31:0] data_result;

wire [31:0] data_operandA_1, data_operandA_2, data_operandA_3, data_operandA_4, data_operandA_5;
wire [31:0] data_operandA_1_out, data_operandA_2_out, data_operandA_3_out, data_operandA_4_out;

assign data_operandA_1[0] = 1'b0;
assign data_operandA_1[31:1] = data_operandA[30:0];
thirty_two_bit_two_one_mux first(data_operandA, data_operandA_1,ctrl_shiftamt[0], data_operandA_1_out);

assign data_operandA_2[1:0] = 2'b00;
assign data_operandA_2[31:2] = data_operandA_1_out[29:0];
thirty_two_bit_two_one_mux second(data_operandA_1_out, data_operandA_2,ctrl_shiftamt[1], data_operandA_2_out);

assign data_operandA_3[3:0] = 4'b0000;
assign data_operandA_3[31:4] = data_operandA_2_out[27:0];
thirty_two_bit_two_one_mux third(data_operandA_2_out, data_operandA_3,ctrl_shiftamt[2], data_operandA_3_out);

assign data_operandA_4[7:0] = 8'b00000000;
assign data_operandA_4[31:8] = data_operandA_3_out[23:0];
thirty_two_bit_two_one_mux forth(data_operandA_3_out, data_operandA_4,ctrl_shiftamt[3], data_operandA_4_out);

assign data_operandA_5[15:0] = 16'b0000000000000000;
assign data_operandA_5[31:16] = data_operandA_4_out[15:0];
thirty_two_bit_two_one_mux five(data_operandA_4_out, data_operandA_5,ctrl_shiftamt[4], data_result);

endmodule