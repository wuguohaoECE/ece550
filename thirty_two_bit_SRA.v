module thirty_two_bit_SRA(data_operandA, ctrl_shiftamt, data_result);
input [31:0] data_operandA;
input [4:0] ctrl_shiftamt;
output [31:0] data_result;

wire [31:0] data_operandA_1, data_operandA_2, data_operandA_3, data_operandA_4, data_operandA_5;
wire [31:0] data_operandA_1_out, data_operandA_2_out, data_operandA_3_out, data_operandA_4_out;
wire sign;

assign sign = data_operandA[31];

assign data_operandA_1[31] = sign;
assign data_operandA_1[30:0] = data_operandA[31:1];
thirty_two_bit_two_one_mux first(data_operandA, data_operandA_1,ctrl_shiftamt[0], data_operandA_1_out);

assign data_operandA_2[31:30] = sign ? 2'b11 : 2'b00;
assign data_operandA_2[29:0] = data_operandA_1_out[31:2];
thirty_two_bit_two_one_mux second(data_operandA_1_out, data_operandA_2,ctrl_shiftamt[1], data_operandA_2_out);

assign data_operandA_3[31:28] = sign ? 4'b1111 : 4'b0000;
assign data_operandA_3[27:0] = data_operandA_2_out[31:4];
thirty_two_bit_two_one_mux third(data_operandA_2_out, data_operandA_3,ctrl_shiftamt[2], data_operandA_3_out);

assign data_operandA_4[31:24] = sign ? 8'b11111111 : 8'b00000000;
assign data_operandA_4[23:0] = data_operandA_3_out[31:8];
thirty_two_bit_two_one_mux forth(data_operandA_3_out, data_operandA_4,ctrl_shiftamt[3], data_operandA_4_out);

assign data_operandA_5[31:16] = sign ? 16'b1111111111111111 : 16'b0000000000000000;
assign data_operandA_5[15:0] = data_operandA_4_out[31:16];
thirty_two_bit_two_one_mux five(data_operandA_4_out, data_operandA_5,ctrl_shiftamt[4], data_result);

endmodule