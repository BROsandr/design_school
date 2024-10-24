package fsm1_pkg;
  typedef enum {IDLE,
                READ,
                DLY,
                DONE,
                XXX} state_e;
endpackage

package fsm1_pkg;
  typedef enum logic [1:0] {IDLE  = 2'b00,
                            READ  = 2'b01,
                            DLY   = 2'b11,
                            DONE  = 2'b10,
                            XXX   = 'x} state_e;
endpackage
