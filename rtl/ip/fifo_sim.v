// Verilog netlist created by Tang Dynasty v5.6.53426
// Sat Jun 25 00:40:26 2022

`timescale 1ns / 1ps
module fifo  // fifo.v(14)
  (
  clkr,
  clkw,
  di,
  re,
  rst,
  we,
  do,
  empty_flag,
  full_flag
  );

  input clkr;  // fifo.v(25)
  input clkw;  // fifo.v(24)
  input [9:0] di;  // fifo.v(23)
  input re;  // fifo.v(25)
  input rst;  // fifo.v(22)
  input we;  // fifo.v(24)
  output [9:0] do;  // fifo.v(27)
  output empty_flag;  // fifo.v(28)
  output full_flag;  // fifo.v(29)

  wire empty_flag_syn_2;  // fifo.v(28)
  wire full_flag_syn_2;  // fifo.v(29)

  EG_PHY_CONFIG #(
    .DONE_PERSISTN("ENABLE"),
    .INIT_PERSISTN("ENABLE"),
    .JTAG_PERSISTN("DISABLE"),
    .PROGRAMN_PERSISTN("DISABLE"))
    config_inst ();
  not empty_flag_syn_1 (empty_flag_syn_2, empty_flag);  // fifo.v(28)
  EG_PHY_FIFO #(
    .AE(32'b00000000000000000000000000000110),
    .AEP1(32'b00000000000000000000000000000111),
    .AF(32'b00000000000000000001111111111010),
    .AFM1(32'b00000000000000000001111111111001),
    .ASYNC_RESET_RELEASE("SYNC"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .E(32'b00000000000000000000000000000000),
    .EP1(32'b00000000000000000000000000000001),
    .F(32'b00000000000000000010000000000000),
    .FM1(32'b00000000000000000001111111111111),
    .GSR("DISABLE"),
    .MODE("FIFO8K"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("ASYNC"))
    fifo_inst_syn_11 (
    .clkr(clkr),
    .clkw(clkw),
    .csr({2'b11,empty_flag_syn_2}),
    .csw({2'b11,full_flag_syn_2}),
    .dia({open_n47,open_n48,open_n49,open_n50,open_n51,open_n52,open_n53,di[0],open_n54}),
    .orea(1'b0),
    .oreb(1'b0),
    .re(re),
    .rprst(rst),
    .rst(rst),
    .we(we),
    .dob({open_n75,open_n76,open_n77,open_n78,open_n79,open_n80,open_n81,open_n82,do[0]}),
    .empty_flag(empty_flag),
    .full_flag(full_flag));  // fifo.v(41)
  EG_PHY_FIFO #(
    .AE(32'b00000000000000000000000000000110),
    .AEP1(32'b00000000000000000000000000000111),
    .AF(32'b00000000000000000001111111111010),
    .AFM1(32'b00000000000000000001111111111001),
    .ASYNC_RESET_RELEASE("SYNC"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .E(32'b00000000000000000000000000000000),
    .EP1(32'b00000000000000000000000000000001),
    .F(32'b00000000000000000010000000000000),
    .FM1(32'b00000000000000000001111111111111),
    .GSR("DISABLE"),
    .MODE("FIFO8K"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("ASYNC"))
    fifo_inst_syn_12 (
    .clkr(clkr),
    .clkw(clkw),
    .csr({2'b11,empty_flag_syn_2}),
    .csw({2'b11,full_flag_syn_2}),
    .dia({open_n83,open_n84,open_n85,open_n86,open_n87,open_n88,open_n89,di[1],open_n90}),
    .orea(1'b0),
    .oreb(1'b0),
    .re(re),
    .rprst(rst),
    .rst(rst),
    .we(we),
    .dob({open_n111,open_n112,open_n113,open_n114,open_n115,open_n116,open_n117,open_n118,do[1]}));  // fifo.v(41)
  EG_PHY_FIFO #(
    .AE(32'b00000000000000000000000000000110),
    .AEP1(32'b00000000000000000000000000000111),
    .AF(32'b00000000000000000001111111111010),
    .AFM1(32'b00000000000000000001111111111001),
    .ASYNC_RESET_RELEASE("SYNC"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .E(32'b00000000000000000000000000000000),
    .EP1(32'b00000000000000000000000000000001),
    .F(32'b00000000000000000010000000000000),
    .FM1(32'b00000000000000000001111111111111),
    .GSR("DISABLE"),
    .MODE("FIFO8K"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("ASYNC"))
    fifo_inst_syn_13 (
    .clkr(clkr),
    .clkw(clkw),
    .csr({2'b11,empty_flag_syn_2}),
    .csw({2'b11,full_flag_syn_2}),
    .dia({open_n121,open_n122,open_n123,open_n124,open_n125,open_n126,open_n127,di[2],open_n128}),
    .orea(1'b0),
    .oreb(1'b0),
    .re(re),
    .rprst(rst),
    .rst(rst),
    .we(we),
    .dob({open_n149,open_n150,open_n151,open_n152,open_n153,open_n154,open_n155,open_n156,do[2]}));  // fifo.v(41)
  EG_PHY_FIFO #(
    .AE(32'b00000000000000000000000000000110),
    .AEP1(32'b00000000000000000000000000000111),
    .AF(32'b00000000000000000001111111111010),
    .AFM1(32'b00000000000000000001111111111001),
    .ASYNC_RESET_RELEASE("SYNC"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .E(32'b00000000000000000000000000000000),
    .EP1(32'b00000000000000000000000000000001),
    .F(32'b00000000000000000010000000000000),
    .FM1(32'b00000000000000000001111111111111),
    .GSR("DISABLE"),
    .MODE("FIFO8K"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("ASYNC"))
    fifo_inst_syn_14 (
    .clkr(clkr),
    .clkw(clkw),
    .csr({2'b11,empty_flag_syn_2}),
    .csw({2'b11,full_flag_syn_2}),
    .dia({open_n159,open_n160,open_n161,open_n162,open_n163,open_n164,open_n165,di[3],open_n166}),
    .orea(1'b0),
    .oreb(1'b0),
    .re(re),
    .rprst(rst),
    .rst(rst),
    .we(we),
    .dob({open_n187,open_n188,open_n189,open_n190,open_n191,open_n192,open_n193,open_n194,do[3]}));  // fifo.v(41)
  EG_PHY_FIFO #(
    .AE(32'b00000000000000000000000000000110),
    .AEP1(32'b00000000000000000000000000000111),
    .AF(32'b00000000000000000001111111111010),
    .AFM1(32'b00000000000000000001111111111001),
    .ASYNC_RESET_RELEASE("SYNC"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .E(32'b00000000000000000000000000000000),
    .EP1(32'b00000000000000000000000000000001),
    .F(32'b00000000000000000010000000000000),
    .FM1(32'b00000000000000000001111111111111),
    .GSR("DISABLE"),
    .MODE("FIFO8K"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("ASYNC"))
    fifo_inst_syn_15 (
    .clkr(clkr),
    .clkw(clkw),
    .csr({2'b11,empty_flag_syn_2}),
    .csw({2'b11,full_flag_syn_2}),
    .dia({open_n197,open_n198,open_n199,open_n200,open_n201,open_n202,open_n203,di[4],open_n204}),
    .orea(1'b0),
    .oreb(1'b0),
    .re(re),
    .rprst(rst),
    .rst(rst),
    .we(we),
    .dob({open_n225,open_n226,open_n227,open_n228,open_n229,open_n230,open_n231,open_n232,do[4]}));  // fifo.v(41)
  EG_PHY_FIFO #(
    .AE(32'b00000000000000000000000000000110),
    .AEP1(32'b00000000000000000000000000000111),
    .AF(32'b00000000000000000001111111111010),
    .AFM1(32'b00000000000000000001111111111001),
    .ASYNC_RESET_RELEASE("SYNC"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .E(32'b00000000000000000000000000000000),
    .EP1(32'b00000000000000000000000000000001),
    .F(32'b00000000000000000010000000000000),
    .FM1(32'b00000000000000000001111111111111),
    .GSR("DISABLE"),
    .MODE("FIFO8K"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("ASYNC"))
    fifo_inst_syn_16 (
    .clkr(clkr),
    .clkw(clkw),
    .csr({2'b11,empty_flag_syn_2}),
    .csw({2'b11,full_flag_syn_2}),
    .dia({open_n235,open_n236,open_n237,open_n238,open_n239,open_n240,open_n241,di[5],open_n242}),
    .orea(1'b0),
    .oreb(1'b0),
    .re(re),
    .rprst(rst),
    .rst(rst),
    .we(we),
    .dob({open_n263,open_n264,open_n265,open_n266,open_n267,open_n268,open_n269,open_n270,do[5]}));  // fifo.v(41)
  EG_PHY_FIFO #(
    .AE(32'b00000000000000000000000000000110),
    .AEP1(32'b00000000000000000000000000000111),
    .AF(32'b00000000000000000001111111111010),
    .AFM1(32'b00000000000000000001111111111001),
    .ASYNC_RESET_RELEASE("SYNC"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .E(32'b00000000000000000000000000000000),
    .EP1(32'b00000000000000000000000000000001),
    .F(32'b00000000000000000010000000000000),
    .FM1(32'b00000000000000000001111111111111),
    .GSR("DISABLE"),
    .MODE("FIFO8K"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("ASYNC"))
    fifo_inst_syn_17 (
    .clkr(clkr),
    .clkw(clkw),
    .csr({2'b11,empty_flag_syn_2}),
    .csw({2'b11,full_flag_syn_2}),
    .dia({open_n273,open_n274,open_n275,open_n276,open_n277,open_n278,open_n279,di[6],open_n280}),
    .orea(1'b0),
    .oreb(1'b0),
    .re(re),
    .rprst(rst),
    .rst(rst),
    .we(we),
    .dob({open_n301,open_n302,open_n303,open_n304,open_n305,open_n306,open_n307,open_n308,do[6]}));  // fifo.v(41)
  EG_PHY_FIFO #(
    .AE(32'b00000000000000000000000000000110),
    .AEP1(32'b00000000000000000000000000000111),
    .AF(32'b00000000000000000001111111111010),
    .AFM1(32'b00000000000000000001111111111001),
    .ASYNC_RESET_RELEASE("SYNC"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .E(32'b00000000000000000000000000000000),
    .EP1(32'b00000000000000000000000000000001),
    .F(32'b00000000000000000010000000000000),
    .FM1(32'b00000000000000000001111111111111),
    .GSR("DISABLE"),
    .MODE("FIFO8K"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("ASYNC"))
    fifo_inst_syn_18 (
    .clkr(clkr),
    .clkw(clkw),
    .csr({2'b11,empty_flag_syn_2}),
    .csw({2'b11,full_flag_syn_2}),
    .dia({open_n311,open_n312,open_n313,open_n314,open_n315,open_n316,open_n317,di[7],open_n318}),
    .orea(1'b0),
    .oreb(1'b0),
    .re(re),
    .rprst(rst),
    .rst(rst),
    .we(we),
    .dob({open_n339,open_n340,open_n341,open_n342,open_n343,open_n344,open_n345,open_n346,do[7]}));  // fifo.v(41)
  EG_PHY_FIFO #(
    .AE(32'b00000000000000000000000000000110),
    .AEP1(32'b00000000000000000000000000000111),
    .AF(32'b00000000000000000001111111111010),
    .AFM1(32'b00000000000000000001111111111001),
    .ASYNC_RESET_RELEASE("SYNC"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .E(32'b00000000000000000000000000000000),
    .EP1(32'b00000000000000000000000000000001),
    .F(32'b00000000000000000010000000000000),
    .FM1(32'b00000000000000000001111111111111),
    .GSR("DISABLE"),
    .MODE("FIFO8K"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("ASYNC"))
    fifo_inst_syn_19 (
    .clkr(clkr),
    .clkw(clkw),
    .csr({2'b11,empty_flag_syn_2}),
    .csw({2'b11,full_flag_syn_2}),
    .dia({open_n349,open_n350,open_n351,open_n352,open_n353,open_n354,open_n355,di[8],open_n356}),
    .orea(1'b0),
    .oreb(1'b0),
    .re(re),
    .rprst(rst),
    .rst(rst),
    .we(we),
    .dob({open_n377,open_n378,open_n379,open_n380,open_n381,open_n382,open_n383,open_n384,do[8]}));  // fifo.v(41)
  EG_PHY_FIFO #(
    .AE(32'b00000000000000000000000000000110),
    .AEP1(32'b00000000000000000000000000000111),
    .AF(32'b00000000000000000001111111111010),
    .AFM1(32'b00000000000000000001111111111001),
    .ASYNC_RESET_RELEASE("SYNC"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .E(32'b00000000000000000000000000000000),
    .EP1(32'b00000000000000000000000000000001),
    .F(32'b00000000000000000010000000000000),
    .FM1(32'b00000000000000000001111111111111),
    .GSR("DISABLE"),
    .MODE("FIFO8K"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("ASYNC"))
    fifo_inst_syn_20 (
    .clkr(clkr),
    .clkw(clkw),
    .csr({2'b11,empty_flag_syn_2}),
    .csw({2'b11,full_flag_syn_2}),
    .dia({open_n387,open_n388,open_n389,open_n390,open_n391,open_n392,open_n393,di[9],open_n394}),
    .orea(1'b0),
    .oreb(1'b0),
    .re(re),
    .rprst(rst),
    .rst(rst),
    .we(we),
    .dob({open_n415,open_n416,open_n417,open_n418,open_n419,open_n420,open_n421,open_n422,do[9]}));  // fifo.v(41)
  not full_flag_syn_1 (full_flag_syn_2, full_flag);  // fifo.v(29)

endmodule 

