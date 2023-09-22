module simple_add_sub (
  input  [7:0] operandA, operandB, // два входных 8-ми битных операнда
  output       out_bool_and, out_bool_or, out_bool_not
);
  assign out_bool_and = operandA && operandB; // 8'b0011_1101 & 8'b1010_0110 = 1'b1
  assign out_bool_or  = operandA || operandB; // 8'b0011_1101 | 8'b1010_0110 = 1'b1
  assign out_bool_not = !operandA;            // !8'b0011_1101 = 1'b0
endmodule
