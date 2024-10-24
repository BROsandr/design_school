module fsm
  (... ports ...);
  import fsm_pkg::*;
  state_e state, next;

  always_ff @(posedge clk or negedge rst_n)
    if (!rst_n) state <= IDLE;
    else        state <= next;

  always_comb begin
    next = XXX;
    rd   = '0;
    ds   = '0;

    case (state)
      IDLE  : if (go)      next = READ;
              else         next = IDLE;
      READ  : begin
                rd = '1;
                           next = DLY;

      ...
    endcase
  end
endmodule
