// Свзяанные между собой выражения превратятся в общую цепь комбинационный логики
wire [3:0] a, b, c, d, e;
reg  [3:0] f, g, h, j;

always @(*) begin
  j = (((a + b) & c) | d) - e;
end
