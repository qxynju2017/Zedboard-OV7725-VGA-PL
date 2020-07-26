//Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2015.4.2 (win64) Build 1494164 Fri Feb 26 04:18:56 MST 2016
//Date        : Mon Oct 03 15:42:54 2016
//Host        : MS-20160614LQQV running 64-bit Service Pack 1  (build 7601)
//Command     : generate_target DPRAM.bd
//Design      : DPRAM
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "DPRAM,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=DPRAM,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,synth_mode=Global}" *) (* HW_HANDOFF = "DPRAM.hwdef" *) 
module DPRAM
   (BRAM_PORTA_addr,
    BRAM_PORTA_clk,
    BRAM_PORTA_din,
    BRAM_PORTA_en,
    BRAM_PORTA_we,
    BRAM_PORTB_addr,
    BRAM_PORTB_clk,
    BRAM_PORTB_dout,
    BRAM_PORTB_en);
  input [18:0]BRAM_PORTA_addr;
  input BRAM_PORTA_clk;
  input [11:0]BRAM_PORTA_din;
  input BRAM_PORTA_en;
  input [0:0]BRAM_PORTA_we;
  input [18:0]BRAM_PORTB_addr;
  input BRAM_PORTB_clk;
  output [11:0]BRAM_PORTB_dout;
  input BRAM_PORTB_en;

  wire [18:0]BRAM_PORTA_1_ADDR;
  wire BRAM_PORTA_1_CLK;
  wire [11:0]BRAM_PORTA_1_DIN;
  wire BRAM_PORTA_1_EN;
  wire [0:0]BRAM_PORTA_1_WE;
  wire [18:0]BRAM_PORTB_1_ADDR;
  wire BRAM_PORTB_1_CLK;
  wire [11:0]BRAM_PORTB_1_DOUT;
  wire BRAM_PORTB_1_EN;

  assign BRAM_PORTA_1_ADDR = BRAM_PORTA_addr[18:0];
  assign BRAM_PORTA_1_CLK = BRAM_PORTA_clk;
  assign BRAM_PORTA_1_DIN = BRAM_PORTA_din[11:0];
  assign BRAM_PORTA_1_EN = BRAM_PORTA_en;
  assign BRAM_PORTA_1_WE = BRAM_PORTA_we[0];
  assign BRAM_PORTB_1_ADDR = BRAM_PORTB_addr[18:0];
  assign BRAM_PORTB_1_CLK = BRAM_PORTB_clk;
  assign BRAM_PORTB_1_EN = BRAM_PORTB_en;
  assign BRAM_PORTB_dout[11:0] = BRAM_PORTB_1_DOUT;
  DPRAM_blk_mem_gen_0_0 blk_mem_gen_0
       (.addra(BRAM_PORTA_1_ADDR),
        .addrb(BRAM_PORTB_1_ADDR),
        .clka(BRAM_PORTA_1_CLK),
        .clkb(BRAM_PORTB_1_CLK),
        .dina(BRAM_PORTA_1_DIN),
        .doutb(BRAM_PORTB_1_DOUT),
        .ena(BRAM_PORTA_1_EN),
        .enb(BRAM_PORTB_1_EN),
        .wea(BRAM_PORTA_1_WE));
endmodule
