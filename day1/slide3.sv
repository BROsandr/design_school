module top (
  input  clk,
  input  a,
  input  b,

  output q
);
  wire [1:0] c; // Многобитный сигнал(шина)

  assign c = {a, b}; // Конкатенация
endmodule
