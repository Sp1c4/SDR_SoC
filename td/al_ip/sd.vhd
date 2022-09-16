--------------------------------------------------------------
 --  Copyright (c) 2011-2022 Anlogic, Inc.
 --  All Right Reserved.
--------------------------------------------------------------
 -- Log	:	This file is generated by Anlogic IP Generator.
 -- File	:	D:/jichuang/SDRV4_2_1/td/al_ip/sd.vhd
 -- Date	:	2022 07 18
 -- TD version	:	5.6.53426
--------------------------------------------------------------

LIBRARY ieee;
USE work.ALL;
	USE ieee.std_logic_1164.all;
LIBRARY eagle_macro;
	USE eagle_macro.EAGLE_COMPONENTS.all;

ENTITY sd IS
PORT (
	clk		: IN STD_LOGIC ;
	ras_n		: IN STD_LOGIC ;
	cas_n		: IN STD_LOGIC ;
	we_n		: IN STD_LOGIC ;
	cke		: IN STD_LOGIC
	);
END sd;

ARCHITECTURE struct OF sd IS

	BEGIN
		PORT MAP (
			clk	=> clk,
			addr	=> addr,
			ba	=> ba,
			dq	=> dq,
			cke	=> cke
		);

END struct;
