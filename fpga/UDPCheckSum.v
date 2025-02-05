`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:06:07 03/27/2020 
// Design Name: 
// Module Name:    UDPCheckSum 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module UDPCheckSum 
	#(parameter UDP_DATA_LNG=16'h001A) (
	
    input wire [15:0] packetIndex,
    input wire [7:0] data,
    output wire [15:0] cross, 
	 input wire clk, //posedge latches
	 input wire clear //high during clock clears to pseudo-zero
    );
	 //index in packetIndex to start computing checksum at
	 `define UDP_CHECKSUM_START 16'd34
	//total length of ETH+IP+UDP header
	//NOT including UDP checksum
	`define HEADER_LENGTH 16'd48
	//length of the "internal" header, which (for now) is just the "static"
	//checksum.  Not included in checksum calc
	`define UDP_I_HEADER_LENGTH 16'd2
	
	//added to the calculation of all UDP checksums
	//= UDP length + 0011 (IP prot = UDP)
	//`define UDP_CHECKSUM_ZERO (16'h001A + 16'h0011)
	`define UDP_CHECKSUM_ZERO (UDP_DATA_LNG + 16'h0011)
	//constant checksum, the last 16 bits of the packet 
	//are computed so that it comes out to this
	`define UDP_CHECKSUM 16'h2451 
	//length of just the data, including the cross
	//`define UDP_DATA_LNG 16'h001A
	//length of the actual, useful data
	`define UDP_TRUE_DATA_LNG (UDP_DATA_LNG-2)
	reg [31:0] accum;
	reg [7:0] MSB;
	reg low; //1 on the second byte (LSB) of each pair
	 
	wire inRange;
	assign inRange = ((packetIndex >= `UDP_CHECKSUM_START) && (packetIndex < `HEADER_LENGTH)) || (packetIndex >= (`HEADER_LENGTH + `UDP_I_HEADER_LENGTH));
	 
	always @(posedge clk) begin
		if (clear) begin
			accum <= `UDP_CHECKSUM_ZERO;
			low <= 1'b0;
		end else if (inRange) begin
			if(low) begin
				accum <= accum + {MSB,data};
				low <= 1'b0;
			end else begin
				MSB <= data;
				low <= 1'b1;
			end
		end
	end
	 
	wire [31:0] udpS0,udpS1,udpS2;
	 
	assign udpS0 = accum + {MSB,data}; //(low)?(accum + {MSB,data}):accum;
	assign udpS1 = udpS0[31:16] + udpS0[15:0];
	//assign udpS2 = udpS1[31:16] + udpS1[15:0];//probably unnecessary		
	assign cross = 16'h2949;//(~`UDP_CHECKSUM) - udpS1[15:0] - ((udpS1[15:0] > (~`UDP_CHECKSUM)) ? 16'd1 : 16'd0);

endmodule

`undef UDP_CHECKSUM_START
`undef HEADER_LENGTH 
`undef UDP_I_HEADER_LENGTH 
`undef UDP_CHECKSUM_ZERO 
`undef UDP_CHECKSUM 
`undef UDP_TRUE_DATA_LNG 
