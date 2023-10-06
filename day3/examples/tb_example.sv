module tb_example ();
  localparam int CLK_PERIOD = 10;

  logic       a, b, c;
  logic       clk;

  example4 example4(
    .clk_i (clk),
    .a_i   (a  ),
    .b_i   (b  ),
    .q_o   (c  )
  );

  initial begin
    clk <= '0;
    forever #(CLK_PERIOD/2) clk <= ~clk;
  end

  initial begin
    a <= 1'b0;
    b <= 1'b0;
    @(posedge clk);
    @(posedge clk);
    a <= 1'b1;
    b <= 1'b1;
    @(posedge clk);
    @(posedge clk);
    @(posedge clk);
    $finish();
  end
endmodule
