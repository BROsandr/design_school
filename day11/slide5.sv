wire enable;
wire fsm_in, moore_fsm_out, mealy_fsm_out;

// Generate a strobe signal 3 times a second
strobe_gen #(
  .clk_mhz (clk_mhz),
  .strobe_hz (3)
) i_strobe_gen (
  .strobe (enable),
  .*
);
