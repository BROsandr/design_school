module simple_add_sub (
  input  signed [7:0] operandA, operandB, // два входных 8-ми битных операнда
  output signed [8:0] out_sum, out_dif    // Выходы для арифметических операций имеют дополнительный
                                          // 9-й бит переполнения
// Для корректного выполнения знаковых операций операнды и результат должны быть объявлены как signed
);
  // Минимальное 8-ми битное знаковое число -128. Максимальное 8-ми битное знаковое число 127.
  //   При сложении -128 + 127 получится -1.
  assign out_sum = operandA + operandB;
  assign out_dif = operandA - operandB;
endmodule
