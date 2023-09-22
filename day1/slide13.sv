module mul (
  input  D0,
  input  D1,
  input  S,
  output Y
);
  assign Y = S ? D1 : D0;
endmodule
