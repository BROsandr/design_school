module top (
  input  a, b, c,
  output y
);
  wire n1;

  and_3 andgate (
    .a(a), .b(b),
    .c(c), .y(n1)
  );

  inv inverter (
    .a(n1), .y(y)
  );
endmodule
