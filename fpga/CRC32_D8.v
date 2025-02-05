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
//
// Info : tools@easics.be
//        http://www.easics.com
//
// Modified by Jonathan Duffy to add internal register and clock interface
////////////////////////////////////////////////////////////////////////////////

module brev_8(input wire [7:0] in, output wire [7:0] out);
	assign out = {in [0],in [1],in [2],in [3],in [4],in [5],in [6],in [7]};
endmodule


module CRC32_D8 (
		input wire [7:0] 	data, 
		output wire [31:0]	cInv,
		input wire [15:0] index,
		input wire 	     	clk,
		input wire       	clear
	);
	// polynomial: x^32 + x^26 + x^23 + x^22 + x^16 + x^12 + x^11 + x^10 + x^8 + x^7 + x^5 + x^4 + x^2 + x^1 + 1
	// data width: 8
	// convention: the first serial bit is D[7]
	
	//ignores the first 8 bytes, b/c they're the ethernet header
	`define ETH_HEADER_LNG 16'd8
	
	wire [7:0] d;
	reg [31:0] c;
	wire [31:0] newcrc;
	brev_8 ri (data,d);
	//assign c = crc;
	assign newcrc[0] = d[6] ^ d[0] ^ c[24] ^ c[30];
	assign newcrc[1] = d[7] ^ d[6] ^ d[1] ^ d[0] ^ c[24] ^ c[25] ^ c[30] ^ c[31];
	assign newcrc[2] = d[7] ^ d[6] ^ d[2] ^ d[1] ^ d[0] ^ c[24] ^ c[25] ^ c[26] ^ c[30] ^ c[31];
	assign newcrc[3] = d[7] ^ d[3] ^ d[2] ^ d[1] ^ c[25] ^ c[26] ^ c[27] ^ c[31];
	assign newcrc[4] = d[6] ^ d[4] ^ d[3] ^ d[2] ^ d[0] ^ c[24] ^ c[26] ^ c[27] ^ c[28] ^ c[30];
	assign newcrc[5] = d[7] ^ d[6] ^ d[5] ^ d[4] ^ d[3] ^ d[1] ^ d[0] ^ c[24] ^ c[25] ^ c[27] ^ c[28] ^ c[29] ^ c[30] ^ c[31];
	assign newcrc[6] = d[7] ^ d[6] ^ d[5] ^ d[4] ^ d[2] ^ d[1] ^ c[25] ^ c[26] ^ c[28] ^ c[29] ^ c[30] ^ c[31];
	assign newcrc[7] = d[7] ^ d[5] ^ d[3] ^ d[2] ^ d[0] ^ c[24] ^ c[26] ^ c[27] ^ c[29] ^ c[31];
	assign newcrc[8] = d[4] ^ d[3] ^ d[1] ^ d[0] ^ c[0] ^ c[24] ^ c[25] ^ c[27] ^ c[28];
	assign newcrc[9] = d[5] ^ d[4] ^ d[2] ^ d[1] ^ c[1] ^ c[25] ^ c[26] ^ c[28] ^ c[29];
	assign newcrc[10] = d[5] ^ d[3] ^ d[2] ^ d[0] ^ c[2] ^ c[24] ^ c[26] ^ c[27] ^ c[29];
	assign newcrc[11] = d[4] ^ d[3] ^ d[1] ^ d[0] ^ c[3] ^ c[24] ^ c[25] ^ c[27] ^ c[28];
	assign newcrc[12] = d[6] ^ d[5] ^ d[4] ^ d[2] ^ d[1] ^ d[0] ^ c[4] ^ c[24] ^ c[25] ^ c[26] ^ c[28] ^ c[29] ^ c[30];
	assign newcrc[13] = d[7] ^ d[6] ^ d[5] ^ d[3] ^ d[2] ^ d[1] ^ c[5] ^ c[25] ^ c[26] ^ c[27] ^ c[29] ^ c[30] ^ c[31];
	assign newcrc[14] = d[7] ^ d[6] ^ d[4] ^ d[3] ^ d[2] ^ c[6] ^ c[26] ^ c[27] ^ c[28] ^ c[30] ^ c[31];
	assign newcrc[15] = d[7] ^ d[5] ^ d[4] ^ d[3] ^ c[7] ^ c[27] ^ c[28] ^ c[29] ^ c[31];
	assign newcrc[16] = d[5] ^ d[4] ^ d[0] ^ c[8] ^ c[24] ^ c[28] ^ c[29];
	assign newcrc[17] = d[6] ^ d[5] ^ d[1] ^ c[9] ^ c[25] ^ c[29] ^ c[30];
	assign newcrc[18] = d[7] ^ d[6] ^ d[2] ^ c[10] ^ c[26] ^ c[30] ^ c[31];
	assign newcrc[19] = d[7] ^ d[3] ^ c[11] ^ c[27] ^ c[31];
	assign newcrc[20] = d[4] ^ c[12] ^ c[28];
	assign newcrc[21] = d[5] ^ c[13] ^ c[29];
	assign newcrc[22] = d[0] ^ c[14] ^ c[24];
	assign newcrc[23] = d[6] ^ d[1] ^ d[0] ^ c[15] ^ c[24] ^ c[25] ^ c[30];
	assign newcrc[24] = d[7] ^ d[2] ^ d[1] ^ c[16] ^ c[25] ^ c[26] ^ c[31];
	assign newcrc[25] = d[3] ^ d[2] ^ c[17] ^ c[26] ^ c[27];
	assign newcrc[26] = d[6] ^ d[4] ^ d[3] ^ d[0] ^ c[18] ^ c[24] ^ c[27] ^ c[28] ^ c[30];
	assign newcrc[27] = d[7] ^ d[5] ^ d[4] ^ d[1] ^ c[19] ^ c[25] ^ c[28] ^ c[29] ^ c[31];
	assign newcrc[28] = d[6] ^ d[5] ^ d[2] ^ c[20] ^ c[26] ^ c[29] ^ c[30];
	assign newcrc[29] = d[7] ^ d[6] ^ d[3] ^ c[21] ^ c[27] ^ c[30] ^ c[31];
	assign newcrc[30] = d[7] ^ d[4] ^ c[22] ^ c[28] ^ c[31];
	assign newcrc[31] = d[5] ^ c[23] ^ c[29];
	
	always @(posedge clk) begin
		if(clear) begin
			c = 32'hFFFFFFFF;
		end else if (index >= `ETH_HEADER_LNG) begin
			c = newcrc;
		end //if in eth header, do nothing.
	end
	
	brev_8 ra (~newcrc[31:24],cInv[31:24]);
	brev_8 rb (~newcrc[23:16],cInv[23:16]);
	brev_8 rc (~newcrc[15:8],cInv[15:8]);
	brev_8 rd (~newcrc[7:0],cInv[7:0]);
	
endmodule

`undef ETH_HEADER_LNG
