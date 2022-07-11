module ethernet
(   
	input ADC_clk,                  
	input rstn,
	input [3:0] rgmii_rd,
	input rgmii_rx_ctl,
	input rgmii_rxc,
	output [3:0] rgmii_td,
	output rgmii_tx_ctl,
	output rgmii_txc,  
	input [9:0] data_in, 
	      	 	 
	output full_flag1,
	output empty_flag1,
	output full_flag2,
	output empty_flag2,
	output afull_flag1,
	output afull_flag2,
	input wren		         
);

	wire						E_RXC;		 
	wire						E_RXDV;		 
	wire		[7:0]			E_RXD;		 
	wire						GTXC;		
	wire		[7:0]			E_TXD;	 	
	wire						E_TXEN;		

	//wire 		[8:0]			usedw_ENET;        
	wire 		[7:0]			data_fifo1;
	wire 		[7:0]			data_fifo2;
	//wire		[7:0]			data_tx;   
	wire 						rden_ENET1;
	wire						rden_ENET2;    		 
	wire						full_flag;
	// wire						afull_flag1;
	// wire						afull_flag2;
	//wire		[8:0]			data_test;
	//wire 						clk_r;
	//wire						clk_500k;
	wire						eth_end;
	wire						wren_wait;
	wire 		[3:0] 			addr_fifo;

	assign	wren_wait = wren;

	assign GTXC=E_RXC;        

	// clk500k clk500k(
    // .clk(ADC_clk),
    // .rstn(rstn),
    // .clkr(clk_500k)
	// );

	Ethernet_TX    Ethernet_TX_Inst 
	(
	
		.rst_n			(rstn),
		.GTXC			(E_RXC), 
		.E_TXD			(E_TXD),          	 	
		.E_TXEN			(E_TXEN),       	
		//.usedw			(usedw_ENET),
		//.full_flag		(full_flag),           
		.rddata_fifo1	(data_fifo1),
		.rddata_fifo2	(data_fifo2),
		.afull_flag1	(afull_flag1),
		.afull_flag2	(afull_flag2),
		.rden_fifo1		(rden_ENET1),
		.rden_fifo2		(rden_ENET2),
		.eth_end		(eth_end)				
	);

	fifo8in	fifo1 
	(
		.rst    ( ~rstn ),
		.di  	( {1'b0,addr_fifo,data_in[9:7]} ),		
		.clkw 	( ADC_clk ),
		.clkr 	( E_RXC ),        
		.re 	( rden_ENET1 ),					
		.we 	( wren_wait ),		
		.do 	( data_fifo1 ), 	 	
		.empty_flag(empty_flag1),
		.full_flag(full_flag1),
		.afull_flag(afull_flag1)
	);
	fifo8in	fifo2 
	(
		.rst    ( ~rstn ),
		.di  	( {1'b1,data_in[6:0]} ),		
		.clkw 	( ADC_clk ),
		.clkr 	( E_RXC ),        
		.re 	( rden_ENET2 ),					
		.we 	( wren_wait ),		
		.do 	( data_fifo2 ), 	 	
		.empty_flag(empty_flag2),
		.full_flag(full_flag2),
		.afull_flag(afull_flag2)
	);

	// count count
	// (
    // 	.clk(E_RXC),
    // 	.rstn(rstn),
    // 	.clkr(clkr)
	// );

	//test rom
    
    // tri_rom tri_rom(
    //     .doa(data_test),
	//     .addra(addr_test),
    //     .clka(clk_500k),
    //     .rsta(~rstn)
    // );
    counter_fifo counter_fifo(
        .ADC_clk(ADC_clk),
        .rstn(rstn),
        .addr(addr_fifo)
    );



// Gmii_to_Rgmii Gmii_to_Rgmii(    
// 	.rstn 		   (rstn),

// 	.rgmii_td      (rgmii_td		),
// 	.rgmii_tx_ctl  (rgmii_tx_ctl	),
// 	.rgmii_txc     (rgmii_txc		),
// 	.rgmii_rd      (rgmii_rd		),
// 	.rgmii_rx_ctl  (rgmii_rx_ctl	),
// 	.rgmii_rxc     (rgmii_rxc		),

// 	.gmii_rx_clk   (E_RXC),
// 	.gmii_txd      (E_TXD),
// 	.gmii_tx_en    (E_TXEN),
// 	.gmii_tx_er    (1'b0),
// 	.gmii_tx_clk   (GTXC),
// 	.gmii_rxd      (E_RXD),
// 	.gmii_rx_dv	   (E_RXDV)
// );
util_gmii_to_rgmii u1(
	.reset 		   (~rstn),

	.rgmii_td      (rgmii_td		),
	.rgmii_tx_ctl  (rgmii_tx_ctl	),
	.rgmii_txc     (rgmii_txc		),
	.rgmii_rd      (rgmii_rd		),
	.rgmii_rx_ctl  (rgmii_rx_ctl	),
	.rgmii_rxc     (rgmii_rxc		),

	.gmii_rx_clk   (E_RXC),
	.gmii_txd      (E_TXD),
	.gmii_tx_en    (E_TXEN),
	.gmii_tx_er    (1'b0),
	.gmii_tx_clk   (GTXC),
	.gmii_rxd      (E_RXD),
	.gmii_rx_dv	   (E_RXDV),
	.gmii_rx_er	   (),
	.gmii_crs	   (),
	.gmii_col	   (),
	.speed_selection(2'b11),
	.duplex_mode	(1'b1)
);
endmodule