module top (
  input            clk,
  input      [8:0] a,
  input            b,
  output reg [3:0] q // выходные сигналы и шины можно объявлять как reg
);
  // Присвоение в блоке always возможно только для сигналов типа reg!!!!
  always @(*) begin
    q = !a[7:4];
  end
endmodule
