module example3(
  input  logic clk_i,
  input  logic a_i,
  input  logic b_i,
  output logic q_o
);
  logic q;

  always @(posedge clk_i) begin
    q   =     a_i;
  end

  always @(posedge clk_i) begin
    q_o = q & b_i;
  end
endmodule
