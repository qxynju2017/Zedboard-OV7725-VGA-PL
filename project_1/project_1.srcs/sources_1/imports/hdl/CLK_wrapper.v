//Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2015.4.2 (win64) Build 1494164 Fri Feb 26 04:18:56 MST 2016
//Date        : Sun Oct 02 23:19:53 2016
//Host        : MS-20160614LQQV running 64-bit Service Pack 1  (build 7601)
//Command     : generate_target CLK_wrapper.bd
//Design      : CLK_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module CLK_wrapper
   (clk_in1,
    clk_out1,
    locked);
  input clk_in1;
  output clk_out1;
  output locked;

  wire clk_in1;
  wire clk_out1;
  wire locked;

  CLK CLK_i
       (.clk_in1(clk_in1),
        .clk_out1(clk_out1),
        .locked(locked));
endmodule
