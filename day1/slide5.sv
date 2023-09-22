module top (
  input              clk,
  input              a,
  input              b,
  output /* [1:0] */ q
);
  wire [1:0] c; // Многобитный сигнал(шина)

  assign c = {a, b}; // Конкатенация

  assign q = c;
endmodule
