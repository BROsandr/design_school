module simple_add_sub (
  input  [7:0] operandA, operandB,       // два входных 8-ми битных операнда
  output [7:0] out_sll, out_slr, out_sar // Выходы для операций сдвига
);
  // логический сдвиг влево на значение в operandB.
  assign out_sll = operandA << operandB;

  // пример: на сколько сдвигать определяется 3-мя битами второго операнда. Например operandA =
  //   8'b1010_1110 operandB = 8'b0000_0011 тогда out_slr = 8'b0001_0101
  assign out_slr = operandA >> operandB[2:0];

  // арифметичкский сдвиг вправо(сохранение знака числа). Например, operandA = 8'b1111_1100, тогда
  //   out_sar = 8'b1111_1111
  assign out_sar = operandA >>> 3;
endmodule
