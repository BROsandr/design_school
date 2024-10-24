typedef enum bit
    {
        S0 = 1'd0,
        S1 = 1'd1
    }
    state_e;
    state_e state, next_state;



    // State register
    always_ff @ (posedge clk or posedge rst)
      if (rst)
          state <= S0;
      else if (en)
          state <= next_state;
