// Verilog netlist created by TD v5.0.30786
// Mon Apr 25 20:29:56 2022

`timescale 1ns / 1ps
module ADC  // ADC.v(14)
  (
  clk,
  pd,
  s,
  soc,
  dout,
  eoc
  );

  input clk;  // ADC.v(18)
  input pd;  // ADC.v(19)
  input [2:0] s;  // ADC.v(20)
  input soc;  // ADC.v(21)
  output [11:0] dout;  // ADC.v(16)
  output eoc;  // ADC.v(15)


  EG_PHY_ADC #(
    .CH0("DISABLE"),
    .CH1("DISABLE"),
    .CH2("DISABLE"),
    .CH3("DISABLE"),
    .CH4("ENABLE"),
    .CH5("DISABLE"),
    .CH6("ENABLE"),
    .CH7("DISABLE"),
    .VREF("DISABLE"))
    adc (
    .clk(clk),
    .pd(pd),
    .s(s),
    .soc(soc),
    .dout(dout),
    .eoc(eoc));  // ADC.v(26)
  EG_PHY_CONFIG #(
    .DONE_PERSISTN("ENABLE"),
    .INIT_PERSISTN("ENABLE"),
    .JTAG_PERSISTN("DISABLE"),
    .PROGRAMN_PERSISTN("DISABLE"))
    config_inst ();

endmodule 

