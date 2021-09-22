module alu(data_operandA, data_operandB, ctrl_ALUopcode, ctrl_shiftamt, data_result, isNotEqual, isLessThan, overflow);
input [31:0] data_operandA, data_operandB;
input [4:0] ctrl_ALUopcode, ctrl_shiftamt;
output [31:0] data_result;
output isNotEqual, isLessThan, overflow;

wire  cout;
wire [31:0] add_sub_result, AND_result, OR_result, SRA_result, SLL_result;
wire [31:0] inverse_data_operandB,B;

thirty_two_bit_not firstnot(inverse_data_operandB,data_operandB);
thirty_two_bit_two_one_mux firstmux(data_operandB, inverse_data_operandB, ctrl_ALUopcode[0], B);
thirty_two_bit_CSA firstadder(data_operandA, B, add_sub_result, ctrl_ALUopcode[0],cout ,overflow);

thirty_two_bit_and first_and(AND_result, data_operandA, data_operandB);
thirty_two_bit_or first_or(OR_result, data_operandA, data_operandB);
thirty_two_bit_SLL first_SLL(data_operandA, ctrl_shiftamt, SLL_result);
thirty_two_bit_SRA first_SRA(data_operandA, ctrl_shiftamt, SRA_result);

or isnotequal(isNotEqual, add_sub_result[0],add_sub_result[1],add_sub_result[2],add_sub_result[3],add_sub_result[4],add_sub_result[5],add_sub_result[6],add_sub_result[7],add_sub_result[8],add_sub_result[9],add_sub_result[10],add_sub_result[11],add_sub_result[12],add_sub_result[13],add_sub_result[14],add_sub_result[15],add_sub_result[16],add_sub_result[17],add_sub_result[18],add_sub_result[19],add_sub_result[20],add_sub_result[21],add_sub_result[22],add_sub_result[23],add_sub_result[24],add_sub_result[25],add_sub_result[26],add_sub_result[27],add_sub_result[28],add_sub_result[29],add_sub_result[30],add_sub_result[31]);
xor islessthan (isLessThan, add_sub_result[31], overflow);

assign data_result = ctrl_ALUopcode[2]? (ctrl_ALUopcode[1]? 32'h00000000:(ctrl_ALUopcode[0]? SRA_result:SLL_result)):(ctrl_ALUopcode[1]? (ctrl_ALUopcode[0]? OR_result:AND_result):(ctrl_ALUopcode[0]? add_sub_result:add_sub_result) );



endmodule