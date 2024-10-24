module fsm
  (... ports ...);
  import fsm_pkg::*;
  state_e state, next;

  always_ff @(posedge clk or negedge rst_n)
    if (!rst_n) state <= IDLE;
    else        state <= next;

  always_comb begin
    next = XXX;
    case (state)
      IDLE: if (go) next = READ;
            else    next = IDLE;
      ...
    endcase
  end

  always_comb begin
    n_rd = '0;
    n_ds = '0;
    case (state)
      READ: n_rd = '1;  // READ
      ...
    endcase
  end

  always_ff @(posedge clk or negedge rst_n)
    if (!rst_n) begin ...
    end else begin
      rd <= n_rd;
      ds <= n_ds;
    end
endmodule
