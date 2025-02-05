`timescale 1ns / 200ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   04:20:04 03/28/2020
// Design Name:   FIFO_Wrapper
// Module Name:   D:/fpga_files/RT901/PHY/PHY_02_First_Data/FIFO_tester.v
// Project Name:  PHY_02_First_Data
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FIFO_Wrapper
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module FIFO_tester;

	// Inputs
	reg enable;
	reg clk;
	reg [7:0] micData;
	reg micEn;

	// Outputs
	wire [7:0] data;
	wire fullEn;
	wire micClk;

	// Instantiate the Unit Under Test (UUT)
	FIFO_Wrapper uut (
		.enable(enable), 
		.clk(clk), 
		.data(data), 
		.fullEn(fullEn), 
		.micData(micData), 
		.micClk(micClk), 
		.micEn(micEn)
	);

	initial begin
		#50;
		forever begin
			#1 clk = ~clk;
		end
	end
	
	reg [15:0] micCounter;
	
	always @(posedge micClk) begin
		case (micCounter)
			0 : micData = 8'h23;
			1 : micData = 8'h38;
			default : micData = 0;
		endcase
		micCounter = micCounter + 1;
	end
	always @(negedge micClk) begin
		case (micCounter)
			0 : micData = 8'h16;
			1 : micData = 8'h25;
			default : micData = 0;
		endcase
	end
	initial begin
		// Initialize Inputs
		enable = 0;
		clk = 0;
		micData = 0;
		micEn = 0;
		
		micCounter = 0;
		#100;
		micEn = 1;
		#30000;
		enable = 1;
		#2400;
		enable = 0;
		#25000;
		enable = 1;
		#2400;
		enable = 0;

	end
      
endmodule

