always_ff @(posedge clk, negedge rst_n)
  if (!rst_n) begin
    rd <= '0;
    ds <= '0;
  end
  else begin
    rd <= '0;
    ds <= '0;
    
    case (next)
      IDLE: ;
      READ: rd <= '1;
      DLY : rd <= '1;
      DONE: ds <= '1;
      default: {rd, ds} <= 'x;
    endcase
  end
