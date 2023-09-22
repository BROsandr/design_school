// многовходовые мультиплексоры и дешифраторы можно описывать через case
reg  [3:0] c;
wire [1:0] option;
wire [7:0] a, b, c, d;
reg  [7:0] e;
always @(a or b or c or d or option) begin
  case (option)
    0: e = a;
    1: e = b;
    2: e = c;
    3: e = d;
  endcase
end
