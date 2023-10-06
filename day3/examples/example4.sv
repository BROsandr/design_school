module example4(
  input  logic clk_i,
  input  logic a_i,
  input  logic b_i,
  output logic q_o
);
  logic q;

  always_comb begin
    q   =     a_i;
    q_o = q & b_i;
  end
endmodule
