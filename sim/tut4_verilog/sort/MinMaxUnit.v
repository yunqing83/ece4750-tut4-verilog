//========================================================================
// MinMaxUnit
//========================================================================
// This module takes two inputs, compares them, and outputs the larger
// via the "max" output port and the smaller via the "min" output port.

`ifndef TUT4_VERILOG_SORT_MIN_MAX_UNIT_V
`define TUT4_VERILOG_SORT_MIN_MAX_UNIT_V

module tut4_verilog_sort_MinMaxUnit
#(
  parameter p_nbits = 1
)(
  input  logic [p_nbits-1:0] in0,
  input  logic [p_nbits-1:0] in1,
  output logic [p_nbits-1:0] out_min,
  output logic [p_nbits-1:0] out_max
);

  // ''' TUTORIAL TASK '''''''''''''''''''''''''''''''''''''''''''''''''''
  // This model is incomplete. As part of the tutorial you will add
  // logic to implement the min/max unit. You should also write a unit
  // test from scratch named MinMaxUnit_test.py.
  // '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
  
  logic [p_nbits-1:0] min;
  logic [p_nbits-1:0] max;

  always_comb begin

    // Sort in0 and in1 

    if ( in0 <= in1 ) begin
      min = in0;
      max = in1;
    end
    else if ( in0 > in1 ) begin
      min = in1;
      max = in0;
    end
    else begin
      min = 'x;
      max = 'x;
    end
  
  end

  assign out_max = max;
  assign out_min = min;

endmodule

`endif /* TUT4_VERILOG_SORT_MIN_MAX_UNIT_V */

