module and_3 (
  input  a, b, c,
  output y
);
  assign y = a & b & c;
endmodule

module inv (
  input  a,
  output y
);
  assign y = ~a;
endmodule
