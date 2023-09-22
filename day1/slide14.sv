module simple_add_sub(
  input  [7:0] operandA, operandB,
  output       out_eq, out_ne, out_gt, out_lt, out_ge, out_le
);
  assign out_eq = operandA == operandB;
  assign out_ne = operandA != operandB;
  assign out_ge = operandA >= operandB;
  assign out_le = operandA <= operandB;
  assign out_gt = operandA > operandB;
  assign out_lt = operandA < operandB;
endmodule
