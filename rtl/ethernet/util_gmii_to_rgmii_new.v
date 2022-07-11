
module util_gmii_to_rgmii (
    input           reset,
    input           rgmii_rxc,//add
    output  [ 3:0]  rgmii_td,
    output          rgmii_tx_ctl,
    output          rgmii_txc,
    input   [ 3:0]  rgmii_rd,
    input           rgmii_rx_ctl,

    output           gmii_rx_clk,
    input   [ 7:0]  gmii_txd,
    input           gmii_tx_en,
    input           gmii_tx_er,
    output          gmii_tx_clk,
    output  reg         gmii_crs,
    output  reg         gmii_col,
    output  reg [ 7:0]  gmii_rxd,
    output  reg        gmii_rx_dv,
    output  reg        gmii_rx_er,
    input  [ 1:0]   speed_selection, // 1x gigabit, 01 100Mbps, 00 10mbps
    input           duplex_mode   // 1 full, 0 half
  );
  
  wire gigabit;
  wire gmii_tx_clk_s;
  wire gmii_rx_dv_s;

  wire  [ 7:0]    gmii_rxd_s;
  wire            gmii_rx_clk_in;
  wire            rgmii_rx_ctl_delay;
  wire            rgmii_rx_ctl_s;

  reg             tx_reset_d1;
  reg             tx_reset_sync;
  reg             rx_reset_d1;
  reg   [ 7:0]    gmii_txd_r;
  reg             gmii_tx_en_r;
  reg             gmii_tx_er_r;
  reg   [ 7:0]    gmii_txd_r_d1;
  reg             gmii_tx_en_r_d1;
  reg             gmii_tx_er_r_d1;

  reg             rgmii_tx_ctl_r;
  reg   [ 3:0]    gmii_txd_low;
  //reg             gmii_col;
  //reg             gmii_crs;

  //reg  [ 7:0]     gmii_rxd;
  //reg             gmii_rx_dv;
  //reg             gmii_rx_er;

  assign gigabit        = speed_selection [1];
  assign gmii_tx_clk    = gmii_tx_clk_s;
  assign gmii_tx_clk_s  = gmii_rx_clk_in; 
  assign gmii_rx_clk    = gmii_rx_clk_in;

    
  assign gmii_rx_clk_in = ~rgmii_rxc;//

  always @(posedge gmii_rx_clk_in)
  begin
    gmii_rxd       = gmii_rxd_s;
    gmii_rx_dv     = gmii_rx_dv_s;
    gmii_rx_er     = gmii_rx_dv_s ^ rgmii_rx_ctl_s;
  end

  always @(posedge gmii_tx_clk_s) begin
    tx_reset_d1    <= reset;
    tx_reset_sync  <= tx_reset_d1;
  end

  always @(posedge gmii_tx_clk_s)
  begin
    rgmii_tx_ctl_r = gmii_tx_en_r ^ gmii_tx_er_r;
    gmii_txd_low   = gigabit ? gmii_txd_r[7:4] :  gmii_txd_r[3:0];
    gmii_col       = duplex_mode ? 1'b0 : (gmii_tx_en_r| gmii_tx_er_r) & ( gmii_rx_dv | gmii_rx_er) ;
    gmii_crs       = duplex_mode ? 1'b0 : (gmii_tx_en_r| gmii_tx_er_r| gmii_rx_dv | gmii_rx_er);
  end

  always @(posedge gmii_tx_clk_s) begin
    if (tx_reset_sync == 1'b1) begin
      gmii_txd_r   <= 8'h0;
      gmii_tx_en_r <= 1'b0;
      gmii_tx_er_r <= 1'b0;
    end
    else
    begin
      gmii_txd_r   <= gmii_txd;
      gmii_tx_en_r <= gmii_tx_en;
      gmii_tx_er_r <= gmii_tx_er;
      gmii_txd_r_d1   <= gmii_txd_r;
      gmii_tx_en_r_d1 <= gmii_tx_en_r;
      gmii_tx_er_r_d1 <= gmii_tx_er_r;
    end
  end

    
oddr utx_txc( .q(rgmii_txc), .clk(gmii_tx_clk_s), .d1(1'b0), .d0(1'b1), .rst(tx_reset_sync) );
oddr utxd0(.q(rgmii_td[0]), .clk(gmii_tx_clk_s), .d1(gmii_txd_low[0]), .d0(gmii_txd_r_d1[0]), .rst(tx_reset_sync));
oddr utxd1(.q(rgmii_td[1]), .clk(gmii_tx_clk_s), .d1(gmii_txd_low[1]), .d0(gmii_txd_r_d1[1]), .rst(tx_reset_sync));
oddr utxd2(.q(rgmii_td[2]), .clk(gmii_tx_clk_s), .d1(gmii_txd_low[2]), .d0(gmii_txd_r_d1[2]), .rst(tx_reset_sync));
oddr utxd3(.q(rgmii_td[3]), .clk(gmii_tx_clk_s), .d1(gmii_txd_low[3]), .d0(gmii_txd_r_d1[3]), .rst(tx_reset_sync));
  //generate
  //genvar i;
  //for (i = 0; i < 4; i = i + 1) begin : gen_tx_data
  //  ODDR utxd( .q(rgmii_td[i]), .clk(gmii_tx_clk_s), .d1(gmii_txd_low[i]), .d0(gmii_txd_r_d1[i]), .rst(tx_reset_sync) );
  //end
  //endgenerate
    
    
oddr utx_ctl( .q(rgmii_tx_ctl), .clk(gmii_tx_clk_s), .d1(rgmii_tx_ctl_r), .d0(gmii_tx_en_r_d1), .rst(tx_reset_sync) );

 
      //generate
      //for (i = 0; i < 4; i = i + 1) begin
      //   IDDR urxd( .q1(gmii_rxd_s[i+4]), .q0(gmii_rxd_s[i]), .d(rgmii_rd[i]), .clk(gmii_rx_clk_in), .rst(1'b0) );     
      //end
      //endgenerate    
iddr urxd0( .q1(gmii_rxd_s[4]), .q0(gmii_rxd_s[0]), .d(rgmii_rd[0]), .clk(gmii_rx_clk_in), .rst(1'b0) );
iddr urxd1( .q1(gmii_rxd_s[5]), .q0(gmii_rxd_s[1]), .d(rgmii_rd[1]), .clk(gmii_rx_clk_in), .rst(1'b0) );
iddr urxd2( .q1(gmii_rxd_s[6]), .q0(gmii_rxd_s[2]), .d(rgmii_rd[2]), .clk(gmii_rx_clk_in), .rst(1'b0) );
iddr urxd3( .q1(gmii_rxd_s[7]), .q0(gmii_rxd_s[3]), .d(rgmii_rd[3]), .clk(gmii_rx_clk_in), .rst(1'b0) );        
iddr urx_ctl( .q1(rgmii_rx_ctl_s), .q0(gmii_rx_dv_s), .d(rgmii_rx_ctl), .clk(gmii_rx_clk_in), .rst(1'b0) );

endmodule
