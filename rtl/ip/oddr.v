/************************************************************\
 **  Copyright (c) 2011-2021 Anlogic, Inc.
 **  All Right Reserved.\
\************************************************************/
/************************************************************\
 ** Log	:	This file is generated by Anlogic IP Generator.
 ** File	:	D:/Project/anlogic/ethernet/ip/oddr.v
 ** Date	:	2022 06 18
 ** TD version	:	5.5.47752
\************************************************************/

`timescale 1ns / 1ps

module oddr ( q, clk, d1, d0, rst );
output 		q;
input  		clk;
input  		d1;
input  		d0;
input  		rst;

		EG_LOGIC_ODDR #(
		.ASYNCRST("ENABLE"))
		oddr (
		.q(q),
		.clk(clk),
		.d1(d1),
		.d0(d0),
		.rst(rst));

endmodule