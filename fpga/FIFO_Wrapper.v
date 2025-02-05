`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:02:02 03/28/2020 
// Design Name: 
// Module Name:    FIFO_Wrapper 
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
module FIFO_Wrapper
	#(parameter NUM_MIC_PAIRS = 48)(
	input  wire enable,		//when enabled, outputs the next data byte on each clk rising edge
	input  wire clk,			//125MHz clock from the ethernet controller
	output reg  [7:0] data,	//data being output to the ethernet controller
	output wire fullEn,//tells the eth controller that we've got enough data for a full packet
	 
	input  wire [NUM_MIC_PAIRS-1:0] micData,
	output wire micClk,
	input  wire micEn	//disabling micEn clears the FIFO and stops data from coming in
	);
	wire srst;
	wire [95:0] din;
	reg  wr_en;
	reg  rd_en;
	wire [95:0] dout;
	wire full,almost_full,overflow,empty,almost_empty;
	
	//divide by 125 isn't divisible by 2, so have to do 
	//something to get both edges.  Basically has 2 
	//500KHz clocks 90 degrees out of phase, and 
	//xors them. 
	reg [7:0] micDividerPos;
	reg [7:0] micDividerNeg;
	reg micClkPos,micClkNeg;
	
	always@(posedge clk) begin
		if(micDividerPos == 124) begin
			micDividerPos <= 0;
			micClkPos <= ~micClkPos;
		end else begin
			micDividerPos <= micDividerPos + 1;
		end
	end
	
	always@(negedge clk) begin
		if(micDividerNeg == 124) begin
			micDividerNeg <= 0;
			micClkNeg <= ~micClkNeg;
		end else begin
			micDividerNeg <= micDividerNeg + 1;
		end
	end
	assign micClk = micClkNeg ^ micClkPos;
	
	reg [NUM_MIC_PAIRS-1:0] micL,micR;
	always@(posedge micClk) begin
		micL = micData;
	end
	always@(negedge micClk) begin
		micR = micData;
	end
	reg [11:0] pMicClk; //holds the previous value of micClk, catches rising edges
	//after a little delay. 
	//this is used to enable for only a single 125MHz clock cycle (for the FIFO)
	//AND makes sure that it's already read in both mics, so it's not metastable
	//on whatever chanel just got read
	always@(posedge clk) begin
		if (pMicClk == 12'h03F) begin//If we caught a rising edge, clock in the data
			wr_en <= 1;
			pMicClk <= {pMicClk[10:0],micClk};
		end else begin
			wr_en <= 0;
			pMicClk <= {pMicClk[10:0],micClk};
		end
	end
	reg [31:0] timeStamp;
	always @(posedge micClk) begin
		timeStamp = timeStamp + 1;
	end
	assign din = {micL,micR};//,timeStamp,48'h5566778899AA};

	reg [95:0] fifoData;
	reg [3:0] byteCounter;
	reg dataInvalid;
	
	always @( posedge clk) begin
		if(enable && byteCounter == 4'd0) begin
			rd_en <= 1;
			byteCounter <= 4'd11;
			data <= fifoData[7:0];
		end else if (enable) begin
			rd_en <= 0;
			case (byteCounter) 
				4'd11 : data <= fifoData[95:88];
				4'd10 : data <= fifoData[87:80];
				4'd9  : data <= fifoData[79:72];
				4'd8  : data <= fifoData[71:64];
				4'd7  : data <= fifoData[63:56];
				4'd6  : data <= fifoData[55:48];
				4'd5  : data <= fifoData[47:40];
				4'd4  : data <= fifoData[39:32];
				4'd3  : data <= fifoData[31:24];
				4'd2  : data <= fifoData[23:16];		
				4'd1  : data <= fifoData[15: 8];	
				default : data <= 8'd0;
			endcase
			byteCounter <= byteCounter - (4'd1);
		end else begin //not enabled
			rd_en <= 0;
		end
	end
	
	always @(posedge clk) begin
		if (rd_en) begin
			fifoData = dout;
		end
	end
	
	initial begin
		wr_en = 0;
		rd_en = 0;
		micDividerPos = 0;
		micDividerNeg = 62;
		micClkPos=0;
		micClkNeg=0;
		pMicClk = 0;
		data = 0;
		byteCounter = 10;
		micL = 0;
		micR = 0;
		timeStamp = 0;
	end

	assign srst = ~micEn;
	
	MicFifo fifo (
	  .clk(clk), 		// input clk
	  .srst(srst), 	// input srst
	  .din(din), 		// input [95 : 0] din
	  .wr_en(wr_en), 	// input wr_en
	  .rd_en(rd_en), 	// input rd_en
	  .dout(dout), 	// output [95 : 0] dout
	  .full(full), 	// output full
	  .almost_full(almost_full), 	// output almost_full
	  .overflow(overflow), 			// output overflow
	  .empty(empty), 					// output empty
	  .almost_empty(almost_empty), // output almost_empty
	  .prog_full(fullEn)				// output prog_full
	);

	

endmodule
