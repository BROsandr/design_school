module simple_add_sub (
  input  [7:0] operandA, // два входных 8-ми битных операнда
  output       out_reduction_and, out_reduction_or, out_reduction_xor
);
  // Операции выполняются между битами внутри одной шины
  assign out_reduction_and = &operandA; // &8'b0011_1101 = 1'b0
  assign out_reduction_or  = |operandA; // |8'b0011_1101 = 1'b1
  assign out_reduction_xor = ^operandA; // ^8'b0011_1101 = 1'b1
endmodule
