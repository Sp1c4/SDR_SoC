////////////////////////////////////////////////////////////////////////////////
// Copyright (C) 1999-2008 Easics NV.
// This source file may be used and distributed without restriction
// provided that this copyright statement is not removed from the file
// and that any derivative work contains the original copyright notice
// and the associated disclaimer.
//
// THIS SOURCE FILE IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS
// OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED
// WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
//
// Purpose : synthesizable CRC function
//   * polynomial: x^32 + x^26 + x^23 + x^22 + x^16 + x^12 + x^11 + x^10 + x^8 + x^7 + x^5 + x^4 + x^2 + x^1 + 1
//   * data width: 8
//	  * convention: the first serial bit is D[7]
// Info : tools@easics.be
//        http://www.easics.com
////////////////////////////////////////////////////////////////////////////////
module CRC32_D8
(
	data,crc,newcrc
);

input 	[ 7:0] 	data;
input 	[31:0] 	crc;
output 	[31:0] 	newcrc;

wire 		[ 7:0] 	d;
wire 		[31:0] 	c;

assign d = {data[0],data[1],data[2],data[3],data[4],data[5],data[6],data[7]};
assign c = crc;
assign newcrc[ 0] = d[6] ^ d[ 0] ^ c[24] ^ c[30];
assign newcrc[ 1] = d[7] ^ d[ 6] ^ d[ 1] ^ d[ 0] ^ c[24] ^ c[25] ^ c[30] ^ c[31];
assign newcrc[ 2] = d[7] ^ d[ 6] ^ d[ 2] ^ d[ 1] ^ d[ 0] ^ c[24] ^ c[25] ^ c[26] ^ c[30] ^ c[31];
assign newcrc[ 3] = d[7] ^ d[ 3] ^ d[ 2] ^ d[ 1] ^ c[25] ^ c[26] ^ c[27] ^ c[31];
assign newcrc[ 4] = d[6] ^ d[ 4] ^ d[ 3] ^ d[ 2] ^ d[ 0] ^ c[24] ^ c[26] ^ c[27] ^ c[28] ^ c[30];
assign newcrc[ 5] = d[7] ^ d[ 6] ^ d[ 5] ^ d[ 4] ^ d[ 3] ^ d[ 1] ^ d[ 0] ^ c[24] ^ c[25] ^ c[27] ^ c[28] ^ c[29] ^ c[30] ^ c[31];
assign newcrc[ 6] = d[7] ^ d[ 6] ^ d[ 5] ^ d[ 4] ^ d[ 2] ^ d[ 1] ^ c[25] ^ c[26] ^ c[28] ^ c[29] ^ c[30] ^ c[31];
assign newcrc[ 7] = d[7] ^ d[ 5] ^ d[ 3] ^ d[ 2] ^ d[ 0] ^ c[24] ^ c[26] ^ c[27] ^ c[29] ^ c[31];
assign newcrc[ 8] = d[4] ^ d[ 3] ^ d[ 1] ^ d[ 0] ^ c[ 0] ^ c[24] ^ c[25] ^ c[27] ^ c[28];
assign newcrc[ 9] = d[5] ^ d[ 4] ^ d[ 2] ^ d[ 1] ^ c[ 1] ^ c[25] ^ c[26] ^ c[28] ^ c[29];
assign newcrc[10] = d[5] ^ d[ 3] ^ d[ 2] ^ d[ 0] ^ c[ 2] ^ c[24] ^ c[26] ^ c[27] ^ c[29];
assign newcrc[11] = d[4] ^ d[ 3] ^ d[ 1] ^ d[ 0] ^ c[ 3] ^ c[24] ^ c[25] ^ c[27] ^ c[28];
assign newcrc[12] = d[6] ^ d[ 5] ^ d[ 4] ^ d[ 2] ^ d[ 1] ^ d[ 0] ^ c[ 4] ^ c[24] ^ c[25] ^ c[26] ^ c[28] ^ c[29] ^ c[30];
assign newcrc[13] = d[7] ^ d[ 6] ^ d[ 5] ^ d[ 3] ^ d[ 2] ^ d[ 1] ^ c[ 5] ^ c[25] ^ c[26] ^ c[27] ^ c[29] ^ c[30] ^ c[31];
assign newcrc[14] = d[7] ^ d[ 6] ^ d[ 4] ^ d[ 3] ^ d[ 2] ^ c[ 6] ^ c[26] ^ c[27] ^ c[28] ^ c[30] ^ c[31];
assign newcrc[15] = d[7] ^ d[ 5] ^ d[ 4] ^ d[ 3] ^ c[ 7] ^ c[27] ^ c[28] ^ c[29] ^ c[31];
assign newcrc[16] = d[5] ^ d[ 4] ^ d[ 0] ^ c[ 8] ^ c[24] ^ c[28] ^ c[29];
assign newcrc[17] = d[6] ^ d[ 5] ^ d[ 1] ^ c[ 9] ^ c[25] ^ c[29] ^ c[30];
assign newcrc[18] = d[7] ^ d[ 6] ^ d[ 2] ^ c[10] ^ c[26] ^ c[30] ^ c[31];
assign newcrc[19] = d[7] ^ d[ 3] ^ c[11] ^ c[27] ^ c[31];
assign newcrc[20] = d[4] ^ c[12] ^ c[28];
assign newcrc[21] = d[5] ^ c[13] ^ c[29];
assign newcrc[22] = d[0] ^ c[14] ^ c[24];
assign newcrc[23] = d[6] ^ d[ 1] ^ d[ 0] ^ c[15] ^ c[24] ^ c[25] ^ c[30];
assign newcrc[24] = d[7] ^ d[ 2] ^ d[ 1] ^ c[16] ^ c[25] ^ c[26] ^ c[31];
assign newcrc[25] = d[3] ^ d[ 2] ^ c[17] ^ c[26] ^ c[27];
assign newcrc[26] = d[6] ^ d[ 4] ^ d[ 3] ^ d[ 0] ^ c[18] ^ c[24] ^ c[27] ^ c[28] ^ c[30];
assign newcrc[27] = d[7] ^ d[ 5] ^ d[ 4] ^ d[ 1] ^ c[19] ^ c[25] ^ c[28] ^ c[29] ^ c[31];
assign newcrc[28] = d[6] ^ d[ 5] ^ d[ 2] ^ c[20] ^ c[26] ^ c[29] ^ c[30];
assign newcrc[29] = d[7] ^ d[ 6] ^ d[ 3] ^ c[21] ^ c[27] ^ c[30] ^ c[31];
assign newcrc[30] = d[7] ^ d[ 4] ^ c[22] ^ c[28] ^ c[31];
assign newcrc[31] = d[5] ^ c[23] ^ c[29];

endmodule
