`timescale 1ns / 1ns

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:12:20 02/15/2020
// Design Name:   top
// Module Name:   D:/fpga_files/RT901/PHY/PHY0_Test/RGMII_tx_test.v
// Project Name:  PHY0_Test
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module RGMII_tx_test;

	// Inputs
	reg clk25;
	reg RXC;
	reg [3:0] RXD;
	reg RXD_DV;

	// Outputs
	wire user_led;
	wire TXCLK;
	wire [3:0] TXD;
	wire TX_EN;
	wire JCLK;
	reg [7:0]J;
	wire [3:0]JP;
	// Instantiate the Unit Under Test (UUT)
	top uut (
		.clk25(clk25), 
		.user_led(user_led), 
		.TXCLK(TXCLK), 
		.TXD(TXD), 
		.TX_EN(TX_EN), 
		.RXC(RXC), 
		.RXD(RXD), 
		.RXD_DV(RXD_DV),
		.JCLK(JCLK),
		.J(J),
		.JP(JP)
	);

	initial begin
		clk25=0;
		#50;
		repeat(100000) begin
			#10 clk25=~clk25;
		end
	end
	initial begin
		// Initialize Inputs
		#100;
		J = 0;
		RXC = 0;
		RXD = 0;
		RXD_DV = 0;
		// Wait 100 ns for global reset to finish
		#1000;
      
      
		// Add stimulus here

	end
      
endmodule

