`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:55:08 03/26/2020
// Design Name:   CRC32_D8
// Module Name:   D:/fpga_files/RT901/PHY/PHY0_01_CRC/CRC_tester.v
// Project Name:  PHY0_01_CRC
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CRC32_D8
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////
`include "CRC32_D8.v"
module CRC_tester;
	//byte in header to start calcing checksum at
	`define UDP_CHECKSUM_START 34
	//total length of ETH+IP+UDP header
	//NOT including UDP checksum
	`define HEADER_LENGTH 48
	//total length of the packet (including EVERYTHING)
	`define PACK_LENGTH 72	
	
	//added to the calculation of all UDP checksums
	//= UDP length + 0011 (IP prot = UDP)
	`define UDP_CHECKSUM_ZERO (16'h001A + 16'h0011)
	//constant checksum, the last 16 bits of the packet 
	//are computed so that it comes out to this
	`define UDP_CHECKSUM 16'h2451 
	//length of just the data, including the cross
	`define UDP_DATA_LNG 16'h001A
	//length of the actual, useful data
	`define UDP_TRUE_DATA_LNG (`UDP_DATA_LNG-2)
	reg [7:0] header [0:`HEADER_LENGTH-1];
	reg [15:0] cross; //final two bytes to generate the CRC, must be computed from UDP data
	initial begin
		$readmemh("ETH_header.mem", header);		
	end
	
	reg [7:0] packet [0:`PACK_LENGTH-1];
	
	initial begin
		$readmemh("fp4p.mem", packet);
	end
	
	///////////////////////////////////////////////CRC computation//////////////////////////////////////////
	
	reg [7:0] crcd;
	wire [31:0] crcOut;
	reg [15:0] crci;
	reg crcclk,crcclear;
	CRC32_D8 crcuut(.data(crcd),.cInv(crcOut),.index(crci),.clk(crcclk),.clear(crcclear));
	
	integer ci;
	initial begin
		#50
		crcd=0;
		crcclk=0;
		crcclear=0;
		#1 crcclear=1;
		#1 crcclk=1;
		#1 crcclk=0;
		crcclear=0;
		
		for (ci = 0; ci < (`PACK_LENGTH-16'd4); ci = ci + 1) begin
			crci = ci;
			crcd = packet[ci];
			#1 crcclk = 1;
			#1 crcclk = 0;
		end
		
		
		$display("CRC:%h",crcOut);
		
	end
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	///////////////////////////////////////////////////UDP CHECKSUM/////////////////////////////////////////////////////////////////////////////////
	integer i;
	
	//"actual" running checksum
	reg [31:0] udpSum;	
	//inverse checksum (still kinda is?)
	//this is in the data of the packet, and is set to
	//make the checksum work out right
	
	initial begin
		#100;
		udpSum = `UDP_CHECKSUM_ZERO;
		
		for (i = `UDP_CHECKSUM_START; i < `HEADER_LENGTH; i = i + 2) begin
			udpSum = udpSum + {header[i],header[i+1]};
		end
		//*add data*, currently all 0s
		udpSum = udpSum + 16'h5700;//data for testing
		udpSum = udpSum[31:16] + udpSum[15:0];
		udpSum = udpSum[31:16] + udpSum[15:0];//probably unnecessary
		
		$display("presum: %h\n",udpSum);
		
		//at this point, we have to compute cross
		$display("~2451: %h\n",(~`UDP_CHECKSUM));
		if (udpSum[15:0] <= (~`UDP_CHECKSUM)) begin
			$display("Less\n");
			cross = (~`UDP_CHECKSUM) - udpSum[15:0];
		end else begin
			$display("Greater\n");
			cross = ((~`UDP_CHECKSUM) - udpSum[15:0]) - 16'd1;
		end
		
		$display("Cross: %h\n",cross);
		
	end


	reg [31:0] sourceIp = {8'd192,8'd168,8'd0,8'd44};
	reg [31:0] destIp   = {8'd192,8'd168,8'd0,8'd4};
	reg [15:0] protocol = 16'h0011;
	reg [15:0] lng      = 16'h001A;
	reg [15:0] srcPort  = 16'h0400;
	reg [15:0] destPort = 16'h0400;
	reg [15:0] lng2     = 16'h001A;
	reg [15:0] data [0:8];
	initial begin
		data[0] = 16'h0000;
		data[1] = 16'h0000;
		data[2] = 16'h0000;
		data[3] = 16'h0000;
		data[4] = 16'h0000;
		data[5] = 16'h0000;
		data[6] = 16'h0000;
		data[7] = 16'h5700;
		data[8] = 16'h51e8;
	end
	reg [31:0] checkSum = 0;
	initial begin
		#200;
      checkSum = checkSum + sourceIp[15:0];
		checkSum = checkSum + sourceIp[31:16];
		checkSum = checkSum + destIp[15:0];
		checkSum = checkSum + destIp[31:16];
		checkSum = checkSum + protocol;
		checkSum = checkSum + lng;
		checkSum = checkSum + srcPort;
		checkSum = checkSum + destPort;
		checkSum = checkSum + lng2;
		checkSum = checkSum + data[0];
		checkSum = checkSum + data[1];
		checkSum = checkSum + data[2];
		checkSum = checkSum + data[3];
		
		checkSum = checkSum + data[4];
		checkSum = checkSum + data[5];
		checkSum = checkSum + data[6];
		checkSum = checkSum + data[7];
		
		checkSum = checkSum + cross;//data[8];
		checkSum = checkSum + checkSum[31:16];
		checkSum = ~checkSum;
		$display("CheckSum: %h\n",checkSum[15:0]);
	end
	
	
	reg [15:0] udpI;
	reg [7:0] udpD;
	wire [15:0] ucross;
	reg clk,clear;
	UDPCheckSum udpcs (.packetIndex(udpI),
		.data(udpD),
		.cross(ucross), 
		.clk(clk), 
		.clear(clear) 
    );
	integer udi;
	initial begin
		clk = 0;
		udpI = 0;
		clear = 0;
		#200
		clear = 1;
		#1 clk = 1;
		#1 clk = 0;
		#1 clear = 0;
		
		for (udi = 0; udi < `HEADER_LENGTH; udi = udi + 1) begin
			udpI = udi;
			udpD = header[udi];
			#1 clk = 1;
			#1 clk = 0;
		end
		udpD = 16'h57;
		#1 clk = 1;
		#1 clk = 0;
		udpD = 16'h00;
		#1 clk = 1;
		#1 clk = 0;
		$display("UDPMod: %h\n",ucross);
	end
endmodule

