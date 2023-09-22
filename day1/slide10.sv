module simple_add_sub (
  input  [7:0] operandA, operandB, // два входных 8-ми битных операнда
  output [7:0] out_bit_and, out_bit_or, out_bit_xor, out_bit_not
);
  assign out_bit_and = operandA & operandB; // 8'b0011_1101 & 8'b1010_0110 = 8'b0010_0100
  assign out_bit_or  = operandA | operandB; // 8'b0011_1101 | 8'b1010_0110 = 8'b1011_1111
  assign out_bit_xor = operandA ^ operandB; // 8'b0011_1101 ^ 8'b1010_0110 = 8'b1001_1011
  assign out_bit_not = ~operandA;           // ~8'b0011_1101 = 8'b1100_0010
endmodule
