////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: top_synthesis.v
// /___/   /\     Timestamp: Tue Feb  4 10:49:21 2025
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim top.ngc top_synthesis.v 
// Device	: xc6slx16-2-ftg256
// Input file	: top.ngc
// Output file	: /home/ise/PAR_03_ALLBOARDS/netgen/synthesis/top_synthesis.v
// # of Modules	: 1
// Design Name	: top
// Xilinx        : /opt/Xilinx/14.7/ISE_DS/ISE/
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module top (
  clk25, RXC, RXD_DV, PIN_39, PIN_40, PIN_41, PIN_42, PIN_43, PIN_44, PIN_45, PIN_47, J600_PIN7, J600_PIN8, J601_PIN7, J601_PIN8, user_led, TXCLK, 
TX_EN, DIR, P1D_CLK, P1D_NCK, P2D_CLK, P2D_NCK, P3D_CLK, P3D_NCK, P4D_CLK, P4D_NCK, P5D_CLK, P5D_NCK, P6D_CLK, P6D_NCK, RXD, P1D, P2D, P3D, P4D, P5D, 
P6D, TXD, JP
)/* synthesis syn_black_box syn_noprune=1 */;
  input clk25;
  input RXC;
  input RXD_DV;
  input PIN_39;
  input PIN_40;
  input PIN_41;
  input PIN_42;
  input PIN_43;
  input PIN_44;
  input PIN_45;
  input PIN_47;
  input J600_PIN7;
  input J600_PIN8;
  input J601_PIN7;
  input J601_PIN8;
  output user_led;
  output TXCLK;
  output TX_EN;
  output DIR;
  output P1D_CLK;
  output P1D_NCK;
  output P2D_CLK;
  output P2D_NCK;
  output P3D_CLK;
  output P3D_NCK;
  output P4D_CLK;
  output P4D_NCK;
  output P5D_CLK;
  output P5D_NCK;
  output P6D_CLK;
  output P6D_NCK;
  input [3 : 0] RXD;
  input [7 : 0] P1D;
  input [7 : 0] P2D;
  input [7 : 0] P3D;
  input [7 : 0] P4D;
  input [7 : 0] P5D;
  input [7 : 0] P6D;
  output [3 : 0] TXD;
  output [3 : 0] JP;
  
  // synthesis translate_off
  
  wire JP_3_OBUF_0;
  wire JP_2_OBUF_1;
  wire JP_1_OBUF_2;
  wire JP_0_OBUF_3;
  wire P1D_7_IBUF_4;
  wire P1D_6_IBUF_5;
  wire P1D_5_IBUF_6;
  wire P1D_4_IBUF_7;
  wire P1D_3_IBUF_8;
  wire P1D_2_IBUF_9;
  wire P1D_1_IBUF_10;
  wire P1D_0_IBUF_11;
  wire P2D_7_IBUF_12;
  wire P2D_6_IBUF_13;
  wire P2D_5_IBUF_14;
  wire P2D_4_IBUF_15;
  wire P2D_3_IBUF_16;
  wire P2D_2_IBUF_17;
  wire P2D_1_IBUF_18;
  wire P2D_0_IBUF_19;
  wire P3D_7_IBUF_20;
  wire P3D_6_IBUF_21;
  wire P3D_5_IBUF_22;
  wire P3D_4_IBUF_23;
  wire P3D_3_IBUF_24;
  wire P3D_2_IBUF_25;
  wire P3D_1_IBUF_26;
  wire P3D_0_IBUF_27;
  wire P4D_7_IBUF_28;
  wire P4D_6_IBUF_29;
  wire P4D_5_IBUF_30;
  wire P4D_4_IBUF_31;
  wire P4D_3_IBUF_32;
  wire P4D_2_IBUF_33;
  wire P4D_1_IBUF_34;
  wire P4D_0_IBUF_35;
  wire P5D_7_IBUF_36;
  wire P5D_6_IBUF_37;
  wire P5D_5_IBUF_38;
  wire P5D_4_IBUF_39;
  wire P5D_3_IBUF_40;
  wire P5D_2_IBUF_41;
  wire P5D_1_IBUF_42;
  wire P5D_0_IBUF_43;
  wire P6D_7_IBUF_44;
  wire P6D_6_IBUF_45;
  wire P6D_5_IBUF_46;
  wire P6D_4_IBUF_47;
  wire P6D_3_IBUF_48;
  wire P6D_2_IBUF_49;
  wire P6D_1_IBUF_50;
  wire P6D_0_IBUF_51;
  wire CLK_125_FAB;
  wire CLK_125_IO;
  wire CLK_125_90;
  wire fullEn;
  wire P6D_CLK_OBUF_BUFG_65;
  wire fifoEn_79;
  wire TX_EN_SIG_80;
  wire crossCt_81;
  wire clearSig_82;
  wire crcCt_151;
  wire TXD_0_OBUF_152;
  wire TXD_1_OBUF_153;
  wire TXD_2_OBUF_154;
  wire TXD_3_OBUF_155;
  wire CLK_125_IO_INV_44_o;
  wire TX_EN_OBUF_157;
  wire TXCLK_OBUF_158;
  wire CLK_125_90_INV_46_o;
  wire \dataOut[0]_TX_EN_SIG_AND_2_o ;
  wire \dataOut[4]_TX_EN_SIG_AND_3_o ;
  wire \dataOut[1]_TX_EN_SIG_AND_4_o ;
  wire \dataOut[5]_TX_EN_SIG_AND_5_o ;
  wire \dataOut[2]_TX_EN_SIG_AND_6_o ;
  wire \dataOut[6]_TX_EN_SIG_AND_7_o ;
  wire \dataOut[3]_TX_EN_SIG_AND_8_o ;
  wire \dataOut[7]_TX_EN_SIG_AND_9_o ;
  wire \crc[23]_crcWire[23]_mux_39_OUT<27> ;
  wire \crc[23]_crcWire[23]_mux_39_OUT<26> ;
  wire \crc[23]_crcWire[23]_mux_39_OUT<25> ;
  wire \crc[23]_crcWire[23]_mux_39_OUT<15> ;
  wire \crc[23]_crcWire[23]_mux_39_OUT<14> ;
  wire \crc[23]_crcWire[23]_mux_39_OUT<12> ;
  wire \dataOut[7]_packetIndex[5]_mux_67_OUT<7> ;
  wire \dataOut[7]_packetIndex[5]_mux_67_OUT<6> ;
  wire \dataOut[7]_packetIndex[5]_mux_67_OUT<5> ;
  wire \dataOut[7]_packetIndex[5]_mux_67_OUT<4> ;
  wire \dataOut[7]_packetIndex[5]_mux_67_OUT<3> ;
  wire \dataOut[7]_packetIndex[5]_mux_67_OUT<2> ;
  wire \dataOut[7]_packetIndex[5]_mux_67_OUT<1> ;
  wire \dataOut[7]_packetIndex[5]_mux_67_OUT<0> ;
  wire _n0198;
  wire \GND_1_o_LED_counter[19]_LessThan_6_o ;
  wire \GND_1_o_LED_counter[19]_LessThan_9_o ;
  wire \GND_1_o_LED_counter[19]_LessThan_11_o ;
  wire \GND_1_o_LED_counter[19]_LessThan_12_o ;
  wire \GND_1_o_LED_counter[19]_LessThan_13_o ;
  wire \GND_1_o_LED_counter[19]_LessThan_10_o ;
  wire DIR_OBUF_232;
  wire TX_ERR_SIG;
  wire \PHYMultiplier/clkfbout_buf ;
  wire \PHYMultiplier/clkout3 ;
  wire \PHYMultiplier/clkout2 ;
  wire \PHYMultiplier/clkout1 ;
  wire \PHYMultiplier/clkout0 ;
  wire \PHYMultiplier/clkfbout ;
  wire \PHYMultiplier/clkin1 ;
  wire \Result<0>1 ;
  wire \Result<1>1 ;
  wire \Result<2>1 ;
  wire \Result<3>1 ;
  wire \Result<4>1 ;
  wire \Result<5>1 ;
  wire \Result<6>1 ;
  wire \Result<7>1 ;
  wire \Result<8>1 ;
  wire \Result<9>1 ;
  wire \Result<10>1 ;
  wire \Result<11>1 ;
  wire \Result<12>1 ;
  wire \Result<13>1 ;
  wire \Result<14>1 ;
  wire \Result<15>1 ;
  wire \Result<0>2 ;
  wire \Result<1>2 ;
  wire \Result<2>2 ;
  wire \Result<3>2 ;
  wire \Result<4>2 ;
  wire \Result<5>2 ;
  wire \Result<6>2 ;
  wire \Result<7>2 ;
  wire \Result<8>2 ;
  wire \Result<9>2 ;
  wire \Result<10>2 ;
  wire \Result<11>2 ;
  wire \Result<12>2 ;
  wire \Result<0>3 ;
  wire \Result<1>3 ;
  wire \Result<2>3 ;
  wire \Result<3>3 ;
  wire \Result<4>3 ;
  wire \Result<5>3 ;
  wire \Result<6>3 ;
  wire \Result<7>3 ;
  wire \Result<8>3 ;
  wire \Result<9>3 ;
  wire \Result<10>3 ;
  wire \Result<11>3 ;
  wire \Result<12>3 ;
  wire \Result<13>3 ;
  wire \Result<14>3 ;
  wire \Result<15>3 ;
  wire \Result<16>1 ;
  wire \Result<17>1 ;
  wire \Result<18>1 ;
  wire \Result<19>1 ;
  wire \Mcompar_counter[31]_GND_1_o_LessThan_23_o_lutdi_332 ;
  wire \Mcompar_counter[31]_GND_1_o_LessThan_23_o_lut<0>_333 ;
  wire \Mcompar_counter[31]_GND_1_o_LessThan_23_o_cy<0>_334 ;
  wire \Mcompar_counter[31]_GND_1_o_LessThan_23_o_lutdi1_335 ;
  wire \Mcompar_counter[31]_GND_1_o_LessThan_23_o_lut<1>_336 ;
  wire \Mcompar_counter[31]_GND_1_o_LessThan_23_o_cy<1>_337 ;
  wire \Mcompar_counter[31]_GND_1_o_LessThan_23_o_lutdi2 ;
  wire \Mcompar_counter[31]_GND_1_o_LessThan_23_o_lut<2> ;
  wire \Mcompar_counter[31]_GND_1_o_LessThan_23_o_cy<2>_340 ;
  wire \Mcompar_counter[31]_GND_1_o_LessThan_23_o_lut<3> ;
  wire \Mcompar_counter[31]_GND_1_o_LessThan_23_o_cy<3>_342 ;
  wire \Mcompar_counter[31]_GND_1_o_LessThan_23_o_lut<4> ;
  wire \Mcompar_counter[31]_GND_1_o_LessThan_23_o_cy<4>_344 ;
  wire \Mcompar_counter[31]_GND_1_o_LessThan_23_o_lut<5> ;
  wire \Mcompar_counter[31]_GND_1_o_LessThan_23_o_cy<5>_346 ;
  wire \Mcompar_counter[31]_GND_1_o_LessThan_23_o_lut<6> ;
  wire \Mcompar_counter[31]_GND_1_o_LessThan_23_o_cy<6>_348 ;
  wire \Mcompar_counter[31]_GND_1_o_LessThan_28_o_lutdi_349 ;
  wire \Mcompar_counter[31]_GND_1_o_LessThan_28_o_lut<0>_350 ;
  wire \Mcompar_counter[31]_GND_1_o_LessThan_28_o_cy<0>_351 ;
  wire \Mcompar_counter[31]_GND_1_o_LessThan_28_o_lutdi1_352 ;
  wire \Mcompar_counter[31]_GND_1_o_LessThan_28_o_lut<1>_353 ;
  wire \Mcompar_counter[31]_GND_1_o_LessThan_28_o_cy<1>_354 ;
  wire \Mcompar_counter[31]_GND_1_o_LessThan_28_o_lut<2> ;
  wire \Mcompar_counter[31]_GND_1_o_LessThan_28_o_cy<2>_356 ;
  wire \Mcompar_counter[31]_GND_1_o_LessThan_28_o_lut<3> ;
  wire \Mcompar_counter[31]_GND_1_o_LessThan_28_o_cy<3>_358 ;
  wire \Mcompar_counter[31]_GND_1_o_LessThan_28_o_lut<4> ;
  wire \Mcompar_counter[31]_GND_1_o_LessThan_28_o_cy<4>_360 ;
  wire \Mcompar_counter[31]_GND_1_o_LessThan_28_o_lut<5> ;
  wire \Mcompar_counter[31]_GND_1_o_LessThan_28_o_cy<5>_362 ;
  wire \Mcompar_counter[31]_GND_1_o_LessThan_28_o_lut<6> ;
  wire \Mcompar_counter[31]_GND_1_o_LessThan_28_o_cy<6>_364 ;
  wire \Mcompar_counter[31]_GND_1_o_LessThan_32_o_lutdi_365 ;
  wire \Mcompar_counter[31]_GND_1_o_LessThan_32_o_lut<0>_366 ;
  wire \Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<0>_367 ;
  wire \Mcompar_counter[31]_GND_1_o_LessThan_32_o_lutdi1_368 ;
  wire \Mcompar_counter[31]_GND_1_o_LessThan_32_o_lut<1>_369 ;
  wire \Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<1>_370 ;
  wire \Mcompar_counter[31]_GND_1_o_LessThan_32_o_lut<2> ;
  wire \Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<2>_372 ;
  wire \Mcompar_counter[31]_GND_1_o_LessThan_32_o_lut<3> ;
  wire \Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<3>_374 ;
  wire \Mcompar_counter[31]_GND_1_o_LessThan_32_o_lut<4> ;
  wire \Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<4>_376 ;
  wire \Mcompar_counter[31]_GND_1_o_LessThan_32_o_lut<5> ;
  wire \Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<5>_378 ;
  wire \Mcompar_counter[31]_GND_1_o_LessThan_39_o_lutdi_379 ;
  wire \Mcompar_counter[31]_GND_1_o_LessThan_39_o_lut<0>_380 ;
  wire \Mcompar_counter[31]_GND_1_o_LessThan_39_o_cy<0>_381 ;
  wire \Mcompar_counter[31]_GND_1_o_LessThan_39_o_lutdi1_382 ;
  wire \Mcompar_counter[31]_GND_1_o_LessThan_39_o_lut<1>_383 ;
  wire \Mcompar_counter[31]_GND_1_o_LessThan_39_o_cy<1>_384 ;
  wire \Mcompar_counter[31]_GND_1_o_LessThan_39_o_lutdi2 ;
  wire \Mcompar_counter[31]_GND_1_o_LessThan_39_o_lut<2> ;
  wire \Mcompar_counter[31]_GND_1_o_LessThan_39_o_cy<2>_387 ;
  wire \Mcompar_counter[31]_GND_1_o_LessThan_39_o_lut<3> ;
  wire \Mcompar_counter[31]_GND_1_o_LessThan_39_o_cy<3>_389 ;
  wire \Mcompar_counter[31]_GND_1_o_LessThan_39_o_lut<4> ;
  wire \Mcompar_counter[31]_GND_1_o_LessThan_39_o_cy<4>_391 ;
  wire \Mcompar_counter[31]_GND_1_o_LessThan_39_o_lut<5> ;
  wire \Mcompar_counter[31]_GND_1_o_LessThan_39_o_cy<5>_393 ;
  wire \Mcompar_counter[31]_GND_1_o_LessThan_39_o_lut<6> ;
  wire \Mcompar_counter[31]_GND_1_o_LessThan_39_o_cy<6>_395 ;
  wire \Mcompar_counter[31]_GND_1_o_LessThan_44_o_lutdi_396 ;
  wire \Mcompar_counter[31]_GND_1_o_LessThan_44_o_lut<0>_397 ;
  wire \Mcompar_counter[31]_GND_1_o_LessThan_44_o_cy<0>_398 ;
  wire \Mcompar_counter[31]_GND_1_o_LessThan_44_o_lutdi1_399 ;
  wire \Mcompar_counter[31]_GND_1_o_LessThan_44_o_lut<1>_400 ;
  wire \Mcompar_counter[31]_GND_1_o_LessThan_44_o_cy<1>_401 ;
  wire \Mcompar_counter[31]_GND_1_o_LessThan_44_o_lut<2> ;
  wire \Mcompar_counter[31]_GND_1_o_LessThan_44_o_cy<2>_403 ;
  wire \Mcompar_counter[31]_GND_1_o_LessThan_44_o_lut<3> ;
  wire \Mcompar_counter[31]_GND_1_o_LessThan_44_o_cy<3>_405 ;
  wire \Mcompar_counter[31]_GND_1_o_LessThan_44_o_lut<4> ;
  wire \Mcompar_counter[31]_GND_1_o_LessThan_44_o_cy<4>_407 ;
  wire \Mcompar_counter[31]_GND_1_o_LessThan_44_o_lut<5> ;
  wire \Mcompar_counter[31]_GND_1_o_LessThan_44_o_cy<5>_410 ;
  wire \GND_1_o_LED_counter[19]_LessThan_13_o1_411 ;
  wire \GND_1_o_LED_counter[19]_LessThan_11_o4 ;
  wire \GND_1_o_LED_counter[19]_LessThan_6_o11 ;
  wire \GND_1_o_LED_counter[19]_LessThan_11_o111 ;
  wire \GND_1_o_LED_counter[19]_LessThan_12_o11_477 ;
  wire \GND_1_o_LED_counter[19]_LessThan_9_o3111 ;
  wire \fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_71_496 ;
  wire \fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_61_497 ;
  wire \fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_72_498 ;
  wire \fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_73_499 ;
  wire \fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_62_500 ;
  wire \fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_74_501 ;
  wire \fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_75_502 ;
  wire \fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_63_503 ;
  wire \fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_76_504 ;
  wire \fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_77_505 ;
  wire \fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_64_506 ;
  wire \fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_78_507 ;
  wire \fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_79_508 ;
  wire \fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_65_509 ;
  wire \fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_710_510 ;
  wire \fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_711_511 ;
  wire \fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_66_512 ;
  wire \fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_712_513 ;
  wire \fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_713_514 ;
  wire \fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_67_515 ;
  wire \fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_714_516 ;
  wire \fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_715_517 ;
  wire \fifo/Result<7>1 ;
  wire \fifo/Result<6>1 ;
  wire \fifo/Result<5>1 ;
  wire \fifo/Result<4>1 ;
  wire \fifo/Result<3>2 ;
  wire \fifo/Result<2>2 ;
  wire \fifo/Result<1>2 ;
  wire \fifo/Result<0>2 ;
  wire \fifo/clk_inv ;
  wire \fifo/Result<3>1 ;
  wire \fifo/Result<2>1 ;
  wire \fifo/Result<1>1 ;
  wire \fifo/GND_8_o_GND_8_o_equal_2_o ;
  wire \fifo/GND_8_o_GND_8_o_equal_7_o ;
  wire \fifo/pMicClk[11]_GND_8_o_equal_16_o ;
  wire \fifo/data[7]_fifoData[7]_mux_28_OUT<0> ;
  wire \fifo/data[7]_fifoData[7]_mux_28_OUT<1> ;
  wire \fifo/data[7]_fifoData[7]_mux_28_OUT<2> ;
  wire \fifo/data[7]_fifoData[7]_mux_28_OUT<3> ;
  wire \fifo/data[7]_fifoData[7]_mux_28_OUT<4> ;
  wire \fifo/data[7]_fifoData[7]_mux_28_OUT<5> ;
  wire \fifo/data[7]_fifoData[7]_mux_28_OUT<6> ;
  wire \fifo/data[7]_fifoData[7]_mux_28_OUT<7> ;
  wire \fifo/micClkNeg_645 ;
  wire \fifo/micClkPos_646 ;
  wire \fifo/rd_en_663 ;
  wire \fifo/wr_en_676 ;
  wire \fifo/enable_byteCounter[3]_AND_1_o ;
  wire \CRCCalc/Mxor__n0239_xo<0>1 ;
  wire \CRCCalc/Mxor__n0236_xo<0>1 ;
  wire \CRCCalc/_n0269 ;
  wire \CRCCalc/d[4]_d[0]_XOR_115_o ;
  wire \CRCCalc/_n0247 ;
  wire \CRCCalc/d[7]_d[6]_XOR_229_o ;
  wire \CRCCalc/_n0242 ;
  wire \CRCCalc/_n0248 ;
  wire \CRCCalc/_n0252 ;
  wire \CRCCalc/_n0236 ;
  wire \CRCCalc/_n0246 ;
  wire \CRCCalc/_n0239 ;
  wire \CRCCalc/n0197_inv ;
  wire \Mmux_GND_1_o_counter[31]_MUX_282_o1 ;
  wire \Mmux_GND_1_o_counter[31]_MUX_282_o11_951 ;
  wire \Mmux_GND_1_o_counter[31]_MUX_282_o12_952 ;
  wire \Mmux_GND_1_o_counter[31]_MUX_282_o13_953 ;
  wire \Mmux_GND_1_o_counter[31]_MUX_282_o14_954 ;
  wire \GND_1_o_LED_counter[19]_LessThan_6_o3 ;
  wire \GND_1_o_LED_counter[19]_LessThan_6_o31_956 ;
  wire \GND_1_o_LED_counter[19]_LessThan_6_o32_957 ;
  wire \Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT10 ;
  wire \Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT101_959 ;
  wire \Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT102_960 ;
  wire \Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT16 ;
  wire \Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT161_962 ;
  wire \Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT162_963 ;
  wire \Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT8 ;
  wire \Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT81_965 ;
  wire \Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT82_966 ;
  wire \Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT14 ;
  wire \Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT141_968 ;
  wire \Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT142_969 ;
  wire \Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT2 ;
  wire \Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT21_971 ;
  wire \Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT22_972 ;
  wire \Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT6 ;
  wire \Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT61_974 ;
  wire \Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT62_975 ;
  wire \Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT12 ;
  wire \Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT121_977 ;
  wire \Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT122_978 ;
  wire \Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT4 ;
  wire \Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT41_980 ;
  wire \Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT42_981 ;
  wire \GND_1_o_LED_counter[19]_LessThan_11_o3 ;
  wire \GND_1_o_LED_counter[19]_LessThan_11_o31_983 ;
  wire \GND_1_o_LED_counter[19]_LessThan_11_o34 ;
  wire \GND_1_o_LED_counter[19]_LessThan_10_o3 ;
  wire \GND_1_o_LED_counter[19]_LessThan_10_o31_986 ;
  wire \GND_1_o_LED_counter[19]_LessThan_10_o32_987 ;
  wire \GND_1_o_LED_counter[19]_LessThan_10_o33_988 ;
  wire \GND_1_o_LED_counter[19]_LessThan_9_o3 ;
  wire \GND_1_o_LED_counter[19]_LessThan_9_o31_990 ;
  wire \GND_1_o_LED_counter[19]_LessThan_13_o3 ;
  wire \GND_1_o_LED_counter[19]_LessThan_12_o3 ;
  wire \GND_1_o_LED_counter[19]_LessThan_12_o31_993 ;
  wire \GND_1_o_LED_counter[19]_LessThan_12_o32_994 ;
  wire N7;
  wire N9;
  wire N11;
  wire N13;
  wire N15;
  wire N17;
  wire N19;
  wire N21;
  wire N23;
  wire N25;
  wire \fifo/pMicClk[11]_GND_8_o_equal_16_o<11> ;
  wire \fifo/pMicClk[11]_GND_8_o_equal_16_o<11>1_1006 ;
  wire \CRCCalc/n0197_inv1_1007 ;
  wire N27;
  wire N29;
  wire N31;
  wire N33;
  wire crossCt_glue_rst_1088;
  wire clearSig_glue_rst;
  wire counter_3_glue_rst_1090;
  wire counter_4_glue_rst_1091;
  wire counter_7_glue_rst_1092;
  wire counter_8_glue_rst_1093;
  wire counter_11_glue_rst_1094;
  wire \fifo/micDividerNeg_5_glue_rst_1095 ;
  wire \fifo/micDividerNeg_4_glue_rst_1096 ;
  wire \fifo/micDividerNeg_3_glue_rst_1097 ;
  wire \fifo/micDividerNeg_2_glue_rst_1098 ;
  wire \fifo/micDividerNeg_1_glue_rst_1099 ;
  wire \fifo/byteCounter_0_glue_set ;
  wire \Msub_pIMO_cy<0>_rt_1101 ;
  wire \Msub_pIMO_lut<12>1 ;
  wire \Mcount_packetIndex_cy<1>_rt_1103 ;
  wire \Mcount_packetIndex_cy<2>_rt_1104 ;
  wire \Mcount_packetIndex_cy<3>_rt_1105 ;
  wire \Mcount_packetIndex_cy<4>_rt_1106 ;
  wire \Mcount_packetIndex_cy<5>_rt_1107 ;
  wire \Mcount_packetIndex_cy<6>_rt_1108 ;
  wire \Mcount_packetIndex_cy<7>_rt_1109 ;
  wire \Mcount_packetIndex_cy<8>_rt_1110 ;
  wire \Mcount_packetIndex_cy<9>_rt_1111 ;
  wire \Mcount_packetIndex_cy<10>_rt_1112 ;
  wire \Mcount_packetIndex_cy<11>_rt_1113 ;
  wire \Mcount_LED_counter_cy<1>_rt_1114 ;
  wire \Mcount_LED_counter_cy<2>_rt_1115 ;
  wire \Mcount_LED_counter_cy<3>_rt_1116 ;
  wire \Mcount_LED_counter_cy<4>_rt_1117 ;
  wire \Mcount_LED_counter_cy<5>_rt_1118 ;
  wire \Mcount_LED_counter_cy<6>_rt_1119 ;
  wire \Mcount_LED_counter_cy<7>_rt_1120 ;
  wire \Mcount_LED_counter_cy<8>_rt_1121 ;
  wire \Mcount_LED_counter_cy<9>_rt_1122 ;
  wire \Mcount_LED_counter_cy<10>_rt_1123 ;
  wire \Mcount_LED_counter_cy<11>_rt_1124 ;
  wire \Mcount_LED_counter_cy<12>_rt_1125 ;
  wire \Mcount_LED_counter_cy<13>_rt_1126 ;
  wire \Mcount_LED_counter_cy<14>_rt_1127 ;
  wire \Mcount_LED_counter_cy<15>_rt_1128 ;
  wire \Mcount_LED_counter_cy<16>_rt_1129 ;
  wire \Mcount_LED_counter_cy<17>_rt_1130 ;
  wire \Mcount_LED_counter_cy<18>_rt_1131 ;
  wire \Mcount_crossWire_cy<1>_rt_1132 ;
  wire \Mcount_crossWire_cy<2>_rt_1133 ;
  wire \Mcount_crossWire_cy<3>_rt_1134 ;
  wire \Mcount_crossWire_cy<4>_rt_1135 ;
  wire \Mcount_crossWire_cy<5>_rt_1136 ;
  wire \Mcount_crossWire_cy<6>_rt_1137 ;
  wire \Mcount_crossWire_cy<7>_rt_1138 ;
  wire \Mcount_crossWire_cy<8>_rt_1139 ;
  wire \Mcount_crossWire_cy<9>_rt_1140 ;
  wire \Mcount_crossWire_cy<10>_rt_1141 ;
  wire \Mcount_crossWire_cy<11>_rt_1142 ;
  wire \Mcount_crossWire_cy<12>_rt_1143 ;
  wire \Mcount_crossWire_cy<13>_rt_1144 ;
  wire \Mcount_crossWire_cy<14>_rt_1145 ;
  wire \Mcount_counter_cy<1>_rt_1146 ;
  wire \Mcount_counter_cy<2>_rt_1147 ;
  wire \Mcount_counter_cy<3>_rt_1148 ;
  wire \Mcount_counter_cy<4>_rt_1149 ;
  wire \Mcount_counter_cy<5>_rt_1150 ;
  wire \Mcount_counter_cy<6>_rt_1151 ;
  wire \Mcount_counter_cy<7>_rt_1152 ;
  wire \Mcount_counter_cy<8>_rt_1153 ;
  wire \Mcount_counter_cy<9>_rt_1154 ;
  wire \Mcount_counter_cy<10>_rt_1155 ;
  wire \Mcount_counter_cy<11>_rt_1156 ;
  wire \fifo/Mcount_micDividerPos_cy<6>_rt_1157 ;
  wire \fifo/Mcount_micDividerPos_cy<5>_rt_1158 ;
  wire \fifo/Mcount_micDividerPos_cy<4>_rt_1159 ;
  wire \fifo/Mcount_micDividerPos_cy<3>_rt_1160 ;
  wire \fifo/Mcount_micDividerPos_cy<2>_rt_1161 ;
  wire \fifo/Mcount_micDividerPos_cy<1>_rt_1162 ;
  wire \fifo/Mcount_micDividerNeg_cy<6>_rt_1163 ;
  wire \fifo/Mcount_micDividerNeg_cy<5>_rt_1164 ;
  wire \fifo/Mcount_micDividerNeg_cy<4>_rt_1165 ;
  wire \fifo/Mcount_micDividerNeg_cy<3>_rt_1166 ;
  wire \fifo/Mcount_micDividerNeg_cy<2>_rt_1167 ;
  wire \fifo/Mcount_micDividerNeg_cy<1>_rt_1168 ;
  wire \Mcount_packetIndex_xor<12>_rt_1169 ;
  wire \Mcount_LED_counter_xor<19>_rt_1170 ;
  wire \Mcount_crossWire_xor<15>_rt_1171 ;
  wire \Mcount_counter_xor<12>_rt_1172 ;
  wire \fifo/Mcount_micDividerPos_xor<7>_rt_1173 ;
  wire \fifo/Mcount_micDividerNeg_xor<7>_rt_1174 ;
  wire fifoEn_rstpot_1175;
  wire TX_EN_SIG_rstpot;
  wire \fifo/micClkNeg_rstpot_1177 ;
  wire \fifo/micClkPos_rstpot_1178 ;
  wire crcCt_rstpot_1179;
  wire cross_0_dpot_1180;
  wire cross_1_dpot_1181;
  wire cross_2_dpot_1182;
  wire cross_3_dpot_1183;
  wire cross_4_dpot_1184;
  wire cross_5_dpot_1185;
  wire cross_6_dpot_1186;
  wire cross_7_dpot_1187;
  wire crossWire_0_dpot_1188;
  wire crossWire_1_dpot_1189;
  wire crossWire_2_dpot_1190;
  wire crossWire_3_dpot_1191;
  wire crossWire_4_dpot_1192;
  wire crossWire_5_dpot_1193;
  wire crossWire_6_dpot_1194;
  wire crossWire_7_dpot_1195;
  wire crossWire_8_dpot_1196;
  wire crossWire_9_dpot_1197;
  wire crossWire_10_dpot_1198;
  wire crossWire_11_dpot_1199;
  wire crossWire_12_dpot_1200;
  wire crossWire_13_dpot_1201;
  wire crossWire_14_dpot_1202;
  wire crossWire_15_dpot_1203;
  wire counter_0_rstpot_1204;
  wire counter_1_rstpot_1205;
  wire counter_2_rstpot_1206;
  wire counter_5_rstpot_1207;
  wire counter_6_rstpot_1208;
  wire counter_9_rstpot_1209;
  wire counter_10_rstpot_1210;
  wire counter_12_rstpot_1211;
  wire N35;
  wire N37;
  wire N39;
  wire N41;
  wire N43;
  wire N45;
  wire N47;
  wire N49;
  wire N51;
  wire N53;
  wire N55;
  wire N57;
  wire N59;
  wire N61;
  wire N63;
  wire N65;
  wire _n02301_rstpot_1228;
  wire crc_8_dpot_1229;
  wire crc_9_dpot_1230;
  wire crc_10_dpot_1231;
  wire crc_11_dpot_1232;
  wire crc_12_dpot_1233;
  wire crc_13_dpot_1234;
  wire crc_14_dpot_1235;
  wire crc_15_dpot_1236;
  wire crc_16_dpot_1237;
  wire crc_17_dpot_1238;
  wire crc_18_dpot_1239;
  wire crc_19_dpot_1240;
  wire crc_20_dpot_1241;
  wire crc_21_dpot_1242;
  wire crc_22_dpot_1243;
  wire crc_23_dpot_1244;
  wire crc_24_dpot_1245;
  wire crc_25_dpot_1246;
  wire crc_26_dpot_1247;
  wire crc_27_dpot_1248;
  wire crc_28_dpot_1249;
  wire crc_29_dpot_1250;
  wire crc_30_dpot_1251;
  wire crc_31_dpot_1252;
  wire packetIndex_0_rstpot_1253;
  wire packetIndex_1_rstpot_1254;
  wire packetIndex_2_rstpot_1255;
  wire packetIndex_3_rstpot_1256;
  wire packetIndex_4_rstpot_1257;
  wire packetIndex_5_rstpot_1258;
  wire packetIndex_6_rstpot_1259;
  wire packetIndex_7_rstpot_1260;
  wire packetIndex_8_rstpot_1261;
  wire packetIndex_9_rstpot_1262;
  wire packetIndex_10_rstpot_1263;
  wire packetIndex_11_rstpot_1264;
  wire packetIndex_12_rstpot_1265;
  wire counter_12_1_1266;
  wire _n0256_inv11_rstpot_1267;
  wire _n0256_inv11_cepot;
  wire cross_0_dpot1_1269;
  wire cross_1_dpot1_1270;
  wire cross_2_dpot1_1271;
  wire cross_3_dpot1_1272;
  wire cross_4_dpot1_1273;
  wire cross_5_dpot1_1274;
  wire cross_6_dpot1_1275;
  wire cross_7_dpot1_1276;
  wire crossWire_0_dpot1_1277;
  wire crossWire_1_dpot1_1278;
  wire crossWire_2_dpot1_1279;
  wire crossWire_3_dpot1_1280;
  wire crossWire_4_dpot1_1281;
  wire crossWire_5_dpot1_1282;
  wire crossWire_6_dpot1_1283;
  wire crossWire_7_dpot1_1284;
  wire crossWire_8_dpot1_1285;
  wire crossWire_9_dpot1_1286;
  wire crossWire_10_dpot1_1287;
  wire crossWire_11_dpot1_1288;
  wire crossWire_12_dpot1_1289;
  wire crossWire_13_dpot1_1290;
  wire crossWire_14_dpot1_1291;
  wire crossWire_15_dpot1_1292;
  wire P6D_CLK_OBUF_1293;
  wire N67;
  wire N68;
  wire \NLW_PHYMultiplier/clkout3_buf_O_UNCONNECTED ;
  wire \NLW_PHYMultiplier/pll_base_inst_CLKOUT4_UNCONNECTED ;
  wire \NLW_PHYMultiplier/pll_base_inst_CLKOUT5_UNCONNECTED ;
  wire \NLW_PHYMultiplier/pll_base_inst_LOCKED_UNCONNECTED ;
  wire \NLW_fifo/fifo_full_UNCONNECTED ;
  wire \NLW_fifo/fifo_almost_full_UNCONNECTED ;
  wire \NLW_fifo/fifo_overflow_UNCONNECTED ;
  wire \NLW_fifo/fifo_empty_UNCONNECTED ;
  wire \NLW_fifo/fifo_almost_empty_UNCONNECTED ;
  wire [7 : 0] \fifo/data ;
  wire [12 : 0] packetIndex;
  wire [7 : 0] cross;
  wire [15 : 0] crossWire;
  wire [31 : 8] crc;
  wire [7 : 0] dataOut;
  wire [12 : 0] counter;
  wire [19 : 0] LED_counter;
  wire [5 : 0] LEDs;
  wire [15 : 3] pIMO;
  wire [3 : 0] GND_1_o_GND_1_o_mux_16_OUT;
  wire [12 : 0] Result;
  wire [14 : 0] Msub_pIMO_cy;
  wire [14 : 1] Msub_pIMO_lut;
  wire [0 : 0] Mcount_packetIndex_lut;
  wire [11 : 0] Mcount_packetIndex_cy;
  wire [0 : 0] Mcount_LED_counter_lut;
  wire [18 : 0] Mcount_LED_counter_cy;
  wire [0 : 0] Mcount_crossWire_lut;
  wire [14 : 0] Mcount_crossWire_cy;
  wire [0 : 0] Mcount_counter_lut;
  wire [11 : 0] Mcount_counter_cy;
  wire [3 : 0] \fifo/byteCounter ;
  wire [6 : 0] \fifo/Mcount_micDividerPos_cy ;
  wire [0 : 0] \fifo/Mcount_micDividerPos_lut ;
  wire [6 : 0] \fifo/Mcount_micDividerNeg_cy ;
  wire [0 : 0] \fifo/Mcount_micDividerNeg_lut ;
  wire [7 : 0] \fifo/Result ;
  wire [95 : 0] \fifo/fifoData ;
  wire [7 : 0] \fifo/micDividerPos ;
  wire [7 : 0] \fifo/micDividerNeg ;
  wire [11 : 0] \fifo/pMicClk ;
  wire [95 : 0] \fifo/dout ;
  wire [47 : 0] \fifo/micR ;
  wire [47 : 0] \fifo/micL ;
  wire [31 : 0] \CRCCalc/newcrc ;
  wire [31 : 0] \CRCCalc/c ;
  VCC   XST_VCC (
    .P(DIR_OBUF_232)
  );
  GND   XST_GND (
    .G(TX_ERR_SIG)
  );
  FDE   cross_0 (
    .C(CLK_125_FAB),
    .CE(_n0256_inv11_cepot),
    .D(cross_0_dpot1_1269),
    .Q(cross[0])
  );
  FDE   cross_1 (
    .C(CLK_125_FAB),
    .CE(_n0256_inv11_cepot),
    .D(cross_1_dpot1_1270),
    .Q(cross[1])
  );
  FDE   cross_2 (
    .C(CLK_125_FAB),
    .CE(_n0256_inv11_cepot),
    .D(cross_2_dpot1_1271),
    .Q(cross[2])
  );
  FDE   cross_3 (
    .C(CLK_125_FAB),
    .CE(_n0256_inv11_cepot),
    .D(cross_3_dpot1_1272),
    .Q(cross[3])
  );
  FDE   cross_4 (
    .C(CLK_125_FAB),
    .CE(_n0256_inv11_cepot),
    .D(cross_4_dpot1_1273),
    .Q(cross[4])
  );
  FDE   cross_5 (
    .C(CLK_125_FAB),
    .CE(_n0256_inv11_cepot),
    .D(cross_5_dpot1_1274),
    .Q(cross[5])
  );
  FDE   cross_6 (
    .C(CLK_125_FAB),
    .CE(_n0256_inv11_cepot),
    .D(cross_6_dpot1_1275),
    .Q(cross[6])
  );
  FDE   cross_7 (
    .C(CLK_125_FAB),
    .CE(_n0256_inv11_cepot),
    .D(cross_7_dpot1_1276),
    .Q(cross[7])
  );
  FDE   crc_8 (
    .C(CLK_125_FAB),
    .CE(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<5>_378 ),
    .D(crc_8_dpot_1229),
    .Q(crc[8])
  );
  FDE   crc_9 (
    .C(CLK_125_FAB),
    .CE(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<5>_378 ),
    .D(crc_9_dpot_1230),
    .Q(crc[9])
  );
  FDE   crc_10 (
    .C(CLK_125_FAB),
    .CE(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<5>_378 ),
    .D(crc_10_dpot_1231),
    .Q(crc[10])
  );
  FDE   crc_11 (
    .C(CLK_125_FAB),
    .CE(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<5>_378 ),
    .D(crc_11_dpot_1232),
    .Q(crc[11])
  );
  FDE   crc_12 (
    .C(CLK_125_FAB),
    .CE(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<5>_378 ),
    .D(crc_12_dpot_1233),
    .Q(crc[12])
  );
  FDE   crc_13 (
    .C(CLK_125_FAB),
    .CE(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<5>_378 ),
    .D(crc_13_dpot_1234),
    .Q(crc[13])
  );
  FDE   crc_14 (
    .C(CLK_125_FAB),
    .CE(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<5>_378 ),
    .D(crc_14_dpot_1235),
    .Q(crc[14])
  );
  FDE   crc_15 (
    .C(CLK_125_FAB),
    .CE(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<5>_378 ),
    .D(crc_15_dpot_1236),
    .Q(crc[15])
  );
  FDE   crc_16 (
    .C(CLK_125_FAB),
    .CE(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<5>_378 ),
    .D(crc_16_dpot_1237),
    .Q(crc[16])
  );
  FDE   crc_17 (
    .C(CLK_125_FAB),
    .CE(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<5>_378 ),
    .D(crc_17_dpot_1238),
    .Q(crc[17])
  );
  FDE   crc_18 (
    .C(CLK_125_FAB),
    .CE(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<5>_378 ),
    .D(crc_18_dpot_1239),
    .Q(crc[18])
  );
  FDE   crc_19 (
    .C(CLK_125_FAB),
    .CE(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<5>_378 ),
    .D(crc_19_dpot_1240),
    .Q(crc[19])
  );
  FDE   crc_20 (
    .C(CLK_125_FAB),
    .CE(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<5>_378 ),
    .D(crc_20_dpot_1241),
    .Q(crc[20])
  );
  FDE   crc_21 (
    .C(CLK_125_FAB),
    .CE(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<5>_378 ),
    .D(crc_21_dpot_1242),
    .Q(crc[21])
  );
  FDE   crc_22 (
    .C(CLK_125_FAB),
    .CE(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<5>_378 ),
    .D(crc_22_dpot_1243),
    .Q(crc[22])
  );
  FDE   crc_23 (
    .C(CLK_125_FAB),
    .CE(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<5>_378 ),
    .D(crc_23_dpot_1244),
    .Q(crc[23])
  );
  FDE   crc_24 (
    .C(CLK_125_FAB),
    .CE(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<5>_378 ),
    .D(crc_24_dpot_1245),
    .Q(crc[24])
  );
  FDE   crc_25 (
    .C(CLK_125_FAB),
    .CE(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<5>_378 ),
    .D(crc_25_dpot_1246),
    .Q(crc[25])
  );
  FDE   crc_26 (
    .C(CLK_125_FAB),
    .CE(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<5>_378 ),
    .D(crc_26_dpot_1247),
    .Q(crc[26])
  );
  FDE   crc_27 (
    .C(CLK_125_FAB),
    .CE(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<5>_378 ),
    .D(crc_27_dpot_1248),
    .Q(crc[27])
  );
  FDE   crc_28 (
    .C(CLK_125_FAB),
    .CE(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<5>_378 ),
    .D(crc_28_dpot_1249),
    .Q(crc[28])
  );
  FDE   crc_29 (
    .C(CLK_125_FAB),
    .CE(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<5>_378 ),
    .D(crc_29_dpot_1250),
    .Q(crc[29])
  );
  FDE   crc_30 (
    .C(CLK_125_FAB),
    .CE(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<5>_378 ),
    .D(crc_30_dpot_1251),
    .Q(crc[30])
  );
  FDE   crc_31 (
    .C(CLK_125_FAB),
    .CE(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<5>_378 ),
    .D(crc_31_dpot_1252),
    .Q(crc[31])
  );
  FDRE   dataOut_0 (
    .C(CLK_125_FAB),
    .CE(TX_EN_SIG_rstpot),
    .D(\dataOut[7]_packetIndex[5]_mux_67_OUT<0> ),
    .R(_n0198),
    .Q(dataOut[0])
  );
  FDRE   dataOut_1 (
    .C(CLK_125_FAB),
    .CE(TX_EN_SIG_rstpot),
    .D(\dataOut[7]_packetIndex[5]_mux_67_OUT<1> ),
    .R(_n0198),
    .Q(dataOut[1])
  );
  FDRE   dataOut_2 (
    .C(CLK_125_FAB),
    .CE(TX_EN_SIG_rstpot),
    .D(\dataOut[7]_packetIndex[5]_mux_67_OUT<2> ),
    .R(_n0198),
    .Q(dataOut[2])
  );
  FDRE   dataOut_3 (
    .C(CLK_125_FAB),
    .CE(TX_EN_SIG_rstpot),
    .D(\dataOut[7]_packetIndex[5]_mux_67_OUT<3> ),
    .R(_n0198),
    .Q(dataOut[3])
  );
  FDRE   dataOut_4 (
    .C(CLK_125_FAB),
    .CE(TX_EN_SIG_rstpot),
    .D(\dataOut[7]_packetIndex[5]_mux_67_OUT<4> ),
    .R(_n0198),
    .Q(dataOut[4])
  );
  FDRE   dataOut_5 (
    .C(CLK_125_FAB),
    .CE(TX_EN_SIG_rstpot),
    .D(\dataOut[7]_packetIndex[5]_mux_67_OUT<5> ),
    .R(_n0198),
    .Q(dataOut[5])
  );
  FDRE   dataOut_6 (
    .C(CLK_125_FAB),
    .CE(TX_EN_SIG_rstpot),
    .D(\dataOut[7]_packetIndex[5]_mux_67_OUT<6> ),
    .R(_n0198),
    .Q(dataOut[6])
  );
  FDRE   dataOut_7 (
    .C(CLK_125_FAB),
    .CE(TX_EN_SIG_rstpot),
    .D(\dataOut[7]_packetIndex[5]_mux_67_OUT<7> ),
    .R(_n0198),
    .Q(dataOut[7])
  );
  FDR   LEDs_0 (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(GND_1_o_GND_1_o_mux_16_OUT[0]),
    .R(\GND_1_o_LED_counter[19]_LessThan_9_o ),
    .Q(LEDs[0])
  );
  FDR   LEDs_1 (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(GND_1_o_GND_1_o_mux_16_OUT[1]),
    .R(\GND_1_o_LED_counter[19]_LessThan_9_o ),
    .Q(LEDs[1])
  );
  FDR   LEDs_2 (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(GND_1_o_GND_1_o_mux_16_OUT[2]),
    .R(\GND_1_o_LED_counter[19]_LessThan_9_o ),
    .Q(LEDs[2])
  );
  FDR   LEDs_3 (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(GND_1_o_GND_1_o_mux_16_OUT[3]),
    .R(\GND_1_o_LED_counter[19]_LessThan_9_o ),
    .Q(LEDs[3])
  );
  FDR   LEDs_4 (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(\GND_1_o_LED_counter[19]_LessThan_10_o ),
    .R(\GND_1_o_LED_counter[19]_LessThan_9_o ),
    .Q(LEDs[4])
  );
  FDS   LEDs_5 (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(TX_ERR_SIG),
    .S(\GND_1_o_LED_counter[19]_LessThan_9_o ),
    .Q(LEDs[5])
  );
  FDE   crossWire_0 (
    .C(CLK_125_FAB),
    .CE(_n0256_inv11_cepot),
    .D(crossWire_0_dpot1_1277),
    .Q(crossWire[0])
  );
  FDE   crossWire_1 (
    .C(CLK_125_FAB),
    .CE(_n0256_inv11_cepot),
    .D(crossWire_1_dpot1_1278),
    .Q(crossWire[1])
  );
  FDE   crossWire_2 (
    .C(CLK_125_FAB),
    .CE(_n0256_inv11_cepot),
    .D(crossWire_2_dpot1_1279),
    .Q(crossWire[2])
  );
  FDE   crossWire_3 (
    .C(CLK_125_FAB),
    .CE(_n0256_inv11_cepot),
    .D(crossWire_3_dpot1_1280),
    .Q(crossWire[3])
  );
  FDE   crossWire_4 (
    .C(CLK_125_FAB),
    .CE(_n0256_inv11_cepot),
    .D(crossWire_4_dpot1_1281),
    .Q(crossWire[4])
  );
  FDE   crossWire_5 (
    .C(CLK_125_FAB),
    .CE(_n0256_inv11_cepot),
    .D(crossWire_5_dpot1_1282),
    .Q(crossWire[5])
  );
  FDE   crossWire_6 (
    .C(CLK_125_FAB),
    .CE(_n0256_inv11_cepot),
    .D(crossWire_6_dpot1_1283),
    .Q(crossWire[6])
  );
  FDE   crossWire_7 (
    .C(CLK_125_FAB),
    .CE(_n0256_inv11_cepot),
    .D(crossWire_7_dpot1_1284),
    .Q(crossWire[7])
  );
  FDE   crossWire_8 (
    .C(CLK_125_FAB),
    .CE(_n0256_inv11_cepot),
    .D(crossWire_8_dpot1_1285),
    .Q(crossWire[8])
  );
  FDE   crossWire_9 (
    .C(CLK_125_FAB),
    .CE(_n0256_inv11_cepot),
    .D(crossWire_9_dpot1_1286),
    .Q(crossWire[9])
  );
  FDE   crossWire_10 (
    .C(CLK_125_FAB),
    .CE(_n0256_inv11_cepot),
    .D(crossWire_10_dpot1_1287),
    .Q(crossWire[10])
  );
  FDE   crossWire_11 (
    .C(CLK_125_FAB),
    .CE(_n0256_inv11_cepot),
    .D(crossWire_11_dpot1_1288),
    .Q(crossWire[11])
  );
  FDE   crossWire_12 (
    .C(CLK_125_FAB),
    .CE(_n0256_inv11_cepot),
    .D(crossWire_12_dpot1_1289),
    .Q(crossWire[12])
  );
  FDE   crossWire_13 (
    .C(CLK_125_FAB),
    .CE(_n0256_inv11_cepot),
    .D(crossWire_13_dpot1_1290),
    .Q(crossWire[13])
  );
  FDE   crossWire_14 (
    .C(CLK_125_FAB),
    .CE(_n0256_inv11_cepot),
    .D(crossWire_14_dpot1_1291),
    .Q(crossWire[14])
  );
  FDE   crossWire_15 (
    .C(CLK_125_FAB),
    .CE(_n0256_inv11_cepot),
    .D(crossWire_15_dpot1_1292),
    .Q(crossWire[15])
  );
  FDR   LED_counter_0 (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(\Result<0>3 ),
    .R(\GND_1_o_LED_counter[19]_LessThan_6_o ),
    .Q(LED_counter[0])
  );
  FDR   LED_counter_1 (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(\Result<1>3 ),
    .R(\GND_1_o_LED_counter[19]_LessThan_6_o ),
    .Q(LED_counter[1])
  );
  FDR   LED_counter_2 (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(\Result<2>3 ),
    .R(\GND_1_o_LED_counter[19]_LessThan_6_o ),
    .Q(LED_counter[2])
  );
  FDR   LED_counter_3 (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(\Result<3>3 ),
    .R(\GND_1_o_LED_counter[19]_LessThan_6_o ),
    .Q(LED_counter[3])
  );
  FDR   LED_counter_4 (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(\Result<4>3 ),
    .R(\GND_1_o_LED_counter[19]_LessThan_6_o ),
    .Q(LED_counter[4])
  );
  FDR   LED_counter_5 (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(\Result<5>3 ),
    .R(\GND_1_o_LED_counter[19]_LessThan_6_o ),
    .Q(LED_counter[5])
  );
  FDR   LED_counter_6 (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(\Result<6>3 ),
    .R(\GND_1_o_LED_counter[19]_LessThan_6_o ),
    .Q(LED_counter[6])
  );
  FDR   LED_counter_7 (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(\Result<7>3 ),
    .R(\GND_1_o_LED_counter[19]_LessThan_6_o ),
    .Q(LED_counter[7])
  );
  FDR   LED_counter_8 (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(\Result<8>3 ),
    .R(\GND_1_o_LED_counter[19]_LessThan_6_o ),
    .Q(LED_counter[8])
  );
  FDR   LED_counter_9 (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(\Result<9>3 ),
    .R(\GND_1_o_LED_counter[19]_LessThan_6_o ),
    .Q(LED_counter[9])
  );
  FDR   LED_counter_10 (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(\Result<10>3 ),
    .R(\GND_1_o_LED_counter[19]_LessThan_6_o ),
    .Q(LED_counter[10])
  );
  FDR   LED_counter_11 (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(\Result<11>3 ),
    .R(\GND_1_o_LED_counter[19]_LessThan_6_o ),
    .Q(LED_counter[11])
  );
  FDR   LED_counter_12 (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(\Result<12>3 ),
    .R(\GND_1_o_LED_counter[19]_LessThan_6_o ),
    .Q(LED_counter[12])
  );
  FDR   LED_counter_13 (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(\Result<13>3 ),
    .R(\GND_1_o_LED_counter[19]_LessThan_6_o ),
    .Q(LED_counter[13])
  );
  FDR   LED_counter_14 (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(\Result<14>3 ),
    .R(\GND_1_o_LED_counter[19]_LessThan_6_o ),
    .Q(LED_counter[14])
  );
  FDR   LED_counter_15 (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(\Result<15>3 ),
    .R(\GND_1_o_LED_counter[19]_LessThan_6_o ),
    .Q(LED_counter[15])
  );
  FDR   LED_counter_16 (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(\Result<16>1 ),
    .R(\GND_1_o_LED_counter[19]_LessThan_6_o ),
    .Q(LED_counter[16])
  );
  FDR   LED_counter_17 (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(\Result<17>1 ),
    .R(\GND_1_o_LED_counter[19]_LessThan_6_o ),
    .Q(LED_counter[17])
  );
  FDR   LED_counter_18 (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(\Result<18>1 ),
    .R(\GND_1_o_LED_counter[19]_LessThan_6_o ),
    .Q(LED_counter[18])
  );
  FDR   LED_counter_19 (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(\Result<19>1 ),
    .R(\GND_1_o_LED_counter[19]_LessThan_6_o ),
    .Q(LED_counter[19])
  );
  MUXCY   \Msub_pIMO_cy<0>  (
    .CI(DIR_OBUF_232),
    .DI(TX_ERR_SIG),
    .S(\Msub_pIMO_cy<0>_rt_1101 ),
    .O(Msub_pIMO_cy[0])
  );
  MUXCY   \Msub_pIMO_cy<1>  (
    .CI(Msub_pIMO_cy[0]),
    .DI(DIR_OBUF_232),
    .S(Msub_pIMO_lut[1]),
    .O(Msub_pIMO_cy[1])
  );
  MUXCY   \Msub_pIMO_cy<2>  (
    .CI(Msub_pIMO_cy[1]),
    .DI(DIR_OBUF_232),
    .S(Msub_pIMO_lut[2]),
    .O(Msub_pIMO_cy[2])
  );
  MUXCY   \Msub_pIMO_cy<3>  (
    .CI(Msub_pIMO_cy[2]),
    .DI(DIR_OBUF_232),
    .S(Msub_pIMO_lut[3]),
    .O(Msub_pIMO_cy[3])
  );
  XORCY   \Msub_pIMO_xor<3>  (
    .CI(Msub_pIMO_cy[2]),
    .LI(Msub_pIMO_lut[3]),
    .O(pIMO[3])
  );
  MUXCY   \Msub_pIMO_cy<4>  (
    .CI(Msub_pIMO_cy[3]),
    .DI(DIR_OBUF_232),
    .S(Msub_pIMO_lut[4]),
    .O(Msub_pIMO_cy[4])
  );
  XORCY   \Msub_pIMO_xor<4>  (
    .CI(Msub_pIMO_cy[3]),
    .LI(Msub_pIMO_lut[4]),
    .O(pIMO[4])
  );
  MUXCY   \Msub_pIMO_cy<5>  (
    .CI(Msub_pIMO_cy[4]),
    .DI(DIR_OBUF_232),
    .S(Msub_pIMO_lut[5]),
    .O(Msub_pIMO_cy[5])
  );
  XORCY   \Msub_pIMO_xor<5>  (
    .CI(Msub_pIMO_cy[4]),
    .LI(Msub_pIMO_lut[5]),
    .O(pIMO[5])
  );
  MUXCY   \Msub_pIMO_cy<6>  (
    .CI(Msub_pIMO_cy[5]),
    .DI(DIR_OBUF_232),
    .S(Msub_pIMO_lut[6]),
    .O(Msub_pIMO_cy[6])
  );
  XORCY   \Msub_pIMO_xor<6>  (
    .CI(Msub_pIMO_cy[5]),
    .LI(Msub_pIMO_lut[6]),
    .O(pIMO[6])
  );
  MUXCY   \Msub_pIMO_cy<7>  (
    .CI(Msub_pIMO_cy[6]),
    .DI(DIR_OBUF_232),
    .S(Msub_pIMO_lut[7]),
    .O(Msub_pIMO_cy[7])
  );
  XORCY   \Msub_pIMO_xor<7>  (
    .CI(Msub_pIMO_cy[6]),
    .LI(Msub_pIMO_lut[7]),
    .O(pIMO[7])
  );
  MUXCY   \Msub_pIMO_cy<8>  (
    .CI(Msub_pIMO_cy[7]),
    .DI(DIR_OBUF_232),
    .S(Msub_pIMO_lut[8]),
    .O(Msub_pIMO_cy[8])
  );
  XORCY   \Msub_pIMO_xor<8>  (
    .CI(Msub_pIMO_cy[7]),
    .LI(Msub_pIMO_lut[8]),
    .O(pIMO[8])
  );
  MUXCY   \Msub_pIMO_cy<9>  (
    .CI(Msub_pIMO_cy[8]),
    .DI(DIR_OBUF_232),
    .S(Msub_pIMO_lut[9]),
    .O(Msub_pIMO_cy[9])
  );
  XORCY   \Msub_pIMO_xor<9>  (
    .CI(Msub_pIMO_cy[8]),
    .LI(Msub_pIMO_lut[9]),
    .O(pIMO[9])
  );
  MUXCY   \Msub_pIMO_cy<10>  (
    .CI(Msub_pIMO_cy[9]),
    .DI(DIR_OBUF_232),
    .S(Msub_pIMO_lut[10]),
    .O(Msub_pIMO_cy[10])
  );
  XORCY   \Msub_pIMO_xor<10>  (
    .CI(Msub_pIMO_cy[9]),
    .LI(Msub_pIMO_lut[10]),
    .O(pIMO[10])
  );
  MUXCY   \Msub_pIMO_cy<11>  (
    .CI(Msub_pIMO_cy[10]),
    .DI(DIR_OBUF_232),
    .S(Msub_pIMO_lut[11]),
    .O(Msub_pIMO_cy[11])
  );
  XORCY   \Msub_pIMO_xor<11>  (
    .CI(Msub_pIMO_cy[10]),
    .LI(Msub_pIMO_lut[11]),
    .O(pIMO[11])
  );
  MUXCY   \Msub_pIMO_cy<12>  (
    .CI(Msub_pIMO_cy[11]),
    .DI(DIR_OBUF_232),
    .S(\Msub_pIMO_lut<12>1 ),
    .O(Msub_pIMO_cy[12])
  );
  XORCY   \Msub_pIMO_xor<12>  (
    .CI(Msub_pIMO_cy[11]),
    .LI(\Msub_pIMO_lut<12>1 ),
    .O(pIMO[12])
  );
  MUXCY   \Msub_pIMO_cy<13>  (
    .CI(Msub_pIMO_cy[12]),
    .DI(DIR_OBUF_232),
    .S(Msub_pIMO_lut[13]),
    .O(Msub_pIMO_cy[13])
  );
  XORCY   \Msub_pIMO_xor<13>  (
    .CI(Msub_pIMO_cy[12]),
    .LI(Msub_pIMO_lut[13]),
    .O(pIMO[13])
  );
  MUXCY   \Msub_pIMO_cy<14>  (
    .CI(Msub_pIMO_cy[13]),
    .DI(DIR_OBUF_232),
    .S(Msub_pIMO_lut[14]),
    .O(Msub_pIMO_cy[14])
  );
  XORCY   \Msub_pIMO_xor<14>  (
    .CI(Msub_pIMO_cy[13]),
    .LI(Msub_pIMO_lut[14]),
    .O(pIMO[14])
  );
  XORCY   \Msub_pIMO_xor<15>  (
    .CI(Msub_pIMO_cy[14]),
    .LI(Msub_pIMO_lut[12]),
    .O(pIMO[15])
  );
  LUT4 #(
    .INIT ( 16'h8880 ))
  \Mcompar_counter[31]_GND_1_o_LessThan_23_o_lutdi  (
    .I0(counter[5]),
    .I1(counter[4]),
    .I2(counter[3]),
    .I3(counter[2]),
    .O(\Mcompar_counter[31]_GND_1_o_LessThan_23_o_lutdi_332 )
  );
  LUT5 #(
    .INIT ( 32'h00000800 ))
  \Mcompar_counter[31]_GND_1_o_LessThan_23_o_lut<0>  (
    .I0(counter[1]),
    .I1(counter[5]),
    .I2(counter[2]),
    .I3(counter[4]),
    .I4(counter[3]),
    .O(\Mcompar_counter[31]_GND_1_o_LessThan_23_o_lut<0>_333 )
  );
  MUXCY   \Mcompar_counter[31]_GND_1_o_LessThan_23_o_cy<0>  (
    .CI(DIR_OBUF_232),
    .DI(\Mcompar_counter[31]_GND_1_o_LessThan_23_o_lutdi_332 ),
    .S(\Mcompar_counter[31]_GND_1_o_LessThan_23_o_lut<0>_333 ),
    .O(\Mcompar_counter[31]_GND_1_o_LessThan_23_o_cy<0>_334 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFFFFE ))
  \Mcompar_counter[31]_GND_1_o_LessThan_23_o_lutdi1  (
    .I0(counter[10]),
    .I1(counter[9]),
    .I2(counter[8]),
    .I3(counter[7]),
    .I4(counter[6]),
    .O(\Mcompar_counter[31]_GND_1_o_LessThan_23_o_lutdi1_335 )
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  \Mcompar_counter[31]_GND_1_o_LessThan_23_o_lut<1>  (
    .I0(counter[6]),
    .I1(counter[7]),
    .I2(counter[8]),
    .I3(counter[9]),
    .I4(counter[10]),
    .O(\Mcompar_counter[31]_GND_1_o_LessThan_23_o_lut<1>_336 )
  );
  MUXCY   \Mcompar_counter[31]_GND_1_o_LessThan_23_o_cy<1>  (
    .CI(\Mcompar_counter[31]_GND_1_o_LessThan_23_o_cy<0>_334 ),
    .DI(\Mcompar_counter[31]_GND_1_o_LessThan_23_o_lutdi1_335 ),
    .S(\Mcompar_counter[31]_GND_1_o_LessThan_23_o_lut<1>_336 ),
    .O(\Mcompar_counter[31]_GND_1_o_LessThan_23_o_cy<1>_337 )
  );
  MUXCY   \Mcompar_counter[31]_GND_1_o_LessThan_23_o_cy<2>  (
    .CI(\Mcompar_counter[31]_GND_1_o_LessThan_23_o_cy<1>_337 ),
    .DI(\Mcompar_counter[31]_GND_1_o_LessThan_23_o_lutdi2 ),
    .S(\Mcompar_counter[31]_GND_1_o_LessThan_23_o_lut<2> ),
    .O(\Mcompar_counter[31]_GND_1_o_LessThan_23_o_cy<2>_340 )
  );
  MUXCY   \Mcompar_counter[31]_GND_1_o_LessThan_23_o_cy<3>  (
    .CI(\Mcompar_counter[31]_GND_1_o_LessThan_23_o_cy<2>_340 ),
    .DI(counter[12]),
    .S(\Mcompar_counter[31]_GND_1_o_LessThan_23_o_lut<3> ),
    .O(\Mcompar_counter[31]_GND_1_o_LessThan_23_o_cy<3>_342 )
  );
  MUXCY   \Mcompar_counter[31]_GND_1_o_LessThan_23_o_cy<4>  (
    .CI(\Mcompar_counter[31]_GND_1_o_LessThan_23_o_cy<3>_342 ),
    .DI(counter[12]),
    .S(\Mcompar_counter[31]_GND_1_o_LessThan_23_o_lut<4> ),
    .O(\Mcompar_counter[31]_GND_1_o_LessThan_23_o_cy<4>_344 )
  );
  MUXCY   \Mcompar_counter[31]_GND_1_o_LessThan_23_o_cy<5>  (
    .CI(\Mcompar_counter[31]_GND_1_o_LessThan_23_o_cy<4>_344 ),
    .DI(counter[12]),
    .S(\Mcompar_counter[31]_GND_1_o_LessThan_23_o_lut<5> ),
    .O(\Mcompar_counter[31]_GND_1_o_LessThan_23_o_cy<5>_346 )
  );
  MUXCY   \Mcompar_counter[31]_GND_1_o_LessThan_23_o_cy<6>  (
    .CI(\Mcompar_counter[31]_GND_1_o_LessThan_23_o_cy<5>_346 ),
    .DI(counter[12]),
    .S(\Mcompar_counter[31]_GND_1_o_LessThan_23_o_lut<6> ),
    .O(\Mcompar_counter[31]_GND_1_o_LessThan_23_o_cy<6>_348 )
  );
  LUT4 #(
    .INIT ( 16'hFFA8 ))
  \Mcompar_counter[31]_GND_1_o_LessThan_28_o_lutdi  (
    .I0(counter[4]),
    .I1(counter[3]),
    .I2(counter[2]),
    .I3(counter[5]),
    .O(\Mcompar_counter[31]_GND_1_o_LessThan_28_o_lutdi_349 )
  );
  LUT5 #(
    .INIT ( 32'h00000400 ))
  \Mcompar_counter[31]_GND_1_o_LessThan_28_o_lut<0>  (
    .I0(counter[2]),
    .I1(counter[1]),
    .I2(counter[3]),
    .I3(counter[4]),
    .I4(counter[5]),
    .O(\Mcompar_counter[31]_GND_1_o_LessThan_28_o_lut<0>_350 )
  );
  MUXCY   \Mcompar_counter[31]_GND_1_o_LessThan_28_o_cy<0>  (
    .CI(DIR_OBUF_232),
    .DI(\Mcompar_counter[31]_GND_1_o_LessThan_28_o_lutdi_349 ),
    .S(\Mcompar_counter[31]_GND_1_o_LessThan_28_o_lut<0>_350 ),
    .O(\Mcompar_counter[31]_GND_1_o_LessThan_28_o_cy<0>_351 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFEAAA ))
  \Mcompar_counter[31]_GND_1_o_LessThan_28_o_lutdi1  (
    .I0(counter[9]),
    .I1(counter[8]),
    .I2(counter[7]),
    .I3(counter[6]),
    .I4(counter[10]),
    .O(\Mcompar_counter[31]_GND_1_o_LessThan_28_o_lutdi1_352 )
  );
  LUT5 #(
    .INIT ( 32'h00000400 ))
  \Mcompar_counter[31]_GND_1_o_LessThan_28_o_lut<1>  (
    .I0(counter[6]),
    .I1(counter[8]),
    .I2(counter[9]),
    .I3(counter[7]),
    .I4(counter[10]),
    .O(\Mcompar_counter[31]_GND_1_o_LessThan_28_o_lut<1>_353 )
  );
  MUXCY   \Mcompar_counter[31]_GND_1_o_LessThan_28_o_cy<1>  (
    .CI(\Mcompar_counter[31]_GND_1_o_LessThan_28_o_cy<0>_351 ),
    .DI(\Mcompar_counter[31]_GND_1_o_LessThan_28_o_lutdi1_352 ),
    .S(\Mcompar_counter[31]_GND_1_o_LessThan_28_o_lut<1>_353 ),
    .O(\Mcompar_counter[31]_GND_1_o_LessThan_28_o_cy<1>_354 )
  );
  MUXCY   \Mcompar_counter[31]_GND_1_o_LessThan_28_o_cy<2>  (
    .CI(\Mcompar_counter[31]_GND_1_o_LessThan_28_o_cy<1>_354 ),
    .DI(counter_12_1_1266),
    .S(\Mcompar_counter[31]_GND_1_o_LessThan_28_o_lut<2> ),
    .O(\Mcompar_counter[31]_GND_1_o_LessThan_28_o_cy<2>_356 )
  );
  MUXCY   \Mcompar_counter[31]_GND_1_o_LessThan_28_o_cy<3>  (
    .CI(\Mcompar_counter[31]_GND_1_o_LessThan_28_o_cy<2>_356 ),
    .DI(counter_12_1_1266),
    .S(\Mcompar_counter[31]_GND_1_o_LessThan_28_o_lut<3> ),
    .O(\Mcompar_counter[31]_GND_1_o_LessThan_28_o_cy<3>_358 )
  );
  MUXCY   \Mcompar_counter[31]_GND_1_o_LessThan_28_o_cy<4>  (
    .CI(\Mcompar_counter[31]_GND_1_o_LessThan_28_o_cy<3>_358 ),
    .DI(counter_12_1_1266),
    .S(\Mcompar_counter[31]_GND_1_o_LessThan_28_o_lut<4> ),
    .O(\Mcompar_counter[31]_GND_1_o_LessThan_28_o_cy<4>_360 )
  );
  MUXCY   \Mcompar_counter[31]_GND_1_o_LessThan_28_o_cy<5>  (
    .CI(\Mcompar_counter[31]_GND_1_o_LessThan_28_o_cy<4>_360 ),
    .DI(counter[12]),
    .S(\Mcompar_counter[31]_GND_1_o_LessThan_28_o_lut<5> ),
    .O(\Mcompar_counter[31]_GND_1_o_LessThan_28_o_cy<5>_362 )
  );
  MUXCY   \Mcompar_counter[31]_GND_1_o_LessThan_28_o_cy<6>  (
    .CI(\Mcompar_counter[31]_GND_1_o_LessThan_28_o_cy<5>_362 ),
    .DI(counter[12]),
    .S(\Mcompar_counter[31]_GND_1_o_LessThan_28_o_lut<6> ),
    .O(\Mcompar_counter[31]_GND_1_o_LessThan_28_o_cy<6>_364 )
  );
  LUT4 #(
    .INIT ( 16'hFFEA ))
  \Mcompar_counter[31]_GND_1_o_LessThan_32_o_lutdi  (
    .I0(counter[6]),
    .I1(counter[4]),
    .I2(counter[3]),
    .I3(counter[5]),
    .O(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_lutdi_365 )
  );
  LUT5 #(
    .INIT ( 32'h00000400 ))
  \Mcompar_counter[31]_GND_1_o_LessThan_32_o_lut<0>  (
    .I0(counter[3]),
    .I1(counter[4]),
    .I2(counter[5]),
    .I3(counter[2]),
    .I4(counter[6]),
    .O(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_lut<0>_366 )
  );
  MUXCY   \Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<0>  (
    .CI(DIR_OBUF_232),
    .DI(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_lutdi_365 ),
    .S(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_lut<0>_366 ),
    .O(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<0>_367 )
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \Mcompar_counter[31]_GND_1_o_LessThan_32_o_lutdi1  (
    .I0(counter[11]),
    .I1(counter[10]),
    .I2(counter[9]),
    .O(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_lutdi1_368 )
  );
  LUT5 #(
    .INIT ( 32'h00000800 ))
  \Mcompar_counter[31]_GND_1_o_LessThan_32_o_lut<1>  (
    .I0(counter[7]),
    .I1(counter[11]),
    .I2(counter[9]),
    .I3(counter[8]),
    .I4(counter[10]),
    .O(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_lut<1>_369 )
  );
  MUXCY   \Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<1>  (
    .CI(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<0>_367 ),
    .DI(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_lutdi1_368 ),
    .S(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_lut<1>_369 ),
    .O(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<1>_370 )
  );
  MUXCY   \Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<2>  (
    .CI(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<1>_370 ),
    .DI(counter_12_1_1266),
    .S(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_lut<2> ),
    .O(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<2>_372 )
  );
  MUXCY   \Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<3>  (
    .CI(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<2>_372 ),
    .DI(counter_12_1_1266),
    .S(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_lut<3> ),
    .O(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<3>_374 )
  );
  MUXCY   \Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<4>  (
    .CI(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<3>_374 ),
    .DI(counter_12_1_1266),
    .S(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_lut<4> ),
    .O(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<4>_376 )
  );
  MUXCY   \Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<5>  (
    .CI(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<4>_376 ),
    .DI(counter_12_1_1266),
    .S(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_lut<5> ),
    .O(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<5>_378 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \Mcompar_counter[31]_GND_1_o_LessThan_39_o_lutdi  (
    .I0(counter[4]),
    .I1(counter[3]),
    .O(\Mcompar_counter[31]_GND_1_o_LessThan_39_o_lutdi_379 )
  );
  LUT5 #(
    .INIT ( 32'h20000000 ))
  \Mcompar_counter[31]_GND_1_o_LessThan_39_o_lut<0>  (
    .I0(counter[1]),
    .I1(counter[3]),
    .I2(counter[2]),
    .I3(counter[0]),
    .I4(counter[4]),
    .O(\Mcompar_counter[31]_GND_1_o_LessThan_39_o_lut<0>_380 )
  );
  MUXCY   \Mcompar_counter[31]_GND_1_o_LessThan_39_o_cy<0>  (
    .CI(DIR_OBUF_232),
    .DI(\Mcompar_counter[31]_GND_1_o_LessThan_39_o_lutdi_379 ),
    .S(\Mcompar_counter[31]_GND_1_o_LessThan_39_o_lut<0>_380 ),
    .O(\Mcompar_counter[31]_GND_1_o_LessThan_39_o_cy<0>_381 )
  );
  LUT5 #(
    .INIT ( 32'hFFFF8880 ))
  \Mcompar_counter[31]_GND_1_o_LessThan_39_o_lutdi1  (
    .I0(counter[8]),
    .I1(counter[7]),
    .I2(counter[6]),
    .I3(counter[5]),
    .I4(counter[9]),
    .O(\Mcompar_counter[31]_GND_1_o_LessThan_39_o_lutdi1_382 )
  );
  LUT5 #(
    .INIT ( 32'h00000400 ))
  \Mcompar_counter[31]_GND_1_o_LessThan_39_o_lut<1>  (
    .I0(counter[5]),
    .I1(counter[7]),
    .I2(counter[6]),
    .I3(counter[8]),
    .I4(counter[9]),
    .O(\Mcompar_counter[31]_GND_1_o_LessThan_39_o_lut<1>_383 )
  );
  MUXCY   \Mcompar_counter[31]_GND_1_o_LessThan_39_o_cy<1>  (
    .CI(\Mcompar_counter[31]_GND_1_o_LessThan_39_o_cy<0>_381 ),
    .DI(\Mcompar_counter[31]_GND_1_o_LessThan_39_o_lutdi1_382 ),
    .S(\Mcompar_counter[31]_GND_1_o_LessThan_39_o_lut<1>_383 ),
    .O(\Mcompar_counter[31]_GND_1_o_LessThan_39_o_cy<1>_384 )
  );
  MUXCY   \Mcompar_counter[31]_GND_1_o_LessThan_39_o_cy<2>  (
    .CI(\Mcompar_counter[31]_GND_1_o_LessThan_39_o_cy<1>_384 ),
    .DI(\Mcompar_counter[31]_GND_1_o_LessThan_39_o_lutdi2 ),
    .S(\Mcompar_counter[31]_GND_1_o_LessThan_39_o_lut<2> ),
    .O(\Mcompar_counter[31]_GND_1_o_LessThan_39_o_cy<2>_387 )
  );
  MUXCY   \Mcompar_counter[31]_GND_1_o_LessThan_39_o_cy<3>  (
    .CI(\Mcompar_counter[31]_GND_1_o_LessThan_39_o_cy<2>_387 ),
    .DI(counter_12_1_1266),
    .S(\Mcompar_counter[31]_GND_1_o_LessThan_39_o_lut<3> ),
    .O(\Mcompar_counter[31]_GND_1_o_LessThan_39_o_cy<3>_389 )
  );
  MUXCY   \Mcompar_counter[31]_GND_1_o_LessThan_39_o_cy<4>  (
    .CI(\Mcompar_counter[31]_GND_1_o_LessThan_39_o_cy<3>_389 ),
    .DI(counter_12_1_1266),
    .S(\Mcompar_counter[31]_GND_1_o_LessThan_39_o_lut<4> ),
    .O(\Mcompar_counter[31]_GND_1_o_LessThan_39_o_cy<4>_391 )
  );
  MUXCY   \Mcompar_counter[31]_GND_1_o_LessThan_39_o_cy<5>  (
    .CI(\Mcompar_counter[31]_GND_1_o_LessThan_39_o_cy<4>_391 ),
    .DI(counter_12_1_1266),
    .S(\Mcompar_counter[31]_GND_1_o_LessThan_39_o_lut<5> ),
    .O(\Mcompar_counter[31]_GND_1_o_LessThan_39_o_cy<5>_393 )
  );
  MUXCY   \Mcompar_counter[31]_GND_1_o_LessThan_39_o_cy<6>  (
    .CI(\Mcompar_counter[31]_GND_1_o_LessThan_39_o_cy<5>_393 ),
    .DI(counter_12_1_1266),
    .S(\Mcompar_counter[31]_GND_1_o_LessThan_39_o_lut<6> ),
    .O(\Mcompar_counter[31]_GND_1_o_LessThan_39_o_cy<6>_395 )
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \Mcompar_counter[31]_GND_1_o_LessThan_44_o_lutdi  (
    .I0(counter[7]),
    .I1(counter[6]),
    .I2(counter[5]),
    .O(\Mcompar_counter[31]_GND_1_o_LessThan_44_o_lutdi_396 )
  );
  LUT5 #(
    .INIT ( 32'h00000800 ))
  \Mcompar_counter[31]_GND_1_o_LessThan_44_o_lut<0>  (
    .I0(counter[3]),
    .I1(counter[7]),
    .I2(counter[5]),
    .I3(counter[4]),
    .I4(counter[6]),
    .O(\Mcompar_counter[31]_GND_1_o_LessThan_44_o_lut<0>_397 )
  );
  MUXCY   \Mcompar_counter[31]_GND_1_o_LessThan_44_o_cy<0>  (
    .CI(DIR_OBUF_232),
    .DI(\Mcompar_counter[31]_GND_1_o_LessThan_44_o_lutdi_396 ),
    .S(\Mcompar_counter[31]_GND_1_o_LessThan_44_o_lut<0>_397 ),
    .O(\Mcompar_counter[31]_GND_1_o_LessThan_44_o_cy<0>_398 )
  );
  LUT4 #(
    .INIT ( 16'hFFA8 ))
  \Mcompar_counter[31]_GND_1_o_LessThan_44_o_lutdi1  (
    .I0(counter[11]),
    .I1(counter[10]),
    .I2(counter[9]),
    .I3(counter_12_1_1266),
    .O(\Mcompar_counter[31]_GND_1_o_LessThan_44_o_lutdi1_399 )
  );
  LUT5 #(
    .INIT ( 32'h00000400 ))
  \Mcompar_counter[31]_GND_1_o_LessThan_44_o_lut<1>  (
    .I0(counter[9]),
    .I1(counter[8]),
    .I2(counter[10]),
    .I3(counter[11]),
    .I4(counter_12_1_1266),
    .O(\Mcompar_counter[31]_GND_1_o_LessThan_44_o_lut<1>_400 )
  );
  MUXCY   \Mcompar_counter[31]_GND_1_o_LessThan_44_o_cy<1>  (
    .CI(\Mcompar_counter[31]_GND_1_o_LessThan_44_o_cy<0>_398 ),
    .DI(\Mcompar_counter[31]_GND_1_o_LessThan_44_o_lutdi1_399 ),
    .S(\Mcompar_counter[31]_GND_1_o_LessThan_44_o_lut<1>_400 ),
    .O(\Mcompar_counter[31]_GND_1_o_LessThan_44_o_cy<1>_401 )
  );
  MUXCY   \Mcompar_counter[31]_GND_1_o_LessThan_44_o_cy<2>  (
    .CI(\Mcompar_counter[31]_GND_1_o_LessThan_44_o_cy<1>_401 ),
    .DI(counter[12]),
    .S(\Mcompar_counter[31]_GND_1_o_LessThan_44_o_lut<2> ),
    .O(\Mcompar_counter[31]_GND_1_o_LessThan_44_o_cy<2>_403 )
  );
  MUXCY   \Mcompar_counter[31]_GND_1_o_LessThan_44_o_cy<3>  (
    .CI(\Mcompar_counter[31]_GND_1_o_LessThan_44_o_cy<2>_403 ),
    .DI(counter[12]),
    .S(\Mcompar_counter[31]_GND_1_o_LessThan_44_o_lut<3> ),
    .O(\Mcompar_counter[31]_GND_1_o_LessThan_44_o_cy<3>_405 )
  );
  MUXCY   \Mcompar_counter[31]_GND_1_o_LessThan_44_o_cy<4>  (
    .CI(\Mcompar_counter[31]_GND_1_o_LessThan_44_o_cy<3>_405 ),
    .DI(counter[12]),
    .S(\Mcompar_counter[31]_GND_1_o_LessThan_44_o_lut<4> ),
    .O(\Mcompar_counter[31]_GND_1_o_LessThan_44_o_cy<4>_407 )
  );
  MUXCY   \Mcompar_counter[31]_GND_1_o_LessThan_44_o_cy<5>  (
    .CI(\Mcompar_counter[31]_GND_1_o_LessThan_44_o_cy<4>_407 ),
    .DI(counter[12]),
    .S(\Mcompar_counter[31]_GND_1_o_LessThan_44_o_lut<5> ),
    .O(\Mcompar_counter[31]_GND_1_o_LessThan_44_o_cy<5>_410 )
  );
  MUXCY   \Mcount_packetIndex_cy<0>  (
    .CI(TX_ERR_SIG),
    .DI(DIR_OBUF_232),
    .S(Mcount_packetIndex_lut[0]),
    .O(Mcount_packetIndex_cy[0])
  );
  XORCY   \Mcount_packetIndex_xor<0>  (
    .CI(TX_ERR_SIG),
    .LI(Mcount_packetIndex_lut[0]),
    .O(Result[0])
  );
  MUXCY   \Mcount_packetIndex_cy<1>  (
    .CI(Mcount_packetIndex_cy[0]),
    .DI(TX_ERR_SIG),
    .S(\Mcount_packetIndex_cy<1>_rt_1103 ),
    .O(Mcount_packetIndex_cy[1])
  );
  XORCY   \Mcount_packetIndex_xor<1>  (
    .CI(Mcount_packetIndex_cy[0]),
    .LI(\Mcount_packetIndex_cy<1>_rt_1103 ),
    .O(Result[1])
  );
  MUXCY   \Mcount_packetIndex_cy<2>  (
    .CI(Mcount_packetIndex_cy[1]),
    .DI(TX_ERR_SIG),
    .S(\Mcount_packetIndex_cy<2>_rt_1104 ),
    .O(Mcount_packetIndex_cy[2])
  );
  XORCY   \Mcount_packetIndex_xor<2>  (
    .CI(Mcount_packetIndex_cy[1]),
    .LI(\Mcount_packetIndex_cy<2>_rt_1104 ),
    .O(Result[2])
  );
  MUXCY   \Mcount_packetIndex_cy<3>  (
    .CI(Mcount_packetIndex_cy[2]),
    .DI(TX_ERR_SIG),
    .S(\Mcount_packetIndex_cy<3>_rt_1105 ),
    .O(Mcount_packetIndex_cy[3])
  );
  XORCY   \Mcount_packetIndex_xor<3>  (
    .CI(Mcount_packetIndex_cy[2]),
    .LI(\Mcount_packetIndex_cy<3>_rt_1105 ),
    .O(Result[3])
  );
  MUXCY   \Mcount_packetIndex_cy<4>  (
    .CI(Mcount_packetIndex_cy[3]),
    .DI(TX_ERR_SIG),
    .S(\Mcount_packetIndex_cy<4>_rt_1106 ),
    .O(Mcount_packetIndex_cy[4])
  );
  XORCY   \Mcount_packetIndex_xor<4>  (
    .CI(Mcount_packetIndex_cy[3]),
    .LI(\Mcount_packetIndex_cy<4>_rt_1106 ),
    .O(Result[4])
  );
  MUXCY   \Mcount_packetIndex_cy<5>  (
    .CI(Mcount_packetIndex_cy[4]),
    .DI(TX_ERR_SIG),
    .S(\Mcount_packetIndex_cy<5>_rt_1107 ),
    .O(Mcount_packetIndex_cy[5])
  );
  XORCY   \Mcount_packetIndex_xor<5>  (
    .CI(Mcount_packetIndex_cy[4]),
    .LI(\Mcount_packetIndex_cy<5>_rt_1107 ),
    .O(Result[5])
  );
  MUXCY   \Mcount_packetIndex_cy<6>  (
    .CI(Mcount_packetIndex_cy[5]),
    .DI(TX_ERR_SIG),
    .S(\Mcount_packetIndex_cy<6>_rt_1108 ),
    .O(Mcount_packetIndex_cy[6])
  );
  XORCY   \Mcount_packetIndex_xor<6>  (
    .CI(Mcount_packetIndex_cy[5]),
    .LI(\Mcount_packetIndex_cy<6>_rt_1108 ),
    .O(Result[6])
  );
  MUXCY   \Mcount_packetIndex_cy<7>  (
    .CI(Mcount_packetIndex_cy[6]),
    .DI(TX_ERR_SIG),
    .S(\Mcount_packetIndex_cy<7>_rt_1109 ),
    .O(Mcount_packetIndex_cy[7])
  );
  XORCY   \Mcount_packetIndex_xor<7>  (
    .CI(Mcount_packetIndex_cy[6]),
    .LI(\Mcount_packetIndex_cy<7>_rt_1109 ),
    .O(Result[7])
  );
  MUXCY   \Mcount_packetIndex_cy<8>  (
    .CI(Mcount_packetIndex_cy[7]),
    .DI(TX_ERR_SIG),
    .S(\Mcount_packetIndex_cy<8>_rt_1110 ),
    .O(Mcount_packetIndex_cy[8])
  );
  XORCY   \Mcount_packetIndex_xor<8>  (
    .CI(Mcount_packetIndex_cy[7]),
    .LI(\Mcount_packetIndex_cy<8>_rt_1110 ),
    .O(Result[8])
  );
  MUXCY   \Mcount_packetIndex_cy<9>  (
    .CI(Mcount_packetIndex_cy[8]),
    .DI(TX_ERR_SIG),
    .S(\Mcount_packetIndex_cy<9>_rt_1111 ),
    .O(Mcount_packetIndex_cy[9])
  );
  XORCY   \Mcount_packetIndex_xor<9>  (
    .CI(Mcount_packetIndex_cy[8]),
    .LI(\Mcount_packetIndex_cy<9>_rt_1111 ),
    .O(Result[9])
  );
  MUXCY   \Mcount_packetIndex_cy<10>  (
    .CI(Mcount_packetIndex_cy[9]),
    .DI(TX_ERR_SIG),
    .S(\Mcount_packetIndex_cy<10>_rt_1112 ),
    .O(Mcount_packetIndex_cy[10])
  );
  XORCY   \Mcount_packetIndex_xor<10>  (
    .CI(Mcount_packetIndex_cy[9]),
    .LI(\Mcount_packetIndex_cy<10>_rt_1112 ),
    .O(Result[10])
  );
  MUXCY   \Mcount_packetIndex_cy<11>  (
    .CI(Mcount_packetIndex_cy[10]),
    .DI(TX_ERR_SIG),
    .S(\Mcount_packetIndex_cy<11>_rt_1113 ),
    .O(Mcount_packetIndex_cy[11])
  );
  XORCY   \Mcount_packetIndex_xor<11>  (
    .CI(Mcount_packetIndex_cy[10]),
    .LI(\Mcount_packetIndex_cy<11>_rt_1113 ),
    .O(Result[11])
  );
  XORCY   \Mcount_packetIndex_xor<12>  (
    .CI(Mcount_packetIndex_cy[11]),
    .LI(\Mcount_packetIndex_xor<12>_rt_1169 ),
    .O(Result[12])
  );
  MUXCY   \Mcount_LED_counter_cy<0>  (
    .CI(TX_ERR_SIG),
    .DI(DIR_OBUF_232),
    .S(Mcount_LED_counter_lut[0]),
    .O(Mcount_LED_counter_cy[0])
  );
  XORCY   \Mcount_LED_counter_xor<0>  (
    .CI(TX_ERR_SIG),
    .LI(Mcount_LED_counter_lut[0]),
    .O(\Result<0>3 )
  );
  MUXCY   \Mcount_LED_counter_cy<1>  (
    .CI(Mcount_LED_counter_cy[0]),
    .DI(TX_ERR_SIG),
    .S(\Mcount_LED_counter_cy<1>_rt_1114 ),
    .O(Mcount_LED_counter_cy[1])
  );
  XORCY   \Mcount_LED_counter_xor<1>  (
    .CI(Mcount_LED_counter_cy[0]),
    .LI(\Mcount_LED_counter_cy<1>_rt_1114 ),
    .O(\Result<1>3 )
  );
  MUXCY   \Mcount_LED_counter_cy<2>  (
    .CI(Mcount_LED_counter_cy[1]),
    .DI(TX_ERR_SIG),
    .S(\Mcount_LED_counter_cy<2>_rt_1115 ),
    .O(Mcount_LED_counter_cy[2])
  );
  XORCY   \Mcount_LED_counter_xor<2>  (
    .CI(Mcount_LED_counter_cy[1]),
    .LI(\Mcount_LED_counter_cy<2>_rt_1115 ),
    .O(\Result<2>3 )
  );
  MUXCY   \Mcount_LED_counter_cy<3>  (
    .CI(Mcount_LED_counter_cy[2]),
    .DI(TX_ERR_SIG),
    .S(\Mcount_LED_counter_cy<3>_rt_1116 ),
    .O(Mcount_LED_counter_cy[3])
  );
  XORCY   \Mcount_LED_counter_xor<3>  (
    .CI(Mcount_LED_counter_cy[2]),
    .LI(\Mcount_LED_counter_cy<3>_rt_1116 ),
    .O(\Result<3>3 )
  );
  MUXCY   \Mcount_LED_counter_cy<4>  (
    .CI(Mcount_LED_counter_cy[3]),
    .DI(TX_ERR_SIG),
    .S(\Mcount_LED_counter_cy<4>_rt_1117 ),
    .O(Mcount_LED_counter_cy[4])
  );
  XORCY   \Mcount_LED_counter_xor<4>  (
    .CI(Mcount_LED_counter_cy[3]),
    .LI(\Mcount_LED_counter_cy<4>_rt_1117 ),
    .O(\Result<4>3 )
  );
  MUXCY   \Mcount_LED_counter_cy<5>  (
    .CI(Mcount_LED_counter_cy[4]),
    .DI(TX_ERR_SIG),
    .S(\Mcount_LED_counter_cy<5>_rt_1118 ),
    .O(Mcount_LED_counter_cy[5])
  );
  XORCY   \Mcount_LED_counter_xor<5>  (
    .CI(Mcount_LED_counter_cy[4]),
    .LI(\Mcount_LED_counter_cy<5>_rt_1118 ),
    .O(\Result<5>3 )
  );
  MUXCY   \Mcount_LED_counter_cy<6>  (
    .CI(Mcount_LED_counter_cy[5]),
    .DI(TX_ERR_SIG),
    .S(\Mcount_LED_counter_cy<6>_rt_1119 ),
    .O(Mcount_LED_counter_cy[6])
  );
  XORCY   \Mcount_LED_counter_xor<6>  (
    .CI(Mcount_LED_counter_cy[5]),
    .LI(\Mcount_LED_counter_cy<6>_rt_1119 ),
    .O(\Result<6>3 )
  );
  MUXCY   \Mcount_LED_counter_cy<7>  (
    .CI(Mcount_LED_counter_cy[6]),
    .DI(TX_ERR_SIG),
    .S(\Mcount_LED_counter_cy<7>_rt_1120 ),
    .O(Mcount_LED_counter_cy[7])
  );
  XORCY   \Mcount_LED_counter_xor<7>  (
    .CI(Mcount_LED_counter_cy[6]),
    .LI(\Mcount_LED_counter_cy<7>_rt_1120 ),
    .O(\Result<7>3 )
  );
  MUXCY   \Mcount_LED_counter_cy<8>  (
    .CI(Mcount_LED_counter_cy[7]),
    .DI(TX_ERR_SIG),
    .S(\Mcount_LED_counter_cy<8>_rt_1121 ),
    .O(Mcount_LED_counter_cy[8])
  );
  XORCY   \Mcount_LED_counter_xor<8>  (
    .CI(Mcount_LED_counter_cy[7]),
    .LI(\Mcount_LED_counter_cy<8>_rt_1121 ),
    .O(\Result<8>3 )
  );
  MUXCY   \Mcount_LED_counter_cy<9>  (
    .CI(Mcount_LED_counter_cy[8]),
    .DI(TX_ERR_SIG),
    .S(\Mcount_LED_counter_cy<9>_rt_1122 ),
    .O(Mcount_LED_counter_cy[9])
  );
  XORCY   \Mcount_LED_counter_xor<9>  (
    .CI(Mcount_LED_counter_cy[8]),
    .LI(\Mcount_LED_counter_cy<9>_rt_1122 ),
    .O(\Result<9>3 )
  );
  MUXCY   \Mcount_LED_counter_cy<10>  (
    .CI(Mcount_LED_counter_cy[9]),
    .DI(TX_ERR_SIG),
    .S(\Mcount_LED_counter_cy<10>_rt_1123 ),
    .O(Mcount_LED_counter_cy[10])
  );
  XORCY   \Mcount_LED_counter_xor<10>  (
    .CI(Mcount_LED_counter_cy[9]),
    .LI(\Mcount_LED_counter_cy<10>_rt_1123 ),
    .O(\Result<10>3 )
  );
  MUXCY   \Mcount_LED_counter_cy<11>  (
    .CI(Mcount_LED_counter_cy[10]),
    .DI(TX_ERR_SIG),
    .S(\Mcount_LED_counter_cy<11>_rt_1124 ),
    .O(Mcount_LED_counter_cy[11])
  );
  XORCY   \Mcount_LED_counter_xor<11>  (
    .CI(Mcount_LED_counter_cy[10]),
    .LI(\Mcount_LED_counter_cy<11>_rt_1124 ),
    .O(\Result<11>3 )
  );
  MUXCY   \Mcount_LED_counter_cy<12>  (
    .CI(Mcount_LED_counter_cy[11]),
    .DI(TX_ERR_SIG),
    .S(\Mcount_LED_counter_cy<12>_rt_1125 ),
    .O(Mcount_LED_counter_cy[12])
  );
  XORCY   \Mcount_LED_counter_xor<12>  (
    .CI(Mcount_LED_counter_cy[11]),
    .LI(\Mcount_LED_counter_cy<12>_rt_1125 ),
    .O(\Result<12>3 )
  );
  MUXCY   \Mcount_LED_counter_cy<13>  (
    .CI(Mcount_LED_counter_cy[12]),
    .DI(TX_ERR_SIG),
    .S(\Mcount_LED_counter_cy<13>_rt_1126 ),
    .O(Mcount_LED_counter_cy[13])
  );
  XORCY   \Mcount_LED_counter_xor<13>  (
    .CI(Mcount_LED_counter_cy[12]),
    .LI(\Mcount_LED_counter_cy<13>_rt_1126 ),
    .O(\Result<13>3 )
  );
  MUXCY   \Mcount_LED_counter_cy<14>  (
    .CI(Mcount_LED_counter_cy[13]),
    .DI(TX_ERR_SIG),
    .S(\Mcount_LED_counter_cy<14>_rt_1127 ),
    .O(Mcount_LED_counter_cy[14])
  );
  XORCY   \Mcount_LED_counter_xor<14>  (
    .CI(Mcount_LED_counter_cy[13]),
    .LI(\Mcount_LED_counter_cy<14>_rt_1127 ),
    .O(\Result<14>3 )
  );
  MUXCY   \Mcount_LED_counter_cy<15>  (
    .CI(Mcount_LED_counter_cy[14]),
    .DI(TX_ERR_SIG),
    .S(\Mcount_LED_counter_cy<15>_rt_1128 ),
    .O(Mcount_LED_counter_cy[15])
  );
  XORCY   \Mcount_LED_counter_xor<15>  (
    .CI(Mcount_LED_counter_cy[14]),
    .LI(\Mcount_LED_counter_cy<15>_rt_1128 ),
    .O(\Result<15>3 )
  );
  MUXCY   \Mcount_LED_counter_cy<16>  (
    .CI(Mcount_LED_counter_cy[15]),
    .DI(TX_ERR_SIG),
    .S(\Mcount_LED_counter_cy<16>_rt_1129 ),
    .O(Mcount_LED_counter_cy[16])
  );
  XORCY   \Mcount_LED_counter_xor<16>  (
    .CI(Mcount_LED_counter_cy[15]),
    .LI(\Mcount_LED_counter_cy<16>_rt_1129 ),
    .O(\Result<16>1 )
  );
  MUXCY   \Mcount_LED_counter_cy<17>  (
    .CI(Mcount_LED_counter_cy[16]),
    .DI(TX_ERR_SIG),
    .S(\Mcount_LED_counter_cy<17>_rt_1130 ),
    .O(Mcount_LED_counter_cy[17])
  );
  XORCY   \Mcount_LED_counter_xor<17>  (
    .CI(Mcount_LED_counter_cy[16]),
    .LI(\Mcount_LED_counter_cy<17>_rt_1130 ),
    .O(\Result<17>1 )
  );
  MUXCY   \Mcount_LED_counter_cy<18>  (
    .CI(Mcount_LED_counter_cy[17]),
    .DI(TX_ERR_SIG),
    .S(\Mcount_LED_counter_cy<18>_rt_1131 ),
    .O(Mcount_LED_counter_cy[18])
  );
  XORCY   \Mcount_LED_counter_xor<18>  (
    .CI(Mcount_LED_counter_cy[17]),
    .LI(\Mcount_LED_counter_cy<18>_rt_1131 ),
    .O(\Result<18>1 )
  );
  XORCY   \Mcount_LED_counter_xor<19>  (
    .CI(Mcount_LED_counter_cy[18]),
    .LI(\Mcount_LED_counter_xor<19>_rt_1170 ),
    .O(\Result<19>1 )
  );
  MUXCY   \Mcount_crossWire_cy<0>  (
    .CI(TX_ERR_SIG),
    .DI(DIR_OBUF_232),
    .S(Mcount_crossWire_lut[0]),
    .O(Mcount_crossWire_cy[0])
  );
  XORCY   \Mcount_crossWire_xor<0>  (
    .CI(TX_ERR_SIG),
    .LI(Mcount_crossWire_lut[0]),
    .O(\Result<0>1 )
  );
  MUXCY   \Mcount_crossWire_cy<1>  (
    .CI(Mcount_crossWire_cy[0]),
    .DI(TX_ERR_SIG),
    .S(\Mcount_crossWire_cy<1>_rt_1132 ),
    .O(Mcount_crossWire_cy[1])
  );
  XORCY   \Mcount_crossWire_xor<1>  (
    .CI(Mcount_crossWire_cy[0]),
    .LI(\Mcount_crossWire_cy<1>_rt_1132 ),
    .O(\Result<1>1 )
  );
  MUXCY   \Mcount_crossWire_cy<2>  (
    .CI(Mcount_crossWire_cy[1]),
    .DI(TX_ERR_SIG),
    .S(\Mcount_crossWire_cy<2>_rt_1133 ),
    .O(Mcount_crossWire_cy[2])
  );
  XORCY   \Mcount_crossWire_xor<2>  (
    .CI(Mcount_crossWire_cy[1]),
    .LI(\Mcount_crossWire_cy<2>_rt_1133 ),
    .O(\Result<2>1 )
  );
  MUXCY   \Mcount_crossWire_cy<3>  (
    .CI(Mcount_crossWire_cy[2]),
    .DI(TX_ERR_SIG),
    .S(\Mcount_crossWire_cy<3>_rt_1134 ),
    .O(Mcount_crossWire_cy[3])
  );
  XORCY   \Mcount_crossWire_xor<3>  (
    .CI(Mcount_crossWire_cy[2]),
    .LI(\Mcount_crossWire_cy<3>_rt_1134 ),
    .O(\Result<3>1 )
  );
  MUXCY   \Mcount_crossWire_cy<4>  (
    .CI(Mcount_crossWire_cy[3]),
    .DI(TX_ERR_SIG),
    .S(\Mcount_crossWire_cy<4>_rt_1135 ),
    .O(Mcount_crossWire_cy[4])
  );
  XORCY   \Mcount_crossWire_xor<4>  (
    .CI(Mcount_crossWire_cy[3]),
    .LI(\Mcount_crossWire_cy<4>_rt_1135 ),
    .O(\Result<4>1 )
  );
  MUXCY   \Mcount_crossWire_cy<5>  (
    .CI(Mcount_crossWire_cy[4]),
    .DI(TX_ERR_SIG),
    .S(\Mcount_crossWire_cy<5>_rt_1136 ),
    .O(Mcount_crossWire_cy[5])
  );
  XORCY   \Mcount_crossWire_xor<5>  (
    .CI(Mcount_crossWire_cy[4]),
    .LI(\Mcount_crossWire_cy<5>_rt_1136 ),
    .O(\Result<5>1 )
  );
  MUXCY   \Mcount_crossWire_cy<6>  (
    .CI(Mcount_crossWire_cy[5]),
    .DI(TX_ERR_SIG),
    .S(\Mcount_crossWire_cy<6>_rt_1137 ),
    .O(Mcount_crossWire_cy[6])
  );
  XORCY   \Mcount_crossWire_xor<6>  (
    .CI(Mcount_crossWire_cy[5]),
    .LI(\Mcount_crossWire_cy<6>_rt_1137 ),
    .O(\Result<6>1 )
  );
  MUXCY   \Mcount_crossWire_cy<7>  (
    .CI(Mcount_crossWire_cy[6]),
    .DI(TX_ERR_SIG),
    .S(\Mcount_crossWire_cy<7>_rt_1138 ),
    .O(Mcount_crossWire_cy[7])
  );
  XORCY   \Mcount_crossWire_xor<7>  (
    .CI(Mcount_crossWire_cy[6]),
    .LI(\Mcount_crossWire_cy<7>_rt_1138 ),
    .O(\Result<7>1 )
  );
  MUXCY   \Mcount_crossWire_cy<8>  (
    .CI(Mcount_crossWire_cy[7]),
    .DI(TX_ERR_SIG),
    .S(\Mcount_crossWire_cy<8>_rt_1139 ),
    .O(Mcount_crossWire_cy[8])
  );
  XORCY   \Mcount_crossWire_xor<8>  (
    .CI(Mcount_crossWire_cy[7]),
    .LI(\Mcount_crossWire_cy<8>_rt_1139 ),
    .O(\Result<8>1 )
  );
  MUXCY   \Mcount_crossWire_cy<9>  (
    .CI(Mcount_crossWire_cy[8]),
    .DI(TX_ERR_SIG),
    .S(\Mcount_crossWire_cy<9>_rt_1140 ),
    .O(Mcount_crossWire_cy[9])
  );
  XORCY   \Mcount_crossWire_xor<9>  (
    .CI(Mcount_crossWire_cy[8]),
    .LI(\Mcount_crossWire_cy<9>_rt_1140 ),
    .O(\Result<9>1 )
  );
  MUXCY   \Mcount_crossWire_cy<10>  (
    .CI(Mcount_crossWire_cy[9]),
    .DI(TX_ERR_SIG),
    .S(\Mcount_crossWire_cy<10>_rt_1141 ),
    .O(Mcount_crossWire_cy[10])
  );
  XORCY   \Mcount_crossWire_xor<10>  (
    .CI(Mcount_crossWire_cy[9]),
    .LI(\Mcount_crossWire_cy<10>_rt_1141 ),
    .O(\Result<10>1 )
  );
  MUXCY   \Mcount_crossWire_cy<11>  (
    .CI(Mcount_crossWire_cy[10]),
    .DI(TX_ERR_SIG),
    .S(\Mcount_crossWire_cy<11>_rt_1142 ),
    .O(Mcount_crossWire_cy[11])
  );
  XORCY   \Mcount_crossWire_xor<11>  (
    .CI(Mcount_crossWire_cy[10]),
    .LI(\Mcount_crossWire_cy<11>_rt_1142 ),
    .O(\Result<11>1 )
  );
  MUXCY   \Mcount_crossWire_cy<12>  (
    .CI(Mcount_crossWire_cy[11]),
    .DI(TX_ERR_SIG),
    .S(\Mcount_crossWire_cy<12>_rt_1143 ),
    .O(Mcount_crossWire_cy[12])
  );
  XORCY   \Mcount_crossWire_xor<12>  (
    .CI(Mcount_crossWire_cy[11]),
    .LI(\Mcount_crossWire_cy<12>_rt_1143 ),
    .O(\Result<12>1 )
  );
  MUXCY   \Mcount_crossWire_cy<13>  (
    .CI(Mcount_crossWire_cy[12]),
    .DI(TX_ERR_SIG),
    .S(\Mcount_crossWire_cy<13>_rt_1144 ),
    .O(Mcount_crossWire_cy[13])
  );
  XORCY   \Mcount_crossWire_xor<13>  (
    .CI(Mcount_crossWire_cy[12]),
    .LI(\Mcount_crossWire_cy<13>_rt_1144 ),
    .O(\Result<13>1 )
  );
  MUXCY   \Mcount_crossWire_cy<14>  (
    .CI(Mcount_crossWire_cy[13]),
    .DI(TX_ERR_SIG),
    .S(\Mcount_crossWire_cy<14>_rt_1145 ),
    .O(Mcount_crossWire_cy[14])
  );
  XORCY   \Mcount_crossWire_xor<14>  (
    .CI(Mcount_crossWire_cy[13]),
    .LI(\Mcount_crossWire_cy<14>_rt_1145 ),
    .O(\Result<14>1 )
  );
  XORCY   \Mcount_crossWire_xor<15>  (
    .CI(Mcount_crossWire_cy[14]),
    .LI(\Mcount_crossWire_xor<15>_rt_1171 ),
    .O(\Result<15>1 )
  );
  MUXCY   \Mcount_counter_cy<0>  (
    .CI(TX_ERR_SIG),
    .DI(DIR_OBUF_232),
    .S(Mcount_counter_lut[0]),
    .O(Mcount_counter_cy[0])
  );
  XORCY   \Mcount_counter_xor<0>  (
    .CI(TX_ERR_SIG),
    .LI(Mcount_counter_lut[0]),
    .O(\Result<0>2 )
  );
  MUXCY   \Mcount_counter_cy<1>  (
    .CI(Mcount_counter_cy[0]),
    .DI(TX_ERR_SIG),
    .S(\Mcount_counter_cy<1>_rt_1146 ),
    .O(Mcount_counter_cy[1])
  );
  XORCY   \Mcount_counter_xor<1>  (
    .CI(Mcount_counter_cy[0]),
    .LI(\Mcount_counter_cy<1>_rt_1146 ),
    .O(\Result<1>2 )
  );
  MUXCY   \Mcount_counter_cy<2>  (
    .CI(Mcount_counter_cy[1]),
    .DI(TX_ERR_SIG),
    .S(\Mcount_counter_cy<2>_rt_1147 ),
    .O(Mcount_counter_cy[2])
  );
  XORCY   \Mcount_counter_xor<2>  (
    .CI(Mcount_counter_cy[1]),
    .LI(\Mcount_counter_cy<2>_rt_1147 ),
    .O(\Result<2>2 )
  );
  MUXCY   \Mcount_counter_cy<3>  (
    .CI(Mcount_counter_cy[2]),
    .DI(TX_ERR_SIG),
    .S(\Mcount_counter_cy<3>_rt_1148 ),
    .O(Mcount_counter_cy[3])
  );
  XORCY   \Mcount_counter_xor<3>  (
    .CI(Mcount_counter_cy[2]),
    .LI(\Mcount_counter_cy<3>_rt_1148 ),
    .O(\Result<3>2 )
  );
  MUXCY   \Mcount_counter_cy<4>  (
    .CI(Mcount_counter_cy[3]),
    .DI(TX_ERR_SIG),
    .S(\Mcount_counter_cy<4>_rt_1149 ),
    .O(Mcount_counter_cy[4])
  );
  XORCY   \Mcount_counter_xor<4>  (
    .CI(Mcount_counter_cy[3]),
    .LI(\Mcount_counter_cy<4>_rt_1149 ),
    .O(\Result<4>2 )
  );
  MUXCY   \Mcount_counter_cy<5>  (
    .CI(Mcount_counter_cy[4]),
    .DI(TX_ERR_SIG),
    .S(\Mcount_counter_cy<5>_rt_1150 ),
    .O(Mcount_counter_cy[5])
  );
  XORCY   \Mcount_counter_xor<5>  (
    .CI(Mcount_counter_cy[4]),
    .LI(\Mcount_counter_cy<5>_rt_1150 ),
    .O(\Result<5>2 )
  );
  MUXCY   \Mcount_counter_cy<6>  (
    .CI(Mcount_counter_cy[5]),
    .DI(TX_ERR_SIG),
    .S(\Mcount_counter_cy<6>_rt_1151 ),
    .O(Mcount_counter_cy[6])
  );
  XORCY   \Mcount_counter_xor<6>  (
    .CI(Mcount_counter_cy[5]),
    .LI(\Mcount_counter_cy<6>_rt_1151 ),
    .O(\Result<6>2 )
  );
  MUXCY   \Mcount_counter_cy<7>  (
    .CI(Mcount_counter_cy[6]),
    .DI(TX_ERR_SIG),
    .S(\Mcount_counter_cy<7>_rt_1152 ),
    .O(Mcount_counter_cy[7])
  );
  XORCY   \Mcount_counter_xor<7>  (
    .CI(Mcount_counter_cy[6]),
    .LI(\Mcount_counter_cy<7>_rt_1152 ),
    .O(\Result<7>2 )
  );
  MUXCY   \Mcount_counter_cy<8>  (
    .CI(Mcount_counter_cy[7]),
    .DI(TX_ERR_SIG),
    .S(\Mcount_counter_cy<8>_rt_1153 ),
    .O(Mcount_counter_cy[8])
  );
  XORCY   \Mcount_counter_xor<8>  (
    .CI(Mcount_counter_cy[7]),
    .LI(\Mcount_counter_cy<8>_rt_1153 ),
    .O(\Result<8>2 )
  );
  MUXCY   \Mcount_counter_cy<9>  (
    .CI(Mcount_counter_cy[8]),
    .DI(TX_ERR_SIG),
    .S(\Mcount_counter_cy<9>_rt_1154 ),
    .O(Mcount_counter_cy[9])
  );
  XORCY   \Mcount_counter_xor<9>  (
    .CI(Mcount_counter_cy[8]),
    .LI(\Mcount_counter_cy<9>_rt_1154 ),
    .O(\Result<9>2 )
  );
  MUXCY   \Mcount_counter_cy<10>  (
    .CI(Mcount_counter_cy[9]),
    .DI(TX_ERR_SIG),
    .S(\Mcount_counter_cy<10>_rt_1155 ),
    .O(Mcount_counter_cy[10])
  );
  XORCY   \Mcount_counter_xor<10>  (
    .CI(Mcount_counter_cy[9]),
    .LI(\Mcount_counter_cy<10>_rt_1155 ),
    .O(\Result<10>2 )
  );
  MUXCY   \Mcount_counter_cy<11>  (
    .CI(Mcount_counter_cy[10]),
    .DI(TX_ERR_SIG),
    .S(\Mcount_counter_cy<11>_rt_1156 ),
    .O(Mcount_counter_cy[11])
  );
  XORCY   \Mcount_counter_xor<11>  (
    .CI(Mcount_counter_cy[10]),
    .LI(\Mcount_counter_cy<11>_rt_1156 ),
    .O(\Result<11>2 )
  );
  XORCY   \Mcount_counter_xor<12>  (
    .CI(Mcount_counter_cy[11]),
    .LI(\Mcount_counter_xor<12>_rt_1172 ),
    .O(\Result<12>2 )
  );
  ODDR2 #(
    .DDR_ALIGNMENT ( "C0" ),
    .SRTYPE ( "ASYNC" ),
    .INIT ( 1'b0 ))
  TX_DDR_0 (
    .D0(\dataOut[0]_TX_EN_SIG_AND_2_o ),
    .D1(\dataOut[4]_TX_EN_SIG_AND_3_o ),
    .C0(CLK_125_IO),
    .C1(CLK_125_IO_INV_44_o),
    .CE(DIR_OBUF_232),
    .R(TX_ERR_SIG),
    .S(TX_ERR_SIG),
    .Q(TXD_0_OBUF_152)
  );
  ODDR2 #(
    .DDR_ALIGNMENT ( "C0" ),
    .SRTYPE ( "ASYNC" ),
    .INIT ( 1'b0 ))
  TX_DDR_1 (
    .D0(\dataOut[1]_TX_EN_SIG_AND_4_o ),
    .D1(\dataOut[5]_TX_EN_SIG_AND_5_o ),
    .C0(CLK_125_IO),
    .C1(CLK_125_IO_INV_44_o),
    .CE(DIR_OBUF_232),
    .R(TX_ERR_SIG),
    .S(TX_ERR_SIG),
    .Q(TXD_1_OBUF_153)
  );
  ODDR2 #(
    .DDR_ALIGNMENT ( "C0" ),
    .SRTYPE ( "ASYNC" ),
    .INIT ( 1'b0 ))
  TX_DDR_2 (
    .D0(\dataOut[2]_TX_EN_SIG_AND_6_o ),
    .D1(\dataOut[6]_TX_EN_SIG_AND_7_o ),
    .C0(CLK_125_IO),
    .C1(CLK_125_IO_INV_44_o),
    .CE(DIR_OBUF_232),
    .R(TX_ERR_SIG),
    .S(TX_ERR_SIG),
    .Q(TXD_2_OBUF_154)
  );
  ODDR2 #(
    .DDR_ALIGNMENT ( "C0" ),
    .SRTYPE ( "ASYNC" ),
    .INIT ( 1'b0 ))
  TX_DDR_3 (
    .D0(\dataOut[3]_TX_EN_SIG_AND_8_o ),
    .D1(\dataOut[7]_TX_EN_SIG_AND_9_o ),
    .C0(CLK_125_IO),
    .C1(CLK_125_IO_INV_44_o),
    .CE(DIR_OBUF_232),
    .R(TX_ERR_SIG),
    .S(TX_ERR_SIG),
    .Q(TXD_3_OBUF_155)
  );
  ODDR2 #(
    .DDR_ALIGNMENT ( "C0" ),
    .SRTYPE ( "ASYNC" ),
    .INIT ( 1'b0 ))
  TX_EN_DDR (
    .D0(TX_EN_SIG_80),
    .D1(TX_EN_SIG_80),
    .C0(CLK_125_IO),
    .C1(CLK_125_IO_INV_44_o),
    .CE(DIR_OBUF_232),
    .R(TX_ERR_SIG),
    .S(TX_ERR_SIG),
    .Q(TX_EN_OBUF_157)
  );
  ODDR2 #(
    .DDR_ALIGNMENT ( "C0" ),
    .SRTYPE ( "ASYNC" ),
    .INIT ( 1'b0 ))
  TX_CLK_FWD (
    .D0(DIR_OBUF_232),
    .D1(TX_ERR_SIG),
    .C0(CLK_125_90),
    .C1(CLK_125_90_INV_46_o),
    .CE(DIR_OBUF_232),
    .R(TX_ERR_SIG),
    .S(TX_ERR_SIG),
    .Q(TXCLK_OBUF_158)
  );
  BUFG   \PHYMultiplier/clkout4_buf  (
    .O(CLK_125_90),
    .I(\PHYMultiplier/clkout3 )
  );
  BUFG   \PHYMultiplier/clkout3_buf  (
    .O(\NLW_PHYMultiplier/clkout3_buf_O_UNCONNECTED ),
    .I(\PHYMultiplier/clkout2 )
  );
  BUFG   \PHYMultiplier/clkout2_buf  (
    .O(CLK_125_IO),
    .I(\PHYMultiplier/clkout1 )
  );
  BUFG   \PHYMultiplier/clkout1_buf  (
    .O(CLK_125_FAB),
    .I(\PHYMultiplier/clkout0 )
  );
  BUFG   \PHYMultiplier/clkf_buf  (
    .O(\PHYMultiplier/clkfbout_buf ),
    .I(\PHYMultiplier/clkfbout )
  );
  IBUFG #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IBUF_DELAY_VALUE ( "0" ),
    .IBUF_LOW_PWR ( "TRUE" ),
    .IOSTANDARD ( "DEFAULT" ))
  \PHYMultiplier/clkin1_buf  (
    .I(clk25),
    .O(\PHYMultiplier/clkin1 )
  );
  XORCY   \fifo/Mcount_micDividerPos_xor<7>  (
    .CI(\fifo/Mcount_micDividerPos_cy [6]),
    .LI(\fifo/Mcount_micDividerPos_xor<7>_rt_1173 ),
    .O(\fifo/Result [7])
  );
  XORCY   \fifo/Mcount_micDividerPos_xor<6>  (
    .CI(\fifo/Mcount_micDividerPos_cy [5]),
    .LI(\fifo/Mcount_micDividerPos_cy<6>_rt_1157 ),
    .O(\fifo/Result [6])
  );
  MUXCY   \fifo/Mcount_micDividerPos_cy<6>  (
    .CI(\fifo/Mcount_micDividerPos_cy [5]),
    .DI(TX_ERR_SIG),
    .S(\fifo/Mcount_micDividerPos_cy<6>_rt_1157 ),
    .O(\fifo/Mcount_micDividerPos_cy [6])
  );
  XORCY   \fifo/Mcount_micDividerPos_xor<5>  (
    .CI(\fifo/Mcount_micDividerPos_cy [4]),
    .LI(\fifo/Mcount_micDividerPos_cy<5>_rt_1158 ),
    .O(\fifo/Result [5])
  );
  MUXCY   \fifo/Mcount_micDividerPos_cy<5>  (
    .CI(\fifo/Mcount_micDividerPos_cy [4]),
    .DI(TX_ERR_SIG),
    .S(\fifo/Mcount_micDividerPos_cy<5>_rt_1158 ),
    .O(\fifo/Mcount_micDividerPos_cy [5])
  );
  XORCY   \fifo/Mcount_micDividerPos_xor<4>  (
    .CI(\fifo/Mcount_micDividerPos_cy [3]),
    .LI(\fifo/Mcount_micDividerPos_cy<4>_rt_1159 ),
    .O(\fifo/Result [4])
  );
  MUXCY   \fifo/Mcount_micDividerPos_cy<4>  (
    .CI(\fifo/Mcount_micDividerPos_cy [3]),
    .DI(TX_ERR_SIG),
    .S(\fifo/Mcount_micDividerPos_cy<4>_rt_1159 ),
    .O(\fifo/Mcount_micDividerPos_cy [4])
  );
  XORCY   \fifo/Mcount_micDividerPos_xor<3>  (
    .CI(\fifo/Mcount_micDividerPos_cy [2]),
    .LI(\fifo/Mcount_micDividerPos_cy<3>_rt_1160 ),
    .O(\fifo/Result [3])
  );
  MUXCY   \fifo/Mcount_micDividerPos_cy<3>  (
    .CI(\fifo/Mcount_micDividerPos_cy [2]),
    .DI(TX_ERR_SIG),
    .S(\fifo/Mcount_micDividerPos_cy<3>_rt_1160 ),
    .O(\fifo/Mcount_micDividerPos_cy [3])
  );
  XORCY   \fifo/Mcount_micDividerPos_xor<2>  (
    .CI(\fifo/Mcount_micDividerPos_cy [1]),
    .LI(\fifo/Mcount_micDividerPos_cy<2>_rt_1161 ),
    .O(\fifo/Result [2])
  );
  MUXCY   \fifo/Mcount_micDividerPos_cy<2>  (
    .CI(\fifo/Mcount_micDividerPos_cy [1]),
    .DI(TX_ERR_SIG),
    .S(\fifo/Mcount_micDividerPos_cy<2>_rt_1161 ),
    .O(\fifo/Mcount_micDividerPos_cy [2])
  );
  XORCY   \fifo/Mcount_micDividerPos_xor<1>  (
    .CI(\fifo/Mcount_micDividerPos_cy [0]),
    .LI(\fifo/Mcount_micDividerPos_cy<1>_rt_1162 ),
    .O(\fifo/Result [1])
  );
  MUXCY   \fifo/Mcount_micDividerPos_cy<1>  (
    .CI(\fifo/Mcount_micDividerPos_cy [0]),
    .DI(TX_ERR_SIG),
    .S(\fifo/Mcount_micDividerPos_cy<1>_rt_1162 ),
    .O(\fifo/Mcount_micDividerPos_cy [1])
  );
  XORCY   \fifo/Mcount_micDividerPos_xor<0>  (
    .CI(TX_ERR_SIG),
    .LI(\fifo/Mcount_micDividerPos_lut [0]),
    .O(\fifo/Result [0])
  );
  MUXCY   \fifo/Mcount_micDividerPos_cy<0>  (
    .CI(TX_ERR_SIG),
    .DI(DIR_OBUF_232),
    .S(\fifo/Mcount_micDividerPos_lut [0]),
    .O(\fifo/Mcount_micDividerPos_cy [0])
  );
  XORCY   \fifo/Mcount_micDividerNeg_xor<7>  (
    .CI(\fifo/Mcount_micDividerNeg_cy [6]),
    .LI(\fifo/Mcount_micDividerNeg_xor<7>_rt_1174 ),
    .O(\fifo/Result<7>1 )
  );
  XORCY   \fifo/Mcount_micDividerNeg_xor<6>  (
    .CI(\fifo/Mcount_micDividerNeg_cy [5]),
    .LI(\fifo/Mcount_micDividerNeg_cy<6>_rt_1163 ),
    .O(\fifo/Result<6>1 )
  );
  MUXCY   \fifo/Mcount_micDividerNeg_cy<6>  (
    .CI(\fifo/Mcount_micDividerNeg_cy [5]),
    .DI(TX_ERR_SIG),
    .S(\fifo/Mcount_micDividerNeg_cy<6>_rt_1163 ),
    .O(\fifo/Mcount_micDividerNeg_cy [6])
  );
  XORCY   \fifo/Mcount_micDividerNeg_xor<5>  (
    .CI(\fifo/Mcount_micDividerNeg_cy [4]),
    .LI(\fifo/Mcount_micDividerNeg_cy<5>_rt_1164 ),
    .O(\fifo/Result<5>1 )
  );
  MUXCY   \fifo/Mcount_micDividerNeg_cy<5>  (
    .CI(\fifo/Mcount_micDividerNeg_cy [4]),
    .DI(TX_ERR_SIG),
    .S(\fifo/Mcount_micDividerNeg_cy<5>_rt_1164 ),
    .O(\fifo/Mcount_micDividerNeg_cy [5])
  );
  XORCY   \fifo/Mcount_micDividerNeg_xor<4>  (
    .CI(\fifo/Mcount_micDividerNeg_cy [3]),
    .LI(\fifo/Mcount_micDividerNeg_cy<4>_rt_1165 ),
    .O(\fifo/Result<4>1 )
  );
  MUXCY   \fifo/Mcount_micDividerNeg_cy<4>  (
    .CI(\fifo/Mcount_micDividerNeg_cy [3]),
    .DI(TX_ERR_SIG),
    .S(\fifo/Mcount_micDividerNeg_cy<4>_rt_1165 ),
    .O(\fifo/Mcount_micDividerNeg_cy [4])
  );
  XORCY   \fifo/Mcount_micDividerNeg_xor<3>  (
    .CI(\fifo/Mcount_micDividerNeg_cy [2]),
    .LI(\fifo/Mcount_micDividerNeg_cy<3>_rt_1166 ),
    .O(\fifo/Result<3>2 )
  );
  MUXCY   \fifo/Mcount_micDividerNeg_cy<3>  (
    .CI(\fifo/Mcount_micDividerNeg_cy [2]),
    .DI(TX_ERR_SIG),
    .S(\fifo/Mcount_micDividerNeg_cy<3>_rt_1166 ),
    .O(\fifo/Mcount_micDividerNeg_cy [3])
  );
  XORCY   \fifo/Mcount_micDividerNeg_xor<2>  (
    .CI(\fifo/Mcount_micDividerNeg_cy [1]),
    .LI(\fifo/Mcount_micDividerNeg_cy<2>_rt_1167 ),
    .O(\fifo/Result<2>2 )
  );
  MUXCY   \fifo/Mcount_micDividerNeg_cy<2>  (
    .CI(\fifo/Mcount_micDividerNeg_cy [1]),
    .DI(TX_ERR_SIG),
    .S(\fifo/Mcount_micDividerNeg_cy<2>_rt_1167 ),
    .O(\fifo/Mcount_micDividerNeg_cy [2])
  );
  XORCY   \fifo/Mcount_micDividerNeg_xor<1>  (
    .CI(\fifo/Mcount_micDividerNeg_cy [0]),
    .LI(\fifo/Mcount_micDividerNeg_cy<1>_rt_1168 ),
    .O(\fifo/Result<1>2 )
  );
  MUXCY   \fifo/Mcount_micDividerNeg_cy<1>  (
    .CI(\fifo/Mcount_micDividerNeg_cy [0]),
    .DI(TX_ERR_SIG),
    .S(\fifo/Mcount_micDividerNeg_cy<1>_rt_1168 ),
    .O(\fifo/Mcount_micDividerNeg_cy [1])
  );
  XORCY   \fifo/Mcount_micDividerNeg_xor<0>  (
    .CI(TX_ERR_SIG),
    .LI(\fifo/Mcount_micDividerNeg_lut [0]),
    .O(\fifo/Result<0>2 )
  );
  MUXCY   \fifo/Mcount_micDividerNeg_cy<0>  (
    .CI(TX_ERR_SIG),
    .DI(DIR_OBUF_232),
    .S(\fifo/Mcount_micDividerNeg_lut [0]),
    .O(\fifo/Mcount_micDividerNeg_cy [0])
  );
  LUT6 #(
    .INIT ( 64'h028A46CE139B57DF ))
  \fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_71  (
    .I0(\fifo/byteCounter [0]),
    .I1(\fifo/byteCounter [1]),
    .I2(\fifo/fifoData [72]),
    .I3(\fifo/fifoData [88]),
    .I4(\fifo/fifoData [80]),
    .I5(\fifo/fifoData [64]),
    .O(\fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_71_496 )
  );
  LUT5 #(
    .INIT ( 32'h151FB5BF ))
  \fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_61  (
    .I0(\fifo/byteCounter [0]),
    .I1(\fifo/fifoData [17]),
    .I2(\fifo/byteCounter [1]),
    .I3(\fifo/fifoData [9]),
    .I4(\fifo/fifoData [25]),
    .O(\fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_61_497 )
  );
  LUT6 #(
    .INIT ( 64'h028A46CE139B57DF ))
  \fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_72  (
    .I0(\fifo/byteCounter [0]),
    .I1(\fifo/byteCounter [1]),
    .I2(\fifo/fifoData [41]),
    .I3(\fifo/fifoData [57]),
    .I4(\fifo/fifoData [49]),
    .I5(\fifo/fifoData [33]),
    .O(\fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_72_498 )
  );
  LUT6 #(
    .INIT ( 64'h028A46CE139B57DF ))
  \fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_73  (
    .I0(\fifo/byteCounter [0]),
    .I1(\fifo/byteCounter [1]),
    .I2(\fifo/fifoData [73]),
    .I3(\fifo/fifoData [89]),
    .I4(\fifo/fifoData [81]),
    .I5(\fifo/fifoData [65]),
    .O(\fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_73_499 )
  );
  LUT5 #(
    .INIT ( 32'h151FB5BF ))
  \fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_62  (
    .I0(\fifo/byteCounter [0]),
    .I1(\fifo/fifoData [18]),
    .I2(\fifo/byteCounter [1]),
    .I3(\fifo/fifoData [10]),
    .I4(\fifo/fifoData [26]),
    .O(\fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_62_500 )
  );
  LUT6 #(
    .INIT ( 64'h028A46CE139B57DF ))
  \fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_74  (
    .I0(\fifo/byteCounter [0]),
    .I1(\fifo/byteCounter [1]),
    .I2(\fifo/fifoData [42]),
    .I3(\fifo/fifoData [58]),
    .I4(\fifo/fifoData [50]),
    .I5(\fifo/fifoData [34]),
    .O(\fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_74_501 )
  );
  LUT6 #(
    .INIT ( 64'h028A46CE139B57DF ))
  \fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_75  (
    .I0(\fifo/byteCounter [0]),
    .I1(\fifo/byteCounter [1]),
    .I2(\fifo/fifoData [74]),
    .I3(\fifo/fifoData [90]),
    .I4(\fifo/fifoData [82]),
    .I5(\fifo/fifoData [66]),
    .O(\fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_75_502 )
  );
  LUT5 #(
    .INIT ( 32'h151FB5BF ))
  \fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_63  (
    .I0(\fifo/byteCounter [0]),
    .I1(\fifo/fifoData [19]),
    .I2(\fifo/byteCounter [1]),
    .I3(\fifo/fifoData [11]),
    .I4(\fifo/fifoData [27]),
    .O(\fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_63_503 )
  );
  LUT6 #(
    .INIT ( 64'h028A46CE139B57DF ))
  \fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_76  (
    .I0(\fifo/byteCounter [0]),
    .I1(\fifo/byteCounter [1]),
    .I2(\fifo/fifoData [43]),
    .I3(\fifo/fifoData [59]),
    .I4(\fifo/fifoData [51]),
    .I5(\fifo/fifoData [35]),
    .O(\fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_76_504 )
  );
  LUT6 #(
    .INIT ( 64'h028A46CE139B57DF ))
  \fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_77  (
    .I0(\fifo/byteCounter [0]),
    .I1(\fifo/byteCounter [1]),
    .I2(\fifo/fifoData [75]),
    .I3(\fifo/fifoData [91]),
    .I4(\fifo/fifoData [83]),
    .I5(\fifo/fifoData [67]),
    .O(\fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_77_505 )
  );
  LUT5 #(
    .INIT ( 32'h151FB5BF ))
  \fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_64  (
    .I0(\fifo/byteCounter [0]),
    .I1(\fifo/fifoData [20]),
    .I2(\fifo/byteCounter [1]),
    .I3(\fifo/fifoData [12]),
    .I4(\fifo/fifoData [28]),
    .O(\fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_64_506 )
  );
  LUT6 #(
    .INIT ( 64'h028A46CE139B57DF ))
  \fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_78  (
    .I0(\fifo/byteCounter [0]),
    .I1(\fifo/byteCounter [1]),
    .I2(\fifo/fifoData [44]),
    .I3(\fifo/fifoData [60]),
    .I4(\fifo/fifoData [52]),
    .I5(\fifo/fifoData [36]),
    .O(\fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_78_507 )
  );
  LUT6 #(
    .INIT ( 64'h028A46CE139B57DF ))
  \fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_79  (
    .I0(\fifo/byteCounter [0]),
    .I1(\fifo/byteCounter [1]),
    .I2(\fifo/fifoData [76]),
    .I3(\fifo/fifoData [92]),
    .I4(\fifo/fifoData [84]),
    .I5(\fifo/fifoData [68]),
    .O(\fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_79_508 )
  );
  LUT5 #(
    .INIT ( 32'h151FB5BF ))
  \fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_65  (
    .I0(\fifo/byteCounter [0]),
    .I1(\fifo/fifoData [21]),
    .I2(\fifo/byteCounter [1]),
    .I3(\fifo/fifoData [13]),
    .I4(\fifo/fifoData [29]),
    .O(\fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_65_509 )
  );
  LUT6 #(
    .INIT ( 64'h028A46CE139B57DF ))
  \fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_710  (
    .I0(\fifo/byteCounter [0]),
    .I1(\fifo/byteCounter [1]),
    .I2(\fifo/fifoData [45]),
    .I3(\fifo/fifoData [61]),
    .I4(\fifo/fifoData [53]),
    .I5(\fifo/fifoData [37]),
    .O(\fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_710_510 )
  );
  LUT6 #(
    .INIT ( 64'h028A46CE139B57DF ))
  \fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_711  (
    .I0(\fifo/byteCounter [0]),
    .I1(\fifo/byteCounter [1]),
    .I2(\fifo/fifoData [77]),
    .I3(\fifo/fifoData [93]),
    .I4(\fifo/fifoData [85]),
    .I5(\fifo/fifoData [69]),
    .O(\fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_711_511 )
  );
  LUT5 #(
    .INIT ( 32'h151FB5BF ))
  \fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_66  (
    .I0(\fifo/byteCounter [0]),
    .I1(\fifo/fifoData [22]),
    .I2(\fifo/byteCounter [1]),
    .I3(\fifo/fifoData [14]),
    .I4(\fifo/fifoData [30]),
    .O(\fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_66_512 )
  );
  LUT6 #(
    .INIT ( 64'h028A46CE139B57DF ))
  \fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_712  (
    .I0(\fifo/byteCounter [0]),
    .I1(\fifo/byteCounter [1]),
    .I2(\fifo/fifoData [46]),
    .I3(\fifo/fifoData [62]),
    .I4(\fifo/fifoData [54]),
    .I5(\fifo/fifoData [38]),
    .O(\fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_712_513 )
  );
  LUT6 #(
    .INIT ( 64'h028A46CE139B57DF ))
  \fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_713  (
    .I0(\fifo/byteCounter [0]),
    .I1(\fifo/byteCounter [1]),
    .I2(\fifo/fifoData [78]),
    .I3(\fifo/fifoData [94]),
    .I4(\fifo/fifoData [86]),
    .I5(\fifo/fifoData [70]),
    .O(\fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_713_514 )
  );
  LUT5 #(
    .INIT ( 32'h151FB5BF ))
  \fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_67  (
    .I0(\fifo/byteCounter [0]),
    .I1(\fifo/fifoData [23]),
    .I2(\fifo/byteCounter [1]),
    .I3(\fifo/fifoData [15]),
    .I4(\fifo/fifoData [31]),
    .O(\fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_67_515 )
  );
  LUT6 #(
    .INIT ( 64'h028A46CE139B57DF ))
  \fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_714  (
    .I0(\fifo/byteCounter [0]),
    .I1(\fifo/byteCounter [1]),
    .I2(\fifo/fifoData [47]),
    .I3(\fifo/fifoData [63]),
    .I4(\fifo/fifoData [55]),
    .I5(\fifo/fifoData [39]),
    .O(\fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_714_516 )
  );
  LUT6 #(
    .INIT ( 64'h028A46CE139B57DF ))
  \fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_715  (
    .I0(\fifo/byteCounter [0]),
    .I1(\fifo/byteCounter [1]),
    .I2(\fifo/fifoData [79]),
    .I3(\fifo/fifoData [95]),
    .I4(\fifo/fifoData [87]),
    .I5(\fifo/fifoData [71]),
    .O(\fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_715_517 )
  );
  FDSE #(
    .INIT ( 1'b1 ))
  \fifo/byteCounter_3  (
    .C(CLK_125_FAB),
    .CE(fifoEn_79),
    .D(\fifo/Result<3>1 ),
    .S(\fifo/enable_byteCounter[3]_AND_1_o ),
    .Q(\fifo/byteCounter [3])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \fifo/micDividerNeg_7  (
    .C(\fifo/clk_inv ),
    .D(\fifo/Result<7>1 ),
    .R(\fifo/GND_8_o_GND_8_o_equal_7_o ),
    .Q(\fifo/micDividerNeg [7])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \fifo/micDividerNeg_6  (
    .C(\fifo/clk_inv ),
    .D(\fifo/Result<6>1 ),
    .R(\fifo/GND_8_o_GND_8_o_equal_7_o ),
    .Q(\fifo/micDividerNeg [6])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \fifo/micDividerNeg_0  (
    .C(\fifo/clk_inv ),
    .D(\fifo/Result<0>2 ),
    .R(\fifo/GND_8_o_GND_8_o_equal_7_o ),
    .Q(\fifo/micDividerNeg [0])
  );
  FDSE #(
    .INIT ( 1'b1 ))
  \fifo/byteCounter_1  (
    .C(CLK_125_FAB),
    .CE(fifoEn_79),
    .D(\fifo/Result<1>1 ),
    .S(\fifo/enable_byteCounter[3]_AND_1_o ),
    .Q(\fifo/byteCounter [1])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \fifo/byteCounter_2  (
    .C(CLK_125_FAB),
    .CE(fifoEn_79),
    .D(\fifo/Result<2>1 ),
    .R(\fifo/enable_byteCounter[3]_AND_1_o ),
    .Q(\fifo/byteCounter [2])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \fifo/micDividerPos_7  (
    .C(CLK_125_FAB),
    .D(\fifo/Result [7]),
    .R(\fifo/GND_8_o_GND_8_o_equal_2_o ),
    .Q(\fifo/micDividerPos [7])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \fifo/micDividerPos_6  (
    .C(CLK_125_FAB),
    .D(\fifo/Result [6]),
    .R(\fifo/GND_8_o_GND_8_o_equal_2_o ),
    .Q(\fifo/micDividerPos [6])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \fifo/micDividerPos_5  (
    .C(CLK_125_FAB),
    .D(\fifo/Result [5]),
    .R(\fifo/GND_8_o_GND_8_o_equal_2_o ),
    .Q(\fifo/micDividerPos [5])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \fifo/micDividerPos_4  (
    .C(CLK_125_FAB),
    .D(\fifo/Result [4]),
    .R(\fifo/GND_8_o_GND_8_o_equal_2_o ),
    .Q(\fifo/micDividerPos [4])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \fifo/micDividerPos_3  (
    .C(CLK_125_FAB),
    .D(\fifo/Result [3]),
    .R(\fifo/GND_8_o_GND_8_o_equal_2_o ),
    .Q(\fifo/micDividerPos [3])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \fifo/micDividerPos_2  (
    .C(CLK_125_FAB),
    .D(\fifo/Result [2]),
    .R(\fifo/GND_8_o_GND_8_o_equal_2_o ),
    .Q(\fifo/micDividerPos [2])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \fifo/micDividerPos_1  (
    .C(CLK_125_FAB),
    .D(\fifo/Result [1]),
    .R(\fifo/GND_8_o_GND_8_o_equal_2_o ),
    .Q(\fifo/micDividerPos [1])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \fifo/micDividerPos_0  (
    .C(CLK_125_FAB),
    .D(\fifo/Result [0]),
    .R(\fifo/GND_8_o_GND_8_o_equal_2_o ),
    .Q(\fifo/micDividerPos [0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \fifo/data_7  (
    .C(CLK_125_FAB),
    .CE(fifoEn_79),
    .D(\fifo/data[7]_fifoData[7]_mux_28_OUT<7> ),
    .Q(\fifo/data [7])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \fifo/data_6  (
    .C(CLK_125_FAB),
    .CE(fifoEn_79),
    .D(\fifo/data[7]_fifoData[7]_mux_28_OUT<6> ),
    .Q(\fifo/data [6])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \fifo/data_5  (
    .C(CLK_125_FAB),
    .CE(fifoEn_79),
    .D(\fifo/data[7]_fifoData[7]_mux_28_OUT<5> ),
    .Q(\fifo/data [5])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \fifo/data_4  (
    .C(CLK_125_FAB),
    .CE(fifoEn_79),
    .D(\fifo/data[7]_fifoData[7]_mux_28_OUT<4> ),
    .Q(\fifo/data [4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \fifo/data_3  (
    .C(CLK_125_FAB),
    .CE(fifoEn_79),
    .D(\fifo/data[7]_fifoData[7]_mux_28_OUT<3> ),
    .Q(\fifo/data [3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \fifo/data_2  (
    .C(CLK_125_FAB),
    .CE(fifoEn_79),
    .D(\fifo/data[7]_fifoData[7]_mux_28_OUT<2> ),
    .Q(\fifo/data [2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \fifo/data_1  (
    .C(CLK_125_FAB),
    .CE(fifoEn_79),
    .D(\fifo/data[7]_fifoData[7]_mux_28_OUT<1> ),
    .Q(\fifo/data [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \fifo/data_0  (
    .C(CLK_125_FAB),
    .CE(fifoEn_79),
    .D(\fifo/data[7]_fifoData[7]_mux_28_OUT<0> ),
    .Q(\fifo/data [0])
  );
  FDE   \fifo/fifoData_95  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [95]),
    .Q(\fifo/fifoData [95])
  );
  FDE   \fifo/fifoData_94  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [94]),
    .Q(\fifo/fifoData [94])
  );
  FDE   \fifo/fifoData_93  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [93]),
    .Q(\fifo/fifoData [93])
  );
  FDE   \fifo/fifoData_92  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [92]),
    .Q(\fifo/fifoData [92])
  );
  FDE   \fifo/fifoData_91  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [91]),
    .Q(\fifo/fifoData [91])
  );
  FDE   \fifo/fifoData_90  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [90]),
    .Q(\fifo/fifoData [90])
  );
  FDE   \fifo/fifoData_89  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [89]),
    .Q(\fifo/fifoData [89])
  );
  FDE   \fifo/fifoData_88  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [88]),
    .Q(\fifo/fifoData [88])
  );
  FDE   \fifo/fifoData_87  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [87]),
    .Q(\fifo/fifoData [87])
  );
  FDE   \fifo/fifoData_86  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [86]),
    .Q(\fifo/fifoData [86])
  );
  FDE   \fifo/fifoData_85  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [85]),
    .Q(\fifo/fifoData [85])
  );
  FDE   \fifo/fifoData_84  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [84]),
    .Q(\fifo/fifoData [84])
  );
  FDE   \fifo/fifoData_83  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [83]),
    .Q(\fifo/fifoData [83])
  );
  FDE   \fifo/fifoData_82  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [82]),
    .Q(\fifo/fifoData [82])
  );
  FDE   \fifo/fifoData_81  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [81]),
    .Q(\fifo/fifoData [81])
  );
  FDE   \fifo/fifoData_80  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [80]),
    .Q(\fifo/fifoData [80])
  );
  FDE   \fifo/fifoData_79  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [79]),
    .Q(\fifo/fifoData [79])
  );
  FDE   \fifo/fifoData_78  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [78]),
    .Q(\fifo/fifoData [78])
  );
  FDE   \fifo/fifoData_77  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [77]),
    .Q(\fifo/fifoData [77])
  );
  FDE   \fifo/fifoData_76  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [76]),
    .Q(\fifo/fifoData [76])
  );
  FDE   \fifo/fifoData_75  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [75]),
    .Q(\fifo/fifoData [75])
  );
  FDE   \fifo/fifoData_74  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [74]),
    .Q(\fifo/fifoData [74])
  );
  FDE   \fifo/fifoData_73  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [73]),
    .Q(\fifo/fifoData [73])
  );
  FDE   \fifo/fifoData_72  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [72]),
    .Q(\fifo/fifoData [72])
  );
  FDE   \fifo/fifoData_71  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [71]),
    .Q(\fifo/fifoData [71])
  );
  FDE   \fifo/fifoData_70  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [70]),
    .Q(\fifo/fifoData [70])
  );
  FDE   \fifo/fifoData_69  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [69]),
    .Q(\fifo/fifoData [69])
  );
  FDE   \fifo/fifoData_68  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [68]),
    .Q(\fifo/fifoData [68])
  );
  FDE   \fifo/fifoData_67  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [67]),
    .Q(\fifo/fifoData [67])
  );
  FDE   \fifo/fifoData_66  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [66]),
    .Q(\fifo/fifoData [66])
  );
  FDE   \fifo/fifoData_65  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [65]),
    .Q(\fifo/fifoData [65])
  );
  FDE   \fifo/fifoData_64  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [64]),
    .Q(\fifo/fifoData [64])
  );
  FDE   \fifo/fifoData_63  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [63]),
    .Q(\fifo/fifoData [63])
  );
  FDE   \fifo/fifoData_62  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [62]),
    .Q(\fifo/fifoData [62])
  );
  FDE   \fifo/fifoData_61  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [61]),
    .Q(\fifo/fifoData [61])
  );
  FDE   \fifo/fifoData_60  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [60]),
    .Q(\fifo/fifoData [60])
  );
  FDE   \fifo/fifoData_59  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [59]),
    .Q(\fifo/fifoData [59])
  );
  FDE   \fifo/fifoData_58  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [58]),
    .Q(\fifo/fifoData [58])
  );
  FDE   \fifo/fifoData_57  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [57]),
    .Q(\fifo/fifoData [57])
  );
  FDE   \fifo/fifoData_56  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [56]),
    .Q(\fifo/fifoData [56])
  );
  FDE   \fifo/fifoData_55  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [55]),
    .Q(\fifo/fifoData [55])
  );
  FDE   \fifo/fifoData_54  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [54]),
    .Q(\fifo/fifoData [54])
  );
  FDE   \fifo/fifoData_53  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [53]),
    .Q(\fifo/fifoData [53])
  );
  FDE   \fifo/fifoData_52  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [52]),
    .Q(\fifo/fifoData [52])
  );
  FDE   \fifo/fifoData_51  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [51]),
    .Q(\fifo/fifoData [51])
  );
  FDE   \fifo/fifoData_50  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [50]),
    .Q(\fifo/fifoData [50])
  );
  FDE   \fifo/fifoData_49  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [49]),
    .Q(\fifo/fifoData [49])
  );
  FDE   \fifo/fifoData_48  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [48]),
    .Q(\fifo/fifoData [48])
  );
  FDE   \fifo/fifoData_47  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [47]),
    .Q(\fifo/fifoData [47])
  );
  FDE   \fifo/fifoData_46  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [46]),
    .Q(\fifo/fifoData [46])
  );
  FDE   \fifo/fifoData_45  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [45]),
    .Q(\fifo/fifoData [45])
  );
  FDE   \fifo/fifoData_44  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [44]),
    .Q(\fifo/fifoData [44])
  );
  FDE   \fifo/fifoData_43  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [43]),
    .Q(\fifo/fifoData [43])
  );
  FDE   \fifo/fifoData_42  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [42]),
    .Q(\fifo/fifoData [42])
  );
  FDE   \fifo/fifoData_41  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [41]),
    .Q(\fifo/fifoData [41])
  );
  FDE   \fifo/fifoData_40  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [40]),
    .Q(\fifo/fifoData [40])
  );
  FDE   \fifo/fifoData_39  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [39]),
    .Q(\fifo/fifoData [39])
  );
  FDE   \fifo/fifoData_38  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [38]),
    .Q(\fifo/fifoData [38])
  );
  FDE   \fifo/fifoData_37  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [37]),
    .Q(\fifo/fifoData [37])
  );
  FDE   \fifo/fifoData_36  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [36]),
    .Q(\fifo/fifoData [36])
  );
  FDE   \fifo/fifoData_35  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [35]),
    .Q(\fifo/fifoData [35])
  );
  FDE   \fifo/fifoData_34  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [34]),
    .Q(\fifo/fifoData [34])
  );
  FDE   \fifo/fifoData_33  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [33]),
    .Q(\fifo/fifoData [33])
  );
  FDE   \fifo/fifoData_32  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [32]),
    .Q(\fifo/fifoData [32])
  );
  FDE   \fifo/fifoData_31  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [31]),
    .Q(\fifo/fifoData [31])
  );
  FDE   \fifo/fifoData_30  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [30]),
    .Q(\fifo/fifoData [30])
  );
  FDE   \fifo/fifoData_29  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [29]),
    .Q(\fifo/fifoData [29])
  );
  FDE   \fifo/fifoData_28  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [28]),
    .Q(\fifo/fifoData [28])
  );
  FDE   \fifo/fifoData_27  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [27]),
    .Q(\fifo/fifoData [27])
  );
  FDE   \fifo/fifoData_26  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [26]),
    .Q(\fifo/fifoData [26])
  );
  FDE   \fifo/fifoData_25  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [25]),
    .Q(\fifo/fifoData [25])
  );
  FDE   \fifo/fifoData_24  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [24]),
    .Q(\fifo/fifoData [24])
  );
  FDE   \fifo/fifoData_23  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [23]),
    .Q(\fifo/fifoData [23])
  );
  FDE   \fifo/fifoData_22  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [22]),
    .Q(\fifo/fifoData [22])
  );
  FDE   \fifo/fifoData_21  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [21]),
    .Q(\fifo/fifoData [21])
  );
  FDE   \fifo/fifoData_20  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [20]),
    .Q(\fifo/fifoData [20])
  );
  FDE   \fifo/fifoData_19  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [19]),
    .Q(\fifo/fifoData [19])
  );
  FDE   \fifo/fifoData_18  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [18]),
    .Q(\fifo/fifoData [18])
  );
  FDE   \fifo/fifoData_17  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [17]),
    .Q(\fifo/fifoData [17])
  );
  FDE   \fifo/fifoData_16  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [16]),
    .Q(\fifo/fifoData [16])
  );
  FDE   \fifo/fifoData_15  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [15]),
    .Q(\fifo/fifoData [15])
  );
  FDE   \fifo/fifoData_14  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [14]),
    .Q(\fifo/fifoData [14])
  );
  FDE   \fifo/fifoData_13  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [13]),
    .Q(\fifo/fifoData [13])
  );
  FDE   \fifo/fifoData_12  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [12]),
    .Q(\fifo/fifoData [12])
  );
  FDE   \fifo/fifoData_11  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [11]),
    .Q(\fifo/fifoData [11])
  );
  FDE   \fifo/fifoData_10  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [10]),
    .Q(\fifo/fifoData [10])
  );
  FDE   \fifo/fifoData_9  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [9]),
    .Q(\fifo/fifoData [9])
  );
  FDE   \fifo/fifoData_8  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [8]),
    .Q(\fifo/fifoData [8])
  );
  FDE   \fifo/fifoData_7  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [7]),
    .Q(\fifo/fifoData [7])
  );
  FDE   \fifo/fifoData_6  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [6]),
    .Q(\fifo/fifoData [6])
  );
  FDE   \fifo/fifoData_5  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [5]),
    .Q(\fifo/fifoData [5])
  );
  FDE   \fifo/fifoData_4  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [4]),
    .Q(\fifo/fifoData [4])
  );
  FDE   \fifo/fifoData_3  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [3]),
    .Q(\fifo/fifoData [3])
  );
  FDE   \fifo/fifoData_2  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [2]),
    .Q(\fifo/fifoData [2])
  );
  FDE   \fifo/fifoData_1  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [1]),
    .Q(\fifo/fifoData [1])
  );
  FDE   \fifo/fifoData_0  (
    .C(CLK_125_FAB),
    .CE(\fifo/rd_en_663 ),
    .D(\fifo/dout [0]),
    .Q(\fifo/fifoData [0])
  );
  FD #(
    .INIT ( 1'b0 ))
  \fifo/pMicClk_11  (
    .C(CLK_125_FAB),
    .D(\fifo/pMicClk [10]),
    .Q(\fifo/pMicClk [11])
  );
  FD #(
    .INIT ( 1'b0 ))
  \fifo/pMicClk_10  (
    .C(CLK_125_FAB),
    .D(\fifo/pMicClk [9]),
    .Q(\fifo/pMicClk [10])
  );
  FD #(
    .INIT ( 1'b0 ))
  \fifo/pMicClk_9  (
    .C(CLK_125_FAB),
    .D(\fifo/pMicClk [8]),
    .Q(\fifo/pMicClk [9])
  );
  FD #(
    .INIT ( 1'b0 ))
  \fifo/pMicClk_8  (
    .C(CLK_125_FAB),
    .D(\fifo/pMicClk [7]),
    .Q(\fifo/pMicClk [8])
  );
  FD #(
    .INIT ( 1'b0 ))
  \fifo/pMicClk_7  (
    .C(CLK_125_FAB),
    .D(\fifo/pMicClk [6]),
    .Q(\fifo/pMicClk [7])
  );
  FD #(
    .INIT ( 1'b0 ))
  \fifo/pMicClk_6  (
    .C(CLK_125_FAB),
    .D(\fifo/pMicClk [5]),
    .Q(\fifo/pMicClk [6])
  );
  FD #(
    .INIT ( 1'b0 ))
  \fifo/pMicClk_5  (
    .C(CLK_125_FAB),
    .D(\fifo/pMicClk [4]),
    .Q(\fifo/pMicClk [5])
  );
  FD #(
    .INIT ( 1'b0 ))
  \fifo/pMicClk_4  (
    .C(CLK_125_FAB),
    .D(\fifo/pMicClk [3]),
    .Q(\fifo/pMicClk [4])
  );
  FD #(
    .INIT ( 1'b0 ))
  \fifo/pMicClk_3  (
    .C(CLK_125_FAB),
    .D(\fifo/pMicClk [2]),
    .Q(\fifo/pMicClk [3])
  );
  FD #(
    .INIT ( 1'b0 ))
  \fifo/pMicClk_2  (
    .C(CLK_125_FAB),
    .D(\fifo/pMicClk [1]),
    .Q(\fifo/pMicClk [2])
  );
  FD #(
    .INIT ( 1'b0 ))
  \fifo/pMicClk_1  (
    .C(CLK_125_FAB),
    .D(\fifo/pMicClk [0]),
    .Q(\fifo/pMicClk [1])
  );
  FD #(
    .INIT ( 1'b0 ))
  \fifo/pMicClk_0  (
    .C(CLK_125_FAB),
    .D(P6D_CLK_OBUF_1293),
    .Q(\fifo/pMicClk [0])
  );
  FD_1 #(
    .INIT ( 1'b0 ))
  \fifo/micR_47  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P1D_7_IBUF_4),
    .Q(\fifo/micR [47])
  );
  FD_1 #(
    .INIT ( 1'b0 ))
  \fifo/micR_46  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P1D_6_IBUF_5),
    .Q(\fifo/micR [46])
  );
  FD_1 #(
    .INIT ( 1'b0 ))
  \fifo/micR_45  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P1D_5_IBUF_6),
    .Q(\fifo/micR [45])
  );
  FD_1 #(
    .INIT ( 1'b0 ))
  \fifo/micR_44  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P1D_4_IBUF_7),
    .Q(\fifo/micR [44])
  );
  FD_1 #(
    .INIT ( 1'b0 ))
  \fifo/micR_43  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P1D_3_IBUF_8),
    .Q(\fifo/micR [43])
  );
  FD_1 #(
    .INIT ( 1'b0 ))
  \fifo/micR_42  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P1D_2_IBUF_9),
    .Q(\fifo/micR [42])
  );
  FD_1 #(
    .INIT ( 1'b0 ))
  \fifo/micR_41  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P1D_1_IBUF_10),
    .Q(\fifo/micR [41])
  );
  FD_1 #(
    .INIT ( 1'b0 ))
  \fifo/micR_40  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P1D_0_IBUF_11),
    .Q(\fifo/micR [40])
  );
  FD_1 #(
    .INIT ( 1'b0 ))
  \fifo/micR_39  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P2D_7_IBUF_12),
    .Q(\fifo/micR [39])
  );
  FD_1 #(
    .INIT ( 1'b0 ))
  \fifo/micR_38  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P2D_6_IBUF_13),
    .Q(\fifo/micR [38])
  );
  FD_1 #(
    .INIT ( 1'b0 ))
  \fifo/micR_37  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P2D_5_IBUF_14),
    .Q(\fifo/micR [37])
  );
  FD_1 #(
    .INIT ( 1'b0 ))
  \fifo/micR_36  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P2D_4_IBUF_15),
    .Q(\fifo/micR [36])
  );
  FD_1 #(
    .INIT ( 1'b0 ))
  \fifo/micR_35  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P2D_3_IBUF_16),
    .Q(\fifo/micR [35])
  );
  FD_1 #(
    .INIT ( 1'b0 ))
  \fifo/micR_34  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P2D_2_IBUF_17),
    .Q(\fifo/micR [34])
  );
  FD_1 #(
    .INIT ( 1'b0 ))
  \fifo/micR_33  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P2D_1_IBUF_18),
    .Q(\fifo/micR [33])
  );
  FD_1 #(
    .INIT ( 1'b0 ))
  \fifo/micR_32  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P2D_0_IBUF_19),
    .Q(\fifo/micR [32])
  );
  FD_1 #(
    .INIT ( 1'b0 ))
  \fifo/micR_31  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P3D_7_IBUF_20),
    .Q(\fifo/micR [31])
  );
  FD_1 #(
    .INIT ( 1'b0 ))
  \fifo/micR_30  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P3D_6_IBUF_21),
    .Q(\fifo/micR [30])
  );
  FD_1 #(
    .INIT ( 1'b0 ))
  \fifo/micR_29  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P3D_5_IBUF_22),
    .Q(\fifo/micR [29])
  );
  FD_1 #(
    .INIT ( 1'b0 ))
  \fifo/micR_28  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P3D_4_IBUF_23),
    .Q(\fifo/micR [28])
  );
  FD_1 #(
    .INIT ( 1'b0 ))
  \fifo/micR_27  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P3D_3_IBUF_24),
    .Q(\fifo/micR [27])
  );
  FD_1 #(
    .INIT ( 1'b0 ))
  \fifo/micR_26  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P3D_2_IBUF_25),
    .Q(\fifo/micR [26])
  );
  FD_1 #(
    .INIT ( 1'b0 ))
  \fifo/micR_25  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P3D_1_IBUF_26),
    .Q(\fifo/micR [25])
  );
  FD_1 #(
    .INIT ( 1'b0 ))
  \fifo/micR_24  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P3D_0_IBUF_27),
    .Q(\fifo/micR [24])
  );
  FD_1 #(
    .INIT ( 1'b0 ))
  \fifo/micR_23  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P4D_7_IBUF_28),
    .Q(\fifo/micR [23])
  );
  FD_1 #(
    .INIT ( 1'b0 ))
  \fifo/micR_22  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P4D_6_IBUF_29),
    .Q(\fifo/micR [22])
  );
  FD_1 #(
    .INIT ( 1'b0 ))
  \fifo/micR_21  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P4D_5_IBUF_30),
    .Q(\fifo/micR [21])
  );
  FD_1 #(
    .INIT ( 1'b0 ))
  \fifo/micR_20  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P4D_4_IBUF_31),
    .Q(\fifo/micR [20])
  );
  FD_1 #(
    .INIT ( 1'b0 ))
  \fifo/micR_19  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P4D_3_IBUF_32),
    .Q(\fifo/micR [19])
  );
  FD_1 #(
    .INIT ( 1'b0 ))
  \fifo/micR_18  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P4D_2_IBUF_33),
    .Q(\fifo/micR [18])
  );
  FD_1 #(
    .INIT ( 1'b0 ))
  \fifo/micR_17  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P4D_1_IBUF_34),
    .Q(\fifo/micR [17])
  );
  FD_1 #(
    .INIT ( 1'b0 ))
  \fifo/micR_16  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P4D_0_IBUF_35),
    .Q(\fifo/micR [16])
  );
  FD_1 #(
    .INIT ( 1'b0 ))
  \fifo/micR_15  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P5D_7_IBUF_36),
    .Q(\fifo/micR [15])
  );
  FD_1 #(
    .INIT ( 1'b0 ))
  \fifo/micR_14  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P5D_6_IBUF_37),
    .Q(\fifo/micR [14])
  );
  FD_1 #(
    .INIT ( 1'b0 ))
  \fifo/micR_13  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P5D_5_IBUF_38),
    .Q(\fifo/micR [13])
  );
  FD_1 #(
    .INIT ( 1'b0 ))
  \fifo/micR_12  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P5D_4_IBUF_39),
    .Q(\fifo/micR [12])
  );
  FD_1 #(
    .INIT ( 1'b0 ))
  \fifo/micR_11  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P5D_3_IBUF_40),
    .Q(\fifo/micR [11])
  );
  FD_1 #(
    .INIT ( 1'b0 ))
  \fifo/micR_10  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P5D_2_IBUF_41),
    .Q(\fifo/micR [10])
  );
  FD_1 #(
    .INIT ( 1'b0 ))
  \fifo/micR_9  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P5D_1_IBUF_42),
    .Q(\fifo/micR [9])
  );
  FD_1 #(
    .INIT ( 1'b0 ))
  \fifo/micR_8  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P5D_0_IBUF_43),
    .Q(\fifo/micR [8])
  );
  FD_1 #(
    .INIT ( 1'b0 ))
  \fifo/micR_7  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P6D_7_IBUF_44),
    .Q(\fifo/micR [7])
  );
  FD_1 #(
    .INIT ( 1'b0 ))
  \fifo/micR_6  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P6D_6_IBUF_45),
    .Q(\fifo/micR [6])
  );
  FD_1 #(
    .INIT ( 1'b0 ))
  \fifo/micR_5  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P6D_5_IBUF_46),
    .Q(\fifo/micR [5])
  );
  FD_1 #(
    .INIT ( 1'b0 ))
  \fifo/micR_4  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P6D_4_IBUF_47),
    .Q(\fifo/micR [4])
  );
  FD_1 #(
    .INIT ( 1'b0 ))
  \fifo/micR_3  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P6D_3_IBUF_48),
    .Q(\fifo/micR [3])
  );
  FD_1 #(
    .INIT ( 1'b0 ))
  \fifo/micR_2  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P6D_2_IBUF_49),
    .Q(\fifo/micR [2])
  );
  FD_1 #(
    .INIT ( 1'b0 ))
  \fifo/micR_1  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P6D_1_IBUF_50),
    .Q(\fifo/micR [1])
  );
  FD_1 #(
    .INIT ( 1'b0 ))
  \fifo/micR_0  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P6D_0_IBUF_51),
    .Q(\fifo/micR [0])
  );
  FD #(
    .INIT ( 1'b0 ))
  \fifo/micL_47  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P1D_7_IBUF_4),
    .Q(\fifo/micL [47])
  );
  FD #(
    .INIT ( 1'b0 ))
  \fifo/micL_46  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P1D_6_IBUF_5),
    .Q(\fifo/micL [46])
  );
  FD #(
    .INIT ( 1'b0 ))
  \fifo/micL_45  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P1D_5_IBUF_6),
    .Q(\fifo/micL [45])
  );
  FD #(
    .INIT ( 1'b0 ))
  \fifo/micL_44  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P1D_4_IBUF_7),
    .Q(\fifo/micL [44])
  );
  FD #(
    .INIT ( 1'b0 ))
  \fifo/micL_43  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P1D_3_IBUF_8),
    .Q(\fifo/micL [43])
  );
  FD #(
    .INIT ( 1'b0 ))
  \fifo/micL_42  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P1D_2_IBUF_9),
    .Q(\fifo/micL [42])
  );
  FD #(
    .INIT ( 1'b0 ))
  \fifo/micL_41  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P1D_1_IBUF_10),
    .Q(\fifo/micL [41])
  );
  FD #(
    .INIT ( 1'b0 ))
  \fifo/micL_40  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P1D_0_IBUF_11),
    .Q(\fifo/micL [40])
  );
  FD #(
    .INIT ( 1'b0 ))
  \fifo/micL_39  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P2D_7_IBUF_12),
    .Q(\fifo/micL [39])
  );
  FD #(
    .INIT ( 1'b0 ))
  \fifo/micL_38  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P2D_6_IBUF_13),
    .Q(\fifo/micL [38])
  );
  FD #(
    .INIT ( 1'b0 ))
  \fifo/micL_37  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P2D_5_IBUF_14),
    .Q(\fifo/micL [37])
  );
  FD #(
    .INIT ( 1'b0 ))
  \fifo/micL_36  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P2D_4_IBUF_15),
    .Q(\fifo/micL [36])
  );
  FD #(
    .INIT ( 1'b0 ))
  \fifo/micL_35  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P2D_3_IBUF_16),
    .Q(\fifo/micL [35])
  );
  FD #(
    .INIT ( 1'b0 ))
  \fifo/micL_34  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P2D_2_IBUF_17),
    .Q(\fifo/micL [34])
  );
  FD #(
    .INIT ( 1'b0 ))
  \fifo/micL_33  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P2D_1_IBUF_18),
    .Q(\fifo/micL [33])
  );
  FD #(
    .INIT ( 1'b0 ))
  \fifo/micL_32  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P2D_0_IBUF_19),
    .Q(\fifo/micL [32])
  );
  FD #(
    .INIT ( 1'b0 ))
  \fifo/micL_31  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P3D_7_IBUF_20),
    .Q(\fifo/micL [31])
  );
  FD #(
    .INIT ( 1'b0 ))
  \fifo/micL_30  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P3D_6_IBUF_21),
    .Q(\fifo/micL [30])
  );
  FD #(
    .INIT ( 1'b0 ))
  \fifo/micL_29  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P3D_5_IBUF_22),
    .Q(\fifo/micL [29])
  );
  FD #(
    .INIT ( 1'b0 ))
  \fifo/micL_28  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P3D_4_IBUF_23),
    .Q(\fifo/micL [28])
  );
  FD #(
    .INIT ( 1'b0 ))
  \fifo/micL_27  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P3D_3_IBUF_24),
    .Q(\fifo/micL [27])
  );
  FD #(
    .INIT ( 1'b0 ))
  \fifo/micL_26  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P3D_2_IBUF_25),
    .Q(\fifo/micL [26])
  );
  FD #(
    .INIT ( 1'b0 ))
  \fifo/micL_25  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P3D_1_IBUF_26),
    .Q(\fifo/micL [25])
  );
  FD #(
    .INIT ( 1'b0 ))
  \fifo/micL_24  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P3D_0_IBUF_27),
    .Q(\fifo/micL [24])
  );
  FD #(
    .INIT ( 1'b0 ))
  \fifo/micL_23  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P4D_7_IBUF_28),
    .Q(\fifo/micL [23])
  );
  FD #(
    .INIT ( 1'b0 ))
  \fifo/micL_22  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P4D_6_IBUF_29),
    .Q(\fifo/micL [22])
  );
  FD #(
    .INIT ( 1'b0 ))
  \fifo/micL_21  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P4D_5_IBUF_30),
    .Q(\fifo/micL [21])
  );
  FD #(
    .INIT ( 1'b0 ))
  \fifo/micL_20  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P4D_4_IBUF_31),
    .Q(\fifo/micL [20])
  );
  FD #(
    .INIT ( 1'b0 ))
  \fifo/micL_19  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P4D_3_IBUF_32),
    .Q(\fifo/micL [19])
  );
  FD #(
    .INIT ( 1'b0 ))
  \fifo/micL_18  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P4D_2_IBUF_33),
    .Q(\fifo/micL [18])
  );
  FD #(
    .INIT ( 1'b0 ))
  \fifo/micL_17  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P4D_1_IBUF_34),
    .Q(\fifo/micL [17])
  );
  FD #(
    .INIT ( 1'b0 ))
  \fifo/micL_16  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P4D_0_IBUF_35),
    .Q(\fifo/micL [16])
  );
  FD #(
    .INIT ( 1'b0 ))
  \fifo/micL_15  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P5D_7_IBUF_36),
    .Q(\fifo/micL [15])
  );
  FD #(
    .INIT ( 1'b0 ))
  \fifo/micL_14  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P5D_6_IBUF_37),
    .Q(\fifo/micL [14])
  );
  FD #(
    .INIT ( 1'b0 ))
  \fifo/micL_13  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P5D_5_IBUF_38),
    .Q(\fifo/micL [13])
  );
  FD #(
    .INIT ( 1'b0 ))
  \fifo/micL_12  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P5D_4_IBUF_39),
    .Q(\fifo/micL [12])
  );
  FD #(
    .INIT ( 1'b0 ))
  \fifo/micL_11  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P5D_3_IBUF_40),
    .Q(\fifo/micL [11])
  );
  FD #(
    .INIT ( 1'b0 ))
  \fifo/micL_10  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P5D_2_IBUF_41),
    .Q(\fifo/micL [10])
  );
  FD #(
    .INIT ( 1'b0 ))
  \fifo/micL_9  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P5D_1_IBUF_42),
    .Q(\fifo/micL [9])
  );
  FD #(
    .INIT ( 1'b0 ))
  \fifo/micL_8  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P5D_0_IBUF_43),
    .Q(\fifo/micL [8])
  );
  FD #(
    .INIT ( 1'b0 ))
  \fifo/micL_7  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P6D_7_IBUF_44),
    .Q(\fifo/micL [7])
  );
  FD #(
    .INIT ( 1'b0 ))
  \fifo/micL_6  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P6D_6_IBUF_45),
    .Q(\fifo/micL [6])
  );
  FD #(
    .INIT ( 1'b0 ))
  \fifo/micL_5  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P6D_5_IBUF_46),
    .Q(\fifo/micL [5])
  );
  FD #(
    .INIT ( 1'b0 ))
  \fifo/micL_4  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P6D_4_IBUF_47),
    .Q(\fifo/micL [4])
  );
  FD #(
    .INIT ( 1'b0 ))
  \fifo/micL_3  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P6D_3_IBUF_48),
    .Q(\fifo/micL [3])
  );
  FD #(
    .INIT ( 1'b0 ))
  \fifo/micL_2  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P6D_2_IBUF_49),
    .Q(\fifo/micL [2])
  );
  FD #(
    .INIT ( 1'b0 ))
  \fifo/micL_1  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P6D_1_IBUF_50),
    .Q(\fifo/micL [1])
  );
  FD #(
    .INIT ( 1'b0 ))
  \fifo/micL_0  (
    .C(P6D_CLK_OBUF_BUFG_65),
    .D(P6D_0_IBUF_51),
    .Q(\fifo/micL [0])
  );
  FD #(
    .INIT ( 1'b0 ))
  \fifo/rd_en  (
    .C(CLK_125_FAB),
    .D(\fifo/enable_byteCounter[3]_AND_1_o ),
    .Q(\fifo/rd_en_663 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \fifo/wr_en  (
    .C(CLK_125_FAB),
    .D(\fifo/pMicClk[11]_GND_8_o_equal_16_o ),
    .Q(\fifo/wr_en_676 )
  );
  FDSE   \CRCCalc/c_31  (
    .C(CLK_125_FAB),
    .CE(\CRCCalc/n0197_inv ),
    .D(\CRCCalc/newcrc [31]),
    .S(clearSig_82),
    .Q(\CRCCalc/c [31])
  );
  FDSE   \CRCCalc/c_30  (
    .C(CLK_125_FAB),
    .CE(\CRCCalc/n0197_inv ),
    .D(\CRCCalc/newcrc [30]),
    .S(clearSig_82),
    .Q(\CRCCalc/c [30])
  );
  FDSE   \CRCCalc/c_29  (
    .C(CLK_125_FAB),
    .CE(\CRCCalc/n0197_inv ),
    .D(\CRCCalc/newcrc [29]),
    .S(clearSig_82),
    .Q(\CRCCalc/c [29])
  );
  FDSE   \CRCCalc/c_28  (
    .C(CLK_125_FAB),
    .CE(\CRCCalc/n0197_inv ),
    .D(\CRCCalc/newcrc [28]),
    .S(clearSig_82),
    .Q(\CRCCalc/c [28])
  );
  FDSE   \CRCCalc/c_27  (
    .C(CLK_125_FAB),
    .CE(\CRCCalc/n0197_inv ),
    .D(\CRCCalc/newcrc [27]),
    .S(clearSig_82),
    .Q(\CRCCalc/c [27])
  );
  FDSE   \CRCCalc/c_26  (
    .C(CLK_125_FAB),
    .CE(\CRCCalc/n0197_inv ),
    .D(\CRCCalc/newcrc [26]),
    .S(clearSig_82),
    .Q(\CRCCalc/c [26])
  );
  FDSE   \CRCCalc/c_25  (
    .C(CLK_125_FAB),
    .CE(\CRCCalc/n0197_inv ),
    .D(\CRCCalc/newcrc [25]),
    .S(clearSig_82),
    .Q(\CRCCalc/c [25])
  );
  FDSE   \CRCCalc/c_24  (
    .C(CLK_125_FAB),
    .CE(\CRCCalc/n0197_inv ),
    .D(\CRCCalc/newcrc [24]),
    .S(clearSig_82),
    .Q(\CRCCalc/c [24])
  );
  FDSE   \CRCCalc/c_23  (
    .C(CLK_125_FAB),
    .CE(\CRCCalc/n0197_inv ),
    .D(\CRCCalc/newcrc [23]),
    .S(clearSig_82),
    .Q(\CRCCalc/c [23])
  );
  FDSE   \CRCCalc/c_22  (
    .C(CLK_125_FAB),
    .CE(\CRCCalc/n0197_inv ),
    .D(\CRCCalc/newcrc [22]),
    .S(clearSig_82),
    .Q(\CRCCalc/c [22])
  );
  FDSE   \CRCCalc/c_21  (
    .C(CLK_125_FAB),
    .CE(\CRCCalc/n0197_inv ),
    .D(\CRCCalc/newcrc [21]),
    .S(clearSig_82),
    .Q(\CRCCalc/c [21])
  );
  FDSE   \CRCCalc/c_20  (
    .C(CLK_125_FAB),
    .CE(\CRCCalc/n0197_inv ),
    .D(\CRCCalc/newcrc [20]),
    .S(clearSig_82),
    .Q(\CRCCalc/c [20])
  );
  FDSE   \CRCCalc/c_19  (
    .C(CLK_125_FAB),
    .CE(\CRCCalc/n0197_inv ),
    .D(\CRCCalc/newcrc [19]),
    .S(clearSig_82),
    .Q(\CRCCalc/c [19])
  );
  FDSE   \CRCCalc/c_18  (
    .C(CLK_125_FAB),
    .CE(\CRCCalc/n0197_inv ),
    .D(\CRCCalc/newcrc [18]),
    .S(clearSig_82),
    .Q(\CRCCalc/c [18])
  );
  FDSE   \CRCCalc/c_17  (
    .C(CLK_125_FAB),
    .CE(\CRCCalc/n0197_inv ),
    .D(\CRCCalc/newcrc [17]),
    .S(clearSig_82),
    .Q(\CRCCalc/c [17])
  );
  FDSE   \CRCCalc/c_16  (
    .C(CLK_125_FAB),
    .CE(\CRCCalc/n0197_inv ),
    .D(\CRCCalc/newcrc [16]),
    .S(clearSig_82),
    .Q(\CRCCalc/c [16])
  );
  FDSE   \CRCCalc/c_15  (
    .C(CLK_125_FAB),
    .CE(\CRCCalc/n0197_inv ),
    .D(\CRCCalc/newcrc [15]),
    .S(clearSig_82),
    .Q(\CRCCalc/c [15])
  );
  FDSE   \CRCCalc/c_14  (
    .C(CLK_125_FAB),
    .CE(\CRCCalc/n0197_inv ),
    .D(\CRCCalc/newcrc [14]),
    .S(clearSig_82),
    .Q(\CRCCalc/c [14])
  );
  FDSE   \CRCCalc/c_13  (
    .C(CLK_125_FAB),
    .CE(\CRCCalc/n0197_inv ),
    .D(\CRCCalc/newcrc [13]),
    .S(clearSig_82),
    .Q(\CRCCalc/c [13])
  );
  FDSE   \CRCCalc/c_12  (
    .C(CLK_125_FAB),
    .CE(\CRCCalc/n0197_inv ),
    .D(\CRCCalc/newcrc [12]),
    .S(clearSig_82),
    .Q(\CRCCalc/c [12])
  );
  FDSE   \CRCCalc/c_11  (
    .C(CLK_125_FAB),
    .CE(\CRCCalc/n0197_inv ),
    .D(\CRCCalc/newcrc [11]),
    .S(clearSig_82),
    .Q(\CRCCalc/c [11])
  );
  FDSE   \CRCCalc/c_10  (
    .C(CLK_125_FAB),
    .CE(\CRCCalc/n0197_inv ),
    .D(\CRCCalc/newcrc [10]),
    .S(clearSig_82),
    .Q(\CRCCalc/c [10])
  );
  FDSE   \CRCCalc/c_9  (
    .C(CLK_125_FAB),
    .CE(\CRCCalc/n0197_inv ),
    .D(\CRCCalc/newcrc [9]),
    .S(clearSig_82),
    .Q(\CRCCalc/c [9])
  );
  FDSE   \CRCCalc/c_8  (
    .C(CLK_125_FAB),
    .CE(\CRCCalc/n0197_inv ),
    .D(\CRCCalc/newcrc [8]),
    .S(clearSig_82),
    .Q(\CRCCalc/c [8])
  );
  FDSE   \CRCCalc/c_7  (
    .C(CLK_125_FAB),
    .CE(\CRCCalc/n0197_inv ),
    .D(\CRCCalc/newcrc [7]),
    .S(clearSig_82),
    .Q(\CRCCalc/c [7])
  );
  FDSE   \CRCCalc/c_6  (
    .C(CLK_125_FAB),
    .CE(\CRCCalc/n0197_inv ),
    .D(\CRCCalc/newcrc [6]),
    .S(clearSig_82),
    .Q(\CRCCalc/c [6])
  );
  FDSE   \CRCCalc/c_5  (
    .C(CLK_125_FAB),
    .CE(\CRCCalc/n0197_inv ),
    .D(\CRCCalc/newcrc [5]),
    .S(clearSig_82),
    .Q(\CRCCalc/c [5])
  );
  FDSE   \CRCCalc/c_4  (
    .C(CLK_125_FAB),
    .CE(\CRCCalc/n0197_inv ),
    .D(\CRCCalc/newcrc [4]),
    .S(clearSig_82),
    .Q(\CRCCalc/c [4])
  );
  FDSE   \CRCCalc/c_3  (
    .C(CLK_125_FAB),
    .CE(\CRCCalc/n0197_inv ),
    .D(\CRCCalc/newcrc [3]),
    .S(clearSig_82),
    .Q(\CRCCalc/c [3])
  );
  FDSE   \CRCCalc/c_2  (
    .C(CLK_125_FAB),
    .CE(\CRCCalc/n0197_inv ),
    .D(\CRCCalc/newcrc [2]),
    .S(clearSig_82),
    .Q(\CRCCalc/c [2])
  );
  FDSE   \CRCCalc/c_1  (
    .C(CLK_125_FAB),
    .CE(\CRCCalc/n0197_inv ),
    .D(\CRCCalc/newcrc [1]),
    .S(clearSig_82),
    .Q(\CRCCalc/c [1])
  );
  FDSE   \CRCCalc/c_0  (
    .C(CLK_125_FAB),
    .CE(\CRCCalc/n0197_inv ),
    .D(\CRCCalc/newcrc [0]),
    .S(clearSig_82),
    .Q(\CRCCalc/c [0])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \dataOut[0]_TX_EN_SIG_AND_2_o1  (
    .I0(dataOut[0]),
    .I1(TX_EN_SIG_80),
    .O(\dataOut[0]_TX_EN_SIG_AND_2_o )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \dataOut[4]_TX_EN_SIG_AND_3_o1  (
    .I0(dataOut[4]),
    .I1(TX_EN_SIG_80),
    .O(\dataOut[4]_TX_EN_SIG_AND_3_o )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \dataOut[1]_TX_EN_SIG_AND_4_o1  (
    .I0(dataOut[1]),
    .I1(TX_EN_SIG_80),
    .O(\dataOut[1]_TX_EN_SIG_AND_4_o )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \dataOut[5]_TX_EN_SIG_AND_5_o1  (
    .I0(dataOut[5]),
    .I1(TX_EN_SIG_80),
    .O(\dataOut[5]_TX_EN_SIG_AND_5_o )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \dataOut[2]_TX_EN_SIG_AND_6_o1  (
    .I0(dataOut[2]),
    .I1(TX_EN_SIG_80),
    .O(\dataOut[2]_TX_EN_SIG_AND_6_o )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \dataOut[6]_TX_EN_SIG_AND_7_o1  (
    .I0(dataOut[6]),
    .I1(TX_EN_SIG_80),
    .O(\dataOut[6]_TX_EN_SIG_AND_7_o )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \dataOut[3]_TX_EN_SIG_AND_8_o1  (
    .I0(dataOut[3]),
    .I1(TX_EN_SIG_80),
    .O(\dataOut[3]_TX_EN_SIG_AND_8_o )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \dataOut[7]_TX_EN_SIG_AND_9_o1  (
    .I0(dataOut[7]),
    .I1(TX_EN_SIG_80),
    .O(\dataOut[7]_TX_EN_SIG_AND_9_o )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  Mmux_GND_1_o_GND_1_o_mux_16_OUT41 (
    .I0(\GND_1_o_LED_counter[19]_LessThan_10_o ),
    .I1(\GND_1_o_LED_counter[19]_LessThan_11_o ),
    .O(GND_1_o_GND_1_o_mux_16_OUT[3])
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  Mmux_GND_1_o_GND_1_o_mux_16_OUT31 (
    .I0(\GND_1_o_LED_counter[19]_LessThan_10_o ),
    .I1(\GND_1_o_LED_counter[19]_LessThan_11_o ),
    .I2(\GND_1_o_LED_counter[19]_LessThan_12_o ),
    .O(GND_1_o_GND_1_o_mux_16_OUT[2])
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \GND_1_o_LED_counter[19]_LessThan_11_o41  (
    .I0(LED_counter[2]),
    .I1(LED_counter[3]),
    .I2(LED_counter[0]),
    .I3(LED_counter[1]),
    .O(\GND_1_o_LED_counter[19]_LessThan_11_o4 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \GND_1_o_LED_counter[19]_LessThan_6_o111  (
    .I0(LED_counter[10]),
    .I1(LED_counter[11]),
    .O(\GND_1_o_LED_counter[19]_LessThan_6_o11 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \GND_1_o_LED_counter[19]_LessThan_11_o1111  (
    .I0(LED_counter[8]),
    .I1(LED_counter[7]),
    .I2(LED_counter[6]),
    .O(\GND_1_o_LED_counter[19]_LessThan_11_o111 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFFFFE ))
  \GND_1_o_LED_counter[19]_LessThan_12_o11  (
    .I0(LED_counter[0]),
    .I1(LED_counter[1]),
    .I2(LED_counter[2]),
    .I3(LED_counter[3]),
    .I4(LED_counter[4]),
    .O(\GND_1_o_LED_counter[19]_LessThan_12_o11_477 )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \GND_1_o_LED_counter[19]_LessThan_9_o31111  (
    .I0(LED_counter[6]),
    .I1(LED_counter[7]),
    .I2(LED_counter[8]),
    .O(\GND_1_o_LED_counter[19]_LessThan_9_o3111 )
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  Mmux_GND_1_o_GND_1_o_mux_16_OUT21 (
    .I0(\GND_1_o_LED_counter[19]_LessThan_13_o ),
    .I1(\GND_1_o_LED_counter[19]_LessThan_10_o ),
    .I2(\GND_1_o_LED_counter[19]_LessThan_11_o ),
    .I3(\GND_1_o_LED_counter[19]_LessThan_12_o ),
    .O(GND_1_o_GND_1_o_mux_16_OUT[1])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  Mmux_GND_1_o_GND_1_o_mux_16_OUT11 (
    .I0(\GND_1_o_LED_counter[19]_LessThan_13_o ),
    .I1(\GND_1_o_LED_counter[19]_LessThan_10_o ),
    .I2(\GND_1_o_LED_counter[19]_LessThan_11_o ),
    .I3(\GND_1_o_LED_counter[19]_LessThan_12_o ),
    .O(GND_1_o_GND_1_o_mux_16_OUT[0])
  );
  LUT5 #(
    .INIT ( 32'h80000000 ))
  _n019811 (
    .I0(\Mcompar_counter[31]_GND_1_o_LessThan_44_o_cy<5>_410 ),
    .I1(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<5>_378 ),
    .I2(\Mcompar_counter[31]_GND_1_o_LessThan_39_o_cy<6>_395 ),
    .I3(\Mcompar_counter[31]_GND_1_o_LessThan_28_o_cy<6>_364 ),
    .I4(\Mcompar_counter[31]_GND_1_o_LessThan_23_o_cy<6>_348 ),
    .O(clearSig_glue_rst)
  );
  LUT4 #(
    .INIT ( 16'hAAA9 ))
  \fifo/Mcount_byteCounter_xor<3>11  (
    .I0(\fifo/byteCounter [3]),
    .I1(\fifo/byteCounter [1]),
    .I2(\fifo/byteCounter [2]),
    .I3(\fifo/byteCounter [0]),
    .O(\fifo/Result<3>1 )
  );
  LUT3 #(
    .INIT ( 8'hA9 ))
  \fifo/Mcount_byteCounter_xor<2>11  (
    .I0(\fifo/byteCounter [2]),
    .I1(\fifo/byteCounter [1]),
    .I2(\fifo/byteCounter [0]),
    .O(\fifo/Result<2>1 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \fifo/Mcount_byteCounter_xor<1>11  (
    .I0(\fifo/byteCounter [1]),
    .I1(\fifo/byteCounter [0]),
    .O(\fifo/Result<1>1 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \fifo/Mxor_micClk_xo<0>1  (
    .I0(\fifo/micClkNeg_645 ),
    .I1(\fifo/micClkPos_646 ),
    .O(P6D_CLK_OBUF_1293)
  );
  LUT5 #(
    .INIT ( 32'h00000100 ))
  \fifo/enable_byteCounter[3]_AND_1_o1  (
    .I0(\fifo/byteCounter [3]),
    .I1(\fifo/byteCounter [2]),
    .I2(\fifo/byteCounter [1]),
    .I3(fifoEn_79),
    .I4(\fifo/byteCounter [0]),
    .O(\fifo/enable_byteCounter[3]_AND_1_o )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \CRCCalc/Mxor_newcrc<21>_xo<0>1  (
    .I0(\CRCCalc/c [13]),
    .I1(\CRCCalc/c [29]),
    .I2(dataOut[2]),
    .O(\CRCCalc/newcrc [21])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \CRCCalc/Mxor_newcrc<31>_xo<0>1  (
    .I0(\CRCCalc/c [23]),
    .I1(\CRCCalc/c [29]),
    .I2(dataOut[2]),
    .O(\CRCCalc/newcrc [31])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \CRCCalc/Mxor_newcrc<20>_xo<0>1  (
    .I0(\CRCCalc/c [12]),
    .I1(\CRCCalc/c [28]),
    .I2(dataOut[3]),
    .O(\CRCCalc/newcrc [20])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \CRCCalc/Mxor__n0252_xo<0>1  (
    .I0(\CRCCalc/c [27]),
    .I1(\CRCCalc/c [31]),
    .I2(dataOut[4]),
    .O(\CRCCalc/_n0252 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \CRCCalc/Mxor__n0246_xo<0>1  (
    .I0(\CRCCalc/c [25]),
    .I1(\CRCCalc/c [30]),
    .I2(dataOut[6]),
    .O(\CRCCalc/_n0246 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \CRCCalc/Mxor__n0239_xo<0>11  (
    .I0(\CRCCalc/c [26]),
    .I1(dataOut[5]),
    .O(\CRCCalc/Mxor__n0239_xo<0>1 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \CRCCalc/Mxor__n0236_xo<0>11  (
    .I0(\CRCCalc/c [24]),
    .I1(dataOut[7]),
    .O(\CRCCalc/Mxor__n0236_xo<0>1 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \CRCCalc/Mxor_d[7]_d[6]_XOR_229_o_xo<0>1  (
    .I0(dataOut[0]),
    .I1(dataOut[1]),
    .O(\CRCCalc/d[7]_d[6]_XOR_229_o )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \CRCCalc/Mxor__n0242_xo<0>1  (
    .I0(\CRCCalc/c [27]),
    .I1(\CRCCalc/c [28]),
    .O(\CRCCalc/_n0242 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \CRCCalc/Mxor__n0248_xo<0>1  (
    .I0(\CRCCalc/c [28]),
    .I1(\CRCCalc/c [29]),
    .O(\CRCCalc/_n0248 )
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \CRCCalc/Mxor__n0269_xo<0>1  (
    .I0(\CRCCalc/c [26]),
    .I1(dataOut[5]),
    .I2(dataOut[6]),
    .I3(\CRCCalc/c [25]),
    .O(\CRCCalc/_n0269 )
  );
  LUT6 #(
    .INIT ( 64'h6996966996696996 ))
  \CRCCalc/Mxor_newcrc<9>_xo<0>1  (
    .I0(\CRCCalc/c [1]),
    .I1(\CRCCalc/c [29]),
    .I2(\CRCCalc/c [28]),
    .I3(dataOut[3]),
    .I4(dataOut[2]),
    .I5(\CRCCalc/_n0269 ),
    .O(\CRCCalc/newcrc [9])
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \CRCCalc/Mxor_d[4]_d[0]_XOR_115_o_xo<0>1  (
    .I0(dataOut[6]),
    .I1(dataOut[7]),
    .I2(dataOut[3]),
    .I3(dataOut[4]),
    .O(\CRCCalc/d[4]_d[0]_XOR_115_o )
  );
  LUT6 #(
    .INIT ( 64'h6996966996696996 ))
  \CRCCalc/Mxor_newcrc<11>_xo<0>1  (
    .I0(\CRCCalc/c [3]),
    .I1(\CRCCalc/d[4]_d[0]_XOR_115_o ),
    .I2(\CRCCalc/c [24]),
    .I3(\CRCCalc/c [25]),
    .I4(\CRCCalc/c [27]),
    .I5(\CRCCalc/c [28]),
    .O(\CRCCalc/newcrc [11])
  );
  LUT6 #(
    .INIT ( 64'h6996966996696996 ))
  \CRCCalc/Mxor_newcrc<8>_xo<0>1  (
    .I0(\CRCCalc/c [0]),
    .I1(\CRCCalc/d[4]_d[0]_XOR_115_o ),
    .I2(\CRCCalc/c [24]),
    .I3(\CRCCalc/c [25]),
    .I4(\CRCCalc/c [27]),
    .I5(\CRCCalc/c [28]),
    .O(\CRCCalc/newcrc [8])
  );
  LUT5 #(
    .INIT ( 32'h96696996 ))
  \CRCCalc/Mxor__n0247_xo<0>1  (
    .I0(dataOut[6]),
    .I1(\CRCCalc/c [25]),
    .I2(dataOut[7]),
    .I3(\CRCCalc/c [24]),
    .I4(\CRCCalc/c [30]),
    .O(\CRCCalc/_n0247 )
  );
  LUT6 #(
    .INIT ( 64'h6996966996696996 ))
  \CRCCalc/Mxor_newcrc<2>_xo<0>1  (
    .I0(\CRCCalc/c [26]),
    .I1(dataOut[5]),
    .I2(\CRCCalc/c [31]),
    .I3(dataOut[1]),
    .I4(dataOut[0]),
    .I5(\CRCCalc/_n0247 ),
    .O(\CRCCalc/newcrc [2])
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \CRCCalc/Mxor_newcrc<1>_xo<0>1  (
    .I0(\CRCCalc/_n0247 ),
    .I1(\CRCCalc/c [31]),
    .I2(dataOut[0]),
    .I3(dataOut[1]),
    .O(\CRCCalc/newcrc [1])
  );
  LUT5 #(
    .INIT ( 32'h96696996 ))
  \CRCCalc/Mxor_newcrc<3>_xo<0>1  (
    .I0(\CRCCalc/_n0269 ),
    .I1(dataOut[0]),
    .I2(dataOut[4]),
    .I3(\CRCCalc/c [27]),
    .I4(\CRCCalc/c [31]),
    .O(\CRCCalc/newcrc [3])
  );
  LUT6 #(
    .INIT ( 64'h6996966996696996 ))
  \CRCCalc/Mxor_newcrc<5>_xo<0>1  (
    .I0(dataOut[3]),
    .I1(dataOut[2]),
    .I2(\CRCCalc/_n0248 ),
    .I3(\CRCCalc/d[7]_d[6]_XOR_229_o ),
    .I4(\CRCCalc/_n0252 ),
    .I5(\CRCCalc/_n0247 ),
    .O(\CRCCalc/newcrc [5])
  );
  LUT6 #(
    .INIT ( 64'h6996966996696996 ))
  \CRCCalc/Mxor_newcrc<13>_xo<0>1  (
    .I0(\CRCCalc/_n0239 ),
    .I1(\CRCCalc/_n0246 ),
    .I2(\CRCCalc/_n0252 ),
    .I3(\CRCCalc/c [5]),
    .I4(\CRCCalc/d[7]_d[6]_XOR_229_o ),
    .I5(dataOut[2]),
    .O(\CRCCalc/newcrc [13])
  );
  LUT6 #(
    .INIT ( 64'h6996966996696996 ))
  \CRCCalc/Mxor_newcrc<26>_xo<0>1  (
    .I0(\CRCCalc/c [18]),
    .I1(dataOut[4]),
    .I2(dataOut[3]),
    .I3(dataOut[1]),
    .I4(\CRCCalc/_n0242 ),
    .I5(\CRCCalc/_n0236 ),
    .O(\CRCCalc/newcrc [26])
  );
  LUT6 #(
    .INIT ( 64'h9669699669969669 ))
  \CRCCalc/Mxor_newcrc<4>_xo<0>1  (
    .I0(\CRCCalc/_n0236 ),
    .I1(\CRCCalc/Mxor__n0239_xo<0>1 ),
    .I2(\CRCCalc/_n0242 ),
    .I3(dataOut[1]),
    .I4(dataOut[3]),
    .I5(dataOut[4]),
    .O(\CRCCalc/newcrc [4])
  );
  LUT6 #(
    .INIT ( 64'h6996966996696996 ))
  \CRCCalc/Mxor_newcrc<15>_xo<0>1  (
    .I0(\CRCCalc/c [7]),
    .I1(dataOut[3]),
    .I2(dataOut[2]),
    .I3(dataOut[0]),
    .I4(\CRCCalc/_n0248 ),
    .I5(\CRCCalc/_n0252 ),
    .O(\CRCCalc/newcrc [15])
  );
  LUT6 #(
    .INIT ( 64'h9669699669969669 ))
  \CRCCalc/Mxor_newcrc<10>_xo<0>1  (
    .I0(\CRCCalc/Mxor__n0236_xo<0>1 ),
    .I1(\CRCCalc/_n0239 ),
    .I2(\CRCCalc/c [2]),
    .I3(dataOut[2]),
    .I4(\CRCCalc/c [27]),
    .I5(dataOut[4]),
    .O(\CRCCalc/newcrc [10])
  );
  LUT6 #(
    .INIT ( 64'h6996966996696996 ))
  \CRCCalc/Mxor_newcrc<18>_xo<0>1  (
    .I0(\CRCCalc/c [10]),
    .I1(\CRCCalc/c [30]),
    .I2(\CRCCalc/d[7]_d[6]_XOR_229_o ),
    .I3(dataOut[5]),
    .I4(\CRCCalc/c [26]),
    .I5(\CRCCalc/c [31]),
    .O(\CRCCalc/newcrc [18])
  );
  LUT5 #(
    .INIT ( 32'h96696996 ))
  \CRCCalc/Mxor_newcrc<19>_xo<0>1  (
    .I0(\CRCCalc/c [11]),
    .I1(dataOut[0]),
    .I2(dataOut[4]),
    .I3(\CRCCalc/c [27]),
    .I4(\CRCCalc/c [31]),
    .O(\CRCCalc/newcrc [19])
  );
  LUT6 #(
    .INIT ( 64'h9669699669969669 ))
  \CRCCalc/Mxor_newcrc<24>_xo<0>1  (
    .I0(\CRCCalc/c [16]),
    .I1(dataOut[6]),
    .I2(\CRCCalc/c [25]),
    .I3(\CRCCalc/c [31]),
    .I4(dataOut[0]),
    .I5(\CRCCalc/Mxor__n0239_xo<0>1 ),
    .O(\CRCCalc/newcrc [24])
  );
  LUT5 #(
    .INIT ( 32'h96696996 ))
  \CRCCalc/Mxor_newcrc<30>_xo<0>1  (
    .I0(\CRCCalc/c [22]),
    .I1(\CRCCalc/c [31]),
    .I2(dataOut[0]),
    .I3(\CRCCalc/c [28]),
    .I4(dataOut[3]),
    .O(\CRCCalc/newcrc [30])
  );
  LUT5 #(
    .INIT ( 32'h96696996 ))
  \CRCCalc/Mxor_newcrc<17>_xo<0>1  (
    .I0(\CRCCalc/_n0246 ),
    .I1(\CRCCalc/c [29]),
    .I2(\CRCCalc/c [9]),
    .I3(dataOut[1]),
    .I4(dataOut[2]),
    .O(\CRCCalc/newcrc [17])
  );
  LUT5 #(
    .INIT ( 32'h96696996 ))
  \CRCCalc/Mxor_newcrc<29>_xo<0>1  (
    .I0(\CRCCalc/c [21]),
    .I1(\CRCCalc/c [30]),
    .I2(dataOut[1]),
    .I3(dataOut[0]),
    .I4(\CRCCalc/_n0252 ),
    .O(\CRCCalc/newcrc [29])
  );
  LUT6 #(
    .INIT ( 64'h6996966996696996 ))
  \CRCCalc/Mxor_newcrc<7>_xo<0>1  (
    .I0(\CRCCalc/c [29]),
    .I1(dataOut[2]),
    .I2(dataOut[0]),
    .I3(\CRCCalc/Mxor__n0239_xo<0>1 ),
    .I4(\CRCCalc/Mxor__n0236_xo<0>1 ),
    .I5(\CRCCalc/_n0252 ),
    .O(\CRCCalc/newcrc [7])
  );
  LUT6 #(
    .INIT ( 64'h9669699669969669 ))
  \CRCCalc/Mxor_newcrc<28>_xo<0>1  (
    .I0(\CRCCalc/c [20]),
    .I1(\CRCCalc/c [29]),
    .I2(\CRCCalc/c [30]),
    .I3(dataOut[2]),
    .I4(dataOut[1]),
    .I5(\CRCCalc/Mxor__n0239_xo<0>1 ),
    .O(\CRCCalc/newcrc [28])
  );
  LUT6 #(
    .INIT ( 64'h9669699669969669 ))
  \CRCCalc/Mxor_newcrc<23>_xo<0>1  (
    .I0(\CRCCalc/c [15]),
    .I1(dataOut[1]),
    .I2(\CRCCalc/Mxor__n0236_xo<0>1 ),
    .I3(\CRCCalc/c [30]),
    .I4(\CRCCalc/c [25]),
    .I5(dataOut[6]),
    .O(\CRCCalc/newcrc [23])
  );
  LUT6 #(
    .INIT ( 64'h6996966996696996 ))
  \CRCCalc/Mxor_newcrc<16>_xo<0>1  (
    .I0(\CRCCalc/_n0248 ),
    .I1(\CRCCalc/c [8]),
    .I2(dataOut[2]),
    .I3(dataOut[3]),
    .I4(\CRCCalc/c [24]),
    .I5(dataOut[7]),
    .O(\CRCCalc/newcrc [16])
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \CRCCalc/Mxor_newcrc<0>_xo<0>1  (
    .I0(dataOut[1]),
    .I1(\CRCCalc/c [30]),
    .I2(\CRCCalc/c [24]),
    .I3(dataOut[7]),
    .O(\CRCCalc/newcrc [0])
  );
  LUT5 #(
    .INIT ( 32'h96696996 ))
  \CRCCalc/Mxor_newcrc<25>_xo<0>1  (
    .I0(\CRCCalc/c [17]),
    .I1(\CRCCalc/c [27]),
    .I2(dataOut[4]),
    .I3(\CRCCalc/c [26]),
    .I4(dataOut[5]),
    .O(\CRCCalc/newcrc [25])
  );
  LUT6 #(
    .INIT ( 64'h0100000000000000 ))
  \Mmux_GND_1_o_counter[31]_MUX_282_o11  (
    .I0(counter[9]),
    .I1(counter[8]),
    .I2(counter[7]),
    .I3(counter[0]),
    .I4(counter[4]),
    .I5(counter[5]),
    .O(\Mmux_GND_1_o_counter[31]_MUX_282_o1 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \Mmux_GND_1_o_counter[31]_MUX_282_o12  (
    .I0(counter[3]),
    .I1(counter[6]),
    .I2(counter[12]),
    .I3(counter[2]),
    .O(\Mmux_GND_1_o_counter[31]_MUX_282_o11_951 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000008 ))
  \Mmux_GND_1_o_counter[31]_MUX_282_o13  (
    .I0(\Mmux_GND_1_o_counter[31]_MUX_282_o1 ),
    .I1(\Mmux_GND_1_o_counter[31]_MUX_282_o11_951 ),
    .I2(counter[12]),
    .I3(counter[1]),
    .I4(counter[10]),
    .I5(counter[11]),
    .O(\Mmux_GND_1_o_counter[31]_MUX_282_o12_952 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  \Mmux_GND_1_o_counter[31]_MUX_282_o14  (
    .I0(counter[12]),
    .I1(counter[3]),
    .I2(counter[5]),
    .I3(counter[2]),
    .I4(counter[1]),
    .I5(counter[10]),
    .O(\Mmux_GND_1_o_counter[31]_MUX_282_o13_953 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFF7FFFFFFFFF ))
  \Mmux_GND_1_o_counter[31]_MUX_282_o15  (
    .I0(counter[8]),
    .I1(counter[7]),
    .I2(counter[4]),
    .I3(counter[9]),
    .I4(counter[6]),
    .I5(counter[11]),
    .O(\Mmux_GND_1_o_counter[31]_MUX_282_o14_954 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \GND_1_o_LED_counter[19]_LessThan_6_o31  (
    .I0(LED_counter[16]),
    .I1(LED_counter[17]),
    .O(\GND_1_o_LED_counter[19]_LessThan_6_o3 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \GND_1_o_LED_counter[19]_LessThan_6_o32  (
    .I0(LED_counter[13]),
    .I1(LED_counter[14]),
    .O(\GND_1_o_LED_counter[19]_LessThan_6_o31_956 )
  );
  LUT6 #(
    .INIT ( 64'hF080F000F000F000 ))
  \GND_1_o_LED_counter[19]_LessThan_6_o33  (
    .I0(LED_counter[5]),
    .I1(LED_counter[9]),
    .I2(LED_counter[12]),
    .I3(\GND_1_o_LED_counter[19]_LessThan_6_o11 ),
    .I4(\GND_1_o_LED_counter[19]_LessThan_11_o111 ),
    .I5(\GND_1_o_LED_counter[19]_LessThan_12_o11_477 ),
    .O(\GND_1_o_LED_counter[19]_LessThan_6_o32_957 )
  );
  LUT6 #(
    .INIT ( 64'hFAEAFAEAFAEAFAAA ))
  \GND_1_o_LED_counter[19]_LessThan_6_o34  (
    .I0(LED_counter[19]),
    .I1(LED_counter[15]),
    .I2(LED_counter[18]),
    .I3(\GND_1_o_LED_counter[19]_LessThan_6_o3 ),
    .I4(\GND_1_o_LED_counter[19]_LessThan_6_o31_956 ),
    .I5(\GND_1_o_LED_counter[19]_LessThan_6_o32_957 ),
    .O(\GND_1_o_LED_counter[19]_LessThan_6_o )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT101  (
    .I0(crossCt_81),
    .I1(cross[4]),
    .I2(crossWire[12]),
    .O(\Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT10 )
  );
  LUT6 #(
    .INIT ( 64'hAAAA22EEF0F0F0F0 ))
  \Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT102  (
    .I0(crc[28]),
    .I1(crcCt_151),
    .I2(\Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT10 ),
    .I3(\CRCCalc/newcrc [27]),
    .I4(\Mcompar_counter[31]_GND_1_o_LessThan_39_o_cy<6>_395 ),
    .I5(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<5>_378 ),
    .O(\Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT101_959 )
  );
  LUT6 #(
    .INIT ( 64'h5514100415151517 ))
  \Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT103  (
    .I0(packetIndex[5]),
    .I1(packetIndex[2]),
    .I2(packetIndex[4]),
    .I3(packetIndex[1]),
    .I4(packetIndex[0]),
    .I5(packetIndex[3]),
    .O(\Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT102_960 )
  );
  LUT5 #(
    .INIT ( 32'hFACC0ACC ))
  \Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT104  (
    .I0(\fifo/data [4]),
    .I1(\Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT102_960 ),
    .I2(\Mcompar_counter[31]_GND_1_o_LessThan_28_o_cy<6>_364 ),
    .I3(\Mcompar_counter[31]_GND_1_o_LessThan_23_o_cy<6>_348 ),
    .I4(\Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT101_959 ),
    .O(\dataOut[7]_packetIndex[5]_mux_67_OUT<4> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT161  (
    .I0(crossCt_81),
    .I1(cross[7]),
    .I2(crossWire[15]),
    .O(\Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT16 )
  );
  LUT6 #(
    .INIT ( 64'hAAAA22EEF0F0F0F0 ))
  \Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT162  (
    .I0(crc[31]),
    .I1(crcCt_151),
    .I2(\Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT16 ),
    .I3(\CRCCalc/newcrc [24]),
    .I4(\Mcompar_counter[31]_GND_1_o_LessThan_39_o_cy<6>_395 ),
    .I5(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<5>_378 ),
    .O(\Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT161_962 )
  );
  LUT6 #(
    .INIT ( 64'h01210A0822222C0C ))
  \Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT163  (
    .I0(packetIndex[1]),
    .I1(packetIndex[5]),
    .I2(packetIndex[4]),
    .I3(packetIndex[0]),
    .I4(packetIndex[3]),
    .I5(packetIndex[2]),
    .O(\Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT162_963 )
  );
  LUT5 #(
    .INIT ( 32'hFACC0ACC ))
  \Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT164  (
    .I0(\fifo/data [7]),
    .I1(\Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT162_963 ),
    .I2(\Mcompar_counter[31]_GND_1_o_LessThan_28_o_cy<6>_364 ),
    .I3(\Mcompar_counter[31]_GND_1_o_LessThan_23_o_cy<6>_348 ),
    .I4(\Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT161_962 ),
    .O(\dataOut[7]_packetIndex[5]_mux_67_OUT<7> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT81  (
    .I0(crossCt_81),
    .I1(cross[3]),
    .I2(crossWire[11]),
    .O(\Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT8 )
  );
  LUT6 #(
    .INIT ( 64'hAAAA22EEF0F0F0F0 ))
  \Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT82  (
    .I0(crc[27]),
    .I1(crcCt_151),
    .I2(\Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT8 ),
    .I3(\CRCCalc/newcrc [28]),
    .I4(\Mcompar_counter[31]_GND_1_o_LessThan_39_o_cy<6>_395 ),
    .I5(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<5>_378 ),
    .O(\Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT81_965 )
  );
  LUT6 #(
    .INIT ( 64'h00450110A110888A ))
  \Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT83  (
    .I0(packetIndex[5]),
    .I1(packetIndex[0]),
    .I2(packetIndex[1]),
    .I3(packetIndex[2]),
    .I4(packetIndex[3]),
    .I5(packetIndex[4]),
    .O(\Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT82_966 )
  );
  LUT5 #(
    .INIT ( 32'hFACC0ACC ))
  \Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT84  (
    .I0(\fifo/data [3]),
    .I1(\Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT82_966 ),
    .I2(\Mcompar_counter[31]_GND_1_o_LessThan_28_o_cy<6>_364 ),
    .I3(\Mcompar_counter[31]_GND_1_o_LessThan_23_o_cy<6>_348 ),
    .I4(\Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT81_965 ),
    .O(\dataOut[7]_packetIndex[5]_mux_67_OUT<3> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT141  (
    .I0(crossCt_81),
    .I1(cross[6]),
    .I2(crossWire[14]),
    .O(\Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT14 )
  );
  LUT6 #(
    .INIT ( 64'hAAAA2E2EFF00FF00 ))
  \Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT142  (
    .I0(crc[30]),
    .I1(crcCt_151),
    .I2(\CRCCalc/newcrc [25]),
    .I3(\Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT14 ),
    .I4(\Mcompar_counter[31]_GND_1_o_LessThan_39_o_cy<6>_395 ),
    .I5(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<5>_378 ),
    .O(\Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT141_968 )
  );
  LUT6 #(
    .INIT ( 64'h1011030083271F27 ))
  \Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT143  (
    .I0(packetIndex[2]),
    .I1(packetIndex[5]),
    .I2(packetIndex[3]),
    .I3(packetIndex[1]),
    .I4(packetIndex[0]),
    .I5(packetIndex[4]),
    .O(\Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT142_969 )
  );
  LUT5 #(
    .INIT ( 32'hFACC0ACC ))
  \Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT144  (
    .I0(\fifo/data [6]),
    .I1(\Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT142_969 ),
    .I2(\Mcompar_counter[31]_GND_1_o_LessThan_28_o_cy<6>_364 ),
    .I3(\Mcompar_counter[31]_GND_1_o_LessThan_23_o_cy<6>_348 ),
    .I4(\Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT141_968 ),
    .O(\dataOut[7]_packetIndex[5]_mux_67_OUT<6> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT21  (
    .I0(crossCt_81),
    .I1(cross[0]),
    .I2(crossWire[8]),
    .O(\Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT2 )
  );
  LUT6 #(
    .INIT ( 64'hAAAA2E2EFF00FF00 ))
  \Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT22  (
    .I0(crc[24]),
    .I1(crcCt_151),
    .I2(\CRCCalc/newcrc [31]),
    .I3(\Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT2 ),
    .I4(\Mcompar_counter[31]_GND_1_o_LessThan_39_o_cy<6>_395 ),
    .I5(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<5>_378 ),
    .O(\Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT21_971 )
  );
  LUT6 #(
    .INIT ( 64'h4011004001845757 ))
  \Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT23  (
    .I0(packetIndex[5]),
    .I1(packetIndex[2]),
    .I2(packetIndex[1]),
    .I3(packetIndex[0]),
    .I4(packetIndex[3]),
    .I5(packetIndex[4]),
    .O(\Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT22_972 )
  );
  LUT5 #(
    .INIT ( 32'hFACC0ACC ))
  \Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT24  (
    .I0(\fifo/data [0]),
    .I1(\Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT22_972 ),
    .I2(\Mcompar_counter[31]_GND_1_o_LessThan_28_o_cy<6>_364 ),
    .I3(\Mcompar_counter[31]_GND_1_o_LessThan_23_o_cy<6>_348 ),
    .I4(\Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT21_971 ),
    .O(\dataOut[7]_packetIndex[5]_mux_67_OUT<0> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT61  (
    .I0(crossCt_81),
    .I1(cross[2]),
    .I2(crossWire[10]),
    .O(\Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT6 )
  );
  LUT6 #(
    .INIT ( 64'hAAAA22EEF0F0F0F0 ))
  \Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT62  (
    .I0(crc[26]),
    .I1(crcCt_151),
    .I2(\Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT6 ),
    .I3(\CRCCalc/newcrc [29]),
    .I4(\Mcompar_counter[31]_GND_1_o_LessThan_39_o_cy<6>_395 ),
    .I5(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<5>_378 ),
    .O(\Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT61_974 )
  );
  LUT6 #(
    .INIT ( 64'h00420051047778BB ))
  \Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT63  (
    .I0(packetIndex[2]),
    .I1(packetIndex[3]),
    .I2(packetIndex[0]),
    .I3(packetIndex[5]),
    .I4(packetIndex[1]),
    .I5(packetIndex[4]),
    .O(\Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT62_975 )
  );
  LUT5 #(
    .INIT ( 32'hFACC0ACC ))
  \Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT64  (
    .I0(\fifo/data [2]),
    .I1(\Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT62_975 ),
    .I2(\Mcompar_counter[31]_GND_1_o_LessThan_28_o_cy<6>_364 ),
    .I3(\Mcompar_counter[31]_GND_1_o_LessThan_23_o_cy<6>_348 ),
    .I4(\Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT61_974 ),
    .O(\dataOut[7]_packetIndex[5]_mux_67_OUT<2> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT121  (
    .I0(crossCt_81),
    .I1(cross[5]),
    .I2(crossWire[13]),
    .O(\Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT12 )
  );
  LUT6 #(
    .INIT ( 64'hAAAA22EEF0F0F0F0 ))
  \Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT122  (
    .I0(crc[29]),
    .I1(crcCt_151),
    .I2(\Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT12 ),
    .I3(\CRCCalc/newcrc [26]),
    .I4(\Mcompar_counter[31]_GND_1_o_LessThan_39_o_cy<6>_395 ),
    .I5(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<5>_378 ),
    .O(\Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT121_977 )
  );
  LUT6 #(
    .INIT ( 64'h4400041034223406 ))
  \Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT123  (
    .I0(packetIndex[4]),
    .I1(packetIndex[5]),
    .I2(packetIndex[3]),
    .I3(packetIndex[0]),
    .I4(packetIndex[1]),
    .I5(packetIndex[2]),
    .O(\Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT122_978 )
  );
  LUT5 #(
    .INIT ( 32'hFACC0ACC ))
  \Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT124  (
    .I0(\fifo/data [5]),
    .I1(\Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT122_978 ),
    .I2(\Mcompar_counter[31]_GND_1_o_LessThan_28_o_cy<6>_364 ),
    .I3(\Mcompar_counter[31]_GND_1_o_LessThan_23_o_cy<6>_348 ),
    .I4(\Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT121_977 ),
    .O(\dataOut[7]_packetIndex[5]_mux_67_OUT<5> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT41  (
    .I0(crossCt_81),
    .I1(cross[1]),
    .I2(crossWire[9]),
    .O(\Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT4 )
  );
  LUT6 #(
    .INIT ( 64'hAAAA2E2EFF00FF00 ))
  \Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT42  (
    .I0(crc[25]),
    .I1(crcCt_151),
    .I2(\CRCCalc/newcrc [30]),
    .I3(\Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT4 ),
    .I4(\Mcompar_counter[31]_GND_1_o_LessThan_39_o_cy<6>_395 ),
    .I5(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<5>_378 ),
    .O(\Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT41_980 )
  );
  LUT6 #(
    .INIT ( 64'h020203008A001018 ))
  \Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT43  (
    .I0(packetIndex[3]),
    .I1(packetIndex[2]),
    .I2(packetIndex[5]),
    .I3(packetIndex[0]),
    .I4(packetIndex[1]),
    .I5(packetIndex[4]),
    .O(\Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT42_981 )
  );
  LUT5 #(
    .INIT ( 32'hFACC0ACC ))
  \Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT44  (
    .I0(\fifo/data [1]),
    .I1(\Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT42_981 ),
    .I2(\Mcompar_counter[31]_GND_1_o_LessThan_28_o_cy<6>_364 ),
    .I3(\Mcompar_counter[31]_GND_1_o_LessThan_23_o_cy<6>_348 ),
    .I4(\Mmux_dataOut[7]_packetIndex[5]_mux_67_OUT41_980 ),
    .O(\dataOut[7]_packetIndex[5]_mux_67_OUT<1> )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \GND_1_o_LED_counter[19]_LessThan_11_o31  (
    .I0(LED_counter[15]),
    .I1(LED_counter[16]),
    .O(\GND_1_o_LED_counter[19]_LessThan_11_o3 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \GND_1_o_LED_counter[19]_LessThan_11_o32  (
    .I0(LED_counter[12]),
    .I1(LED_counter[13]),
    .O(\GND_1_o_LED_counter[19]_LessThan_11_o31_983 )
  );
  LUT6 #(
    .INIT ( 64'hFFEEFEEEFFEEEEEE ))
  \GND_1_o_LED_counter[19]_LessThan_11_o36  (
    .I0(LED_counter[19]),
    .I1(LED_counter[18]),
    .I2(LED_counter[14]),
    .I3(LED_counter[17]),
    .I4(\GND_1_o_LED_counter[19]_LessThan_11_o3 ),
    .I5(\GND_1_o_LED_counter[19]_LessThan_11_o34 ),
    .O(\GND_1_o_LED_counter[19]_LessThan_11_o )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \GND_1_o_LED_counter[19]_LessThan_10_o31  (
    .I0(LED_counter[16]),
    .I1(LED_counter[17]),
    .O(\GND_1_o_LED_counter[19]_LessThan_10_o3 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \GND_1_o_LED_counter[19]_LessThan_10_o32  (
    .I0(LED_counter[14]),
    .I1(LED_counter[15]),
    .I2(LED_counter[12]),
    .I3(LED_counter[13]),
    .O(\GND_1_o_LED_counter[19]_LessThan_10_o31_986 )
  );
  LUT6 #(
    .INIT ( 64'hFFF0FFC0FFF0FF80 ))
  \GND_1_o_LED_counter[19]_LessThan_10_o33  (
    .I0(LED_counter[5]),
    .I1(LED_counter[6]),
    .I2(LED_counter[8]),
    .I3(LED_counter[9]),
    .I4(LED_counter[7]),
    .I5(\GND_1_o_LED_counter[19]_LessThan_12_o11_477 ),
    .O(\GND_1_o_LED_counter[19]_LessThan_10_o32_987 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \GND_1_o_LED_counter[19]_LessThan_10_o34  (
    .I0(LED_counter[10]),
    .I1(LED_counter[11]),
    .O(\GND_1_o_LED_counter[19]_LessThan_10_o33_988 )
  );
  LUT6 #(
    .INIT ( 64'hFFEEFEEEFFEEEEEE ))
  \GND_1_o_LED_counter[19]_LessThan_10_o35  (
    .I0(LED_counter[19]),
    .I1(LED_counter[18]),
    .I2(\GND_1_o_LED_counter[19]_LessThan_10_o33_988 ),
    .I3(\GND_1_o_LED_counter[19]_LessThan_10_o3 ),
    .I4(\GND_1_o_LED_counter[19]_LessThan_10_o31_986 ),
    .I5(\GND_1_o_LED_counter[19]_LessThan_10_o32_987 ),
    .O(\GND_1_o_LED_counter[19]_LessThan_10_o )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \GND_1_o_LED_counter[19]_LessThan_9_o31  (
    .I0(LED_counter[16]),
    .I1(LED_counter[17]),
    .I2(LED_counter[14]),
    .I3(LED_counter[15]),
    .O(\GND_1_o_LED_counter[19]_LessThan_9_o3 )
  );
  LUT6 #(
    .INIT ( 64'hCCCCCCC8CCCCCC88 ))
  \GND_1_o_LED_counter[19]_LessThan_9_o32  (
    .I0(LED_counter[9]),
    .I1(LED_counter[12]),
    .I2(LED_counter[7]),
    .I3(\GND_1_o_LED_counter[19]_LessThan_6_o11 ),
    .I4(\GND_1_o_LED_counter[19]_LessThan_9_o3111 ),
    .I5(\GND_1_o_LED_counter[19]_LessThan_13_o1_411 ),
    .O(\GND_1_o_LED_counter[19]_LessThan_9_o31_990 )
  );
  LUT5 #(
    .INIT ( 32'hFFEEFEEE ))
  \GND_1_o_LED_counter[19]_LessThan_9_o33  (
    .I0(LED_counter[18]),
    .I1(LED_counter[19]),
    .I2(LED_counter[13]),
    .I3(\GND_1_o_LED_counter[19]_LessThan_9_o3 ),
    .I4(\GND_1_o_LED_counter[19]_LessThan_9_o31_990 ),
    .O(\GND_1_o_LED_counter[19]_LessThan_9_o )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \GND_1_o_LED_counter[19]_LessThan_13_o31  (
    .I0(LED_counter[18]),
    .I1(LED_counter[19]),
    .I2(LED_counter[16]),
    .I3(LED_counter[17]),
    .O(\GND_1_o_LED_counter[19]_LessThan_13_o3 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \GND_1_o_LED_counter[19]_LessThan_12_o31  (
    .I0(LED_counter[15]),
    .I1(LED_counter[16]),
    .O(\GND_1_o_LED_counter[19]_LessThan_12_o3 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \GND_1_o_LED_counter[19]_LessThan_12_o32  (
    .I0(LED_counter[13]),
    .I1(LED_counter[14]),
    .I2(LED_counter[11]),
    .I3(LED_counter[12]),
    .O(\GND_1_o_LED_counter[19]_LessThan_12_o31_993 )
  );
  LUT6 #(
    .INIT ( 64'hA0A08000A0A00000 ))
  \GND_1_o_LED_counter[19]_LessThan_12_o33  (
    .I0(LED_counter[10]),
    .I1(LED_counter[5]),
    .I2(LED_counter[9]),
    .I3(LED_counter[7]),
    .I4(\GND_1_o_LED_counter[19]_LessThan_9_o3111 ),
    .I5(\GND_1_o_LED_counter[19]_LessThan_12_o11_477 ),
    .O(\GND_1_o_LED_counter[19]_LessThan_12_o32_994 )
  );
  LUT6 #(
    .INIT ( 64'hFFFEFFFEFFFEFEFE ))
  \GND_1_o_LED_counter[19]_LessThan_12_o34  (
    .I0(LED_counter[19]),
    .I1(LED_counter[18]),
    .I2(LED_counter[17]),
    .I3(\GND_1_o_LED_counter[19]_LessThan_12_o3 ),
    .I4(\GND_1_o_LED_counter[19]_LessThan_12_o31_993 ),
    .I5(\GND_1_o_LED_counter[19]_LessThan_12_o32_994 ),
    .O(\GND_1_o_LED_counter[19]_LessThan_12_o )
  );
  LUT6 #(
    .INIT ( 64'hABABABEF01010145 ))
  \fifo/Mmux_data[7]_fifoData[7]_mux_28_OUT1  (
    .I0(\fifo/enable_byteCounter[3]_AND_1_o ),
    .I1(\fifo/byteCounter [3]),
    .I2(N7),
    .I3(\fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_71_496 ),
    .I4(\fifo/byteCounter [2]),
    .I5(\fifo/fifoData [0]),
    .O(\fifo/data[7]_fifoData[7]_mux_28_OUT<0> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \fifo/Mmux_data[7]_fifoData[7]_mux_28_OUT2_SW0  (
    .I0(\fifo/byteCounter [2]),
    .I1(\fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_61_497 ),
    .I2(\fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_72_498 ),
    .O(N9)
  );
  LUT6 #(
    .INIT ( 64'hABABABEF01010145 ))
  \fifo/Mmux_data[7]_fifoData[7]_mux_28_OUT2  (
    .I0(\fifo/enable_byteCounter[3]_AND_1_o ),
    .I1(\fifo/byteCounter [3]),
    .I2(N9),
    .I3(\fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_73_499 ),
    .I4(\fifo/byteCounter [2]),
    .I5(\fifo/fifoData [1]),
    .O(\fifo/data[7]_fifoData[7]_mux_28_OUT<1> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \fifo/Mmux_data[7]_fifoData[7]_mux_28_OUT3_SW0  (
    .I0(\fifo/byteCounter [2]),
    .I1(\fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_62_500 ),
    .I2(\fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_74_501 ),
    .O(N11)
  );
  LUT6 #(
    .INIT ( 64'hABABABEF01010145 ))
  \fifo/Mmux_data[7]_fifoData[7]_mux_28_OUT3  (
    .I0(\fifo/enable_byteCounter[3]_AND_1_o ),
    .I1(\fifo/byteCounter [3]),
    .I2(N11),
    .I3(\fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_75_502 ),
    .I4(\fifo/byteCounter [2]),
    .I5(\fifo/fifoData [2]),
    .O(\fifo/data[7]_fifoData[7]_mux_28_OUT<2> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \fifo/Mmux_data[7]_fifoData[7]_mux_28_OUT4_SW0  (
    .I0(\fifo/byteCounter [2]),
    .I1(\fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_63_503 ),
    .I2(\fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_76_504 ),
    .O(N13)
  );
  LUT6 #(
    .INIT ( 64'hABABABEF01010145 ))
  \fifo/Mmux_data[7]_fifoData[7]_mux_28_OUT4  (
    .I0(\fifo/enable_byteCounter[3]_AND_1_o ),
    .I1(\fifo/byteCounter [3]),
    .I2(N13),
    .I3(\fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_77_505 ),
    .I4(\fifo/byteCounter [2]),
    .I5(\fifo/fifoData [3]),
    .O(\fifo/data[7]_fifoData[7]_mux_28_OUT<3> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \fifo/Mmux_data[7]_fifoData[7]_mux_28_OUT5_SW0  (
    .I0(\fifo/byteCounter [2]),
    .I1(\fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_64_506 ),
    .I2(\fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_78_507 ),
    .O(N15)
  );
  LUT6 #(
    .INIT ( 64'hABABABEF01010145 ))
  \fifo/Mmux_data[7]_fifoData[7]_mux_28_OUT5  (
    .I0(\fifo/enable_byteCounter[3]_AND_1_o ),
    .I1(\fifo/byteCounter [3]),
    .I2(N15),
    .I3(\fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_79_508 ),
    .I4(\fifo/byteCounter [2]),
    .I5(\fifo/fifoData [4]),
    .O(\fifo/data[7]_fifoData[7]_mux_28_OUT<4> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \fifo/Mmux_data[7]_fifoData[7]_mux_28_OUT6_SW0  (
    .I0(\fifo/byteCounter [2]),
    .I1(\fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_65_509 ),
    .I2(\fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_710_510 ),
    .O(N17)
  );
  LUT6 #(
    .INIT ( 64'hABABABEF01010145 ))
  \fifo/Mmux_data[7]_fifoData[7]_mux_28_OUT6  (
    .I0(\fifo/enable_byteCounter[3]_AND_1_o ),
    .I1(\fifo/byteCounter [3]),
    .I2(N17),
    .I3(\fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_711_511 ),
    .I4(\fifo/byteCounter [2]),
    .I5(\fifo/fifoData [5]),
    .O(\fifo/data[7]_fifoData[7]_mux_28_OUT<5> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \fifo/Mmux_data[7]_fifoData[7]_mux_28_OUT7_SW0  (
    .I0(\fifo/byteCounter [2]),
    .I1(\fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_66_512 ),
    .I2(\fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_712_513 ),
    .O(N19)
  );
  LUT6 #(
    .INIT ( 64'hABABABEF01010145 ))
  \fifo/Mmux_data[7]_fifoData[7]_mux_28_OUT7  (
    .I0(\fifo/enable_byteCounter[3]_AND_1_o ),
    .I1(\fifo/byteCounter [3]),
    .I2(N19),
    .I3(\fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_713_514 ),
    .I4(\fifo/byteCounter [2]),
    .I5(\fifo/fifoData [6]),
    .O(\fifo/data[7]_fifoData[7]_mux_28_OUT<6> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \fifo/Mmux_data[7]_fifoData[7]_mux_28_OUT8_SW0  (
    .I0(\fifo/byteCounter [2]),
    .I1(\fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_67_515 ),
    .I2(\fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_714_516 ),
    .O(N21)
  );
  LUT6 #(
    .INIT ( 64'hABABABEF01010145 ))
  \fifo/Mmux_data[7]_fifoData[7]_mux_28_OUT8  (
    .I0(\fifo/enable_byteCounter[3]_AND_1_o ),
    .I1(\fifo/byteCounter [3]),
    .I2(N21),
    .I3(\fifo/Mmux_byteCounter[3]_GND_8_o_wide_mux_23_OUT_715_517 ),
    .I4(\fifo/byteCounter [2]),
    .I5(\fifo/fifoData [7]),
    .O(\fifo/data[7]_fifoData[7]_mux_28_OUT<7> )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \fifo/GND_8_o_GND_8_o_equal_2_o<7>_SW0  (
    .I0(\fifo/micDividerPos [0]),
    .I1(\fifo/micDividerPos [7]),
    .I2(\fifo/micDividerPos [1]),
    .O(N23)
  );
  LUT6 #(
    .INIT ( 64'h0000000080000000 ))
  \fifo/GND_8_o_GND_8_o_equal_2_o<7>  (
    .I0(\fifo/micDividerPos [5]),
    .I1(\fifo/micDividerPos [4]),
    .I2(\fifo/micDividerPos [6]),
    .I3(\fifo/micDividerPos [3]),
    .I4(\fifo/micDividerPos [2]),
    .I5(N23),
    .O(\fifo/GND_8_o_GND_8_o_equal_2_o )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \fifo/GND_8_o_GND_8_o_equal_7_o<7>_SW0  (
    .I0(\fifo/micDividerNeg [0]),
    .I1(\fifo/micDividerNeg [7]),
    .I2(\fifo/micDividerNeg [1]),
    .O(N25)
  );
  LUT6 #(
    .INIT ( 64'h0000000080000000 ))
  \fifo/GND_8_o_GND_8_o_equal_7_o<7>  (
    .I0(\fifo/micDividerNeg [5]),
    .I1(\fifo/micDividerNeg [4]),
    .I2(\fifo/micDividerNeg [6]),
    .I3(\fifo/micDividerNeg [3]),
    .I4(\fifo/micDividerNeg [2]),
    .I5(N25),
    .O(\fifo/GND_8_o_GND_8_o_equal_7_o )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \fifo/pMicClk[11]_GND_8_o_equal_16_o<11>1  (
    .I0(\fifo/pMicClk [1]),
    .I1(\fifo/pMicClk [0]),
    .I2(\fifo/pMicClk [3]),
    .I3(\fifo/pMicClk [2]),
    .I4(\fifo/pMicClk [5]),
    .I5(\fifo/pMicClk [4]),
    .O(\fifo/pMicClk[11]_GND_8_o_equal_16_o<11> )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \fifo/pMicClk[11]_GND_8_o_equal_16_o<11>2  (
    .I0(\fifo/pMicClk [7]),
    .I1(\fifo/pMicClk [6]),
    .I2(\fifo/pMicClk [8]),
    .I3(\fifo/pMicClk [9]),
    .I4(\fifo/pMicClk [10]),
    .I5(\fifo/pMicClk [11]),
    .O(\fifo/pMicClk[11]_GND_8_o_equal_16_o<11>1_1006 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \fifo/pMicClk[11]_GND_8_o_equal_16_o<11>3  (
    .I0(\fifo/pMicClk[11]_GND_8_o_equal_16_o<11> ),
    .I1(\fifo/pMicClk[11]_GND_8_o_equal_16_o<11>1_1006 ),
    .O(\fifo/pMicClk[11]_GND_8_o_equal_16_o )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  \CRCCalc/n0197_inv1  (
    .I0(pIMO[5]),
    .I1(pIMO[6]),
    .I2(pIMO[7]),
    .I3(pIMO[8]),
    .I4(pIMO[9]),
    .I5(pIMO[10]),
    .O(\CRCCalc/n0197_inv1_1007 )
  );
  LUT6 #(
    .INIT ( 64'h6996966996696996 ))
  \CRCCalc/Mxor_newcrc<12>_xo<0>_SW0  (
    .I0(dataOut[7]),
    .I1(\CRCCalc/c [30]),
    .I2(dataOut[6]),
    .I3(\CRCCalc/c [25]),
    .I4(dataOut[1]),
    .I5(\CRCCalc/c [4]),
    .O(N27)
  );
  LUT6 #(
    .INIT ( 64'h9669699669969669 ))
  \CRCCalc/Mxor_newcrc<12>_xo<0>  (
    .I0(\CRCCalc/Mxor__n0239_xo<0>1 ),
    .I1(\CRCCalc/_n0248 ),
    .I2(dataOut[3]),
    .I3(dataOut[2]),
    .I4(\CRCCalc/c [24]),
    .I5(N27),
    .O(\CRCCalc/newcrc [12])
  );
  LUT6 #(
    .INIT ( 64'h6996966996696996 ))
  \CRCCalc/Mxor_newcrc<6>_xo<0>_SW0  (
    .I0(\CRCCalc/c [26]),
    .I1(\CRCCalc/c [30]),
    .I2(dataOut[6]),
    .I3(\CRCCalc/c [25]),
    .I4(dataOut[5]),
    .I5(dataOut[1]),
    .O(N29)
  );
  LUT6 #(
    .INIT ( 64'h6996966996696996 ))
  \CRCCalc/Mxor_newcrc<6>_xo<0>  (
    .I0(\CRCCalc/_n0248 ),
    .I1(dataOut[3]),
    .I2(\CRCCalc/c [31]),
    .I3(dataOut[2]),
    .I4(dataOut[0]),
    .I5(N29),
    .O(\CRCCalc/newcrc [6])
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \CRCCalc/Mxor_newcrc<27>_xo<0>_SW0  (
    .I0(dataOut[6]),
    .I1(\CRCCalc/c [25]),
    .I2(\CRCCalc/c [28]),
    .I3(\CRCCalc/c [29]),
    .O(N31)
  );
  LUT6 #(
    .INIT ( 64'h6996966996696996 ))
  \CRCCalc/Mxor_newcrc<27>_xo<0>  (
    .I0(dataOut[3]),
    .I1(\CRCCalc/c [31]),
    .I2(dataOut[2]),
    .I3(dataOut[0]),
    .I4(\CRCCalc/c [19]),
    .I5(N31),
    .O(\CRCCalc/newcrc [27])
  );
  LUT6 #(
    .INIT ( 64'h6996966996696996 ))
  \CRCCalc/Mxor_newcrc<14>_xo<0>_SW0  (
    .I0(\CRCCalc/c [26]),
    .I1(\CRCCalc/c [30]),
    .I2(dataOut[5]),
    .I3(\CRCCalc/c [28]),
    .I4(dataOut[1]),
    .I5(\CRCCalc/c [6]),
    .O(N33)
  );
  LUT6 #(
    .INIT ( 64'h6996966996696996 ))
  \CRCCalc/Mxor_newcrc<14>_xo<0>  (
    .I0(dataOut[3]),
    .I1(\CRCCalc/c [31]),
    .I2(\CRCCalc/c [27]),
    .I3(dataOut[0]),
    .I4(dataOut[4]),
    .I5(N33),
    .O(\CRCCalc/newcrc [14])
  );
  IBUF   RXD_3_IBUF (
    .I(RXD[3]),
    .O(JP_3_OBUF_0)
  );
  IBUF   RXD_2_IBUF (
    .I(RXD[2]),
    .O(JP_2_OBUF_1)
  );
  IBUF   RXD_1_IBUF (
    .I(RXD[1]),
    .O(JP_1_OBUF_2)
  );
  IBUF   RXD_0_IBUF (
    .I(RXD[0]),
    .O(JP_0_OBUF_3)
  );
  IBUF   P1D_7_IBUF (
    .I(P1D[7]),
    .O(P1D_7_IBUF_4)
  );
  IBUF   P1D_6_IBUF (
    .I(P1D[6]),
    .O(P1D_6_IBUF_5)
  );
  IBUF   P1D_5_IBUF (
    .I(P1D[5]),
    .O(P1D_5_IBUF_6)
  );
  IBUF   P1D_4_IBUF (
    .I(P1D[4]),
    .O(P1D_4_IBUF_7)
  );
  IBUF   P1D_3_IBUF (
    .I(P1D[3]),
    .O(P1D_3_IBUF_8)
  );
  IBUF   P1D_2_IBUF (
    .I(P1D[2]),
    .O(P1D_2_IBUF_9)
  );
  IBUF   P1D_1_IBUF (
    .I(P1D[1]),
    .O(P1D_1_IBUF_10)
  );
  IBUF   P1D_0_IBUF (
    .I(P1D[0]),
    .O(P1D_0_IBUF_11)
  );
  IBUF   P2D_7_IBUF (
    .I(P2D[7]),
    .O(P2D_7_IBUF_12)
  );
  IBUF   P2D_6_IBUF (
    .I(P2D[6]),
    .O(P2D_6_IBUF_13)
  );
  IBUF   P2D_5_IBUF (
    .I(P2D[5]),
    .O(P2D_5_IBUF_14)
  );
  IBUF   P2D_4_IBUF (
    .I(P2D[4]),
    .O(P2D_4_IBUF_15)
  );
  IBUF   P2D_3_IBUF (
    .I(P2D[3]),
    .O(P2D_3_IBUF_16)
  );
  IBUF   P2D_2_IBUF (
    .I(P2D[2]),
    .O(P2D_2_IBUF_17)
  );
  IBUF   P2D_1_IBUF (
    .I(P2D[1]),
    .O(P2D_1_IBUF_18)
  );
  IBUF   P2D_0_IBUF (
    .I(P2D[0]),
    .O(P2D_0_IBUF_19)
  );
  IBUF   P3D_7_IBUF (
    .I(P3D[7]),
    .O(P3D_7_IBUF_20)
  );
  IBUF   P3D_6_IBUF (
    .I(P3D[6]),
    .O(P3D_6_IBUF_21)
  );
  IBUF   P3D_5_IBUF (
    .I(P3D[5]),
    .O(P3D_5_IBUF_22)
  );
  IBUF   P3D_4_IBUF (
    .I(P3D[4]),
    .O(P3D_4_IBUF_23)
  );
  IBUF   P3D_3_IBUF (
    .I(P3D[3]),
    .O(P3D_3_IBUF_24)
  );
  IBUF   P3D_2_IBUF (
    .I(P3D[2]),
    .O(P3D_2_IBUF_25)
  );
  IBUF   P3D_1_IBUF (
    .I(P3D[1]),
    .O(P3D_1_IBUF_26)
  );
  IBUF   P3D_0_IBUF (
    .I(P3D[0]),
    .O(P3D_0_IBUF_27)
  );
  IBUF   P4D_7_IBUF (
    .I(P4D[7]),
    .O(P4D_7_IBUF_28)
  );
  IBUF   P4D_6_IBUF (
    .I(P4D[6]),
    .O(P4D_6_IBUF_29)
  );
  IBUF   P4D_5_IBUF (
    .I(P4D[5]),
    .O(P4D_5_IBUF_30)
  );
  IBUF   P4D_4_IBUF (
    .I(P4D[4]),
    .O(P4D_4_IBUF_31)
  );
  IBUF   P4D_3_IBUF (
    .I(P4D[3]),
    .O(P4D_3_IBUF_32)
  );
  IBUF   P4D_2_IBUF (
    .I(P4D[2]),
    .O(P4D_2_IBUF_33)
  );
  IBUF   P4D_1_IBUF (
    .I(P4D[1]),
    .O(P4D_1_IBUF_34)
  );
  IBUF   P4D_0_IBUF (
    .I(P4D[0]),
    .O(P4D_0_IBUF_35)
  );
  IBUF   P5D_7_IBUF (
    .I(P5D[7]),
    .O(P5D_7_IBUF_36)
  );
  IBUF   P5D_6_IBUF (
    .I(P5D[6]),
    .O(P5D_6_IBUF_37)
  );
  IBUF   P5D_5_IBUF (
    .I(P5D[5]),
    .O(P5D_5_IBUF_38)
  );
  IBUF   P5D_4_IBUF (
    .I(P5D[4]),
    .O(P5D_4_IBUF_39)
  );
  IBUF   P5D_3_IBUF (
    .I(P5D[3]),
    .O(P5D_3_IBUF_40)
  );
  IBUF   P5D_2_IBUF (
    .I(P5D[2]),
    .O(P5D_2_IBUF_41)
  );
  IBUF   P5D_1_IBUF (
    .I(P5D[1]),
    .O(P5D_1_IBUF_42)
  );
  IBUF   P5D_0_IBUF (
    .I(P5D[0]),
    .O(P5D_0_IBUF_43)
  );
  IBUF   P6D_7_IBUF (
    .I(P6D[7]),
    .O(P6D_7_IBUF_44)
  );
  IBUF   P6D_6_IBUF (
    .I(P6D[6]),
    .O(P6D_6_IBUF_45)
  );
  IBUF   P6D_5_IBUF (
    .I(P6D[5]),
    .O(P6D_5_IBUF_46)
  );
  IBUF   P6D_4_IBUF (
    .I(P6D[4]),
    .O(P6D_4_IBUF_47)
  );
  IBUF   P6D_3_IBUF (
    .I(P6D[3]),
    .O(P6D_3_IBUF_48)
  );
  IBUF   P6D_2_IBUF (
    .I(P6D[2]),
    .O(P6D_2_IBUF_49)
  );
  IBUF   P6D_1_IBUF (
    .I(P6D[1]),
    .O(P6D_1_IBUF_50)
  );
  IBUF   P6D_0_IBUF (
    .I(P6D[0]),
    .O(P6D_0_IBUF_51)
  );
  OBUF   TXD_3_OBUF (
    .I(TXD_3_OBUF_155),
    .O(TXD[3])
  );
  OBUF   TXD_2_OBUF (
    .I(TXD_2_OBUF_154),
    .O(TXD[2])
  );
  OBUF   TXD_1_OBUF (
    .I(TXD_1_OBUF_153),
    .O(TXD[1])
  );
  OBUF   TXD_0_OBUF (
    .I(TXD_0_OBUF_152),
    .O(TXD[0])
  );
  OBUF   JP_3_OBUF (
    .I(JP_3_OBUF_0),
    .O(JP[3])
  );
  OBUF   JP_2_OBUF (
    .I(JP_2_OBUF_1),
    .O(JP[2])
  );
  OBUF   JP_1_OBUF (
    .I(JP_1_OBUF_2),
    .O(JP[1])
  );
  OBUF   JP_0_OBUF (
    .I(JP_0_OBUF_3),
    .O(JP[0])
  );
  OBUF   user_led_OBUF (
    .I(fifoEn_79),
    .O(user_led)
  );
  OBUF   TXCLK_OBUF (
    .I(TXCLK_OBUF_158),
    .O(TXCLK)
  );
  OBUF   TX_EN_OBUF (
    .I(TX_EN_OBUF_157),
    .O(TX_EN)
  );
  OBUF   DIR_OBUF (
    .I(DIR_OBUF_232),
    .O(DIR)
  );
  OBUF   P1D_CLK_OBUF (
    .I(P6D_CLK_OBUF_1293),
    .O(P1D_CLK)
  );
  OBUF   P1D_NCK_OBUF (
    .I(LEDs[0]),
    .O(P1D_NCK)
  );
  OBUF   P2D_CLK_OBUF (
    .I(P6D_CLK_OBUF_1293),
    .O(P2D_CLK)
  );
  OBUF   P2D_NCK_OBUF (
    .I(LEDs[1]),
    .O(P2D_NCK)
  );
  OBUF   P3D_CLK_OBUF (
    .I(P6D_CLK_OBUF_1293),
    .O(P3D_CLK)
  );
  OBUF   P3D_NCK_OBUF (
    .I(LEDs[2]),
    .O(P3D_NCK)
  );
  OBUF   P4D_CLK_OBUF (
    .I(P6D_CLK_OBUF_1293),
    .O(P4D_CLK)
  );
  OBUF   P4D_NCK_OBUF (
    .I(LEDs[3]),
    .O(P4D_NCK)
  );
  OBUF   P5D_CLK_OBUF (
    .I(P6D_CLK_OBUF_1293),
    .O(P5D_CLK)
  );
  OBUF   P5D_NCK_OBUF (
    .I(LEDs[4]),
    .O(P5D_NCK)
  );
  OBUF   P6D_CLK_OBUF (
    .I(P6D_CLK_OBUF_1293),
    .O(P6D_CLK)
  );
  OBUF   P6D_NCK_OBUF (
    .I(LEDs[5]),
    .O(P6D_NCK)
  );
  FD #(
    .INIT ( 1'b1 ))
  crossCt (
    .C(CLK_125_FAB),
    .D(crossCt_glue_rst_1088),
    .Q(crossCt_81)
  );
  FD #(
    .INIT ( 1'b1 ))
  clearSig (
    .C(CLK_125_FAB),
    .D(clearSig_glue_rst),
    .Q(clearSig_82)
  );
  FD #(
    .INIT ( 1'b1 ))
  counter_3 (
    .C(CLK_125_FAB),
    .D(counter_3_glue_rst_1090),
    .Q(counter[3])
  );
  FD #(
    .INIT ( 1'b1 ))
  counter_4 (
    .C(CLK_125_FAB),
    .D(counter_4_glue_rst_1091),
    .Q(counter[4])
  );
  FD #(
    .INIT ( 1'b1 ))
  counter_7 (
    .C(CLK_125_FAB),
    .D(counter_7_glue_rst_1092),
    .Q(counter[7])
  );
  FD #(
    .INIT ( 1'b1 ))
  counter_8 (
    .C(CLK_125_FAB),
    .D(counter_8_glue_rst_1093),
    .Q(counter[8])
  );
  FD #(
    .INIT ( 1'b1 ))
  counter_11 (
    .C(CLK_125_FAB),
    .D(counter_11_glue_rst_1094),
    .Q(counter[11])
  );
  FD #(
    .INIT ( 1'b1 ))
  \fifo/micDividerNeg_5  (
    .C(\fifo/clk_inv ),
    .D(\fifo/micDividerNeg_5_glue_rst_1095 ),
    .Q(\fifo/micDividerNeg [5])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \fifo/micDividerNeg_5_glue_rst  (
    .I0(\fifo/Result<5>1 ),
    .I1(\fifo/GND_8_o_GND_8_o_equal_7_o ),
    .O(\fifo/micDividerNeg_5_glue_rst_1095 )
  );
  FD #(
    .INIT ( 1'b1 ))
  \fifo/micDividerNeg_4  (
    .C(\fifo/clk_inv ),
    .D(\fifo/micDividerNeg_4_glue_rst_1096 ),
    .Q(\fifo/micDividerNeg [4])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \fifo/micDividerNeg_4_glue_rst  (
    .I0(\fifo/Result<4>1 ),
    .I1(\fifo/GND_8_o_GND_8_o_equal_7_o ),
    .O(\fifo/micDividerNeg_4_glue_rst_1096 )
  );
  FD #(
    .INIT ( 1'b1 ))
  \fifo/micDividerNeg_3  (
    .C(\fifo/clk_inv ),
    .D(\fifo/micDividerNeg_3_glue_rst_1097 ),
    .Q(\fifo/micDividerNeg [3])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \fifo/micDividerNeg_3_glue_rst  (
    .I0(\fifo/Result<3>2 ),
    .I1(\fifo/GND_8_o_GND_8_o_equal_7_o ),
    .O(\fifo/micDividerNeg_3_glue_rst_1097 )
  );
  FD #(
    .INIT ( 1'b1 ))
  \fifo/micDividerNeg_2  (
    .C(\fifo/clk_inv ),
    .D(\fifo/micDividerNeg_2_glue_rst_1098 ),
    .Q(\fifo/micDividerNeg [2])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \fifo/micDividerNeg_2_glue_rst  (
    .I0(\fifo/Result<2>2 ),
    .I1(\fifo/GND_8_o_GND_8_o_equal_7_o ),
    .O(\fifo/micDividerNeg_2_glue_rst_1098 )
  );
  FD #(
    .INIT ( 1'b1 ))
  \fifo/micDividerNeg_1  (
    .C(\fifo/clk_inv ),
    .D(\fifo/micDividerNeg_1_glue_rst_1099 ),
    .Q(\fifo/micDividerNeg [1])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \fifo/micDividerNeg_1_glue_rst  (
    .I0(\fifo/Result<1>2 ),
    .I1(\fifo/GND_8_o_GND_8_o_equal_7_o ),
    .O(\fifo/micDividerNeg_1_glue_rst_1099 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \fifo/byteCounter_0  (
    .C(CLK_125_FAB),
    .CE(fifoEn_79),
    .D(\fifo/byteCounter_0_glue_set ),
    .Q(\fifo/byteCounter [0])
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \Mcompar_counter[31]_GND_1_o_LessThan_23_o_lutdi21  (
    .I0(counter[11]),
    .I1(counter[12]),
    .O(\Mcompar_counter[31]_GND_1_o_LessThan_23_o_lutdi2 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \Mcompar_counter[31]_GND_1_o_LessThan_23_o_lut<2>1  (
    .I0(counter[11]),
    .I1(counter[12]),
    .O(\Mcompar_counter[31]_GND_1_o_LessThan_23_o_lut<2> )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \Mcompar_counter[31]_GND_1_o_LessThan_28_o_lut<2>1  (
    .I0(counter[11]),
    .I1(counter_12_1_1266),
    .O(\Mcompar_counter[31]_GND_1_o_LessThan_28_o_lut<2> )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \Mcompar_counter[31]_GND_1_o_LessThan_39_o_lutdi21  (
    .I0(counter[11]),
    .I1(counter[10]),
    .I2(counter_12_1_1266),
    .O(\Mcompar_counter[31]_GND_1_o_LessThan_39_o_lutdi2 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \Mcompar_counter[31]_GND_1_o_LessThan_39_o_lut<2>1  (
    .I0(counter[11]),
    .I1(counter[10]),
    .I2(counter_12_1_1266),
    .O(\Mcompar_counter[31]_GND_1_o_LessThan_39_o_lut<2> )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Msub_pIMO_cy<0>_rt  (
    .I0(packetIndex[0]),
    .O(\Msub_pIMO_cy<0>_rt_1101 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_packetIndex_cy<1>_rt  (
    .I0(packetIndex[1]),
    .O(\Mcount_packetIndex_cy<1>_rt_1103 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_packetIndex_cy<2>_rt  (
    .I0(packetIndex[2]),
    .O(\Mcount_packetIndex_cy<2>_rt_1104 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_packetIndex_cy<3>_rt  (
    .I0(packetIndex[3]),
    .O(\Mcount_packetIndex_cy<3>_rt_1105 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_packetIndex_cy<4>_rt  (
    .I0(packetIndex[4]),
    .O(\Mcount_packetIndex_cy<4>_rt_1106 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_packetIndex_cy<5>_rt  (
    .I0(packetIndex[5]),
    .O(\Mcount_packetIndex_cy<5>_rt_1107 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_packetIndex_cy<6>_rt  (
    .I0(packetIndex[6]),
    .O(\Mcount_packetIndex_cy<6>_rt_1108 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_packetIndex_cy<7>_rt  (
    .I0(packetIndex[7]),
    .O(\Mcount_packetIndex_cy<7>_rt_1109 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_packetIndex_cy<8>_rt  (
    .I0(packetIndex[8]),
    .O(\Mcount_packetIndex_cy<8>_rt_1110 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_packetIndex_cy<9>_rt  (
    .I0(packetIndex[9]),
    .O(\Mcount_packetIndex_cy<9>_rt_1111 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_packetIndex_cy<10>_rt  (
    .I0(packetIndex[10]),
    .O(\Mcount_packetIndex_cy<10>_rt_1112 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_packetIndex_cy<11>_rt  (
    .I0(packetIndex[11]),
    .O(\Mcount_packetIndex_cy<11>_rt_1113 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_LED_counter_cy<1>_rt  (
    .I0(LED_counter[1]),
    .O(\Mcount_LED_counter_cy<1>_rt_1114 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_LED_counter_cy<2>_rt  (
    .I0(LED_counter[2]),
    .O(\Mcount_LED_counter_cy<2>_rt_1115 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_LED_counter_cy<3>_rt  (
    .I0(LED_counter[3]),
    .O(\Mcount_LED_counter_cy<3>_rt_1116 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_LED_counter_cy<4>_rt  (
    .I0(LED_counter[4]),
    .O(\Mcount_LED_counter_cy<4>_rt_1117 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_LED_counter_cy<5>_rt  (
    .I0(LED_counter[5]),
    .O(\Mcount_LED_counter_cy<5>_rt_1118 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_LED_counter_cy<6>_rt  (
    .I0(LED_counter[6]),
    .O(\Mcount_LED_counter_cy<6>_rt_1119 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_LED_counter_cy<7>_rt  (
    .I0(LED_counter[7]),
    .O(\Mcount_LED_counter_cy<7>_rt_1120 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_LED_counter_cy<8>_rt  (
    .I0(LED_counter[8]),
    .O(\Mcount_LED_counter_cy<8>_rt_1121 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_LED_counter_cy<9>_rt  (
    .I0(LED_counter[9]),
    .O(\Mcount_LED_counter_cy<9>_rt_1122 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_LED_counter_cy<10>_rt  (
    .I0(LED_counter[10]),
    .O(\Mcount_LED_counter_cy<10>_rt_1123 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_LED_counter_cy<11>_rt  (
    .I0(LED_counter[11]),
    .O(\Mcount_LED_counter_cy<11>_rt_1124 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_LED_counter_cy<12>_rt  (
    .I0(LED_counter[12]),
    .O(\Mcount_LED_counter_cy<12>_rt_1125 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_LED_counter_cy<13>_rt  (
    .I0(LED_counter[13]),
    .O(\Mcount_LED_counter_cy<13>_rt_1126 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_LED_counter_cy<14>_rt  (
    .I0(LED_counter[14]),
    .O(\Mcount_LED_counter_cy<14>_rt_1127 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_LED_counter_cy<15>_rt  (
    .I0(LED_counter[15]),
    .O(\Mcount_LED_counter_cy<15>_rt_1128 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_LED_counter_cy<16>_rt  (
    .I0(LED_counter[16]),
    .O(\Mcount_LED_counter_cy<16>_rt_1129 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_LED_counter_cy<17>_rt  (
    .I0(LED_counter[17]),
    .O(\Mcount_LED_counter_cy<17>_rt_1130 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_LED_counter_cy<18>_rt  (
    .I0(LED_counter[18]),
    .O(\Mcount_LED_counter_cy<18>_rt_1131 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_crossWire_cy<1>_rt  (
    .I0(crossWire[1]),
    .O(\Mcount_crossWire_cy<1>_rt_1132 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_crossWire_cy<2>_rt  (
    .I0(crossWire[2]),
    .O(\Mcount_crossWire_cy<2>_rt_1133 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_crossWire_cy<3>_rt  (
    .I0(crossWire[3]),
    .O(\Mcount_crossWire_cy<3>_rt_1134 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_crossWire_cy<4>_rt  (
    .I0(crossWire[4]),
    .O(\Mcount_crossWire_cy<4>_rt_1135 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_crossWire_cy<5>_rt  (
    .I0(crossWire[5]),
    .O(\Mcount_crossWire_cy<5>_rt_1136 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_crossWire_cy<6>_rt  (
    .I0(crossWire[6]),
    .O(\Mcount_crossWire_cy<6>_rt_1137 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_crossWire_cy<7>_rt  (
    .I0(crossWire[7]),
    .O(\Mcount_crossWire_cy<7>_rt_1138 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_crossWire_cy<8>_rt  (
    .I0(crossWire[8]),
    .O(\Mcount_crossWire_cy<8>_rt_1139 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_crossWire_cy<9>_rt  (
    .I0(crossWire[9]),
    .O(\Mcount_crossWire_cy<9>_rt_1140 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_crossWire_cy<10>_rt  (
    .I0(crossWire[10]),
    .O(\Mcount_crossWire_cy<10>_rt_1141 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_crossWire_cy<11>_rt  (
    .I0(crossWire[11]),
    .O(\Mcount_crossWire_cy<11>_rt_1142 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_crossWire_cy<12>_rt  (
    .I0(crossWire[12]),
    .O(\Mcount_crossWire_cy<12>_rt_1143 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_crossWire_cy<13>_rt  (
    .I0(crossWire[13]),
    .O(\Mcount_crossWire_cy<13>_rt_1144 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_crossWire_cy<14>_rt  (
    .I0(crossWire[14]),
    .O(\Mcount_crossWire_cy<14>_rt_1145 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_counter_cy<1>_rt  (
    .I0(counter[1]),
    .O(\Mcount_counter_cy<1>_rt_1146 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_counter_cy<2>_rt  (
    .I0(counter[2]),
    .O(\Mcount_counter_cy<2>_rt_1147 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_counter_cy<3>_rt  (
    .I0(counter[3]),
    .O(\Mcount_counter_cy<3>_rt_1148 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_counter_cy<4>_rt  (
    .I0(counter[4]),
    .O(\Mcount_counter_cy<4>_rt_1149 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_counter_cy<5>_rt  (
    .I0(counter[5]),
    .O(\Mcount_counter_cy<5>_rt_1150 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_counter_cy<6>_rt  (
    .I0(counter[6]),
    .O(\Mcount_counter_cy<6>_rt_1151 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_counter_cy<7>_rt  (
    .I0(counter[7]),
    .O(\Mcount_counter_cy<7>_rt_1152 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_counter_cy<8>_rt  (
    .I0(counter[8]),
    .O(\Mcount_counter_cy<8>_rt_1153 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_counter_cy<9>_rt  (
    .I0(counter[9]),
    .O(\Mcount_counter_cy<9>_rt_1154 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_counter_cy<10>_rt  (
    .I0(counter[10]),
    .O(\Mcount_counter_cy<10>_rt_1155 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_counter_cy<11>_rt  (
    .I0(counter[11]),
    .O(\Mcount_counter_cy<11>_rt_1156 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \fifo/Mcount_micDividerPos_cy<6>_rt  (
    .I0(\fifo/micDividerPos [6]),
    .O(\fifo/Mcount_micDividerPos_cy<6>_rt_1157 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \fifo/Mcount_micDividerPos_cy<5>_rt  (
    .I0(\fifo/micDividerPos [5]),
    .O(\fifo/Mcount_micDividerPos_cy<5>_rt_1158 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \fifo/Mcount_micDividerPos_cy<4>_rt  (
    .I0(\fifo/micDividerPos [4]),
    .O(\fifo/Mcount_micDividerPos_cy<4>_rt_1159 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \fifo/Mcount_micDividerPos_cy<3>_rt  (
    .I0(\fifo/micDividerPos [3]),
    .O(\fifo/Mcount_micDividerPos_cy<3>_rt_1160 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \fifo/Mcount_micDividerPos_cy<2>_rt  (
    .I0(\fifo/micDividerPos [2]),
    .O(\fifo/Mcount_micDividerPos_cy<2>_rt_1161 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \fifo/Mcount_micDividerPos_cy<1>_rt  (
    .I0(\fifo/micDividerPos [1]),
    .O(\fifo/Mcount_micDividerPos_cy<1>_rt_1162 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \fifo/Mcount_micDividerNeg_cy<6>_rt  (
    .I0(\fifo/micDividerNeg [6]),
    .O(\fifo/Mcount_micDividerNeg_cy<6>_rt_1163 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \fifo/Mcount_micDividerNeg_cy<5>_rt  (
    .I0(\fifo/micDividerNeg [5]),
    .O(\fifo/Mcount_micDividerNeg_cy<5>_rt_1164 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \fifo/Mcount_micDividerNeg_cy<4>_rt  (
    .I0(\fifo/micDividerNeg [4]),
    .O(\fifo/Mcount_micDividerNeg_cy<4>_rt_1165 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \fifo/Mcount_micDividerNeg_cy<3>_rt  (
    .I0(\fifo/micDividerNeg [3]),
    .O(\fifo/Mcount_micDividerNeg_cy<3>_rt_1166 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \fifo/Mcount_micDividerNeg_cy<2>_rt  (
    .I0(\fifo/micDividerNeg [2]),
    .O(\fifo/Mcount_micDividerNeg_cy<2>_rt_1167 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \fifo/Mcount_micDividerNeg_cy<1>_rt  (
    .I0(\fifo/micDividerNeg [1]),
    .O(\fifo/Mcount_micDividerNeg_cy<1>_rt_1168 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_packetIndex_xor<12>_rt  (
    .I0(packetIndex[12]),
    .O(\Mcount_packetIndex_xor<12>_rt_1169 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_LED_counter_xor<19>_rt  (
    .I0(LED_counter[19]),
    .O(\Mcount_LED_counter_xor<19>_rt_1170 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_crossWire_xor<15>_rt  (
    .I0(crossWire[15]),
    .O(\Mcount_crossWire_xor<15>_rt_1171 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_counter_xor<12>_rt  (
    .I0(counter[12]),
    .O(\Mcount_counter_xor<12>_rt_1172 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \fifo/Mcount_micDividerPos_xor<7>_rt  (
    .I0(\fifo/micDividerPos [7]),
    .O(\fifo/Mcount_micDividerPos_xor<7>_rt_1173 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \fifo/Mcount_micDividerNeg_xor<7>_rt  (
    .I0(\fifo/micDividerNeg [7]),
    .O(\fifo/Mcount_micDividerNeg_xor<7>_rt_1174 )
  );
  FD #(
    .INIT ( 1'b0 ))
  fifoEn (
    .C(CLK_125_FAB),
    .D(fifoEn_rstpot_1175),
    .Q(fifoEn_79)
  );
  FD   TX_EN_SIG (
    .C(CLK_125_FAB),
    .D(TX_EN_SIG_rstpot),
    .Q(TX_EN_SIG_80)
  );
  FD_1 #(
    .INIT ( 1'b0 ))
  \fifo/micClkNeg  (
    .C(CLK_125_FAB),
    .D(\fifo/micClkNeg_rstpot_1177 ),
    .Q(\fifo/micClkNeg_645 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \fifo/micClkPos  (
    .C(CLK_125_FAB),
    .D(\fifo/micClkPos_rstpot_1178 ),
    .Q(\fifo/micClkPos_646 )
  );
  FD #(
    .INIT ( 1'b1 ))
  crcCt (
    .C(CLK_125_FAB),
    .D(crcCt_rstpot_1179),
    .Q(crcCt_151)
  );
  LUT5 #(
    .INIT ( 32'h7FFFFFFF ))
  _n0207_inv1 (
    .I0(\Mcompar_counter[31]_GND_1_o_LessThan_44_o_cy<5>_410 ),
    .I1(\Mcompar_counter[31]_GND_1_o_LessThan_39_o_cy<6>_395 ),
    .I2(\Mcompar_counter[31]_GND_1_o_LessThan_28_o_cy<6>_364 ),
    .I3(\Mcompar_counter[31]_GND_1_o_LessThan_23_o_cy<6>_348 ),
    .I4(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<5>_378 ),
    .O(TX_EN_SIG_rstpot)
  );
  LUT6 #(
    .INIT ( 64'h4000000000000000 ))
  _n01982 (
    .I0(fullEn),
    .I1(\Mcompar_counter[31]_GND_1_o_LessThan_44_o_cy<5>_410 ),
    .I2(\Mcompar_counter[31]_GND_1_o_LessThan_39_o_cy<6>_395 ),
    .I3(\Mcompar_counter[31]_GND_1_o_LessThan_28_o_cy<6>_364 ),
    .I4(\Mcompar_counter[31]_GND_1_o_LessThan_23_o_cy<6>_348 ),
    .I5(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<5>_378 ),
    .O(_n0198)
  );
  LUT6 #(
    .INIT ( 64'h7777777744404444 ))
  fifoEn_rstpot (
    .I0(\Mcompar_counter[31]_GND_1_o_LessThan_28_o_cy<6>_364 ),
    .I1(\Mcompar_counter[31]_GND_1_o_LessThan_23_o_cy<6>_348 ),
    .I2(\Mmux_GND_1_o_counter[31]_MUX_282_o14_954 ),
    .I3(\Mmux_GND_1_o_counter[31]_MUX_282_o13_953 ),
    .I4(counter[0]),
    .I5(\Mmux_GND_1_o_counter[31]_MUX_282_o12_952 ),
    .O(fifoEn_rstpot_1175)
  );
  LUT5 #(
    .INIT ( 32'hAA2AEAEA ))
  crcCt_rstpot (
    .I0(crcCt_151),
    .I1(\Mcompar_counter[31]_GND_1_o_LessThan_23_o_cy<6>_348 ),
    .I2(\Mcompar_counter[31]_GND_1_o_LessThan_28_o_cy<6>_364 ),
    .I3(\Mcompar_counter[31]_GND_1_o_LessThan_39_o_cy<6>_395 ),
    .I4(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<5>_378 ),
    .O(crcCt_rstpot_1179)
  );
  LUT4 #(
    .INIT ( 16'hA2EE ))
  crossCt_glue_rst (
    .I0(crossCt_81),
    .I1(\Mcompar_counter[31]_GND_1_o_LessThan_23_o_cy<6>_348 ),
    .I2(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<5>_378 ),
    .I3(\Mcompar_counter[31]_GND_1_o_LessThan_28_o_cy<6>_364 ),
    .O(crossCt_glue_rst_1088)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  cross_0_dpot (
    .I0(crossCt_81),
    .I1(cross[0]),
    .I2(crossWire[0]),
    .O(cross_0_dpot_1180)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  cross_1_dpot (
    .I0(crossCt_81),
    .I1(cross[1]),
    .I2(crossWire[1]),
    .O(cross_1_dpot_1181)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  cross_2_dpot (
    .I0(crossCt_81),
    .I1(cross[2]),
    .I2(crossWire[2]),
    .O(cross_2_dpot_1182)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  cross_3_dpot (
    .I0(crossCt_81),
    .I1(cross[3]),
    .I2(crossWire[3]),
    .O(cross_3_dpot_1183)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  cross_4_dpot (
    .I0(crossCt_81),
    .I1(cross[4]),
    .I2(crossWire[4]),
    .O(cross_4_dpot_1184)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  cross_5_dpot (
    .I0(crossCt_81),
    .I1(cross[5]),
    .I2(crossWire[5]),
    .O(cross_5_dpot_1185)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  cross_6_dpot (
    .I0(crossCt_81),
    .I1(cross[6]),
    .I2(crossWire[6]),
    .O(cross_6_dpot_1186)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  cross_7_dpot (
    .I0(crossCt_81),
    .I1(cross[7]),
    .I2(crossWire[7]),
    .O(cross_7_dpot_1187)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFAAAAAAA8 ))
  \GND_1_o_LED_counter[19]_LessThan_13_o1  (
    .I0(LED_counter[4]),
    .I1(LED_counter[2]),
    .I2(LED_counter[3]),
    .I3(LED_counter[0]),
    .I4(LED_counter[1]),
    .I5(LED_counter[5]),
    .O(\GND_1_o_LED_counter[19]_LessThan_13_o1_411 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \CRCCalc/Mxor__n0236_xo<0>2  (
    .I0(dataOut[7]),
    .I1(\CRCCalc/c [24]),
    .I2(\CRCCalc/c [30]),
    .O(\CRCCalc/_n0236 )
  );
  FD #(
    .INIT ( 1'b0 ))
  counter_0 (
    .C(CLK_125_FAB),
    .D(counter_0_rstpot_1204),
    .Q(counter[0])
  );
  FD #(
    .INIT ( 1'b0 ))
  counter_1 (
    .C(CLK_125_FAB),
    .D(counter_1_rstpot_1205),
    .Q(counter[1])
  );
  FD #(
    .INIT ( 1'b0 ))
  counter_2 (
    .C(CLK_125_FAB),
    .D(counter_2_rstpot_1206),
    .Q(counter[2])
  );
  FD #(
    .INIT ( 1'b0 ))
  counter_5 (
    .C(CLK_125_FAB),
    .D(counter_5_rstpot_1207),
    .Q(counter[5])
  );
  FD #(
    .INIT ( 1'b0 ))
  counter_6 (
    .C(CLK_125_FAB),
    .D(counter_6_rstpot_1208),
    .Q(counter[6])
  );
  FD #(
    .INIT ( 1'b0 ))
  counter_9 (
    .C(CLK_125_FAB),
    .D(counter_9_rstpot_1209),
    .Q(counter[9])
  );
  FD #(
    .INIT ( 1'b0 ))
  counter_10 (
    .C(CLK_125_FAB),
    .D(counter_10_rstpot_1210),
    .Q(counter[10])
  );
  FD #(
    .INIT ( 1'b0 ))
  counter_12 (
    .C(CLK_125_FAB),
    .D(counter_12_rstpot_1211),
    .Q(counter[12])
  );
  LUT4 #(
    .INIT ( 16'hDD0F ))
  counter_3_glue_rst_SW0 (
    .I0(counter[3]),
    .I1(fullEn),
    .I2(\Result<3>2 ),
    .I3(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<5>_378 ),
    .O(N35)
  );
  LUT6 #(
    .INIT ( 64'h2AAAAAAAEAAAAAAA ))
  counter_3_glue_rst (
    .I0(\Result<3>2 ),
    .I1(\Mcompar_counter[31]_GND_1_o_LessThan_39_o_cy<6>_395 ),
    .I2(\Mcompar_counter[31]_GND_1_o_LessThan_28_o_cy<6>_364 ),
    .I3(\Mcompar_counter[31]_GND_1_o_LessThan_23_o_cy<6>_348 ),
    .I4(\Mcompar_counter[31]_GND_1_o_LessThan_44_o_cy<5>_410 ),
    .I5(N35),
    .O(counter_3_glue_rst_1090)
  );
  LUT4 #(
    .INIT ( 16'hDD0F ))
  counter_4_glue_rst_SW0 (
    .I0(counter[4]),
    .I1(fullEn),
    .I2(\Result<4>2 ),
    .I3(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<5>_378 ),
    .O(N37)
  );
  LUT6 #(
    .INIT ( 64'h2AAAAAAAEAAAAAAA ))
  counter_4_glue_rst (
    .I0(\Result<4>2 ),
    .I1(\Mcompar_counter[31]_GND_1_o_LessThan_39_o_cy<6>_395 ),
    .I2(\Mcompar_counter[31]_GND_1_o_LessThan_28_o_cy<6>_364 ),
    .I3(\Mcompar_counter[31]_GND_1_o_LessThan_23_o_cy<6>_348 ),
    .I4(\Mcompar_counter[31]_GND_1_o_LessThan_44_o_cy<5>_410 ),
    .I5(N37),
    .O(counter_4_glue_rst_1091)
  );
  LUT4 #(
    .INIT ( 16'hDD0F ))
  counter_7_glue_rst_SW0 (
    .I0(counter[7]),
    .I1(fullEn),
    .I2(\Result<7>2 ),
    .I3(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<5>_378 ),
    .O(N39)
  );
  LUT6 #(
    .INIT ( 64'h2AAAAAAAEAAAAAAA ))
  counter_7_glue_rst (
    .I0(\Result<7>2 ),
    .I1(\Mcompar_counter[31]_GND_1_o_LessThan_39_o_cy<6>_395 ),
    .I2(\Mcompar_counter[31]_GND_1_o_LessThan_28_o_cy<6>_364 ),
    .I3(\Mcompar_counter[31]_GND_1_o_LessThan_23_o_cy<6>_348 ),
    .I4(\Mcompar_counter[31]_GND_1_o_LessThan_44_o_cy<5>_410 ),
    .I5(N39),
    .O(counter_7_glue_rst_1092)
  );
  LUT4 #(
    .INIT ( 16'hDD0F ))
  counter_8_glue_rst_SW0 (
    .I0(counter[8]),
    .I1(fullEn),
    .I2(\Result<8>2 ),
    .I3(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<5>_378 ),
    .O(N41)
  );
  LUT6 #(
    .INIT ( 64'h2AAAAAAAEAAAAAAA ))
  counter_8_glue_rst (
    .I0(\Result<8>2 ),
    .I1(\Mcompar_counter[31]_GND_1_o_LessThan_39_o_cy<6>_395 ),
    .I2(\Mcompar_counter[31]_GND_1_o_LessThan_28_o_cy<6>_364 ),
    .I3(\Mcompar_counter[31]_GND_1_o_LessThan_23_o_cy<6>_348 ),
    .I4(\Mcompar_counter[31]_GND_1_o_LessThan_44_o_cy<5>_410 ),
    .I5(N41),
    .O(counter_8_glue_rst_1093)
  );
  LUT4 #(
    .INIT ( 16'hDD0F ))
  counter_11_glue_rst_SW0 (
    .I0(counter[11]),
    .I1(fullEn),
    .I2(\Result<11>2 ),
    .I3(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<5>_378 ),
    .O(N43)
  );
  LUT6 #(
    .INIT ( 64'h2AAAAAAAEAAAAAAA ))
  counter_11_glue_rst (
    .I0(\Result<11>2 ),
    .I1(\Mcompar_counter[31]_GND_1_o_LessThan_39_o_cy<6>_395 ),
    .I2(\Mcompar_counter[31]_GND_1_o_LessThan_28_o_cy<6>_364 ),
    .I3(\Mcompar_counter[31]_GND_1_o_LessThan_23_o_cy<6>_348 ),
    .I4(\Mcompar_counter[31]_GND_1_o_LessThan_44_o_cy<5>_410 ),
    .I5(N43),
    .O(counter_11_glue_rst_1094)
  );
  LUT4 #(
    .INIT ( 16'hDD0F ))
  counter_0_rstpot_SW0 (
    .I0(counter[0]),
    .I1(fullEn),
    .I2(\Result<0>2 ),
    .I3(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<5>_378 ),
    .O(N45)
  );
  LUT6 #(
    .INIT ( 64'h2AAAAAAAEAAAAAAA ))
  counter_0_rstpot (
    .I0(\Result<0>2 ),
    .I1(\Mcompar_counter[31]_GND_1_o_LessThan_39_o_cy<6>_395 ),
    .I2(\Mcompar_counter[31]_GND_1_o_LessThan_28_o_cy<6>_364 ),
    .I3(\Mcompar_counter[31]_GND_1_o_LessThan_23_o_cy<6>_348 ),
    .I4(\Mcompar_counter[31]_GND_1_o_LessThan_44_o_cy<5>_410 ),
    .I5(N45),
    .O(counter_0_rstpot_1204)
  );
  LUT4 #(
    .INIT ( 16'hDD0F ))
  counter_1_rstpot_SW0 (
    .I0(counter[1]),
    .I1(fullEn),
    .I2(\Result<1>2 ),
    .I3(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<5>_378 ),
    .O(N47)
  );
  LUT6 #(
    .INIT ( 64'h2AAAAAAAEAAAAAAA ))
  counter_1_rstpot (
    .I0(\Result<1>2 ),
    .I1(\Mcompar_counter[31]_GND_1_o_LessThan_39_o_cy<6>_395 ),
    .I2(\Mcompar_counter[31]_GND_1_o_LessThan_28_o_cy<6>_364 ),
    .I3(\Mcompar_counter[31]_GND_1_o_LessThan_23_o_cy<6>_348 ),
    .I4(\Mcompar_counter[31]_GND_1_o_LessThan_44_o_cy<5>_410 ),
    .I5(N47),
    .O(counter_1_rstpot_1205)
  );
  LUT4 #(
    .INIT ( 16'hDD0F ))
  counter_2_rstpot_SW0 (
    .I0(counter[2]),
    .I1(fullEn),
    .I2(\Result<2>2 ),
    .I3(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<5>_378 ),
    .O(N49)
  );
  LUT6 #(
    .INIT ( 64'h2AAAAAAAEAAAAAAA ))
  counter_2_rstpot (
    .I0(\Result<2>2 ),
    .I1(\Mcompar_counter[31]_GND_1_o_LessThan_39_o_cy<6>_395 ),
    .I2(\Mcompar_counter[31]_GND_1_o_LessThan_28_o_cy<6>_364 ),
    .I3(\Mcompar_counter[31]_GND_1_o_LessThan_23_o_cy<6>_348 ),
    .I4(\Mcompar_counter[31]_GND_1_o_LessThan_44_o_cy<5>_410 ),
    .I5(N49),
    .O(counter_2_rstpot_1206)
  );
  LUT4 #(
    .INIT ( 16'hDD0F ))
  counter_5_rstpot_SW0 (
    .I0(counter[5]),
    .I1(fullEn),
    .I2(\Result<5>2 ),
    .I3(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<5>_378 ),
    .O(N51)
  );
  LUT6 #(
    .INIT ( 64'h2AAAAAAAEAAAAAAA ))
  counter_5_rstpot (
    .I0(\Result<5>2 ),
    .I1(\Mcompar_counter[31]_GND_1_o_LessThan_39_o_cy<6>_395 ),
    .I2(\Mcompar_counter[31]_GND_1_o_LessThan_28_o_cy<6>_364 ),
    .I3(\Mcompar_counter[31]_GND_1_o_LessThan_23_o_cy<6>_348 ),
    .I4(\Mcompar_counter[31]_GND_1_o_LessThan_44_o_cy<5>_410 ),
    .I5(N51),
    .O(counter_5_rstpot_1207)
  );
  LUT4 #(
    .INIT ( 16'hDD0F ))
  counter_6_rstpot_SW0 (
    .I0(counter[6]),
    .I1(fullEn),
    .I2(\Result<6>2 ),
    .I3(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<5>_378 ),
    .O(N53)
  );
  LUT6 #(
    .INIT ( 64'h2AAAAAAAEAAAAAAA ))
  counter_6_rstpot (
    .I0(\Result<6>2 ),
    .I1(\Mcompar_counter[31]_GND_1_o_LessThan_39_o_cy<6>_395 ),
    .I2(\Mcompar_counter[31]_GND_1_o_LessThan_28_o_cy<6>_364 ),
    .I3(\Mcompar_counter[31]_GND_1_o_LessThan_23_o_cy<6>_348 ),
    .I4(\Mcompar_counter[31]_GND_1_o_LessThan_44_o_cy<5>_410 ),
    .I5(N53),
    .O(counter_6_rstpot_1208)
  );
  LUT4 #(
    .INIT ( 16'hDD0F ))
  counter_9_rstpot_SW0 (
    .I0(counter[9]),
    .I1(fullEn),
    .I2(\Result<9>2 ),
    .I3(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<5>_378 ),
    .O(N55)
  );
  LUT6 #(
    .INIT ( 64'h2AAAAAAAEAAAAAAA ))
  counter_9_rstpot (
    .I0(\Result<9>2 ),
    .I1(\Mcompar_counter[31]_GND_1_o_LessThan_39_o_cy<6>_395 ),
    .I2(\Mcompar_counter[31]_GND_1_o_LessThan_28_o_cy<6>_364 ),
    .I3(\Mcompar_counter[31]_GND_1_o_LessThan_23_o_cy<6>_348 ),
    .I4(\Mcompar_counter[31]_GND_1_o_LessThan_44_o_cy<5>_410 ),
    .I5(N55),
    .O(counter_9_rstpot_1209)
  );
  LUT4 #(
    .INIT ( 16'hDD0F ))
  counter_10_rstpot_SW0 (
    .I0(counter[10]),
    .I1(fullEn),
    .I2(\Result<10>2 ),
    .I3(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<5>_378 ),
    .O(N57)
  );
  LUT6 #(
    .INIT ( 64'h2AAAAAAAEAAAAAAA ))
  counter_10_rstpot (
    .I0(\Result<10>2 ),
    .I1(\Mcompar_counter[31]_GND_1_o_LessThan_39_o_cy<6>_395 ),
    .I2(\Mcompar_counter[31]_GND_1_o_LessThan_28_o_cy<6>_364 ),
    .I3(\Mcompar_counter[31]_GND_1_o_LessThan_23_o_cy<6>_348 ),
    .I4(\Mcompar_counter[31]_GND_1_o_LessThan_44_o_cy<5>_410 ),
    .I5(N57),
    .O(counter_10_rstpot_1210)
  );
  LUT4 #(
    .INIT ( 16'hBB0F ))
  counter_12_rstpot_SW0 (
    .I0(fullEn),
    .I1(counter[12]),
    .I2(\Result<12>2 ),
    .I3(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<5>_378 ),
    .O(N59)
  );
  LUT6 #(
    .INIT ( 64'h2AAAAAAAEAAAAAAA ))
  counter_12_rstpot (
    .I0(\Result<12>2 ),
    .I1(\Mcompar_counter[31]_GND_1_o_LessThan_39_o_cy<6>_395 ),
    .I2(\Mcompar_counter[31]_GND_1_o_LessThan_28_o_cy<6>_364 ),
    .I3(\Mcompar_counter[31]_GND_1_o_LessThan_23_o_cy<6>_348 ),
    .I4(\Mcompar_counter[31]_GND_1_o_LessThan_44_o_cy<5>_410 ),
    .I5(N59),
    .O(counter_12_rstpot_1211)
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \CRCCalc/n0197_inv4_SW0  (
    .I0(pIMO[3]),
    .I1(pIMO[4]),
    .I2(pIMO[11]),
    .O(N61)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  \CRCCalc/n0197_inv4  (
    .I0(pIMO[12]),
    .I1(pIMO[13]),
    .I2(pIMO[14]),
    .I3(pIMO[15]),
    .I4(N61),
    .I5(\CRCCalc/n0197_inv1_1007 ),
    .O(\CRCCalc/n0197_inv )
  );
  LUT6 #(
    .INIT ( 64'hFCF0F8F0FCF0F0F0 ))
  \GND_1_o_LED_counter[19]_LessThan_13_o34_SW0  (
    .I0(LED_counter[6]),
    .I1(LED_counter[8]),
    .I2(LED_counter[12]),
    .I3(LED_counter[9]),
    .I4(LED_counter[7]),
    .I5(\GND_1_o_LED_counter[19]_LessThan_13_o1_411 ),
    .O(N63)
  );
  LUT6 #(
    .INIT ( 64'hFFFFC0C0FFFFC080 ))
  \GND_1_o_LED_counter[19]_LessThan_13_o34  (
    .I0(LED_counter[13]),
    .I1(LED_counter[15]),
    .I2(LED_counter[14]),
    .I3(\GND_1_o_LED_counter[19]_LessThan_6_o11 ),
    .I4(\GND_1_o_LED_counter[19]_LessThan_13_o3 ),
    .I5(N63),
    .O(\GND_1_o_LED_counter[19]_LessThan_13_o )
  );
  LUT5 #(
    .INIT ( 32'h80000000 ))
  \GND_1_o_LED_counter[19]_LessThan_11_o35_SW0  (
    .I0(LED_counter[4]),
    .I1(LED_counter[5]),
    .I2(LED_counter[6]),
    .I3(LED_counter[8]),
    .I4(LED_counter[7]),
    .O(N65)
  );
  LUT6 #(
    .INIT ( 64'hFFCCFFC8FFC8FFC8 ))
  \GND_1_o_LED_counter[19]_LessThan_11_o35  (
    .I0(LED_counter[10]),
    .I1(LED_counter[11]),
    .I2(LED_counter[9]),
    .I3(\GND_1_o_LED_counter[19]_LessThan_11_o31_983 ),
    .I4(\GND_1_o_LED_counter[19]_LessThan_11_o4 ),
    .I5(N65),
    .O(\GND_1_o_LED_counter[19]_LessThan_11_o34 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \CRCCalc/Mxor__n0239_xo<0>2  (
    .I0(\CRCCalc/c [29]),
    .I1(\CRCCalc/c [26]),
    .I2(dataOut[5]),
    .O(\CRCCalc/_n0239 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \fifo/micClkNeg_rstpot  (
    .I0(\fifo/GND_8_o_GND_8_o_equal_7_o ),
    .I1(\fifo/micClkNeg_645 ),
    .O(\fifo/micClkNeg_rstpot_1177 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \fifo/micClkPos_rstpot  (
    .I0(\fifo/GND_8_o_GND_8_o_equal_2_o ),
    .I1(\fifo/micClkPos_646 ),
    .O(\fifo/micClkPos_rstpot_1178 )
  );
  LUT5 #(
    .INIT ( 32'h82282882 ))
  \Mmux_crc[23]_crcWire[23]_mux_39_OUT51  (
    .I0(crcCt_151),
    .I1(\CRCCalc/_n0247 ),
    .I2(\CRCCalc/c [31]),
    .I3(dataOut[0]),
    .I4(dataOut[1]),
    .O(\crc[23]_crcWire[23]_mux_39_OUT<14> )
  );
  LUT6 #(
    .INIT ( 64'h2882822882282882 ))
  \Mmux_crc[23]_crcWire[23]_mux_39_OUT31  (
    .I0(crcCt_151),
    .I1(\CRCCalc/_n0269 ),
    .I2(dataOut[0]),
    .I3(dataOut[4]),
    .I4(\CRCCalc/c [27]),
    .I5(\CRCCalc/c [31]),
    .O(\crc[23]_crcWire[23]_mux_39_OUT<12> )
  );
  LUT5 #(
    .INIT ( 32'h7DD72882 ))
  \Mmux_crc[23]_crcWire[23]_mux_39_OUT181  (
    .I0(crcCt_151),
    .I1(\CRCCalc/c [12]),
    .I2(\CRCCalc/c [28]),
    .I3(dataOut[3]),
    .I4(crc[19]),
    .O(\crc[23]_crcWire[23]_mux_39_OUT<27> )
  );
  LUT5 #(
    .INIT ( 32'h7DD72882 ))
  \Mmux_crc[23]_crcWire[23]_mux_39_OUT171  (
    .I0(crcCt_151),
    .I1(\CRCCalc/c [13]),
    .I2(\CRCCalc/c [29]),
    .I3(dataOut[2]),
    .I4(crc[18]),
    .O(\crc[23]_crcWire[23]_mux_39_OUT<26> )
  );
  LUT5 #(
    .INIT ( 32'h82282882 ))
  \Mmux_crc[23]_crcWire[23]_mux_39_OUT61  (
    .I0(crcCt_151),
    .I1(dataOut[1]),
    .I2(\CRCCalc/c [30]),
    .I3(\CRCCalc/c [24]),
    .I4(dataOut[7]),
    .O(\crc[23]_crcWire[23]_mux_39_OUT<15> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  crossWire_15_dpot (
    .I0(crossCt_81),
    .I1(\Result<15>1 ),
    .I2(crossWire[15]),
    .O(crossWire_15_dpot_1203)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  crossWire_14_dpot (
    .I0(crossCt_81),
    .I1(\Result<14>1 ),
    .I2(crossWire[14]),
    .O(crossWire_14_dpot_1202)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  crossWire_13_dpot (
    .I0(crossCt_81),
    .I1(\Result<13>1 ),
    .I2(crossWire[13]),
    .O(crossWire_13_dpot_1201)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  crossWire_12_dpot (
    .I0(crossCt_81),
    .I1(\Result<12>1 ),
    .I2(crossWire[12]),
    .O(crossWire_12_dpot_1200)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  crossWire_11_dpot (
    .I0(crossCt_81),
    .I1(\Result<11>1 ),
    .I2(crossWire[11]),
    .O(crossWire_11_dpot_1199)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  crossWire_10_dpot (
    .I0(crossCt_81),
    .I1(\Result<10>1 ),
    .I2(crossWire[10]),
    .O(crossWire_10_dpot_1198)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  crossWire_9_dpot (
    .I0(crossCt_81),
    .I1(\Result<9>1 ),
    .I2(crossWire[9]),
    .O(crossWire_9_dpot_1197)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  crossWire_8_dpot (
    .I0(crossCt_81),
    .I1(\Result<8>1 ),
    .I2(crossWire[8]),
    .O(crossWire_8_dpot_1196)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  crossWire_7_dpot (
    .I0(crossCt_81),
    .I1(\Result<7>1 ),
    .I2(crossWire[7]),
    .O(crossWire_7_dpot_1195)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  crossWire_6_dpot (
    .I0(crossCt_81),
    .I1(\Result<6>1 ),
    .I2(crossWire[6]),
    .O(crossWire_6_dpot_1194)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  crossWire_5_dpot (
    .I0(crossCt_81),
    .I1(\Result<5>1 ),
    .I2(crossWire[5]),
    .O(crossWire_5_dpot_1193)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  crossWire_4_dpot (
    .I0(crossCt_81),
    .I1(\Result<4>1 ),
    .I2(crossWire[4]),
    .O(crossWire_4_dpot_1192)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  crossWire_3_dpot (
    .I0(crossCt_81),
    .I1(\Result<3>1 ),
    .I2(crossWire[3]),
    .O(crossWire_3_dpot_1191)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  crossWire_2_dpot (
    .I0(crossCt_81),
    .I1(\Result<2>1 ),
    .I2(crossWire[2]),
    .O(crossWire_2_dpot_1190)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  crossWire_1_dpot (
    .I0(crossCt_81),
    .I1(\Result<1>1 ),
    .I2(crossWire[1]),
    .O(crossWire_1_dpot_1189)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  crossWire_0_dpot (
    .I0(crossCt_81),
    .I1(\Result<0>1 ),
    .I2(crossWire[0]),
    .O(crossWire_0_dpot_1188)
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \CRCCalc/Mxor_newcrc<22>_xo<0>1  (
    .I0(\CRCCalc/c [14]),
    .I1(\CRCCalc/c [24]),
    .I2(dataOut[7]),
    .O(\CRCCalc/newcrc [22])
  );
  LUT5 #(
    .INIT ( 32'h7DD72882 ))
  \Mmux_crc[23]_crcWire[23]_mux_39_OUT161  (
    .I0(crcCt_151),
    .I1(\CRCCalc/c [14]),
    .I2(\CRCCalc/c [24]),
    .I3(dataOut[7]),
    .I4(crc[17]),
    .O(\crc[23]_crcWire[23]_mux_39_OUT<25> )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  _n02301_rstpot (
    .I0(\Mcompar_counter[31]_GND_1_o_LessThan_28_o_cy<6>_364 ),
    .I1(\Mcompar_counter[31]_GND_1_o_LessThan_23_o_cy<6>_348 ),
    .I2(\Mcompar_counter[31]_GND_1_o_LessThan_39_o_cy<6>_395 ),
    .O(_n02301_rstpot_1228)
  );
  FD #(
    .INIT ( 1'b0 ))
  packetIndex_0 (
    .C(CLK_125_FAB),
    .D(packetIndex_0_rstpot_1253),
    .Q(packetIndex[0])
  );
  FD #(
    .INIT ( 1'b0 ))
  packetIndex_1 (
    .C(CLK_125_FAB),
    .D(packetIndex_1_rstpot_1254),
    .Q(packetIndex[1])
  );
  FD #(
    .INIT ( 1'b0 ))
  packetIndex_2 (
    .C(CLK_125_FAB),
    .D(packetIndex_2_rstpot_1255),
    .Q(packetIndex[2])
  );
  FD #(
    .INIT ( 1'b0 ))
  packetIndex_3 (
    .C(CLK_125_FAB),
    .D(packetIndex_3_rstpot_1256),
    .Q(packetIndex[3])
  );
  FD #(
    .INIT ( 1'b0 ))
  packetIndex_4 (
    .C(CLK_125_FAB),
    .D(packetIndex_4_rstpot_1257),
    .Q(packetIndex[4])
  );
  FD #(
    .INIT ( 1'b0 ))
  packetIndex_5 (
    .C(CLK_125_FAB),
    .D(packetIndex_5_rstpot_1258),
    .Q(packetIndex[5])
  );
  FD #(
    .INIT ( 1'b0 ))
  packetIndex_6 (
    .C(CLK_125_FAB),
    .D(packetIndex_6_rstpot_1259),
    .Q(packetIndex[6])
  );
  FD #(
    .INIT ( 1'b0 ))
  packetIndex_7 (
    .C(CLK_125_FAB),
    .D(packetIndex_7_rstpot_1260),
    .Q(packetIndex[7])
  );
  FD #(
    .INIT ( 1'b0 ))
  packetIndex_8 (
    .C(CLK_125_FAB),
    .D(packetIndex_8_rstpot_1261),
    .Q(packetIndex[8])
  );
  FD #(
    .INIT ( 1'b0 ))
  packetIndex_9 (
    .C(CLK_125_FAB),
    .D(packetIndex_9_rstpot_1262),
    .Q(packetIndex[9])
  );
  FD #(
    .INIT ( 1'b0 ))
  packetIndex_10 (
    .C(CLK_125_FAB),
    .D(packetIndex_10_rstpot_1263),
    .Q(packetIndex[10])
  );
  FD #(
    .INIT ( 1'b0 ))
  packetIndex_11 (
    .C(CLK_125_FAB),
    .D(packetIndex_11_rstpot_1264),
    .Q(packetIndex[11])
  );
  FD #(
    .INIT ( 1'b0 ))
  packetIndex_12 (
    .C(CLK_125_FAB),
    .D(packetIndex_12_rstpot_1265),
    .Q(packetIndex[12])
  );
  FD #(
    .INIT ( 1'b0 ))
  counter_12_1 (
    .C(CLK_125_FAB),
    .D(counter_12_rstpot_1211),
    .Q(counter_12_1_1266)
  );
  LUT4 #(
    .INIT ( 16'h5D08 ))
  crc_8_dpot (
    .I0(_n02301_rstpot_1228),
    .I1(crcCt_151),
    .I2(\CRCCalc/newcrc [7]),
    .I3(crc[8]),
    .O(crc_8_dpot_1229)
  );
  LUT4 #(
    .INIT ( 16'h5D08 ))
  crc_9_dpot (
    .I0(_n02301_rstpot_1228),
    .I1(crcCt_151),
    .I2(\CRCCalc/newcrc [6]),
    .I3(crc[9]),
    .O(crc_9_dpot_1230)
  );
  LUT4 #(
    .INIT ( 16'h5D08 ))
  crc_10_dpot (
    .I0(_n02301_rstpot_1228),
    .I1(crcCt_151),
    .I2(\CRCCalc/newcrc [5]),
    .I3(crc[10]),
    .O(crc_10_dpot_1231)
  );
  LUT4 #(
    .INIT ( 16'h5D08 ))
  crc_11_dpot (
    .I0(_n02301_rstpot_1228),
    .I1(crcCt_151),
    .I2(\CRCCalc/newcrc [4]),
    .I3(crc[11]),
    .O(crc_11_dpot_1232)
  );
  LUT4 #(
    .INIT ( 16'h5D08 ))
  crc_13_dpot (
    .I0(_n02301_rstpot_1228),
    .I1(crcCt_151),
    .I2(\CRCCalc/newcrc [2]),
    .I3(crc[13]),
    .O(crc_13_dpot_1234)
  );
  LUT5 #(
    .INIT ( 32'h75FD20A8 ))
  crc_16_dpot (
    .I0(_n02301_rstpot_1228),
    .I1(crcCt_151),
    .I2(crc[8]),
    .I3(\CRCCalc/newcrc [15]),
    .I4(crc[16]),
    .O(crc_16_dpot_1237)
  );
  LUT5 #(
    .INIT ( 32'h75FD20A8 ))
  crc_17_dpot (
    .I0(_n02301_rstpot_1228),
    .I1(crcCt_151),
    .I2(crc[9]),
    .I3(\CRCCalc/newcrc [14]),
    .I4(crc[17]),
    .O(crc_17_dpot_1238)
  );
  LUT5 #(
    .INIT ( 32'h75FD20A8 ))
  crc_18_dpot (
    .I0(_n02301_rstpot_1228),
    .I1(crcCt_151),
    .I2(crc[10]),
    .I3(\CRCCalc/newcrc [13]),
    .I4(crc[18]),
    .O(crc_18_dpot_1239)
  );
  LUT5 #(
    .INIT ( 32'h75FD20A8 ))
  crc_19_dpot (
    .I0(_n02301_rstpot_1228),
    .I1(crcCt_151),
    .I2(crc[11]),
    .I3(\CRCCalc/newcrc [12]),
    .I4(crc[19]),
    .O(crc_19_dpot_1240)
  );
  LUT5 #(
    .INIT ( 32'h75FD20A8 ))
  crc_20_dpot (
    .I0(_n02301_rstpot_1228),
    .I1(crcCt_151),
    .I2(crc[12]),
    .I3(\CRCCalc/newcrc [11]),
    .I4(crc[20]),
    .O(crc_20_dpot_1241)
  );
  LUT5 #(
    .INIT ( 32'h75FD20A8 ))
  crc_21_dpot (
    .I0(_n02301_rstpot_1228),
    .I1(crcCt_151),
    .I2(crc[13]),
    .I3(\CRCCalc/newcrc [10]),
    .I4(crc[21]),
    .O(crc_21_dpot_1242)
  );
  LUT5 #(
    .INIT ( 32'h75FD20A8 ))
  crc_22_dpot (
    .I0(_n02301_rstpot_1228),
    .I1(crcCt_151),
    .I2(crc[14]),
    .I3(\CRCCalc/newcrc [9]),
    .I4(crc[22]),
    .O(crc_22_dpot_1243)
  );
  LUT5 #(
    .INIT ( 32'h75FD20A8 ))
  crc_23_dpot (
    .I0(_n02301_rstpot_1228),
    .I1(crcCt_151),
    .I2(crc[15]),
    .I3(\CRCCalc/newcrc [8]),
    .I4(crc[23]),
    .O(crc_23_dpot_1244)
  );
  LUT5 #(
    .INIT ( 32'h75FD20A8 ))
  crc_24_dpot (
    .I0(_n02301_rstpot_1228),
    .I1(crcCt_151),
    .I2(crc[16]),
    .I3(\CRCCalc/newcrc [23]),
    .I4(crc[24]),
    .O(crc_24_dpot_1245)
  );
  LUT5 #(
    .INIT ( 32'h75FD20A8 ))
  crc_28_dpot (
    .I0(_n02301_rstpot_1228),
    .I1(crcCt_151),
    .I2(crc[20]),
    .I3(\CRCCalc/newcrc [19]),
    .I4(crc[28]),
    .O(crc_28_dpot_1249)
  );
  LUT5 #(
    .INIT ( 32'h75FD20A8 ))
  crc_29_dpot (
    .I0(_n02301_rstpot_1228),
    .I1(crcCt_151),
    .I2(crc[21]),
    .I3(\CRCCalc/newcrc [18]),
    .I4(crc[29]),
    .O(crc_29_dpot_1250)
  );
  LUT5 #(
    .INIT ( 32'h75FD20A8 ))
  crc_30_dpot (
    .I0(_n02301_rstpot_1228),
    .I1(crcCt_151),
    .I2(crc[22]),
    .I3(\CRCCalc/newcrc [17]),
    .I4(crc[30]),
    .O(crc_30_dpot_1251)
  );
  LUT5 #(
    .INIT ( 32'h75FD20A8 ))
  crc_31_dpot (
    .I0(_n02301_rstpot_1228),
    .I1(crcCt_151),
    .I2(crc[23]),
    .I3(\CRCCalc/newcrc [16]),
    .I4(crc[31]),
    .O(crc_31_dpot_1252)
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  crc_12_dpot (
    .I0(crc[12]),
    .I1(\Mcompar_counter[31]_GND_1_o_LessThan_28_o_cy<6>_364 ),
    .I2(\Mcompar_counter[31]_GND_1_o_LessThan_39_o_cy<6>_395 ),
    .I3(\Mcompar_counter[31]_GND_1_o_LessThan_23_o_cy<6>_348 ),
    .I4(\crc[23]_crcWire[23]_mux_39_OUT<12> ),
    .O(crc_12_dpot_1233)
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  crc_15_dpot (
    .I0(crc[15]),
    .I1(\Mcompar_counter[31]_GND_1_o_LessThan_28_o_cy<6>_364 ),
    .I2(\Mcompar_counter[31]_GND_1_o_LessThan_39_o_cy<6>_395 ),
    .I3(\Mcompar_counter[31]_GND_1_o_LessThan_23_o_cy<6>_348 ),
    .I4(\crc[23]_crcWire[23]_mux_39_OUT<15> ),
    .O(crc_15_dpot_1236)
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  crc_25_dpot (
    .I0(crc[25]),
    .I1(\Mcompar_counter[31]_GND_1_o_LessThan_28_o_cy<6>_364 ),
    .I2(\Mcompar_counter[31]_GND_1_o_LessThan_39_o_cy<6>_395 ),
    .I3(\Mcompar_counter[31]_GND_1_o_LessThan_23_o_cy<6>_348 ),
    .I4(\crc[23]_crcWire[23]_mux_39_OUT<25> ),
    .O(crc_25_dpot_1246)
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  crc_26_dpot (
    .I0(crc[26]),
    .I1(\Mcompar_counter[31]_GND_1_o_LessThan_28_o_cy<6>_364 ),
    .I2(\Mcompar_counter[31]_GND_1_o_LessThan_39_o_cy<6>_395 ),
    .I3(\Mcompar_counter[31]_GND_1_o_LessThan_23_o_cy<6>_348 ),
    .I4(\crc[23]_crcWire[23]_mux_39_OUT<26> ),
    .O(crc_26_dpot_1247)
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  crc_27_dpot (
    .I0(crc[27]),
    .I1(\Mcompar_counter[31]_GND_1_o_LessThan_28_o_cy<6>_364 ),
    .I2(\Mcompar_counter[31]_GND_1_o_LessThan_39_o_cy<6>_395 ),
    .I3(\Mcompar_counter[31]_GND_1_o_LessThan_23_o_cy<6>_348 ),
    .I4(\crc[23]_crcWire[23]_mux_39_OUT<27> ),
    .O(crc_27_dpot_1248)
  );
  LUT5 #(
    .INIT ( 32'hAEAAA2AA ))
  crc_14_dpot (
    .I0(crc[14]),
    .I1(\Mcompar_counter[31]_GND_1_o_LessThan_28_o_cy<6>_364 ),
    .I2(\Mcompar_counter[31]_GND_1_o_LessThan_39_o_cy<6>_395 ),
    .I3(\Mcompar_counter[31]_GND_1_o_LessThan_23_o_cy<6>_348 ),
    .I4(\crc[23]_crcWire[23]_mux_39_OUT<14> ),
    .O(crc_14_dpot_1235)
  );
  LUT6 #(
    .INIT ( 64'h2AAAAAAAAAAAAAAA ))
  packetIndex_0_rstpot (
    .I0(Result[0]),
    .I1(\Mcompar_counter[31]_GND_1_o_LessThan_39_o_cy<6>_395 ),
    .I2(\Mcompar_counter[31]_GND_1_o_LessThan_44_o_cy<5>_410 ),
    .I3(\Mcompar_counter[31]_GND_1_o_LessThan_23_o_cy<6>_348 ),
    .I4(\Mcompar_counter[31]_GND_1_o_LessThan_28_o_cy<6>_364 ),
    .I5(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<5>_378 ),
    .O(packetIndex_0_rstpot_1253)
  );
  LUT6 #(
    .INIT ( 64'h2AAAAAAAAAAAAAAA ))
  packetIndex_1_rstpot (
    .I0(Result[1]),
    .I1(\Mcompar_counter[31]_GND_1_o_LessThan_39_o_cy<6>_395 ),
    .I2(\Mcompar_counter[31]_GND_1_o_LessThan_44_o_cy<5>_410 ),
    .I3(\Mcompar_counter[31]_GND_1_o_LessThan_23_o_cy<6>_348 ),
    .I4(\Mcompar_counter[31]_GND_1_o_LessThan_28_o_cy<6>_364 ),
    .I5(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<5>_378 ),
    .O(packetIndex_1_rstpot_1254)
  );
  LUT6 #(
    .INIT ( 64'h2AAAAAAAAAAAAAAA ))
  packetIndex_2_rstpot (
    .I0(Result[2]),
    .I1(\Mcompar_counter[31]_GND_1_o_LessThan_39_o_cy<6>_395 ),
    .I2(\Mcompar_counter[31]_GND_1_o_LessThan_44_o_cy<5>_410 ),
    .I3(\Mcompar_counter[31]_GND_1_o_LessThan_23_o_cy<6>_348 ),
    .I4(\Mcompar_counter[31]_GND_1_o_LessThan_28_o_cy<6>_364 ),
    .I5(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<5>_378 ),
    .O(packetIndex_2_rstpot_1255)
  );
  LUT6 #(
    .INIT ( 64'h2AAAAAAAAAAAAAAA ))
  packetIndex_3_rstpot (
    .I0(Result[3]),
    .I1(\Mcompar_counter[31]_GND_1_o_LessThan_39_o_cy<6>_395 ),
    .I2(\Mcompar_counter[31]_GND_1_o_LessThan_44_o_cy<5>_410 ),
    .I3(\Mcompar_counter[31]_GND_1_o_LessThan_23_o_cy<6>_348 ),
    .I4(\Mcompar_counter[31]_GND_1_o_LessThan_28_o_cy<6>_364 ),
    .I5(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<5>_378 ),
    .O(packetIndex_3_rstpot_1256)
  );
  LUT6 #(
    .INIT ( 64'h2AAAAAAAAAAAAAAA ))
  packetIndex_4_rstpot (
    .I0(Result[4]),
    .I1(\Mcompar_counter[31]_GND_1_o_LessThan_39_o_cy<6>_395 ),
    .I2(\Mcompar_counter[31]_GND_1_o_LessThan_44_o_cy<5>_410 ),
    .I3(\Mcompar_counter[31]_GND_1_o_LessThan_23_o_cy<6>_348 ),
    .I4(\Mcompar_counter[31]_GND_1_o_LessThan_28_o_cy<6>_364 ),
    .I5(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<5>_378 ),
    .O(packetIndex_4_rstpot_1257)
  );
  LUT6 #(
    .INIT ( 64'h2AAAAAAAAAAAAAAA ))
  packetIndex_5_rstpot (
    .I0(Result[5]),
    .I1(\Mcompar_counter[31]_GND_1_o_LessThan_39_o_cy<6>_395 ),
    .I2(\Mcompar_counter[31]_GND_1_o_LessThan_44_o_cy<5>_410 ),
    .I3(\Mcompar_counter[31]_GND_1_o_LessThan_23_o_cy<6>_348 ),
    .I4(\Mcompar_counter[31]_GND_1_o_LessThan_28_o_cy<6>_364 ),
    .I5(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<5>_378 ),
    .O(packetIndex_5_rstpot_1258)
  );
  LUT6 #(
    .INIT ( 64'h2AAAAAAAAAAAAAAA ))
  packetIndex_6_rstpot (
    .I0(Result[6]),
    .I1(\Mcompar_counter[31]_GND_1_o_LessThan_39_o_cy<6>_395 ),
    .I2(\Mcompar_counter[31]_GND_1_o_LessThan_44_o_cy<5>_410 ),
    .I3(\Mcompar_counter[31]_GND_1_o_LessThan_23_o_cy<6>_348 ),
    .I4(\Mcompar_counter[31]_GND_1_o_LessThan_28_o_cy<6>_364 ),
    .I5(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<5>_378 ),
    .O(packetIndex_6_rstpot_1259)
  );
  LUT6 #(
    .INIT ( 64'h2AAAAAAAAAAAAAAA ))
  packetIndex_7_rstpot (
    .I0(Result[7]),
    .I1(\Mcompar_counter[31]_GND_1_o_LessThan_39_o_cy<6>_395 ),
    .I2(\Mcompar_counter[31]_GND_1_o_LessThan_44_o_cy<5>_410 ),
    .I3(\Mcompar_counter[31]_GND_1_o_LessThan_23_o_cy<6>_348 ),
    .I4(\Mcompar_counter[31]_GND_1_o_LessThan_28_o_cy<6>_364 ),
    .I5(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<5>_378 ),
    .O(packetIndex_7_rstpot_1260)
  );
  LUT6 #(
    .INIT ( 64'h2AAAAAAAAAAAAAAA ))
  packetIndex_8_rstpot (
    .I0(Result[8]),
    .I1(\Mcompar_counter[31]_GND_1_o_LessThan_39_o_cy<6>_395 ),
    .I2(\Mcompar_counter[31]_GND_1_o_LessThan_44_o_cy<5>_410 ),
    .I3(\Mcompar_counter[31]_GND_1_o_LessThan_23_o_cy<6>_348 ),
    .I4(\Mcompar_counter[31]_GND_1_o_LessThan_28_o_cy<6>_364 ),
    .I5(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<5>_378 ),
    .O(packetIndex_8_rstpot_1261)
  );
  LUT6 #(
    .INIT ( 64'h2AAAAAAAAAAAAAAA ))
  packetIndex_9_rstpot (
    .I0(Result[9]),
    .I1(\Mcompar_counter[31]_GND_1_o_LessThan_39_o_cy<6>_395 ),
    .I2(\Mcompar_counter[31]_GND_1_o_LessThan_44_o_cy<5>_410 ),
    .I3(\Mcompar_counter[31]_GND_1_o_LessThan_23_o_cy<6>_348 ),
    .I4(\Mcompar_counter[31]_GND_1_o_LessThan_28_o_cy<6>_364 ),
    .I5(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<5>_378 ),
    .O(packetIndex_9_rstpot_1262)
  );
  LUT6 #(
    .INIT ( 64'h2AAAAAAAAAAAAAAA ))
  packetIndex_10_rstpot (
    .I0(Result[10]),
    .I1(\Mcompar_counter[31]_GND_1_o_LessThan_39_o_cy<6>_395 ),
    .I2(\Mcompar_counter[31]_GND_1_o_LessThan_44_o_cy<5>_410 ),
    .I3(\Mcompar_counter[31]_GND_1_o_LessThan_23_o_cy<6>_348 ),
    .I4(\Mcompar_counter[31]_GND_1_o_LessThan_28_o_cy<6>_364 ),
    .I5(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<5>_378 ),
    .O(packetIndex_10_rstpot_1263)
  );
  LUT6 #(
    .INIT ( 64'h2AAAAAAAAAAAAAAA ))
  packetIndex_11_rstpot (
    .I0(Result[11]),
    .I1(\Mcompar_counter[31]_GND_1_o_LessThan_39_o_cy<6>_395 ),
    .I2(\Mcompar_counter[31]_GND_1_o_LessThan_44_o_cy<5>_410 ),
    .I3(\Mcompar_counter[31]_GND_1_o_LessThan_23_o_cy<6>_348 ),
    .I4(\Mcompar_counter[31]_GND_1_o_LessThan_28_o_cy<6>_364 ),
    .I5(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<5>_378 ),
    .O(packetIndex_11_rstpot_1264)
  );
  LUT6 #(
    .INIT ( 64'h2AAAAAAAAAAAAAAA ))
  packetIndex_12_rstpot (
    .I0(Result[12]),
    .I1(\Mcompar_counter[31]_GND_1_o_LessThan_39_o_cy<6>_395 ),
    .I2(\Mcompar_counter[31]_GND_1_o_LessThan_44_o_cy<5>_410 ),
    .I3(\Mcompar_counter[31]_GND_1_o_LessThan_23_o_cy<6>_348 ),
    .I4(\Mcompar_counter[31]_GND_1_o_LessThan_28_o_cy<6>_364 ),
    .I5(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<5>_378 ),
    .O(packetIndex_12_rstpot_1265)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  _n0256_inv11_rstpot (
    .I0(\Mcompar_counter[31]_GND_1_o_LessThan_23_o_cy<6>_348 ),
    .I1(\Mcompar_counter[31]_GND_1_o_LessThan_28_o_cy<6>_364 ),
    .O(_n0256_inv11_rstpot_1267)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  cross_0_dpot1 (
    .I0(_n0256_inv11_rstpot_1267),
    .I1(cross[0]),
    .I2(cross_0_dpot_1180),
    .O(cross_0_dpot1_1269)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  cross_1_dpot1 (
    .I0(_n0256_inv11_rstpot_1267),
    .I1(cross[1]),
    .I2(cross_1_dpot_1181),
    .O(cross_1_dpot1_1270)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  cross_2_dpot1 (
    .I0(_n0256_inv11_rstpot_1267),
    .I1(cross[2]),
    .I2(cross_2_dpot_1182),
    .O(cross_2_dpot1_1271)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  cross_3_dpot1 (
    .I0(_n0256_inv11_rstpot_1267),
    .I1(cross[3]),
    .I2(cross_3_dpot_1183),
    .O(cross_3_dpot1_1272)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  cross_4_dpot1 (
    .I0(_n0256_inv11_rstpot_1267),
    .I1(cross[4]),
    .I2(cross_4_dpot_1184),
    .O(cross_4_dpot1_1273)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  cross_5_dpot1 (
    .I0(_n0256_inv11_rstpot_1267),
    .I1(cross[5]),
    .I2(cross_5_dpot_1185),
    .O(cross_5_dpot1_1274)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  cross_6_dpot1 (
    .I0(_n0256_inv11_rstpot_1267),
    .I1(cross[6]),
    .I2(cross_6_dpot_1186),
    .O(cross_6_dpot1_1275)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  cross_7_dpot1 (
    .I0(_n0256_inv11_rstpot_1267),
    .I1(cross[7]),
    .I2(cross_7_dpot_1187),
    .O(cross_7_dpot1_1276)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  crossWire_0_dpot1 (
    .I0(_n0256_inv11_rstpot_1267),
    .I1(crossWire[0]),
    .I2(crossWire_0_dpot_1188),
    .O(crossWire_0_dpot1_1277)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  crossWire_1_dpot1 (
    .I0(_n0256_inv11_rstpot_1267),
    .I1(crossWire[1]),
    .I2(crossWire_1_dpot_1189),
    .O(crossWire_1_dpot1_1278)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  crossWire_2_dpot1 (
    .I0(_n0256_inv11_rstpot_1267),
    .I1(crossWire[2]),
    .I2(crossWire_2_dpot_1190),
    .O(crossWire_2_dpot1_1279)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  crossWire_3_dpot1 (
    .I0(_n0256_inv11_rstpot_1267),
    .I1(crossWire[3]),
    .I2(crossWire_3_dpot_1191),
    .O(crossWire_3_dpot1_1280)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  crossWire_4_dpot1 (
    .I0(_n0256_inv11_rstpot_1267),
    .I1(crossWire[4]),
    .I2(crossWire_4_dpot_1192),
    .O(crossWire_4_dpot1_1281)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  crossWire_5_dpot1 (
    .I0(_n0256_inv11_rstpot_1267),
    .I1(crossWire[5]),
    .I2(crossWire_5_dpot_1193),
    .O(crossWire_5_dpot1_1282)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  crossWire_6_dpot1 (
    .I0(_n0256_inv11_rstpot_1267),
    .I1(crossWire[6]),
    .I2(crossWire_6_dpot_1194),
    .O(crossWire_6_dpot1_1283)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  crossWire_7_dpot1 (
    .I0(_n0256_inv11_rstpot_1267),
    .I1(crossWire[7]),
    .I2(crossWire_7_dpot_1195),
    .O(crossWire_7_dpot1_1284)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  crossWire_8_dpot1 (
    .I0(_n0256_inv11_rstpot_1267),
    .I1(crossWire[8]),
    .I2(crossWire_8_dpot_1196),
    .O(crossWire_8_dpot1_1285)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  crossWire_9_dpot1 (
    .I0(_n0256_inv11_rstpot_1267),
    .I1(crossWire[9]),
    .I2(crossWire_9_dpot_1197),
    .O(crossWire_9_dpot1_1286)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  crossWire_10_dpot1 (
    .I0(_n0256_inv11_rstpot_1267),
    .I1(crossWire[10]),
    .I2(crossWire_10_dpot_1198),
    .O(crossWire_10_dpot1_1287)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  crossWire_11_dpot1 (
    .I0(_n0256_inv11_rstpot_1267),
    .I1(crossWire[11]),
    .I2(crossWire_11_dpot_1199),
    .O(crossWire_11_dpot1_1288)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  crossWire_12_dpot1 (
    .I0(_n0256_inv11_rstpot_1267),
    .I1(crossWire[12]),
    .I2(crossWire_12_dpot_1200),
    .O(crossWire_12_dpot1_1289)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  crossWire_13_dpot1 (
    .I0(_n0256_inv11_rstpot_1267),
    .I1(crossWire[13]),
    .I2(crossWire_13_dpot_1201),
    .O(crossWire_13_dpot1_1290)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  crossWire_14_dpot1 (
    .I0(_n0256_inv11_rstpot_1267),
    .I1(crossWire[14]),
    .I2(crossWire_14_dpot_1202),
    .O(crossWire_14_dpot1_1291)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  crossWire_15_dpot1 (
    .I0(_n0256_inv11_rstpot_1267),
    .I1(crossWire[15]),
    .I2(crossWire_15_dpot_1203),
    .O(crossWire_15_dpot1_1292)
  );
  BUFG   P6D_CLK_OBUF_BUFG (
    .O(P6D_CLK_OBUF_BUFG_65),
    .I(P6D_CLK_OBUF_1293)
  );
  INV   \Msub_pIMO_lut<1>_INV_0  (
    .I(packetIndex[1]),
    .O(Msub_pIMO_lut[1])
  );
  INV   \Msub_pIMO_lut<2>_INV_0  (
    .I(packetIndex[2]),
    .O(Msub_pIMO_lut[2])
  );
  INV   \Msub_pIMO_lut<3>_INV_0  (
    .I(packetIndex[3]),
    .O(Msub_pIMO_lut[3])
  );
  INV   \Msub_pIMO_lut<4>_INV_0  (
    .I(packetIndex[4]),
    .O(Msub_pIMO_lut[4])
  );
  INV   \Msub_pIMO_lut<5>_INV_0  (
    .I(packetIndex[5]),
    .O(Msub_pIMO_lut[5])
  );
  INV   \Msub_pIMO_lut<6>_INV_0  (
    .I(packetIndex[6]),
    .O(Msub_pIMO_lut[6])
  );
  INV   \Msub_pIMO_lut<7>_INV_0  (
    .I(packetIndex[7]),
    .O(Msub_pIMO_lut[7])
  );
  INV   \Msub_pIMO_lut<8>_INV_0  (
    .I(packetIndex[8]),
    .O(Msub_pIMO_lut[8])
  );
  INV   \Msub_pIMO_lut<9>_INV_0  (
    .I(packetIndex[9]),
    .O(Msub_pIMO_lut[9])
  );
  INV   \Msub_pIMO_lut<10>_INV_0  (
    .I(packetIndex[10]),
    .O(Msub_pIMO_lut[10])
  );
  INV   \Msub_pIMO_lut<11>_INV_0  (
    .I(packetIndex[11]),
    .O(Msub_pIMO_lut[11])
  );
  INV   \Msub_pIMO_lut<12>_INV_0  (
    .I(packetIndex[12]),
    .O(Msub_pIMO_lut[12])
  );
  INV   \Msub_pIMO_lut<13>_INV_0  (
    .I(packetIndex[12]),
    .O(Msub_pIMO_lut[13])
  );
  INV   \Msub_pIMO_lut<14>_INV_0  (
    .I(packetIndex[12]),
    .O(Msub_pIMO_lut[14])
  );
  INV   \Mcompar_counter[31]_GND_1_o_LessThan_23_o_lut<6>_INV_0  (
    .I(counter[12]),
    .O(\Mcompar_counter[31]_GND_1_o_LessThan_23_o_lut<6> )
  );
  INV   \Mcompar_counter[31]_GND_1_o_LessThan_28_o_lut<6>_INV_0  (
    .I(counter[12]),
    .O(\Mcompar_counter[31]_GND_1_o_LessThan_28_o_lut<6> )
  );
  INV   \Mcount_packetIndex_lut<0>_INV_0  (
    .I(packetIndex[0]),
    .O(Mcount_packetIndex_lut[0])
  );
  INV   \Mcount_LED_counter_lut<0>_INV_0  (
    .I(LED_counter[0]),
    .O(Mcount_LED_counter_lut[0])
  );
  INV   \Mcount_crossWire_lut<0>_INV_0  (
    .I(crossWire[0]),
    .O(Mcount_crossWire_lut[0])
  );
  INV   \Mcount_counter_lut<0>_INV_0  (
    .I(counter[0]),
    .O(Mcount_counter_lut[0])
  );
  INV   \fifo/Mcount_micDividerPos_lut<0>_INV_0  (
    .I(\fifo/micDividerPos [0]),
    .O(\fifo/Mcount_micDividerPos_lut [0])
  );
  INV   \fifo/Mcount_micDividerNeg_lut<0>_INV_0  (
    .I(\fifo/micDividerNeg [0]),
    .O(\fifo/Mcount_micDividerNeg_lut [0])
  );
  INV   CLK_125_IO_INV_44_o1_INV_0 (
    .I(CLK_125_IO),
    .O(CLK_125_IO_INV_44_o)
  );
  INV   CLK_125_90_INV_46_o1_INV_0 (
    .I(CLK_125_90),
    .O(CLK_125_90_INV_46_o)
  );
  INV   \fifo/clk_inv1_INV_0  (
    .I(CLK_125_FAB),
    .O(\fifo/clk_inv )
  );
  INV   \Mcompar_counter[31]_GND_1_o_LessThan_23_o_lut<3>1_INV_0  (
    .I(counter[12]),
    .O(\Mcompar_counter[31]_GND_1_o_LessThan_23_o_lut<3> )
  );
  INV   \Mcompar_counter[31]_GND_1_o_LessThan_23_o_lut<4>1_INV_0  (
    .I(counter[12]),
    .O(\Mcompar_counter[31]_GND_1_o_LessThan_23_o_lut<4> )
  );
  INV   \Mcompar_counter[31]_GND_1_o_LessThan_23_o_lut<5>1_INV_0  (
    .I(counter[12]),
    .O(\Mcompar_counter[31]_GND_1_o_LessThan_23_o_lut<5> )
  );
  INV   \Mcompar_counter[31]_GND_1_o_LessThan_28_o_lut<3>1_INV_0  (
    .I(counter_12_1_1266),
    .O(\Mcompar_counter[31]_GND_1_o_LessThan_28_o_lut<3> )
  );
  INV   \Mcompar_counter[31]_GND_1_o_LessThan_28_o_lut<4>1_INV_0  (
    .I(counter_12_1_1266),
    .O(\Mcompar_counter[31]_GND_1_o_LessThan_28_o_lut<4> )
  );
  INV   \Mcompar_counter[31]_GND_1_o_LessThan_28_o_lut<5>1_INV_0  (
    .I(counter[12]),
    .O(\Mcompar_counter[31]_GND_1_o_LessThan_28_o_lut<5> )
  );
  INV   \Mcompar_counter[31]_GND_1_o_LessThan_32_o_lut<2>1_INV_0  (
    .I(counter_12_1_1266),
    .O(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_lut<2> )
  );
  INV   \Mcompar_counter[31]_GND_1_o_LessThan_32_o_lut<3>1_INV_0  (
    .I(counter_12_1_1266),
    .O(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_lut<3> )
  );
  INV   \Mcompar_counter[31]_GND_1_o_LessThan_32_o_lut<4>1_INV_0  (
    .I(counter_12_1_1266),
    .O(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_lut<4> )
  );
  INV   \Mcompar_counter[31]_GND_1_o_LessThan_32_o_lut<5>1_INV_0  (
    .I(counter_12_1_1266),
    .O(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_lut<5> )
  );
  INV   \Mcompar_counter[31]_GND_1_o_LessThan_39_o_lut<3>1_INV_0  (
    .I(counter_12_1_1266),
    .O(\Mcompar_counter[31]_GND_1_o_LessThan_39_o_lut<3> )
  );
  INV   \Mcompar_counter[31]_GND_1_o_LessThan_39_o_lut<4>1_INV_0  (
    .I(counter_12_1_1266),
    .O(\Mcompar_counter[31]_GND_1_o_LessThan_39_o_lut<4> )
  );
  INV   \Mcompar_counter[31]_GND_1_o_LessThan_39_o_lut<5>1_INV_0  (
    .I(counter_12_1_1266),
    .O(\Mcompar_counter[31]_GND_1_o_LessThan_39_o_lut<5> )
  );
  INV   \Mcompar_counter[31]_GND_1_o_LessThan_39_o_lut<6>1_INV_0  (
    .I(counter_12_1_1266),
    .O(\Mcompar_counter[31]_GND_1_o_LessThan_39_o_lut<6> )
  );
  INV   \Mcompar_counter[31]_GND_1_o_LessThan_44_o_lut<2>1_INV_0  (
    .I(counter[12]),
    .O(\Mcompar_counter[31]_GND_1_o_LessThan_44_o_lut<2> )
  );
  INV   \Mcompar_counter[31]_GND_1_o_LessThan_44_o_lut<3>1_INV_0  (
    .I(counter[12]),
    .O(\Mcompar_counter[31]_GND_1_o_LessThan_44_o_lut<3> )
  );
  INV   \Mcompar_counter[31]_GND_1_o_LessThan_44_o_lut<4>1_INV_0  (
    .I(counter[12]),
    .O(\Mcompar_counter[31]_GND_1_o_LessThan_44_o_lut<4> )
  );
  INV   \Mcompar_counter[31]_GND_1_o_LessThan_44_o_lut<5>1_INV_0  (
    .I(counter[12]),
    .O(\Mcompar_counter[31]_GND_1_o_LessThan_44_o_lut<5> )
  );
  INV   \Msub_pIMO_lut<12>1_INV_0  (
    .I(packetIndex[12]),
    .O(\Msub_pIMO_lut<12>1 )
  );
  INV   \fifo/byteCounter_0_glue_set_INV_0  (
    .I(\fifo/byteCounter [0]),
    .O(\fifo/byteCounter_0_glue_set )
  );
  INV   _n0256_inv11_cepot_INV_0 (
    .I(\Mcompar_counter[31]_GND_1_o_LessThan_32_o_cy<5>_378 ),
    .O(_n0256_inv11_cepot)
  );
  MUXF7   \fifo/Mmux_data[7]_fifoData[7]_mux_28_OUT1_SW0  (
    .I0(N67),
    .I1(N68),
    .S(\fifo/byteCounter [2]),
    .O(N7)
  );
  LUT5 #(
    .INIT ( 32'h151FB5BF ))
  \fifo/Mmux_data[7]_fifoData[7]_mux_28_OUT1_SW0_F  (
    .I0(\fifo/byteCounter [0]),
    .I1(\fifo/fifoData [16]),
    .I2(\fifo/byteCounter [1]),
    .I3(\fifo/fifoData [8]),
    .I4(\fifo/fifoData [24]),
    .O(N67)
  );
  LUT6 #(
    .INIT ( 64'h028A46CE139B57DF ))
  \fifo/Mmux_data[7]_fifoData[7]_mux_28_OUT1_SW0_G  (
    .I0(\fifo/byteCounter [0]),
    .I1(\fifo/byteCounter [1]),
    .I2(\fifo/fifoData [40]),
    .I3(\fifo/fifoData [56]),
    .I4(\fifo/fifoData [48]),
    .I5(\fifo/fifoData [32]),
    .O(N68)
  );
  PLL_BASE #(
    .BANDWIDTH ( "OPTIMIZED" ),
    .CLK_FEEDBACK ( "CLKFBOUT" ),
    .COMPENSATION ( "SYSTEM_SYNCHRONOUS" ),
    .RESET_ON_LOSS_OF_LOCK ( "FALSE" ),
    .CLKFBOUT_MULT ( 20 ),
    .CLKOUT0_DIVIDE ( 4 ),
    .CLKOUT1_DIVIDE ( 4 ),
    .CLKOUT2_DIVIDE ( 4 ),
    .CLKOUT3_DIVIDE ( 4 ),
    .CLKOUT4_DIVIDE ( 1 ),
    .CLKOUT5_DIVIDE ( 1 ),
    .DIVCLK_DIVIDE ( 1 ),
    .CLKFBOUT_PHASE ( 0.000000 ),
    .CLKIN_PERIOD ( 40.000000 ),
    .CLKOUT0_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT0_PHASE ( 0.000000 ),
    .CLKOUT1_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT1_PHASE ( 0.000000 ),
    .CLKOUT2_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT2_PHASE ( 0.000000 ),
    .CLKOUT3_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT3_PHASE ( 45.000000 ),
    .CLKOUT4_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT4_PHASE ( 0.000000 ),
    .CLKOUT5_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT5_PHASE ( 0.000000 ),
    .REF_JITTER ( 0.010000 ))
  \PHYMultiplier/pll_base_inst  (
    .CLKIN(\PHYMultiplier/clkin1 ),
    .CLKOUT3(\PHYMultiplier/clkout3 ),
    .CLKFBIN(\PHYMultiplier/clkfbout_buf ),
    .CLKOUT1(\PHYMultiplier/clkout1 ),
    .CLKOUT0(\PHYMultiplier/clkout0 ),
    .CLKFBOUT(\PHYMultiplier/clkfbout ),
    .CLKOUT2(\PHYMultiplier/clkout2 ),
    .RST(TX_ERR_SIG),
    .CLKOUT4(\NLW_PHYMultiplier/pll_base_inst_CLKOUT4_UNCONNECTED ),
    .CLKOUT5(\NLW_PHYMultiplier/pll_base_inst_CLKOUT5_UNCONNECTED ),
    .LOCKED(\NLW_PHYMultiplier/pll_base_inst_LOCKED_UNCONNECTED )
  );
  MicFifo   \fifo/fifo  (
    .clk(CLK_125_FAB),
    .srst(TX_ERR_SIG),
    .wr_en(\fifo/wr_en_676 ),
    .rd_en(\fifo/rd_en_663 ),
    .full(\NLW_fifo/fifo_full_UNCONNECTED ),
    .almost_full(\NLW_fifo/fifo_almost_full_UNCONNECTED ),
    .overflow(\NLW_fifo/fifo_overflow_UNCONNECTED ),
    .empty(\NLW_fifo/fifo_empty_UNCONNECTED ),
    .almost_empty(\NLW_fifo/fifo_almost_empty_UNCONNECTED ),
    .prog_full(fullEn),
    .din({\fifo/micL [47], \fifo/micL [46], \fifo/micL [45], \fifo/micL [44], \fifo/micL [43], \fifo/micL [42], \fifo/micL [41], \fifo/micL [40], 
\fifo/micL [39], \fifo/micL [38], \fifo/micL [37], \fifo/micL [36], \fifo/micL [35], \fifo/micL [34], \fifo/micL [33], \fifo/micL [32], 
\fifo/micL [31], \fifo/micL [30], \fifo/micL [29], \fifo/micL [28], \fifo/micL [27], \fifo/micL [26], \fifo/micL [25], \fifo/micL [24], 
\fifo/micL [23], \fifo/micL [22], \fifo/micL [21], \fifo/micL [20], \fifo/micL [19], \fifo/micL [18], \fifo/micL [17], \fifo/micL [16], 
\fifo/micL [15], \fifo/micL [14], \fifo/micL [13], \fifo/micL [12], \fifo/micL [11], \fifo/micL [10], \fifo/micL [9], \fifo/micL [8], \fifo/micL [7], 
\fifo/micL [6], \fifo/micL [5], \fifo/micL [4], \fifo/micL [3], \fifo/micL [2], \fifo/micL [1], \fifo/micL [0], \fifo/micR [47], \fifo/micR [46], 
\fifo/micR [45], \fifo/micR [44], \fifo/micR [43], \fifo/micR [42], \fifo/micR [41], \fifo/micR [40], \fifo/micR [39], \fifo/micR [38], 
\fifo/micR [37], \fifo/micR [36], \fifo/micR [35], \fifo/micR [34], \fifo/micR [33], \fifo/micR [32], \fifo/micR [31], \fifo/micR [30], 
\fifo/micR [29], \fifo/micR [28], \fifo/micR [27], \fifo/micR [26], \fifo/micR [25], \fifo/micR [24], \fifo/micR [23], \fifo/micR [22], 
\fifo/micR [21], \fifo/micR [20], \fifo/micR [19], \fifo/micR [18], \fifo/micR [17], \fifo/micR [16], \fifo/micR [15], \fifo/micR [14], 
\fifo/micR [13], \fifo/micR [12], \fifo/micR [11], \fifo/micR [10], \fifo/micR [9], \fifo/micR [8], \fifo/micR [7], \fifo/micR [6], \fifo/micR [5], 
\fifo/micR [4], \fifo/micR [3], \fifo/micR [2], \fifo/micR [1], \fifo/micR [0]}),
    .dout({\fifo/dout [95], \fifo/dout [94], \fifo/dout [93], \fifo/dout [92], \fifo/dout [91], \fifo/dout [90], \fifo/dout [89], \fifo/dout [88], 
\fifo/dout [87], \fifo/dout [86], \fifo/dout [85], \fifo/dout [84], \fifo/dout [83], \fifo/dout [82], \fifo/dout [81], \fifo/dout [80], 
\fifo/dout [79], \fifo/dout [78], \fifo/dout [77], \fifo/dout [76], \fifo/dout [75], \fifo/dout [74], \fifo/dout [73], \fifo/dout [72], 
\fifo/dout [71], \fifo/dout [70], \fifo/dout [69], \fifo/dout [68], \fifo/dout [67], \fifo/dout [66], \fifo/dout [65], \fifo/dout [64], 
\fifo/dout [63], \fifo/dout [62], \fifo/dout [61], \fifo/dout [60], \fifo/dout [59], \fifo/dout [58], \fifo/dout [57], \fifo/dout [56], 
\fifo/dout [55], \fifo/dout [54], \fifo/dout [53], \fifo/dout [52], \fifo/dout [51], \fifo/dout [50], \fifo/dout [49], \fifo/dout [48], 
\fifo/dout [47], \fifo/dout [46], \fifo/dout [45], \fifo/dout [44], \fifo/dout [43], \fifo/dout [42], \fifo/dout [41], \fifo/dout [40], 
\fifo/dout [39], \fifo/dout [38], \fifo/dout [37], \fifo/dout [36], \fifo/dout [35], \fifo/dout [34], \fifo/dout [33], \fifo/dout [32], 
\fifo/dout [31], \fifo/dout [30], \fifo/dout [29], \fifo/dout [28], \fifo/dout [27], \fifo/dout [26], \fifo/dout [25], \fifo/dout [24], 
\fifo/dout [23], \fifo/dout [22], \fifo/dout [21], \fifo/dout [20], \fifo/dout [19], \fifo/dout [18], \fifo/dout [17], \fifo/dout [16], 
\fifo/dout [15], \fifo/dout [14], \fifo/dout [13], \fifo/dout [12], \fifo/dout [11], \fifo/dout [10], \fifo/dout [9], \fifo/dout [8], \fifo/dout [7], 
\fifo/dout [6], \fifo/dout [5], \fifo/dout [4], \fifo/dout [3], \fifo/dout [2], \fifo/dout [1], \fifo/dout [0]})
  );

// synthesis translate_on

endmodule

// synthesis translate_off

`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

// synthesis translate_on
