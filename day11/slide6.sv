shift_reg # (.depth (w_led)
) i_shift_reg (
  .en      ( enable ),
  .seq_in  ( |key   ),
  .seq_out ( fsm_in ),
  .par_out ( led    ),
  .*
);
