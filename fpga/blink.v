`default_nettype none
`include "CRC32_D8.v"

module top(
	input  wire clk25,
	output wire user_led,
	output wire TXCLK,
	output wire [3:0] TXD,
	output wire TX_EN, 
	input wire  RXC,
	input wire  [3:0] RXD,
	input wire  RXD_DV,
	output wire DIR,
	//panel IO
	output wire P1D_CLK,
	output wire P1D_NCK,
	input wire  [7:0] P1D,
	
	output wire P2D_CLK,
	output wire P2D_NCK,
	input wire  [7:0] P2D,
	
	output wire P3D_CLK,
	output wire P3D_NCK,
	input wire  [7:0] P3D,
	
	output wire P4D_CLK,
	output wire P4D_NCK,
	input wire  [7:0] P4D,
	
	output wire P5D_CLK,
	output wire P5D_NCK,
	input wire  [7:0] P5D,
	
	output wire P6D_CLK,
	output wire P6D_NCK,
	input wire  [7:0] P6D,
	//debug port
	output wire [3:0] JP,
	//additional (currently unassigned) pins
	input wire  PIN_39,
	input wire  PIN_40,
	input wire  PIN_41,
	input wire  PIN_42,
	input wire  PIN_43,
	input wire  PIN_44,
	input wire  PIN_45,
	input wire  PIN_47,
	input wire  J600_PIN7,
	input wire  J600_PIN8,
	input wire  J601_PIN7,
	input wire  J601_PIN8
	);
	//global constants
	`define NUM_MICS (48)
	//constant pin assignments 
	assign DIR = 1'b1;
	
	//global nets
	wire [(`NUM_MICS - 1):0] micData;
	wire micClk;
	
	wire CLK_125_FAB,CLK_125_IO;//used for clocking DDR and PHY registers
	wire CLK_125;//used for clocking other stuff.
	wire CLK_125_90;//only used for TXCLK, delayed by 2ns
	
	//Clock multiplier, takes 25M, boosts to 125M on two outputs, and has a 2ns phase delayed line for the PHY TX (CLK_125_90)
	ClockMultiplier_125MHz PHYMultiplier (.CLK_IN_25(clk25),.CLK_OUT_125_FAB(CLK_125_FAB),.CLK_OUT_125_IO(CLK_125_IO),.CLK_OUT_125(CLK_125),.CLK_125_90(CLK_125_90)); 
	
	////////////////////////////////////debug IO////////////////////////////////////////////
	assign JP[3:0] = RXD[3:0];
	/////////////////////////////////////Mic I/O ////////////////////////////////////////////////
	assign micData = {P1D,P2D,P3D,P4D,P5D,P6D};
	assign P1D_CLK = micClk;
	assign P2D_CLK = micClk;
	assign P3D_CLK = micClk;
	
	assign P4D_CLK = micClk;
	assign P5D_CLK = micClk;
	assign P6D_CLK = micClk;
	
	reg[19:0] LED_counter;
	
	reg [5:0] LEDs;
	assign {P6D_NCK,P5D_NCK,P4D_NCK,P3D_NCK,P2D_NCK,P1D_NCK} = LEDs;
	
	always@(posedge micClk) begin
		if (LED_counter > 20'd300000) begin
			LED_counter <= 0;
		end else begin
			LED_counter <= LED_counter + 1;
		end
		
		if (LED_counter > 20'd250000) begin
			LEDs = 6'b100000;
		end else if (LED_counter > 20'd200000) begin
			LEDs = 6'b010000;
		end else if (LED_counter > 20'd150000) begin
			LEDs = 6'b001000;
		end else if (LED_counter > 20'd100000) begin
			LEDs = 6'b000100;
		end else if (LED_counter > 20'd50000) begin
			LEDs = 6'b000010;
		end else begin
			LEDs = 6'b000001;
		end 
	end
	
	/////////////////////////////////////////////////START OF PHY////////////////////////////////////////////
	//PHY constants:
	`define RESEND_INTRVL 25000000
	//byte in header to start calcing checksum at
	`define UDP_CHECKSUM_START (16'd34)
	//total length of ETH+IP+UDP header
	//NOT including UDP checksum
	`define HEADER_LENGTH (16'd50)
	//constant checksum, the last 16 bits of the packet 
	//are computed so that it comes out to this
	`define UDP_CHECKSUM (16'h0000) //2451 
	//length of the actual, useful data -2 for cross, -8 for header
	`define UDP_TRUE_DATA_LNG (16'd2400)
	//length of the data, including header (source,dest,lng,checksum) and the cross
	`define UDP_DATA_LNG (`UDP_TRUE_DATA_LNG + 16'd10)
	//added to the calculation of all UDP checksums
	//= UDP length + 0x0011 (IP prot = UDP)
	`define UDP_CHECKSUM_ZERO (`UDP_DATA_LNG + 16'h0011)
	//Cross + Eth CRC
	`define FOOTER_LNG (16'd6)
	//total length of the packet (including EVERYTHING)
	`define PACK_LENGTH (`UDP_TRUE_DATA_LNG + `HEADER_LENGTH + `FOOTER_LNG)
	
	
	reg [7:0] header [0:`HEADER_LENGTH-1];	
	initial begin
		$display("%d",`PACK_LENGTH);
		$readmemh("Hdr_200p_NoUDPCS.mem", header);		
	end
	
	//PHY control signals
	reg TX_EN_SIG;
	reg TX_ERR_SIG;
	reg clearSig;
	reg crossCt;
	reg crcCt;
	reg fifoEn;
	
	//PHY control/data lines (internal)
	reg [7:0] dataOut;	
	reg [31:0] counter;
	reg [15:0] packetIndex;
	
	//ethernet and data lines (from external files)
	reg [31:0] crc;
	reg [15:0] cross;
	wire [31:0] crcWire;
	reg  [15:0] crossWire;//TODO: rename (no longer a cross, now packet index)
	wire [15:0] pIMO;
	wire [7:0] fifoData;
	wire fullEn;
	assign pIMO = packetIndex-1;
	
	//computes 32 bit crc, given 8 bits at a time, clocked by CLK_125_FAB
	CRC32_D8 CRCCalc(.data(dataOut),.cInv(crcWire),.index(pIMO),.clk(CLK_125_FAB),.clear(clearSig));
	//FIFOs mic data and triggeres sending packets
	FIFO_Wrapper fifo (
		.enable(fifoEn), 
		.clk(CLK_125_FAB), 
		.data(fifoData), 
		.fullEn(fullEn), 
		.micData(micData), 
		.micClk(micClk), 
		.micEn(1'b1)
	);
	
	initial begin
		counter <= `PACK_LENGTH;//if < pack length, itll try sending a crap packet
		packetIndex <= 0;
		crossCt <= 1;
		crcCt <= 1;
		clearSig <= 1;
		fifoEn <= 0;
		crossWire <= crossWire + 1;
	end
	always @(posedge CLK_125_FAB) begin
		if (counter < (`HEADER_LENGTH)) begin //header
			dataOut <= header[packetIndex];
			
			packetIndex <= packetIndex + (16'd1);
			counter <= counter + 1;
			TX_EN_SIG <= 1'b1;
			TX_ERR_SIG <= 1'b0;
			clearSig <= 0;
			fifoEn <= (counter == (`HEADER_LENGTH-1))?1'b1:1'b0;
		end else if (counter < (`PACK_LENGTH-16'd6)) begin //data
			dataOut <= fifoData;
			
			packetIndex <= packetIndex + (16'd1);
			counter <= counter + 1;
			TX_EN_SIG <= 1'b1;
			TX_ERR_SIG <= 1'b0;	
			clearSig <= 0;		
			fifoEn <= (counter == (`PACK_LENGTH-16'd7))?1'b0:1'b1;
			crossCt <= 1;
		end else if (counter < (`PACK_LENGTH-16'd4)) begin //cross
			if(crossCt) begin
				cross <= crossWire;
				dataOut <= crossWire[15:8];
			end else begin
				dataOut <= cross[7:0];
				crossWire <= crossWire + 1;
			end
			crossCt <= 0;
			
			packetIndex <= packetIndex + 16'd1;
			counter <= counter + 16'd1;
			TX_EN_SIG <= 1'b1;
			TX_ERR_SIG <= 1'b0;
			clearSig <= 0;
			fifoEn <= 0;
			crcCt <= 1;
		end else if (counter < (`PACK_LENGTH-16'd1)) begin //CRC
			if(crcCt) begin
				crc <= {crcWire[23:0],8'h0};
				dataOut <= crcWire[31:24];
			end else begin
				dataOut <= crc[31:24];
				crc <= {crc[23:0],8'h0};
			end
			crcCt <= 0;
			
			packetIndex <= packetIndex + 16'd1;
			counter <= counter + 1;
			TX_EN_SIG <= 1'b1;
			TX_ERR_SIG <= 1'b0;
			clearSig <= 0;
			fifoEn <= 0;
		end else if (counter < `PACK_LENGTH) begin //final byte of the packet.
			//this runs twice, but only one actually makes it out
			dataOut <= crc[31:24];
			
			packetIndex <= packetIndex + 1;
			counter <= counter + 1;
			TX_EN_SIG <= 1'b1;
			TX_ERR_SIG <= 1'b0;
			clearSig <= 0;
			fifoEn <= 0;
		end else if (~fullEn) begin//wait to send the next packet
			dataOut <= 0;
			packetIndex <= 0;
			TX_EN_SIG <= 1'b0;
			TX_ERR_SIG <= 1'b0;
			clearSig <= 1;
			fifoEn <= 0;
		end else begin //reset the counter
			counter  <= 32'h0;
			packetIndex <= 0;
			TX_EN_SIG <= 1'b0;
			TX_ERR_SIG <= 1'b0;
			clearSig <= 1;
			fifoEn <= 0;
		end
	end
	assign user_led = fifoEn;//(counter > `RESEND_INTRVL/2)?1'b1:1'b0;
	
	
	
	
	
	ODDR2 #(
      .DDR_ALIGNMENT("C0"), // Sets output alignment to "NONE", "C0" or "C1" 
      .INIT(1'b0),    // Sets initial state of the Q output to 1'b0 or 1'b1
      .SRTYPE("ASYNC") // Specifies "SYNC" or "ASYNC" set/reset
   ) TX_DDR_0 (
      .Q(TXD[0]),   // 1-bit DDR output data
      .C0(CLK_125_IO),   // 1-bit clock input
      .C1(~CLK_125_IO),   // 1-bit clock input
      .CE(1'b1), // 1-bit clock enable input
      .D0(dataOut[0]&TX_EN_SIG), // 1-bit data input (associated with C0)
      .D1(dataOut[4]&TX_EN_SIG), // 1-bit data input (associated with C1)
      .R(1'b0),   // 1-bit reset input
      .S(1'b0)    // 1-bit set input
   );
	
	ODDR2 #(
      .DDR_ALIGNMENT("C0"), // Sets output alignment to "NONE", "C0" or "C1" 
      .INIT(1'b0),    // Sets initial state of the Q output to 1'b0 or 1'b1
      .SRTYPE("ASYNC") // Specifies "SYNC" or "ASYNC" set/reset
   ) TX_DDR_1 (
      .Q(TXD[1]),   // 1-bit DDR output data
      .C0(CLK_125_IO),   // 1-bit clock input
      .C1(~CLK_125_IO),   // 1-bit clock input
      .CE(1'b1), // 1-bit clock enable input
      .D0(dataOut[1]&TX_EN_SIG), // 1-bit data input (associated with C0)
      .D1(dataOut[5]&TX_EN_SIG), // 1-bit data input (associated with C1)
      .R(1'b0),   // 1-bit reset input
      .S(1'b0)    // 1-bit set input
   );
	
	ODDR2 #(
      .DDR_ALIGNMENT("C0"), // Sets output alignment to "NONE", "C0" or "C1" 
      .INIT(1'b0),    // Sets initial state of the Q output to 1'b0 or 1'b1
      .SRTYPE("ASYNC") // Specifies "SYNC" or "ASYNC" set/reset
   ) TX_DDR_2 (
      .Q(TXD[2]),   // 1-bit DDR output data
      .C0(CLK_125_IO),   // 1-bit clock input
      .C1(~CLK_125_IO),   // 1-bit clock input
      .CE(1'b1), // 1-bit clock enable input
      .D0(dataOut[2]&TX_EN_SIG), // 1-bit data input (associated with C0)
      .D1(dataOut[6]&TX_EN_SIG), // 1-bit data input (associated with C1)
      .R(1'b0),   // 1-bit reset input
      .S(1'b0)    // 1-bit set input
   );
	
	ODDR2 #(
      .DDR_ALIGNMENT("C0"), // Sets output alignment to "NONE", "C0" or "C1" 
      .INIT(1'b0),    // Sets initial state of the Q output to 1'b0 or 1'b1
      .SRTYPE("ASYNC") // Specifies "SYNC" or "ASYNC" set/reset
   ) TX_DDR_3 (
      .Q(TXD[3]),   // 1-bit DDR output data
      .C0(CLK_125_IO),   // 1-bit clock input
      .C1(~CLK_125_IO),   // 1-bit clock input
      .CE(1'b1), // 1-bit clock enable input
      .D0(dataOut[3]&TX_EN_SIG), // 1-bit data input (associated with C0)
      .D1(dataOut[7]&TX_EN_SIG), // 1-bit data input (associated with C1)
      .R(1'b0),   // 1-bit reset input
      .S(1'b0)    // 1-bit set input
   );
	
	ODDR2 #(
      .DDR_ALIGNMENT("C0"), // Sets output alignment to "NONE", "C0" or "C1" 
      .INIT(1'b0),    // Sets initial state of the Q output to 1'b0 or 1'b1
      .SRTYPE("ASYNC") // Specifies "SYNC" or "ASYNC" set/reset
   ) TX_EN_DDR (
      .Q(TX_EN),   // 1-bit DDR output data
      .C0(CLK_125_IO),   // 1-bit clock input
      .C1(~CLK_125_IO),   // 1-bit clock input
      .CE(1'b1), // 1-bit clock enable input
      .D0(TX_EN_SIG), // 1-bit data input (associated with C0)
      .D1(TX_EN_SIG ^ TX_ERR_SIG), // 1-bit data input (associated with C1)
      .R(1'b0),   // 1-bit reset input
      .S(1'b0)    // 1-bit set input
   );
	
	
	ODDR2 #(.DDR_ALIGNMENT("C0"),.INIT(1'b0),.SRTYPE("ASYNC")) 
	TX_CLK_FWD (
		.Q(TXCLK),   // 1-bit DDR output data
      .C0(CLK_125_90),   // 1-bit clock input
      .C1(~CLK_125_90),   // 1-bit clock input
      .CE(1'b1), // 1-bit clock enable input
      .D0(1'b1), // 1-bit data input (associated with C0)
      .D1(1'b0), // 1-bit data input (associated with C1)
      .R(1'b0),   // 1-bit reset input
      .S(1'b0)    // 1-bit set input
   );
	
	//////////////////////////////////////////////////////////////////////////////////////////////////////END OF ACTUAL PHY INTERFACE/////////////////////////////////////////////////
	
endmodule
