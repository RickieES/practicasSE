////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.15xf
//  \   \         Application: netgen
//  /   /         Filename: user_logic_synthesis.v
// /___/   /\     Timestamp: Wed Nov 16 17:24:41 2022
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim user_logic.ngc user_logic_synthesis.v 
// Device	: xc3s1000-5-ft256
// Input file	: user_logic.ngc
// Output file	: U:\hlocal\practicasSE-main\practica4\pcores\nrvgap_v1_00_a\devl\projnav\netgen\synthesis\user_logic_synthesis.v
// # of Modules	: 1
// Design Name	: user_logic
// Xilinx        : C:\software\electronica\xilinx\14.1\ISE_DS\ISE\
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

module user_logic (
  IP2Bus_WrAck, mover_derecha_pin, vsyncb, mover_izquierda_pin, IP2Bus_Error, Bus2IP_Clk, WFIFO2IP_AlmostEmpty, hsyncb, WFIFO2IP_RdAck, WFIFO2IP_Empty
, IP2Bus_RdAck, Bus2IP_Reset, IP2WFIFO_RdReq, rgb, IP2Bus_Data, Bus2IP_Data, Bus2IP_RdCE, Bus2IP_WrCE, WFIFO2IP_Data, Bus2IP_BE
);
  output IP2Bus_WrAck;
  input mover_derecha_pin;
  output vsyncb;
  input mover_izquierda_pin;
  output IP2Bus_Error;
  input Bus2IP_Clk;
  input WFIFO2IP_AlmostEmpty;
  output hsyncb;
  input WFIFO2IP_RdAck;
  input WFIFO2IP_Empty;
  output IP2Bus_RdAck;
  input Bus2IP_Reset;
  output IP2WFIFO_RdReq;
  output [8 : 0] rgb;
  output [0 : 31] IP2Bus_Data;
  input [0 : 31] Bus2IP_Data;
  input [0 : 0] Bus2IP_RdCE;
  input [0 : 0] Bus2IP_WrCE;
  input [0 : 31] WFIFO2IP_Data;
  input [0 : 3] Bus2IP_BE;
  wire Bus2IP_Clk_BUFGP_1;
  wire Bus2IP_Reset_IBUF_3;
  wire Bus2IP_Reset_inv;
  wire IP2Bus_Data_31_OBUF_37;
  wire IP2WFIFO_RdReq_OBUF_42;
  wire Mcount_cuenta;
  wire Mcount_cuenta1;
  wire N22;
  wire N23;
  wire N25;
  wire N26;
  wire N3;
  wire N49;
  wire N5;
  wire N51;
  wire N53;
  wire N55;
  wire N57;
  wire N59;
  wire N61;
  wire N63;
  wire N73;
  wire N74;
  wire N76;
  wire N79;
  wire N80;
  wire WFIFO2IP_Data_0_IBUF_82;
  wire WFIFO2IP_Data_1_IBUF_83;
  wire WFIFO2IP_Data_25_IBUF_84;
  wire WFIFO2IP_Data_26_IBUF_85;
  wire WFIFO2IP_Data_27_IBUF_86;
  wire WFIFO2IP_Data_28_IBUF_87;
  wire WFIFO2IP_Data_29_IBUF_88;
  wire WFIFO2IP_Data_2_IBUF_89;
  wire WFIFO2IP_Data_30_IBUF_90;
  wire WFIFO2IP_Data_31_IBUF_91;
  wire WFIFO2IP_Data_3_IBUF_92;
  wire WFIFO2IP_Data_4_IBUF_93;
  wire WFIFO2IP_Data_5_IBUF_94;
  wire WFIFO2IP_Data_6_IBUF_95;
  wire WFIFO2IP_Data_7_IBUF_96;
  wire WFIFO2IP_Data_8_IBUF_97;
  wire WFIFO2IP_Empty_IBUF_99;
  wire clock_100;
  wire clock1;
  wire cuenta_cmp_eq0000;
  wire fifo_rdreq_cmb;
  wire nextStateLectura;
  wire rgb_0_OBUF_118;
  wire rgb_1_OBUF_119;
  wire rgb_2_OBUF_120;
  wire rgb_3_OBUF_121;
  wire rgb_4_OBUF_122;
  wire rgb_5_OBUF_123;
  wire rgb_6_OBUF_124;
  wire rgb_7_OBUF_125;
  wire rgb_8_OBUF_126;
  wire \vga/Mcount_hcnt ;
  wire \vga/Mcount_hcnt1 ;
  wire \vga/Mcount_hcnt2 ;
  wire \vga/Mcount_hcnt3 ;
  wire \vga/Mcount_hcnt4 ;
  wire \vga/Mcount_hcnt5 ;
  wire \vga/Mcount_hcnt6 ;
  wire \vga/Mcount_hcnt7 ;
  wire \vga/Mcount_hcnt8 ;
  wire \vga/Mcount_vcnt ;
  wire \vga/Mcount_vcnt1 ;
  wire \vga/Mcount_vcnt2 ;
  wire \vga/Mcount_vcnt3 ;
  wire \vga/Mcount_vcnt4 ;
  wire \vga/Mcount_vcnt5 ;
  wire \vga/Mcount_vcnt6 ;
  wire \vga/Mcount_vcnt7 ;
  wire \vga/Mcount_vcnt8 ;
  wire \vga/Mcount_vcnt9 ;
  wire \vga/N101 ;
  wire \vga/N103 ;
  wire \vga/N105 ;
  wire \vga/N107 ;
  wire \vga/N109 ;
  wire \vga/N11 ;
  wire \vga/N111 ;
  wire \vga/N113 ;
  wire \vga/N115 ;
  wire \vga/N117 ;
  wire \vga/N119 ;
  wire \vga/N121 ;
  wire \vga/N123 ;
  wire \vga/N125 ;
  wire \vga/N127 ;
  wire \vga/N129 ;
  wire \vga/N13 ;
  wire \vga/N131 ;
  wire \vga/N133 ;
  wire \vga/N135 ;
  wire \vga/N137 ;
  wire \vga/N139 ;
  wire \vga/N141 ;
  wire \vga/N143 ;
  wire \vga/N145 ;
  wire \vga/N147 ;
  wire \vga/N149 ;
  wire \vga/N15 ;
  wire \vga/N151 ;
  wire \vga/N153 ;
  wire \vga/N17 ;
  wire \vga/N19 ;
  wire \vga/N21 ;
  wire \vga/N23 ;
  wire \vga/N25 ;
  wire \vga/N27 ;
  wire \vga/N29 ;
  wire \vga/N31 ;
  wire \vga/N33 ;
  wire \vga/N35 ;
  wire \vga/N37 ;
  wire \vga/N39 ;
  wire \vga/N41 ;
  wire \vga/N43 ;
  wire \vga/N45 ;
  wire \vga/N47 ;
  wire \vga/N49 ;
  wire \vga/N51 ;
  wire \vga/N53 ;
  wire \vga/N55 ;
  wire \vga/N57 ;
  wire \vga/N59 ;
  wire \vga/N61 ;
  wire \vga/N63 ;
  wire \vga/N65 ;
  wire \vga/N67 ;
  wire \vga/N69 ;
  wire \vga/N71 ;
  wire \vga/N73 ;
  wire \vga/N75 ;
  wire \vga/N77 ;
  wire \vga/N79 ;
  wire \vga/N81 ;
  wire \vga/N83 ;
  wire \vga/N85 ;
  wire \vga/N87 ;
  wire \vga/N89 ;
  wire \vga/N91 ;
  wire \vga/N93 ;
  wire \vga/N95 ;
  wire \vga/N97 ;
  wire \vga/N99 ;
  wire \vga/hcnt_not0001_inv ;
  wire \vga/hsyncbAux_275 ;
  wire \vga/hsyncbAux_mux0001 ;
  wire \vga/hsyncbAux_mux000112_277 ;
  wire \vga/hsyncbAux_mux000117_278 ;
  wire \vga/hsyncbAux_mux000165_279 ;
  wire \vga/hsyncbAux_mux000177_280 ;
  wire \vga/inst_LPM_MUX1_3_f5_281 ;
  wire \vga/inst_LPM_MUX1_4_282 ;
  wire \vga/inst_LPM_MUX1_4_f5_283 ;
  wire \vga/inst_LPM_MUX1_5_284 ;
  wire \vga/inst_LPM_MUX1_51_285 ;
  wire \vga/inst_LPM_MUX1_6_286 ;
  wire \vga/inst_LPM_MUX2_3_f5_287 ;
  wire \vga/inst_LPM_MUX2_4_288 ;
  wire \vga/inst_LPM_MUX2_4_f5_289 ;
  wire \vga/inst_LPM_MUX2_5_290 ;
  wire \vga/inst_LPM_MUX2_51_291 ;
  wire \vga/inst_LPM_MUX2_6_292 ;
  wire \vga/inst_LPM_MUX3_3_f5_293 ;
  wire \vga/inst_LPM_MUX3_4_294 ;
  wire \vga/inst_LPM_MUX3_4_f5_295 ;
  wire \vga/inst_LPM_MUX3_5_296 ;
  wire \vga/inst_LPM_MUX3_51_297 ;
  wire \vga/inst_LPM_MUX3_6_298 ;
  wire \vga/inst_LPM_MUX4_3_f5_299 ;
  wire \vga/inst_LPM_MUX4_4_300 ;
  wire \vga/inst_LPM_MUX4_4_f5_301 ;
  wire \vga/inst_LPM_MUX4_5_302 ;
  wire \vga/inst_LPM_MUX4_51_303 ;
  wire \vga/inst_LPM_MUX4_6_304 ;
  wire \vga/inst_LPM_MUX5_3_f5_305 ;
  wire \vga/inst_LPM_MUX5_4_306 ;
  wire \vga/inst_LPM_MUX5_4_f5_307 ;
  wire \vga/inst_LPM_MUX5_5_308 ;
  wire \vga/inst_LPM_MUX5_51_309 ;
  wire \vga/inst_LPM_MUX5_6_310 ;
  wire \vga/inst_LPM_MUX6_3_f5_311 ;
  wire \vga/inst_LPM_MUX6_4_312 ;
  wire \vga/inst_LPM_MUX6_4_f5_313 ;
  wire \vga/inst_LPM_MUX6_5_314 ;
  wire \vga/inst_LPM_MUX6_51_315 ;
  wire \vga/inst_LPM_MUX6_6_316 ;
  wire \vga/inst_LPM_MUX7_3_f5_317 ;
  wire \vga/inst_LPM_MUX7_4_318 ;
  wire \vga/inst_LPM_MUX7_4_f5_319 ;
  wire \vga/inst_LPM_MUX7_5_320 ;
  wire \vga/inst_LPM_MUX7_51_321 ;
  wire \vga/inst_LPM_MUX7_6_322 ;
  wire \vga/inst_LPM_MUX8_3_f5_323 ;
  wire \vga/inst_LPM_MUX8_4_324 ;
  wire \vga/inst_LPM_MUX8_4_f5_325 ;
  wire \vga/inst_LPM_MUX8_5_326 ;
  wire \vga/inst_LPM_MUX8_51_327 ;
  wire \vga/inst_LPM_MUX8_6_328 ;
  wire \vga/inst_LPM_MUX_3_f5_329 ;
  wire \vga/inst_LPM_MUX_4_330 ;
  wire \vga/inst_LPM_MUX_4_f5_331 ;
  wire \vga/inst_LPM_MUX_5_332 ;
  wire \vga/inst_LPM_MUX_51_333 ;
  wire \vga/inst_LPM_MUX_6_334 ;
  wire \vga/rgb_and0000 ;
  wire \vga/rgb_and00001_336 ;
  wire \vga/vcnt_not0001_inv ;
  wire \vga/vcnt_not0001_inv212_348 ;
  wire \vga/vsyncb_349 ;
  wire \vga/vsyncb_mux0001 ;
  wire \vga/vsyncb_mux000133_351 ;
  wire \vga/vsyncb_mux000149_352 ;
  wire \vga/vsyncb_mux00018_353 ;
  wire \vga/write_ctrl_354 ;
  wire \vga/write_ctrl1_355 ;
  wire \vga/write_ctrl2_356 ;
  wire \vga/write_ctrl3_357 ;
  wire \vga/write_ctrl4_358 ;
  wire \vga/write_ctrl5_359 ;
  wire \vga/write_ctrl6_360 ;
  wire \vga/write_ctrl7_361 ;
  wire \NLW_vga/Mram_RAM72_SPO_UNCONNECTED ;
  wire \NLW_vga/Mram_RAM71_SPO_UNCONNECTED ;
  wire \NLW_vga/Mram_RAM69_SPO_UNCONNECTED ;
  wire \NLW_vga/Mram_RAM68_SPO_UNCONNECTED ;
  wire \NLW_vga/Mram_RAM70_SPO_UNCONNECTED ;
  wire \NLW_vga/Mram_RAM66_SPO_UNCONNECTED ;
  wire \NLW_vga/Mram_RAM65_SPO_UNCONNECTED ;
  wire \NLW_vga/Mram_RAM67_SPO_UNCONNECTED ;
  wire \NLW_vga/Mram_RAM63_SPO_UNCONNECTED ;
  wire \NLW_vga/Mram_RAM62_SPO_UNCONNECTED ;
  wire \NLW_vga/Mram_RAM64_SPO_UNCONNECTED ;
  wire \NLW_vga/Mram_RAM60_SPO_UNCONNECTED ;
  wire \NLW_vga/Mram_RAM59_SPO_UNCONNECTED ;
  wire \NLW_vga/Mram_RAM61_SPO_UNCONNECTED ;
  wire \NLW_vga/Mram_RAM58_SPO_UNCONNECTED ;
  wire \NLW_vga/Mram_RAM57_SPO_UNCONNECTED ;
  wire \NLW_vga/Mram_RAM55_SPO_UNCONNECTED ;
  wire \NLW_vga/Mram_RAM54_SPO_UNCONNECTED ;
  wire \NLW_vga/Mram_RAM56_SPO_UNCONNECTED ;
  wire \NLW_vga/Mram_RAM52_SPO_UNCONNECTED ;
  wire \NLW_vga/Mram_RAM51_SPO_UNCONNECTED ;
  wire \NLW_vga/Mram_RAM53_SPO_UNCONNECTED ;
  wire \NLW_vga/Mram_RAM49_SPO_UNCONNECTED ;
  wire \NLW_vga/Mram_RAM48_SPO_UNCONNECTED ;
  wire \NLW_vga/Mram_RAM50_SPO_UNCONNECTED ;
  wire \NLW_vga/Mram_RAM46_SPO_UNCONNECTED ;
  wire \NLW_vga/Mram_RAM45_SPO_UNCONNECTED ;
  wire \NLW_vga/Mram_RAM47_SPO_UNCONNECTED ;
  wire \NLW_vga/Mram_RAM43_SPO_UNCONNECTED ;
  wire \NLW_vga/Mram_RAM42_SPO_UNCONNECTED ;
  wire \NLW_vga/Mram_RAM44_SPO_UNCONNECTED ;
  wire \NLW_vga/Mram_RAM40_SPO_UNCONNECTED ;
  wire \NLW_vga/Mram_RAM39_SPO_UNCONNECTED ;
  wire \NLW_vga/Mram_RAM41_SPO_UNCONNECTED ;
  wire \NLW_vga/Mram_RAM37_SPO_UNCONNECTED ;
  wire \NLW_vga/Mram_RAM36_SPO_UNCONNECTED ;
  wire \NLW_vga/Mram_RAM38_SPO_UNCONNECTED ;
  wire \NLW_vga/Mram_RAM35_SPO_UNCONNECTED ;
  wire \NLW_vga/Mram_RAM34_SPO_UNCONNECTED ;
  wire \NLW_vga/Mram_RAM32_SPO_UNCONNECTED ;
  wire \NLW_vga/Mram_RAM31_SPO_UNCONNECTED ;
  wire \NLW_vga/Mram_RAM33_SPO_UNCONNECTED ;
  wire \NLW_vga/Mram_RAM29_SPO_UNCONNECTED ;
  wire \NLW_vga/Mram_RAM28_SPO_UNCONNECTED ;
  wire \NLW_vga/Mram_RAM30_SPO_UNCONNECTED ;
  wire \NLW_vga/Mram_RAM26_SPO_UNCONNECTED ;
  wire \NLW_vga/Mram_RAM25_SPO_UNCONNECTED ;
  wire \NLW_vga/Mram_RAM27_SPO_UNCONNECTED ;
  wire \NLW_vga/Mram_RAM23_SPO_UNCONNECTED ;
  wire \NLW_vga/Mram_RAM22_SPO_UNCONNECTED ;
  wire \NLW_vga/Mram_RAM24_SPO_UNCONNECTED ;
  wire \NLW_vga/Mram_RAM20_SPO_UNCONNECTED ;
  wire \NLW_vga/Mram_RAM19_SPO_UNCONNECTED ;
  wire \NLW_vga/Mram_RAM21_SPO_UNCONNECTED ;
  wire \NLW_vga/Mram_RAM17_SPO_UNCONNECTED ;
  wire \NLW_vga/Mram_RAM16_SPO_UNCONNECTED ;
  wire \NLW_vga/Mram_RAM18_SPO_UNCONNECTED ;
  wire \NLW_vga/Mram_RAM14_SPO_UNCONNECTED ;
  wire \NLW_vga/Mram_RAM13_SPO_UNCONNECTED ;
  wire \NLW_vga/Mram_RAM15_SPO_UNCONNECTED ;
  wire \NLW_vga/Mram_RAM12_SPO_UNCONNECTED ;
  wire \NLW_vga/Mram_RAM11_SPO_UNCONNECTED ;
  wire \NLW_vga/Mram_RAM9_SPO_UNCONNECTED ;
  wire \NLW_vga/Mram_RAM8_SPO_UNCONNECTED ;
  wire \NLW_vga/Mram_RAM10_SPO_UNCONNECTED ;
  wire \NLW_vga/Mram_RAM6_SPO_UNCONNECTED ;
  wire \NLW_vga/Mram_RAM5_SPO_UNCONNECTED ;
  wire \NLW_vga/Mram_RAM7_SPO_UNCONNECTED ;
  wire \NLW_vga/Mram_RAM3_SPO_UNCONNECTED ;
  wire \NLW_vga/Mram_RAM2_SPO_UNCONNECTED ;
  wire \NLW_vga/Mram_RAM4_SPO_UNCONNECTED ;
  wire \NLW_vga/Mram_RAM1_SPO_UNCONNECTED ;
  wire [1 : 0] Result;
  wire [1 : 0] cuenta;
  wire [0 : 0] currentStateLectura;
  wire [1 : 0] \sincro/cs ;
  wire [7 : 0] \vga/Mcount_hcnt_cy ;
  wire [8 : 0] \vga/Mcount_hcnt_lut ;
  wire [8 : 0] \vga/Mcount_vcnt_cy ;
  wire [9 : 0] \vga/Mcount_vcnt_lut ;
  wire [8 : 0] \vga/_varindex0000 ;
  wire [8 : 0] \vga/hcnt ;
  wire [9 : 0] \vga/vcnt ;
  GND   XST_GND (
    .G(IP2Bus_Data_31_OBUF_37)
  );
  FDR   IP2WFIFO_RdReq_2 (
    .C(Bus2IP_Clk_BUFGP_1),
    .D(fifo_rdreq_cmb),
    .R(Bus2IP_Reset_IBUF_3),
    .Q(IP2WFIFO_RdReq_OBUF_42)
  );
  FDE   clock (
    .C(Bus2IP_Clk_BUFGP_1),
    .CE(Bus2IP_Reset_inv),
    .D(cuenta_cmp_eq0000),
    .Q(clock1)
  );
  FDR #(
    .INIT ( 1'b0 ))
  currentStateLectura_0 (
    .C(Bus2IP_Clk_BUFGP_1),
    .D(nextStateLectura),
    .R(Bus2IP_Reset_IBUF_3),
    .Q(currentStateLectura[0])
  );
  FDCE   \sincro/cs_0  (
    .C(Bus2IP_Clk_BUFGP_1),
    .CE(currentStateLectura[0]),
    .CLR(Bus2IP_Reset_IBUF_3),
    .D(Result[0]),
    .Q(\sincro/cs [0])
  );
  FDCE   \sincro/cs_1  (
    .C(Bus2IP_Clk_BUFGP_1),
    .CE(currentStateLectura[0]),
    .CLR(Bus2IP_Reset_IBUF_3),
    .D(Result[1]),
    .Q(\sincro/cs [1])
  );
  FDC   cuenta_0 (
    .C(Bus2IP_Clk_BUFGP_1),
    .CLR(Bus2IP_Reset_IBUF_3),
    .D(Mcount_cuenta),
    .Q(cuenta[0])
  );
  FDC   cuenta_1 (
    .C(Bus2IP_Clk_BUFGP_1),
    .CLR(Bus2IP_Reset_IBUF_3),
    .D(Mcount_cuenta1),
    .Q(cuenta[1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \vga/inst_LPM_MUX8_4  (
    .I0(\vga/hcnt [3]),
    .I1(\vga/N151 ),
    .I2(\vga/N153 ),
    .O(\vga/inst_LPM_MUX8_4_324 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \vga/inst_LPM_MUX8_5  (
    .I0(\vga/hcnt [3]),
    .I1(\vga/N147 ),
    .I2(\vga/N149 ),
    .O(\vga/inst_LPM_MUX8_5_326 )
  );
  MUXF5   \vga/inst_LPM_MUX8_3_f5  (
    .I0(\vga/inst_LPM_MUX8_5_326 ),
    .I1(\vga/inst_LPM_MUX8_4_324 ),
    .S(\vga/hcnt [4]),
    .O(\vga/inst_LPM_MUX8_3_f5_323 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \vga/inst_LPM_MUX8_51  (
    .I0(\vga/hcnt [3]),
    .I1(\vga/N143 ),
    .I2(\vga/N145 ),
    .O(\vga/inst_LPM_MUX8_51_327 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \vga/inst_LPM_MUX8_6  (
    .I0(\vga/hcnt [3]),
    .I1(\vga/N139 ),
    .I2(\vga/N141 ),
    .O(\vga/inst_LPM_MUX8_6_328 )
  );
  MUXF5   \vga/inst_LPM_MUX8_4_f5  (
    .I0(\vga/inst_LPM_MUX8_6_328 ),
    .I1(\vga/inst_LPM_MUX8_51_327 ),
    .S(\vga/hcnt [4]),
    .O(\vga/inst_LPM_MUX8_4_f5_325 )
  );
  MUXF6   \vga/inst_LPM_MUX8_2_f6  (
    .I0(\vga/inst_LPM_MUX8_4_f5_325 ),
    .I1(\vga/inst_LPM_MUX8_3_f5_323 ),
    .S(\vga/hcnt [5]),
    .O(\vga/_varindex0000 [8])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \vga/inst_LPM_MUX7_4  (
    .I0(\vga/hcnt [3]),
    .I1(\vga/N135 ),
    .I2(\vga/N137 ),
    .O(\vga/inst_LPM_MUX7_4_318 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \vga/inst_LPM_MUX7_5  (
    .I0(\vga/hcnt [3]),
    .I1(\vga/N131 ),
    .I2(\vga/N133 ),
    .O(\vga/inst_LPM_MUX7_5_320 )
  );
  MUXF5   \vga/inst_LPM_MUX7_3_f5  (
    .I0(\vga/inst_LPM_MUX7_5_320 ),
    .I1(\vga/inst_LPM_MUX7_4_318 ),
    .S(\vga/hcnt [4]),
    .O(\vga/inst_LPM_MUX7_3_f5_317 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \vga/inst_LPM_MUX7_51  (
    .I0(\vga/hcnt [3]),
    .I1(\vga/N127 ),
    .I2(\vga/N129 ),
    .O(\vga/inst_LPM_MUX7_51_321 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \vga/inst_LPM_MUX7_6  (
    .I0(\vga/hcnt [3]),
    .I1(\vga/N123 ),
    .I2(\vga/N125 ),
    .O(\vga/inst_LPM_MUX7_6_322 )
  );
  MUXF5   \vga/inst_LPM_MUX7_4_f5  (
    .I0(\vga/inst_LPM_MUX7_6_322 ),
    .I1(\vga/inst_LPM_MUX7_51_321 ),
    .S(\vga/hcnt [4]),
    .O(\vga/inst_LPM_MUX7_4_f5_319 )
  );
  MUXF6   \vga/inst_LPM_MUX7_2_f6  (
    .I0(\vga/inst_LPM_MUX7_4_f5_319 ),
    .I1(\vga/inst_LPM_MUX7_3_f5_317 ),
    .S(\vga/hcnt [5]),
    .O(\vga/_varindex0000 [7])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \vga/inst_LPM_MUX6_4  (
    .I0(\vga/hcnt [3]),
    .I1(\vga/N119 ),
    .I2(\vga/N121 ),
    .O(\vga/inst_LPM_MUX6_4_312 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \vga/inst_LPM_MUX6_5  (
    .I0(\vga/hcnt [3]),
    .I1(\vga/N115 ),
    .I2(\vga/N117 ),
    .O(\vga/inst_LPM_MUX6_5_314 )
  );
  MUXF5   \vga/inst_LPM_MUX6_3_f5  (
    .I0(\vga/inst_LPM_MUX6_5_314 ),
    .I1(\vga/inst_LPM_MUX6_4_312 ),
    .S(\vga/hcnt [4]),
    .O(\vga/inst_LPM_MUX6_3_f5_311 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \vga/inst_LPM_MUX6_51  (
    .I0(\vga/hcnt [3]),
    .I1(\vga/N111 ),
    .I2(\vga/N113 ),
    .O(\vga/inst_LPM_MUX6_51_315 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \vga/inst_LPM_MUX6_6  (
    .I0(\vga/hcnt [3]),
    .I1(\vga/N107 ),
    .I2(\vga/N109 ),
    .O(\vga/inst_LPM_MUX6_6_316 )
  );
  MUXF5   \vga/inst_LPM_MUX6_4_f5  (
    .I0(\vga/inst_LPM_MUX6_6_316 ),
    .I1(\vga/inst_LPM_MUX6_51_315 ),
    .S(\vga/hcnt [4]),
    .O(\vga/inst_LPM_MUX6_4_f5_313 )
  );
  MUXF6   \vga/inst_LPM_MUX6_2_f6  (
    .I0(\vga/inst_LPM_MUX6_4_f5_313 ),
    .I1(\vga/inst_LPM_MUX6_3_f5_311 ),
    .S(\vga/hcnt [5]),
    .O(\vga/_varindex0000 [6])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \vga/inst_LPM_MUX5_4  (
    .I0(\vga/hcnt [3]),
    .I1(\vga/N103 ),
    .I2(\vga/N105 ),
    .O(\vga/inst_LPM_MUX5_4_306 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \vga/inst_LPM_MUX5_5  (
    .I0(\vga/hcnt [3]),
    .I1(\vga/N99 ),
    .I2(\vga/N101 ),
    .O(\vga/inst_LPM_MUX5_5_308 )
  );
  MUXF5   \vga/inst_LPM_MUX5_3_f5  (
    .I0(\vga/inst_LPM_MUX5_5_308 ),
    .I1(\vga/inst_LPM_MUX5_4_306 ),
    .S(\vga/hcnt [4]),
    .O(\vga/inst_LPM_MUX5_3_f5_305 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \vga/inst_LPM_MUX5_51  (
    .I0(\vga/hcnt [3]),
    .I1(\vga/N95 ),
    .I2(\vga/N97 ),
    .O(\vga/inst_LPM_MUX5_51_309 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \vga/inst_LPM_MUX5_6  (
    .I0(\vga/hcnt [3]),
    .I1(\vga/N91 ),
    .I2(\vga/N93 ),
    .O(\vga/inst_LPM_MUX5_6_310 )
  );
  MUXF5   \vga/inst_LPM_MUX5_4_f5  (
    .I0(\vga/inst_LPM_MUX5_6_310 ),
    .I1(\vga/inst_LPM_MUX5_51_309 ),
    .S(\vga/hcnt [4]),
    .O(\vga/inst_LPM_MUX5_4_f5_307 )
  );
  MUXF6   \vga/inst_LPM_MUX5_2_f6  (
    .I0(\vga/inst_LPM_MUX5_4_f5_307 ),
    .I1(\vga/inst_LPM_MUX5_3_f5_305 ),
    .S(\vga/hcnt [5]),
    .O(\vga/_varindex0000 [5])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \vga/inst_LPM_MUX4_4  (
    .I0(\vga/hcnt [3]),
    .I1(\vga/N87 ),
    .I2(\vga/N89 ),
    .O(\vga/inst_LPM_MUX4_4_300 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \vga/inst_LPM_MUX4_5  (
    .I0(\vga/hcnt [3]),
    .I1(\vga/N83 ),
    .I2(\vga/N85 ),
    .O(\vga/inst_LPM_MUX4_5_302 )
  );
  MUXF5   \vga/inst_LPM_MUX4_3_f5  (
    .I0(\vga/inst_LPM_MUX4_5_302 ),
    .I1(\vga/inst_LPM_MUX4_4_300 ),
    .S(\vga/hcnt [4]),
    .O(\vga/inst_LPM_MUX4_3_f5_299 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \vga/inst_LPM_MUX4_51  (
    .I0(\vga/hcnt [3]),
    .I1(\vga/N79 ),
    .I2(\vga/N81 ),
    .O(\vga/inst_LPM_MUX4_51_303 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \vga/inst_LPM_MUX4_6  (
    .I0(\vga/hcnt [3]),
    .I1(\vga/N75 ),
    .I2(\vga/N77 ),
    .O(\vga/inst_LPM_MUX4_6_304 )
  );
  MUXF5   \vga/inst_LPM_MUX4_4_f5  (
    .I0(\vga/inst_LPM_MUX4_6_304 ),
    .I1(\vga/inst_LPM_MUX4_51_303 ),
    .S(\vga/hcnt [4]),
    .O(\vga/inst_LPM_MUX4_4_f5_301 )
  );
  MUXF6   \vga/inst_LPM_MUX4_2_f6  (
    .I0(\vga/inst_LPM_MUX4_4_f5_301 ),
    .I1(\vga/inst_LPM_MUX4_3_f5_299 ),
    .S(\vga/hcnt [5]),
    .O(\vga/_varindex0000 [4])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \vga/inst_LPM_MUX3_4  (
    .I0(\vga/hcnt [3]),
    .I1(\vga/N71 ),
    .I2(\vga/N73 ),
    .O(\vga/inst_LPM_MUX3_4_294 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \vga/inst_LPM_MUX3_5  (
    .I0(\vga/hcnt [3]),
    .I1(\vga/N67 ),
    .I2(\vga/N69 ),
    .O(\vga/inst_LPM_MUX3_5_296 )
  );
  MUXF5   \vga/inst_LPM_MUX3_3_f5  (
    .I0(\vga/inst_LPM_MUX3_5_296 ),
    .I1(\vga/inst_LPM_MUX3_4_294 ),
    .S(\vga/hcnt [4]),
    .O(\vga/inst_LPM_MUX3_3_f5_293 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \vga/inst_LPM_MUX3_51  (
    .I0(\vga/hcnt [3]),
    .I1(\vga/N63 ),
    .I2(\vga/N65 ),
    .O(\vga/inst_LPM_MUX3_51_297 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \vga/inst_LPM_MUX3_6  (
    .I0(\vga/hcnt [3]),
    .I1(\vga/N59 ),
    .I2(\vga/N61 ),
    .O(\vga/inst_LPM_MUX3_6_298 )
  );
  MUXF5   \vga/inst_LPM_MUX3_4_f5  (
    .I0(\vga/inst_LPM_MUX3_6_298 ),
    .I1(\vga/inst_LPM_MUX3_51_297 ),
    .S(\vga/hcnt [4]),
    .O(\vga/inst_LPM_MUX3_4_f5_295 )
  );
  MUXF6   \vga/inst_LPM_MUX3_2_f6  (
    .I0(\vga/inst_LPM_MUX3_4_f5_295 ),
    .I1(\vga/inst_LPM_MUX3_3_f5_293 ),
    .S(\vga/hcnt [5]),
    .O(\vga/_varindex0000 [3])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \vga/inst_LPM_MUX1_4  (
    .I0(\vga/hcnt [3]),
    .I1(\vga/N39 ),
    .I2(\vga/N41 ),
    .O(\vga/inst_LPM_MUX1_4_282 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \vga/inst_LPM_MUX1_5  (
    .I0(\vga/hcnt [3]),
    .I1(\vga/N35 ),
    .I2(\vga/N37 ),
    .O(\vga/inst_LPM_MUX1_5_284 )
  );
  MUXF5   \vga/inst_LPM_MUX1_3_f5  (
    .I0(\vga/inst_LPM_MUX1_5_284 ),
    .I1(\vga/inst_LPM_MUX1_4_282 ),
    .S(\vga/hcnt [4]),
    .O(\vga/inst_LPM_MUX1_3_f5_281 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \vga/inst_LPM_MUX1_51  (
    .I0(\vga/hcnt [3]),
    .I1(\vga/N31 ),
    .I2(\vga/N33 ),
    .O(\vga/inst_LPM_MUX1_51_285 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \vga/inst_LPM_MUX1_6  (
    .I0(\vga/hcnt [3]),
    .I1(\vga/N27 ),
    .I2(\vga/N29 ),
    .O(\vga/inst_LPM_MUX1_6_286 )
  );
  MUXF5   \vga/inst_LPM_MUX1_4_f5  (
    .I0(\vga/inst_LPM_MUX1_6_286 ),
    .I1(\vga/inst_LPM_MUX1_51_285 ),
    .S(\vga/hcnt [4]),
    .O(\vga/inst_LPM_MUX1_4_f5_283 )
  );
  MUXF6   \vga/inst_LPM_MUX1_2_f6  (
    .I0(\vga/inst_LPM_MUX1_4_f5_283 ),
    .I1(\vga/inst_LPM_MUX1_3_f5_281 ),
    .S(\vga/hcnt [5]),
    .O(\vga/_varindex0000 [1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \vga/inst_LPM_MUX_4  (
    .I0(\vga/hcnt [3]),
    .I1(\vga/N23 ),
    .I2(\vga/N25 ),
    .O(\vga/inst_LPM_MUX_4_330 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \vga/inst_LPM_MUX_5  (
    .I0(\vga/hcnt [3]),
    .I1(\vga/N19 ),
    .I2(\vga/N21 ),
    .O(\vga/inst_LPM_MUX_5_332 )
  );
  MUXF5   \vga/inst_LPM_MUX_3_f5  (
    .I0(\vga/inst_LPM_MUX_5_332 ),
    .I1(\vga/inst_LPM_MUX_4_330 ),
    .S(\vga/hcnt [4]),
    .O(\vga/inst_LPM_MUX_3_f5_329 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \vga/inst_LPM_MUX_51  (
    .I0(\vga/hcnt [3]),
    .I1(\vga/N15 ),
    .I2(\vga/N17 ),
    .O(\vga/inst_LPM_MUX_51_333 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \vga/inst_LPM_MUX_6  (
    .I0(\vga/hcnt [3]),
    .I1(\vga/N11 ),
    .I2(\vga/N13 ),
    .O(\vga/inst_LPM_MUX_6_334 )
  );
  MUXF5   \vga/inst_LPM_MUX_4_f5  (
    .I0(\vga/inst_LPM_MUX_6_334 ),
    .I1(\vga/inst_LPM_MUX_51_333 ),
    .S(\vga/hcnt [4]),
    .O(\vga/inst_LPM_MUX_4_f5_331 )
  );
  MUXF6   \vga/inst_LPM_MUX_2_f6  (
    .I0(\vga/inst_LPM_MUX_4_f5_331 ),
    .I1(\vga/inst_LPM_MUX_3_f5_329 ),
    .S(\vga/hcnt [5]),
    .O(\vga/_varindex0000 [0])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \vga/inst_LPM_MUX2_4  (
    .I0(\vga/hcnt [3]),
    .I1(\vga/N55 ),
    .I2(\vga/N57 ),
    .O(\vga/inst_LPM_MUX2_4_288 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \vga/inst_LPM_MUX2_5  (
    .I0(\vga/hcnt [3]),
    .I1(\vga/N51 ),
    .I2(\vga/N53 ),
    .O(\vga/inst_LPM_MUX2_5_290 )
  );
  MUXF5   \vga/inst_LPM_MUX2_3_f5  (
    .I0(\vga/inst_LPM_MUX2_5_290 ),
    .I1(\vga/inst_LPM_MUX2_4_288 ),
    .S(\vga/hcnt [4]),
    .O(\vga/inst_LPM_MUX2_3_f5_287 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \vga/inst_LPM_MUX2_51  (
    .I0(\vga/hcnt [3]),
    .I1(\vga/N47 ),
    .I2(\vga/N49 ),
    .O(\vga/inst_LPM_MUX2_51_291 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \vga/inst_LPM_MUX2_6  (
    .I0(\vga/hcnt [3]),
    .I1(\vga/N43 ),
    .I2(\vga/N45 ),
    .O(\vga/inst_LPM_MUX2_6_292 )
  );
  MUXF5   \vga/inst_LPM_MUX2_4_f5  (
    .I0(\vga/inst_LPM_MUX2_6_292 ),
    .I1(\vga/inst_LPM_MUX2_51_291 ),
    .S(\vga/hcnt [4]),
    .O(\vga/inst_LPM_MUX2_4_f5_289 )
  );
  MUXF6   \vga/inst_LPM_MUX2_2_f6  (
    .I0(\vga/inst_LPM_MUX2_4_f5_289 ),
    .I1(\vga/inst_LPM_MUX2_3_f5_287 ),
    .S(\vga/hcnt [5]),
    .O(\vga/_varindex0000 [2])
  );
  FDC   \vga/vcnt_9  (
    .C(\vga/hsyncbAux_275 ),
    .CLR(Bus2IP_Reset_IBUF_3),
    .D(\vga/Mcount_vcnt9 ),
    .Q(\vga/vcnt [9])
  );
  FDC   \vga/vcnt_8  (
    .C(\vga/hsyncbAux_275 ),
    .CLR(Bus2IP_Reset_IBUF_3),
    .D(\vga/Mcount_vcnt8 ),
    .Q(\vga/vcnt [8])
  );
  FDC   \vga/vcnt_7  (
    .C(\vga/hsyncbAux_275 ),
    .CLR(Bus2IP_Reset_IBUF_3),
    .D(\vga/Mcount_vcnt7 ),
    .Q(\vga/vcnt [7])
  );
  FDC   \vga/vcnt_6  (
    .C(\vga/hsyncbAux_275 ),
    .CLR(Bus2IP_Reset_IBUF_3),
    .D(\vga/Mcount_vcnt6 ),
    .Q(\vga/vcnt [6])
  );
  FDC   \vga/vcnt_5  (
    .C(\vga/hsyncbAux_275 ),
    .CLR(Bus2IP_Reset_IBUF_3),
    .D(\vga/Mcount_vcnt5 ),
    .Q(\vga/vcnt [5])
  );
  FDC   \vga/vcnt_4  (
    .C(\vga/hsyncbAux_275 ),
    .CLR(Bus2IP_Reset_IBUF_3),
    .D(\vga/Mcount_vcnt4 ),
    .Q(\vga/vcnt [4])
  );
  FDC   \vga/vcnt_3  (
    .C(\vga/hsyncbAux_275 ),
    .CLR(Bus2IP_Reset_IBUF_3),
    .D(\vga/Mcount_vcnt3 ),
    .Q(\vga/vcnt [3])
  );
  FDC   \vga/vcnt_2  (
    .C(\vga/hsyncbAux_275 ),
    .CLR(Bus2IP_Reset_IBUF_3),
    .D(\vga/Mcount_vcnt2 ),
    .Q(\vga/vcnt [2])
  );
  FDC   \vga/vcnt_1  (
    .C(\vga/hsyncbAux_275 ),
    .CLR(Bus2IP_Reset_IBUF_3),
    .D(\vga/Mcount_vcnt1 ),
    .Q(\vga/vcnt [1])
  );
  FDC   \vga/vcnt_0  (
    .C(\vga/hsyncbAux_275 ),
    .CLR(Bus2IP_Reset_IBUF_3),
    .D(\vga/Mcount_vcnt ),
    .Q(\vga/vcnt [0])
  );
  FDC   \vga/hcnt_8  (
    .C(clock_100),
    .CLR(Bus2IP_Reset_IBUF_3),
    .D(\vga/Mcount_hcnt8 ),
    .Q(\vga/hcnt [8])
  );
  FDC   \vga/hcnt_7  (
    .C(clock_100),
    .CLR(Bus2IP_Reset_IBUF_3),
    .D(\vga/Mcount_hcnt7 ),
    .Q(\vga/hcnt [7])
  );
  FDC   \vga/hcnt_6  (
    .C(clock_100),
    .CLR(Bus2IP_Reset_IBUF_3),
    .D(\vga/Mcount_hcnt6 ),
    .Q(\vga/hcnt [6])
  );
  FDC   \vga/hcnt_5  (
    .C(clock_100),
    .CLR(Bus2IP_Reset_IBUF_3),
    .D(\vga/Mcount_hcnt5 ),
    .Q(\vga/hcnt [5])
  );
  FDC   \vga/hcnt_4  (
    .C(clock_100),
    .CLR(Bus2IP_Reset_IBUF_3),
    .D(\vga/Mcount_hcnt4 ),
    .Q(\vga/hcnt [4])
  );
  FDC   \vga/hcnt_3  (
    .C(clock_100),
    .CLR(Bus2IP_Reset_IBUF_3),
    .D(\vga/Mcount_hcnt3 ),
    .Q(\vga/hcnt [3])
  );
  FDC   \vga/hcnt_2  (
    .C(clock_100),
    .CLR(Bus2IP_Reset_IBUF_3),
    .D(\vga/Mcount_hcnt2 ),
    .Q(\vga/hcnt [2])
  );
  FDC   \vga/hcnt_1  (
    .C(clock_100),
    .CLR(Bus2IP_Reset_IBUF_3),
    .D(\vga/Mcount_hcnt1 ),
    .Q(\vga/hcnt [1])
  );
  FDC   \vga/hcnt_0  (
    .C(clock_100),
    .CLR(Bus2IP_Reset_IBUF_3),
    .D(\vga/Mcount_hcnt ),
    .Q(\vga/hcnt [0])
  );
  RAM16X1D #(
    .INIT ( 16'hC004 ))
  \vga/Mram_RAM72  (
    .A0(WFIFO2IP_Data_31_IBUF_91),
    .A1(WFIFO2IP_Data_30_IBUF_90),
    .A2(WFIFO2IP_Data_29_IBUF_88),
    .A3(WFIFO2IP_Data_28_IBUF_87),
    .D(WFIFO2IP_Data_0_IBUF_82),
    .DPRA0(\vga/vcnt [4]),
    .DPRA1(\vga/vcnt [5]),
    .DPRA2(\vga/vcnt [6]),
    .DPRA3(\vga/vcnt [7]),
    .WCLK(clock_100),
    .WE(\vga/write_ctrl7_361 ),
    .SPO(\NLW_vga/Mram_RAM72_SPO_UNCONNECTED ),
    .DPO(\vga/N153 )
  );
  RAM16X1D #(
    .INIT ( 16'h0003 ))
  \vga/Mram_RAM71  (
    .A0(WFIFO2IP_Data_31_IBUF_91),
    .A1(WFIFO2IP_Data_30_IBUF_90),
    .A2(WFIFO2IP_Data_29_IBUF_88),
    .A3(WFIFO2IP_Data_28_IBUF_87),
    .D(WFIFO2IP_Data_0_IBUF_82),
    .DPRA0(\vga/vcnt [4]),
    .DPRA1(\vga/vcnt [5]),
    .DPRA2(\vga/vcnt [6]),
    .DPRA3(\vga/vcnt [7]),
    .WCLK(clock_100),
    .WE(\vga/write_ctrl6_360 ),
    .SPO(\NLW_vga/Mram_RAM71_SPO_UNCONNECTED ),
    .DPO(\vga/N151 )
  );
  RAM16X1D #(
    .INIT ( 16'hFFFF ))
  \vga/Mram_RAM69  (
    .A0(WFIFO2IP_Data_31_IBUF_91),
    .A1(WFIFO2IP_Data_30_IBUF_90),
    .A2(WFIFO2IP_Data_29_IBUF_88),
    .A3(WFIFO2IP_Data_28_IBUF_87),
    .D(WFIFO2IP_Data_0_IBUF_82),
    .DPRA0(\vga/vcnt [4]),
    .DPRA1(\vga/vcnt [5]),
    .DPRA2(\vga/vcnt [6]),
    .DPRA3(\vga/vcnt [7]),
    .WCLK(clock_100),
    .WE(\vga/write_ctrl4_358 ),
    .SPO(\NLW_vga/Mram_RAM69_SPO_UNCONNECTED ),
    .DPO(\vga/N147 )
  );
  RAM16X1D #(
    .INIT ( 16'hFFFF ))
  \vga/Mram_RAM68  (
    .A0(WFIFO2IP_Data_31_IBUF_91),
    .A1(WFIFO2IP_Data_30_IBUF_90),
    .A2(WFIFO2IP_Data_29_IBUF_88),
    .A3(WFIFO2IP_Data_28_IBUF_87),
    .D(WFIFO2IP_Data_0_IBUF_82),
    .DPRA0(\vga/vcnt [4]),
    .DPRA1(\vga/vcnt [5]),
    .DPRA2(\vga/vcnt [6]),
    .DPRA3(\vga/vcnt [7]),
    .WCLK(clock_100),
    .WE(\vga/write_ctrl3_357 ),
    .SPO(\NLW_vga/Mram_RAM68_SPO_UNCONNECTED ),
    .DPO(\vga/N145 )
  );
  RAM16X1D #(
    .INIT ( 16'hFBFF ))
  \vga/Mram_RAM70  (
    .A0(WFIFO2IP_Data_31_IBUF_91),
    .A1(WFIFO2IP_Data_30_IBUF_90),
    .A2(WFIFO2IP_Data_29_IBUF_88),
    .A3(WFIFO2IP_Data_28_IBUF_87),
    .D(WFIFO2IP_Data_0_IBUF_82),
    .DPRA0(\vga/vcnt [4]),
    .DPRA1(\vga/vcnt [5]),
    .DPRA2(\vga/vcnt [6]),
    .DPRA3(\vga/vcnt [7]),
    .WCLK(clock_100),
    .WE(\vga/write_ctrl5_359 ),
    .SPO(\NLW_vga/Mram_RAM70_SPO_UNCONNECTED ),
    .DPO(\vga/N149 )
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \vga/Mram_RAM66  (
    .A0(WFIFO2IP_Data_31_IBUF_91),
    .A1(WFIFO2IP_Data_30_IBUF_90),
    .A2(WFIFO2IP_Data_29_IBUF_88),
    .A3(WFIFO2IP_Data_28_IBUF_87),
    .D(WFIFO2IP_Data_0_IBUF_82),
    .DPRA0(\vga/vcnt [4]),
    .DPRA1(\vga/vcnt [5]),
    .DPRA2(\vga/vcnt [6]),
    .DPRA3(\vga/vcnt [7]),
    .WCLK(clock_100),
    .WE(\vga/write_ctrl1_355 ),
    .SPO(\NLW_vga/Mram_RAM66_SPO_UNCONNECTED ),
    .DPO(\vga/N141 )
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \vga/Mram_RAM65  (
    .A0(WFIFO2IP_Data_31_IBUF_91),
    .A1(WFIFO2IP_Data_30_IBUF_90),
    .A2(WFIFO2IP_Data_29_IBUF_88),
    .A3(WFIFO2IP_Data_28_IBUF_87),
    .D(WFIFO2IP_Data_0_IBUF_82),
    .DPRA0(\vga/vcnt [4]),
    .DPRA1(\vga/vcnt [5]),
    .DPRA2(\vga/vcnt [6]),
    .DPRA3(\vga/vcnt [7]),
    .WCLK(clock_100),
    .WE(\vga/write_ctrl_354 ),
    .SPO(\NLW_vga/Mram_RAM65_SPO_UNCONNECTED ),
    .DPO(\vga/N139 )
  );
  RAM16X1D #(
    .INIT ( 16'hFC00 ))
  \vga/Mram_RAM67  (
    .A0(WFIFO2IP_Data_31_IBUF_91),
    .A1(WFIFO2IP_Data_30_IBUF_90),
    .A2(WFIFO2IP_Data_29_IBUF_88),
    .A3(WFIFO2IP_Data_28_IBUF_87),
    .D(WFIFO2IP_Data_0_IBUF_82),
    .DPRA0(\vga/vcnt [4]),
    .DPRA1(\vga/vcnt [5]),
    .DPRA2(\vga/vcnt [6]),
    .DPRA3(\vga/vcnt [7]),
    .WCLK(clock_100),
    .WE(\vga/write_ctrl2_356 ),
    .SPO(\NLW_vga/Mram_RAM67_SPO_UNCONNECTED ),
    .DPO(\vga/N143 )
  );
  RAM16X1D #(
    .INIT ( 16'h0001 ))
  \vga/Mram_RAM63  (
    .A0(WFIFO2IP_Data_31_IBUF_91),
    .A1(WFIFO2IP_Data_30_IBUF_90),
    .A2(WFIFO2IP_Data_29_IBUF_88),
    .A3(WFIFO2IP_Data_28_IBUF_87),
    .D(WFIFO2IP_Data_1_IBUF_83),
    .DPRA0(\vga/vcnt [4]),
    .DPRA1(\vga/vcnt [5]),
    .DPRA2(\vga/vcnt [6]),
    .DPRA3(\vga/vcnt [7]),
    .WCLK(clock_100),
    .WE(\vga/write_ctrl6_360 ),
    .SPO(\NLW_vga/Mram_RAM63_SPO_UNCONNECTED ),
    .DPO(\vga/N135 )
  );
  RAM16X1D #(
    .INIT ( 16'hFFFF ))
  \vga/Mram_RAM62  (
    .A0(WFIFO2IP_Data_31_IBUF_91),
    .A1(WFIFO2IP_Data_30_IBUF_90),
    .A2(WFIFO2IP_Data_29_IBUF_88),
    .A3(WFIFO2IP_Data_28_IBUF_87),
    .D(WFIFO2IP_Data_1_IBUF_83),
    .DPRA0(\vga/vcnt [4]),
    .DPRA1(\vga/vcnt [5]),
    .DPRA2(\vga/vcnt [6]),
    .DPRA3(\vga/vcnt [7]),
    .WCLK(clock_100),
    .WE(\vga/write_ctrl5_359 ),
    .SPO(\NLW_vga/Mram_RAM62_SPO_UNCONNECTED ),
    .DPO(\vga/N133 )
  );
  RAM16X1D #(
    .INIT ( 16'hC804 ))
  \vga/Mram_RAM64  (
    .A0(WFIFO2IP_Data_31_IBUF_91),
    .A1(WFIFO2IP_Data_30_IBUF_90),
    .A2(WFIFO2IP_Data_29_IBUF_88),
    .A3(WFIFO2IP_Data_28_IBUF_87),
    .D(WFIFO2IP_Data_1_IBUF_83),
    .DPRA0(\vga/vcnt [4]),
    .DPRA1(\vga/vcnt [5]),
    .DPRA2(\vga/vcnt [6]),
    .DPRA3(\vga/vcnt [7]),
    .WCLK(clock_100),
    .WE(\vga/write_ctrl7_361 ),
    .SPO(\NLW_vga/Mram_RAM64_SPO_UNCONNECTED ),
    .DPO(\vga/N137 )
  );
  RAM16X1D #(
    .INIT ( 16'hFFFE ))
  \vga/Mram_RAM60  (
    .A0(WFIFO2IP_Data_31_IBUF_91),
    .A1(WFIFO2IP_Data_30_IBUF_90),
    .A2(WFIFO2IP_Data_29_IBUF_88),
    .A3(WFIFO2IP_Data_28_IBUF_87),
    .D(WFIFO2IP_Data_1_IBUF_83),
    .DPRA0(\vga/vcnt [4]),
    .DPRA1(\vga/vcnt [5]),
    .DPRA2(\vga/vcnt [6]),
    .DPRA3(\vga/vcnt [7]),
    .WCLK(clock_100),
    .WE(\vga/write_ctrl3_357 ),
    .SPO(\NLW_vga/Mram_RAM60_SPO_UNCONNECTED ),
    .DPO(\vga/N129 )
  );
  RAM16X1D #(
    .INIT ( 16'h03F8 ))
  \vga/Mram_RAM59  (
    .A0(WFIFO2IP_Data_31_IBUF_91),
    .A1(WFIFO2IP_Data_30_IBUF_90),
    .A2(WFIFO2IP_Data_29_IBUF_88),
    .A3(WFIFO2IP_Data_28_IBUF_87),
    .D(WFIFO2IP_Data_1_IBUF_83),
    .DPRA0(\vga/vcnt [4]),
    .DPRA1(\vga/vcnt [5]),
    .DPRA2(\vga/vcnt [6]),
    .DPRA3(\vga/vcnt [7]),
    .WCLK(clock_100),
    .WE(\vga/write_ctrl2_356 ),
    .SPO(\NLW_vga/Mram_RAM59_SPO_UNCONNECTED ),
    .DPO(\vga/N127 )
  );
  RAM16X1D #(
    .INIT ( 16'hFFFF ))
  \vga/Mram_RAM61  (
    .A0(WFIFO2IP_Data_31_IBUF_91),
    .A1(WFIFO2IP_Data_30_IBUF_90),
    .A2(WFIFO2IP_Data_29_IBUF_88),
    .A3(WFIFO2IP_Data_28_IBUF_87),
    .D(WFIFO2IP_Data_1_IBUF_83),
    .DPRA0(\vga/vcnt [4]),
    .DPRA1(\vga/vcnt [5]),
    .DPRA2(\vga/vcnt [6]),
    .DPRA3(\vga/vcnt [7]),
    .WCLK(clock_100),
    .WE(\vga/write_ctrl4_358 ),
    .SPO(\NLW_vga/Mram_RAM61_SPO_UNCONNECTED ),
    .DPO(\vga/N131 )
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \vga/Mram_RAM58  (
    .A0(WFIFO2IP_Data_31_IBUF_91),
    .A1(WFIFO2IP_Data_30_IBUF_90),
    .A2(WFIFO2IP_Data_29_IBUF_88),
    .A3(WFIFO2IP_Data_28_IBUF_87),
    .D(WFIFO2IP_Data_1_IBUF_83),
    .DPRA0(\vga/vcnt [4]),
    .DPRA1(\vga/vcnt [5]),
    .DPRA2(\vga/vcnt [6]),
    .DPRA3(\vga/vcnt [7]),
    .WCLK(clock_100),
    .WE(\vga/write_ctrl1_355 ),
    .SPO(\NLW_vga/Mram_RAM58_SPO_UNCONNECTED ),
    .DPO(\vga/N125 )
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \vga/Mram_RAM57  (
    .A0(WFIFO2IP_Data_31_IBUF_91),
    .A1(WFIFO2IP_Data_30_IBUF_90),
    .A2(WFIFO2IP_Data_29_IBUF_88),
    .A3(WFIFO2IP_Data_28_IBUF_87),
    .D(WFIFO2IP_Data_1_IBUF_83),
    .DPRA0(\vga/vcnt [4]),
    .DPRA1(\vga/vcnt [5]),
    .DPRA2(\vga/vcnt [6]),
    .DPRA3(\vga/vcnt [7]),
    .WCLK(clock_100),
    .WE(\vga/write_ctrl_354 ),
    .SPO(\NLW_vga/Mram_RAM57_SPO_UNCONNECTED ),
    .DPO(\vga/N123 )
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \vga/Mram_RAM55  (
    .A0(WFIFO2IP_Data_31_IBUF_91),
    .A1(WFIFO2IP_Data_30_IBUF_90),
    .A2(WFIFO2IP_Data_29_IBUF_88),
    .A3(WFIFO2IP_Data_28_IBUF_87),
    .D(WFIFO2IP_Data_2_IBUF_89),
    .DPRA0(\vga/vcnt [4]),
    .DPRA1(\vga/vcnt [5]),
    .DPRA2(\vga/vcnt [6]),
    .DPRA3(\vga/vcnt [7]),
    .WCLK(clock_100),
    .WE(\vga/write_ctrl6_360 ),
    .SPO(\NLW_vga/Mram_RAM55_SPO_UNCONNECTED ),
    .DPO(\vga/N119 )
  );
  RAM16X1D #(
    .INIT ( 16'h050F ))
  \vga/Mram_RAM54  (
    .A0(WFIFO2IP_Data_31_IBUF_91),
    .A1(WFIFO2IP_Data_30_IBUF_90),
    .A2(WFIFO2IP_Data_29_IBUF_88),
    .A3(WFIFO2IP_Data_28_IBUF_87),
    .D(WFIFO2IP_Data_2_IBUF_89),
    .DPRA0(\vga/vcnt [4]),
    .DPRA1(\vga/vcnt [5]),
    .DPRA2(\vga/vcnt [6]),
    .DPRA3(\vga/vcnt [7]),
    .WCLK(clock_100),
    .WE(\vga/write_ctrl5_359 ),
    .SPO(\NLW_vga/Mram_RAM54_SPO_UNCONNECTED ),
    .DPO(\vga/N117 )
  );
  RAM16X1D #(
    .INIT ( 16'hC884 ))
  \vga/Mram_RAM56  (
    .A0(WFIFO2IP_Data_31_IBUF_91),
    .A1(WFIFO2IP_Data_30_IBUF_90),
    .A2(WFIFO2IP_Data_29_IBUF_88),
    .A3(WFIFO2IP_Data_28_IBUF_87),
    .D(WFIFO2IP_Data_2_IBUF_89),
    .DPRA0(\vga/vcnt [4]),
    .DPRA1(\vga/vcnt [5]),
    .DPRA2(\vga/vcnt [6]),
    .DPRA3(\vga/vcnt [7]),
    .WCLK(clock_100),
    .WE(\vga/write_ctrl7_361 ),
    .SPO(\NLW_vga/Mram_RAM56_SPO_UNCONNECTED ),
    .DPO(\vga/N121 )
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \vga/Mram_RAM52  (
    .A0(WFIFO2IP_Data_31_IBUF_91),
    .A1(WFIFO2IP_Data_30_IBUF_90),
    .A2(WFIFO2IP_Data_29_IBUF_88),
    .A3(WFIFO2IP_Data_28_IBUF_87),
    .D(WFIFO2IP_Data_2_IBUF_89),
    .DPRA0(\vga/vcnt [4]),
    .DPRA1(\vga/vcnt [5]),
    .DPRA2(\vga/vcnt [6]),
    .DPRA3(\vga/vcnt [7]),
    .WCLK(clock_100),
    .WE(\vga/write_ctrl3_357 ),
    .SPO(\NLW_vga/Mram_RAM52_SPO_UNCONNECTED ),
    .DPO(\vga/N113 )
  );
  RAM16X1D #(
    .INIT ( 16'h0007 ))
  \vga/Mram_RAM51  (
    .A0(WFIFO2IP_Data_31_IBUF_91),
    .A1(WFIFO2IP_Data_30_IBUF_90),
    .A2(WFIFO2IP_Data_29_IBUF_88),
    .A3(WFIFO2IP_Data_28_IBUF_87),
    .D(WFIFO2IP_Data_2_IBUF_89),
    .DPRA0(\vga/vcnt [4]),
    .DPRA1(\vga/vcnt [5]),
    .DPRA2(\vga/vcnt [6]),
    .DPRA3(\vga/vcnt [7]),
    .WCLK(clock_100),
    .WE(\vga/write_ctrl2_356 ),
    .SPO(\NLW_vga/Mram_RAM51_SPO_UNCONNECTED ),
    .DPO(\vga/N111 )
  );
  RAM16X1D #(
    .INIT ( 16'hE000 ))
  \vga/Mram_RAM53  (
    .A0(WFIFO2IP_Data_31_IBUF_91),
    .A1(WFIFO2IP_Data_30_IBUF_90),
    .A2(WFIFO2IP_Data_29_IBUF_88),
    .A3(WFIFO2IP_Data_28_IBUF_87),
    .D(WFIFO2IP_Data_2_IBUF_89),
    .DPRA0(\vga/vcnt [4]),
    .DPRA1(\vga/vcnt [5]),
    .DPRA2(\vga/vcnt [6]),
    .DPRA3(\vga/vcnt [7]),
    .WCLK(clock_100),
    .WE(\vga/write_ctrl4_358 ),
    .SPO(\NLW_vga/Mram_RAM53_SPO_UNCONNECTED ),
    .DPO(\vga/N115 )
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \vga/Mram_RAM49  (
    .A0(WFIFO2IP_Data_31_IBUF_91),
    .A1(WFIFO2IP_Data_30_IBUF_90),
    .A2(WFIFO2IP_Data_29_IBUF_88),
    .A3(WFIFO2IP_Data_28_IBUF_87),
    .D(WFIFO2IP_Data_2_IBUF_89),
    .DPRA0(\vga/vcnt [4]),
    .DPRA1(\vga/vcnt [5]),
    .DPRA2(\vga/vcnt [6]),
    .DPRA3(\vga/vcnt [7]),
    .WCLK(clock_100),
    .WE(\vga/write_ctrl_354 ),
    .SPO(\NLW_vga/Mram_RAM49_SPO_UNCONNECTED ),
    .DPO(\vga/N107 )
  );
  RAM16X1D #(
    .INIT ( 16'hFF80 ))
  \vga/Mram_RAM48  (
    .A0(WFIFO2IP_Data_31_IBUF_91),
    .A1(WFIFO2IP_Data_30_IBUF_90),
    .A2(WFIFO2IP_Data_29_IBUF_88),
    .A3(WFIFO2IP_Data_28_IBUF_87),
    .D(WFIFO2IP_Data_3_IBUF_92),
    .DPRA0(\vga/vcnt [4]),
    .DPRA1(\vga/vcnt [5]),
    .DPRA2(\vga/vcnt [6]),
    .DPRA3(\vga/vcnt [7]),
    .WCLK(clock_100),
    .WE(\vga/write_ctrl7_361 ),
    .SPO(\NLW_vga/Mram_RAM48_SPO_UNCONNECTED ),
    .DPO(\vga/N105 )
  );
  RAM16X1D #(
    .INIT ( 16'hF000 ))
  \vga/Mram_RAM50  (
    .A0(WFIFO2IP_Data_31_IBUF_91),
    .A1(WFIFO2IP_Data_30_IBUF_90),
    .A2(WFIFO2IP_Data_29_IBUF_88),
    .A3(WFIFO2IP_Data_28_IBUF_87),
    .D(WFIFO2IP_Data_2_IBUF_89),
    .DPRA0(\vga/vcnt [4]),
    .DPRA1(\vga/vcnt [5]),
    .DPRA2(\vga/vcnt [6]),
    .DPRA3(\vga/vcnt [7]),
    .WCLK(clock_100),
    .WE(\vga/write_ctrl1_355 ),
    .SPO(\NLW_vga/Mram_RAM50_SPO_UNCONNECTED ),
    .DPO(\vga/N109 )
  );
  RAM16X1D #(
    .INIT ( 16'h0400 ))
  \vga/Mram_RAM46  (
    .A0(WFIFO2IP_Data_31_IBUF_91),
    .A1(WFIFO2IP_Data_30_IBUF_90),
    .A2(WFIFO2IP_Data_29_IBUF_88),
    .A3(WFIFO2IP_Data_28_IBUF_87),
    .D(WFIFO2IP_Data_3_IBUF_92),
    .DPRA0(\vga/vcnt [4]),
    .DPRA1(\vga/vcnt [5]),
    .DPRA2(\vga/vcnt [6]),
    .DPRA3(\vga/vcnt [7]),
    .WCLK(clock_100),
    .WE(\vga/write_ctrl5_359 ),
    .SPO(\NLW_vga/Mram_RAM46_SPO_UNCONNECTED ),
    .DPO(\vga/N101 )
  );
  RAM16X1D #(
    .INIT ( 16'h17C0 ))
  \vga/Mram_RAM45  (
    .A0(WFIFO2IP_Data_31_IBUF_91),
    .A1(WFIFO2IP_Data_30_IBUF_90),
    .A2(WFIFO2IP_Data_29_IBUF_88),
    .A3(WFIFO2IP_Data_28_IBUF_87),
    .D(WFIFO2IP_Data_3_IBUF_92),
    .DPRA0(\vga/vcnt [4]),
    .DPRA1(\vga/vcnt [5]),
    .DPRA2(\vga/vcnt [6]),
    .DPRA3(\vga/vcnt [7]),
    .WCLK(clock_100),
    .WE(\vga/write_ctrl4_358 ),
    .SPO(\NLW_vga/Mram_RAM45_SPO_UNCONNECTED ),
    .DPO(\vga/N99 )
  );
  RAM16X1D #(
    .INIT ( 16'h0400 ))
  \vga/Mram_RAM47  (
    .A0(WFIFO2IP_Data_31_IBUF_91),
    .A1(WFIFO2IP_Data_30_IBUF_90),
    .A2(WFIFO2IP_Data_29_IBUF_88),
    .A3(WFIFO2IP_Data_28_IBUF_87),
    .D(WFIFO2IP_Data_3_IBUF_92),
    .DPRA0(\vga/vcnt [4]),
    .DPRA1(\vga/vcnt [5]),
    .DPRA2(\vga/vcnt [6]),
    .DPRA3(\vga/vcnt [7]),
    .WCLK(clock_100),
    .WE(\vga/write_ctrl6_360 ),
    .SPO(\NLW_vga/Mram_RAM47_SPO_UNCONNECTED ),
    .DPO(\vga/N103 )
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \vga/Mram_RAM43  (
    .A0(WFIFO2IP_Data_31_IBUF_91),
    .A1(WFIFO2IP_Data_30_IBUF_90),
    .A2(WFIFO2IP_Data_29_IBUF_88),
    .A3(WFIFO2IP_Data_28_IBUF_87),
    .D(WFIFO2IP_Data_3_IBUF_92),
    .DPRA0(\vga/vcnt [4]),
    .DPRA1(\vga/vcnt [5]),
    .DPRA2(\vga/vcnt [6]),
    .DPRA3(\vga/vcnt [7]),
    .WCLK(clock_100),
    .WE(\vga/write_ctrl2_356 ),
    .SPO(\NLW_vga/Mram_RAM43_SPO_UNCONNECTED ),
    .DPO(\vga/N95 )
  );
  RAM16X1D #(
    .INIT ( 16'h0FE0 ))
  \vga/Mram_RAM42  (
    .A0(WFIFO2IP_Data_31_IBUF_91),
    .A1(WFIFO2IP_Data_30_IBUF_90),
    .A2(WFIFO2IP_Data_29_IBUF_88),
    .A3(WFIFO2IP_Data_28_IBUF_87),
    .D(WFIFO2IP_Data_3_IBUF_92),
    .DPRA0(\vga/vcnt [4]),
    .DPRA1(\vga/vcnt [5]),
    .DPRA2(\vga/vcnt [6]),
    .DPRA3(\vga/vcnt [7]),
    .WCLK(clock_100),
    .WE(\vga/write_ctrl1_355 ),
    .SPO(\NLW_vga/Mram_RAM42_SPO_UNCONNECTED ),
    .DPO(\vga/N93 )
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \vga/Mram_RAM44  (
    .A0(WFIFO2IP_Data_31_IBUF_91),
    .A1(WFIFO2IP_Data_30_IBUF_90),
    .A2(WFIFO2IP_Data_29_IBUF_88),
    .A3(WFIFO2IP_Data_28_IBUF_87),
    .D(WFIFO2IP_Data_3_IBUF_92),
    .DPRA0(\vga/vcnt [4]),
    .DPRA1(\vga/vcnt [5]),
    .DPRA2(\vga/vcnt [6]),
    .DPRA3(\vga/vcnt [7]),
    .WCLK(clock_100),
    .WE(\vga/write_ctrl3_357 ),
    .SPO(\NLW_vga/Mram_RAM44_SPO_UNCONNECTED ),
    .DPO(\vga/N97 )
  );
  RAM16X1D #(
    .INIT ( 16'hC0FF ))
  \vga/Mram_RAM40  (
    .A0(WFIFO2IP_Data_31_IBUF_91),
    .A1(WFIFO2IP_Data_30_IBUF_90),
    .A2(WFIFO2IP_Data_29_IBUF_88),
    .A3(WFIFO2IP_Data_28_IBUF_87),
    .D(WFIFO2IP_Data_4_IBUF_93),
    .DPRA0(\vga/vcnt [4]),
    .DPRA1(\vga/vcnt [5]),
    .DPRA2(\vga/vcnt [6]),
    .DPRA3(\vga/vcnt [7]),
    .WCLK(clock_100),
    .WE(\vga/write_ctrl7_361 ),
    .SPO(\NLW_vga/Mram_RAM40_SPO_UNCONNECTED ),
    .DPO(\vga/N89 )
  );
  RAM16X1D #(
    .INIT ( 16'h0407 ))
  \vga/Mram_RAM39  (
    .A0(WFIFO2IP_Data_31_IBUF_91),
    .A1(WFIFO2IP_Data_30_IBUF_90),
    .A2(WFIFO2IP_Data_29_IBUF_88),
    .A3(WFIFO2IP_Data_28_IBUF_87),
    .D(WFIFO2IP_Data_4_IBUF_93),
    .DPRA0(\vga/vcnt [4]),
    .DPRA1(\vga/vcnt [5]),
    .DPRA2(\vga/vcnt [6]),
    .DPRA3(\vga/vcnt [7]),
    .WCLK(clock_100),
    .WE(\vga/write_ctrl6_360 ),
    .SPO(\NLW_vga/Mram_RAM39_SPO_UNCONNECTED ),
    .DPO(\vga/N87 )
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \vga/Mram_RAM41  (
    .A0(WFIFO2IP_Data_31_IBUF_91),
    .A1(WFIFO2IP_Data_30_IBUF_90),
    .A2(WFIFO2IP_Data_29_IBUF_88),
    .A3(WFIFO2IP_Data_28_IBUF_87),
    .D(WFIFO2IP_Data_3_IBUF_92),
    .DPRA0(\vga/vcnt [4]),
    .DPRA1(\vga/vcnt [5]),
    .DPRA2(\vga/vcnt [6]),
    .DPRA3(\vga/vcnt [7]),
    .WCLK(clock_100),
    .WE(\vga/write_ctrl_354 ),
    .SPO(\NLW_vga/Mram_RAM41_SPO_UNCONNECTED ),
    .DPO(\vga/N91 )
  );
  RAM16X1D #(
    .INIT ( 16'h083F ))
  \vga/Mram_RAM37  (
    .A0(WFIFO2IP_Data_31_IBUF_91),
    .A1(WFIFO2IP_Data_30_IBUF_90),
    .A2(WFIFO2IP_Data_29_IBUF_88),
    .A3(WFIFO2IP_Data_28_IBUF_87),
    .D(WFIFO2IP_Data_4_IBUF_93),
    .DPRA0(\vga/vcnt [4]),
    .DPRA1(\vga/vcnt [5]),
    .DPRA2(\vga/vcnt [6]),
    .DPRA3(\vga/vcnt [7]),
    .WCLK(clock_100),
    .WE(\vga/write_ctrl4_358 ),
    .SPO(\NLW_vga/Mram_RAM37_SPO_UNCONNECTED ),
    .DPO(\vga/N83 )
  );
  RAM16X1D #(
    .INIT ( 16'h8000 ))
  \vga/Mram_RAM36  (
    .A0(WFIFO2IP_Data_31_IBUF_91),
    .A1(WFIFO2IP_Data_30_IBUF_90),
    .A2(WFIFO2IP_Data_29_IBUF_88),
    .A3(WFIFO2IP_Data_28_IBUF_87),
    .D(WFIFO2IP_Data_4_IBUF_93),
    .DPRA0(\vga/vcnt [4]),
    .DPRA1(\vga/vcnt [5]),
    .DPRA2(\vga/vcnt [6]),
    .DPRA3(\vga/vcnt [7]),
    .WCLK(clock_100),
    .WE(\vga/write_ctrl3_357 ),
    .SPO(\NLW_vga/Mram_RAM36_SPO_UNCONNECTED ),
    .DPO(\vga/N81 )
  );
  RAM16X1D #(
    .INIT ( 16'h0960 ))
  \vga/Mram_RAM38  (
    .A0(WFIFO2IP_Data_31_IBUF_91),
    .A1(WFIFO2IP_Data_30_IBUF_90),
    .A2(WFIFO2IP_Data_29_IBUF_88),
    .A3(WFIFO2IP_Data_28_IBUF_87),
    .D(WFIFO2IP_Data_4_IBUF_93),
    .DPRA0(\vga/vcnt [4]),
    .DPRA1(\vga/vcnt [5]),
    .DPRA2(\vga/vcnt [6]),
    .DPRA3(\vga/vcnt [7]),
    .WCLK(clock_100),
    .WE(\vga/write_ctrl5_359 ),
    .SPO(\NLW_vga/Mram_RAM38_SPO_UNCONNECTED ),
    .DPO(\vga/N85 )
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \vga/Mram_RAM35  (
    .A0(WFIFO2IP_Data_31_IBUF_91),
    .A1(WFIFO2IP_Data_30_IBUF_90),
    .A2(WFIFO2IP_Data_29_IBUF_88),
    .A3(WFIFO2IP_Data_28_IBUF_87),
    .D(WFIFO2IP_Data_4_IBUF_93),
    .DPRA0(\vga/vcnt [4]),
    .DPRA1(\vga/vcnt [5]),
    .DPRA2(\vga/vcnt [6]),
    .DPRA3(\vga/vcnt [7]),
    .WCLK(clock_100),
    .WE(\vga/write_ctrl2_356 ),
    .SPO(\NLW_vga/Mram_RAM35_SPO_UNCONNECTED ),
    .DPO(\vga/N79 )
  );
  RAM16X1D #(
    .INIT ( 16'h001F ))
  \vga/Mram_RAM34  (
    .A0(WFIFO2IP_Data_31_IBUF_91),
    .A1(WFIFO2IP_Data_30_IBUF_90),
    .A2(WFIFO2IP_Data_29_IBUF_88),
    .A3(WFIFO2IP_Data_28_IBUF_87),
    .D(WFIFO2IP_Data_4_IBUF_93),
    .DPRA0(\vga/vcnt [4]),
    .DPRA1(\vga/vcnt [5]),
    .DPRA2(\vga/vcnt [6]),
    .DPRA3(\vga/vcnt [7]),
    .WCLK(clock_100),
    .WE(\vga/write_ctrl1_355 ),
    .SPO(\NLW_vga/Mram_RAM34_SPO_UNCONNECTED ),
    .DPO(\vga/N77 )
  );
  RAM16X1D #(
    .INIT ( 16'hC080 ))
  \vga/Mram_RAM32  (
    .A0(WFIFO2IP_Data_31_IBUF_91),
    .A1(WFIFO2IP_Data_30_IBUF_90),
    .A2(WFIFO2IP_Data_29_IBUF_88),
    .A3(WFIFO2IP_Data_28_IBUF_87),
    .D(WFIFO2IP_Data_5_IBUF_94),
    .DPRA0(\vga/vcnt [4]),
    .DPRA1(\vga/vcnt [5]),
    .DPRA2(\vga/vcnt [6]),
    .DPRA3(\vga/vcnt [7]),
    .WCLK(clock_100),
    .WE(\vga/write_ctrl7_361 ),
    .SPO(\NLW_vga/Mram_RAM32_SPO_UNCONNECTED ),
    .DPO(\vga/N73 )
  );
  RAM16X1D #(
    .INIT ( 16'hFE02 ))
  \vga/Mram_RAM31  (
    .A0(WFIFO2IP_Data_31_IBUF_91),
    .A1(WFIFO2IP_Data_30_IBUF_90),
    .A2(WFIFO2IP_Data_29_IBUF_88),
    .A3(WFIFO2IP_Data_28_IBUF_87),
    .D(WFIFO2IP_Data_5_IBUF_94),
    .DPRA0(\vga/vcnt [4]),
    .DPRA1(\vga/vcnt [5]),
    .DPRA2(\vga/vcnt [6]),
    .DPRA3(\vga/vcnt [7]),
    .WCLK(clock_100),
    .WE(\vga/write_ctrl6_360 ),
    .SPO(\NLW_vga/Mram_RAM31_SPO_UNCONNECTED ),
    .DPO(\vga/N71 )
  );
  RAM16X1D #(
    .INIT ( 16'hC000 ))
  \vga/Mram_RAM33  (
    .A0(WFIFO2IP_Data_31_IBUF_91),
    .A1(WFIFO2IP_Data_30_IBUF_90),
    .A2(WFIFO2IP_Data_29_IBUF_88),
    .A3(WFIFO2IP_Data_28_IBUF_87),
    .D(WFIFO2IP_Data_4_IBUF_93),
    .DPRA0(\vga/vcnt [4]),
    .DPRA1(\vga/vcnt [5]),
    .DPRA2(\vga/vcnt [6]),
    .DPRA3(\vga/vcnt [7]),
    .WCLK(clock_100),
    .WE(\vga/write_ctrl_354 ),
    .SPO(\NLW_vga/Mram_RAM33_SPO_UNCONNECTED ),
    .DPO(\vga/N75 )
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \vga/Mram_RAM29  (
    .A0(WFIFO2IP_Data_31_IBUF_91),
    .A1(WFIFO2IP_Data_30_IBUF_90),
    .A2(WFIFO2IP_Data_29_IBUF_88),
    .A3(WFIFO2IP_Data_28_IBUF_87),
    .D(WFIFO2IP_Data_5_IBUF_94),
    .DPRA0(\vga/vcnt [4]),
    .DPRA1(\vga/vcnt [5]),
    .DPRA2(\vga/vcnt [6]),
    .DPRA3(\vga/vcnt [7]),
    .WCLK(clock_100),
    .WE(\vga/write_ctrl4_358 ),
    .SPO(\NLW_vga/Mram_RAM29_SPO_UNCONNECTED ),
    .DPO(\vga/N67 )
  );
  RAM16X1D #(
    .INIT ( 16'h7F00 ))
  \vga/Mram_RAM28  (
    .A0(WFIFO2IP_Data_31_IBUF_91),
    .A1(WFIFO2IP_Data_30_IBUF_90),
    .A2(WFIFO2IP_Data_29_IBUF_88),
    .A3(WFIFO2IP_Data_28_IBUF_87),
    .D(WFIFO2IP_Data_5_IBUF_94),
    .DPRA0(\vga/vcnt [4]),
    .DPRA1(\vga/vcnt [5]),
    .DPRA2(\vga/vcnt [6]),
    .DPRA3(\vga/vcnt [7]),
    .WCLK(clock_100),
    .WE(\vga/write_ctrl3_357 ),
    .SPO(\NLW_vga/Mram_RAM28_SPO_UNCONNECTED ),
    .DPO(\vga/N65 )
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \vga/Mram_RAM30  (
    .A0(WFIFO2IP_Data_31_IBUF_91),
    .A1(WFIFO2IP_Data_30_IBUF_90),
    .A2(WFIFO2IP_Data_29_IBUF_88),
    .A3(WFIFO2IP_Data_28_IBUF_87),
    .D(WFIFO2IP_Data_5_IBUF_94),
    .DPRA0(\vga/vcnt [4]),
    .DPRA1(\vga/vcnt [5]),
    .DPRA2(\vga/vcnt [6]),
    .DPRA3(\vga/vcnt [7]),
    .WCLK(clock_100),
    .WE(\vga/write_ctrl5_359 ),
    .SPO(\NLW_vga/Mram_RAM30_SPO_UNCONNECTED ),
    .DPO(\vga/N69 )
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \vga/Mram_RAM26  (
    .A0(WFIFO2IP_Data_31_IBUF_91),
    .A1(WFIFO2IP_Data_30_IBUF_90),
    .A2(WFIFO2IP_Data_29_IBUF_88),
    .A3(WFIFO2IP_Data_28_IBUF_87),
    .D(WFIFO2IP_Data_5_IBUF_94),
    .DPRA0(\vga/vcnt [4]),
    .DPRA1(\vga/vcnt [5]),
    .DPRA2(\vga/vcnt [6]),
    .DPRA3(\vga/vcnt [7]),
    .WCLK(clock_100),
    .WE(\vga/write_ctrl1_355 ),
    .SPO(\NLW_vga/Mram_RAM26_SPO_UNCONNECTED ),
    .DPO(\vga/N61 )
  );
  RAM16X1D #(
    .INIT ( 16'h3F80 ))
  \vga/Mram_RAM25  (
    .A0(WFIFO2IP_Data_31_IBUF_91),
    .A1(WFIFO2IP_Data_30_IBUF_90),
    .A2(WFIFO2IP_Data_29_IBUF_88),
    .A3(WFIFO2IP_Data_28_IBUF_87),
    .D(WFIFO2IP_Data_5_IBUF_94),
    .DPRA0(\vga/vcnt [4]),
    .DPRA1(\vga/vcnt [5]),
    .DPRA2(\vga/vcnt [6]),
    .DPRA3(\vga/vcnt [7]),
    .WCLK(clock_100),
    .WE(\vga/write_ctrl_354 ),
    .SPO(\NLW_vga/Mram_RAM25_SPO_UNCONNECTED ),
    .DPO(\vga/N59 )
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \vga/Mram_RAM27  (
    .A0(WFIFO2IP_Data_31_IBUF_91),
    .A1(WFIFO2IP_Data_30_IBUF_90),
    .A2(WFIFO2IP_Data_29_IBUF_88),
    .A3(WFIFO2IP_Data_28_IBUF_87),
    .D(WFIFO2IP_Data_5_IBUF_94),
    .DPRA0(\vga/vcnt [4]),
    .DPRA1(\vga/vcnt [5]),
    .DPRA2(\vga/vcnt [6]),
    .DPRA3(\vga/vcnt [7]),
    .WCLK(clock_100),
    .WE(\vga/write_ctrl2_356 ),
    .SPO(\NLW_vga/Mram_RAM27_SPO_UNCONNECTED ),
    .DPO(\vga/N63 )
  );
  RAM16X1D #(
    .INIT ( 16'hF1E3 ))
  \vga/Mram_RAM23  (
    .A0(WFIFO2IP_Data_31_IBUF_91),
    .A1(WFIFO2IP_Data_30_IBUF_90),
    .A2(WFIFO2IP_Data_29_IBUF_88),
    .A3(WFIFO2IP_Data_28_IBUF_87),
    .D(WFIFO2IP_Data_6_IBUF_95),
    .DPRA0(\vga/vcnt [4]),
    .DPRA1(\vga/vcnt [5]),
    .DPRA2(\vga/vcnt [6]),
    .DPRA3(\vga/vcnt [7]),
    .WCLK(clock_100),
    .WE(\vga/write_ctrl6_360 ),
    .SPO(\NLW_vga/Mram_RAM23_SPO_UNCONNECTED ),
    .DPO(\vga/N55 )
  );
  RAM16X1D #(
    .INIT ( 16'hC78F ))
  \vga/Mram_RAM22  (
    .A0(WFIFO2IP_Data_31_IBUF_91),
    .A1(WFIFO2IP_Data_30_IBUF_90),
    .A2(WFIFO2IP_Data_29_IBUF_88),
    .A3(WFIFO2IP_Data_28_IBUF_87),
    .D(WFIFO2IP_Data_6_IBUF_95),
    .DPRA0(\vga/vcnt [4]),
    .DPRA1(\vga/vcnt [5]),
    .DPRA2(\vga/vcnt [6]),
    .DPRA3(\vga/vcnt [7]),
    .WCLK(clock_100),
    .WE(\vga/write_ctrl5_359 ),
    .SPO(\NLW_vga/Mram_RAM22_SPO_UNCONNECTED ),
    .DPO(\vga/N53 )
  );
  RAM16X1D #(
    .INIT ( 16'hBCF8 ))
  \vga/Mram_RAM24  (
    .A0(WFIFO2IP_Data_31_IBUF_91),
    .A1(WFIFO2IP_Data_30_IBUF_90),
    .A2(WFIFO2IP_Data_29_IBUF_88),
    .A3(WFIFO2IP_Data_28_IBUF_87),
    .D(WFIFO2IP_Data_6_IBUF_95),
    .DPRA0(\vga/vcnt [4]),
    .DPRA1(\vga/vcnt [5]),
    .DPRA2(\vga/vcnt [6]),
    .DPRA3(\vga/vcnt [7]),
    .WCLK(clock_100),
    .WE(\vga/write_ctrl7_361 ),
    .SPO(\NLW_vga/Mram_RAM24_SPO_UNCONNECTED ),
    .DPO(\vga/N57 )
  );
  RAM16X1D #(
    .INIT ( 16'h78F1 ))
  \vga/Mram_RAM20  (
    .A0(WFIFO2IP_Data_31_IBUF_91),
    .A1(WFIFO2IP_Data_30_IBUF_90),
    .A2(WFIFO2IP_Data_29_IBUF_88),
    .A3(WFIFO2IP_Data_28_IBUF_87),
    .D(WFIFO2IP_Data_6_IBUF_95),
    .DPRA0(\vga/vcnt [4]),
    .DPRA1(\vga/vcnt [5]),
    .DPRA2(\vga/vcnt [6]),
    .DPRA3(\vga/vcnt [7]),
    .WCLK(clock_100),
    .WE(\vga/write_ctrl3_357 ),
    .SPO(\NLW_vga/Mram_RAM20_SPO_UNCONNECTED ),
    .DPO(\vga/N49 )
  );
  RAM16X1D #(
    .INIT ( 16'hE3C7 ))
  \vga/Mram_RAM19  (
    .A0(WFIFO2IP_Data_31_IBUF_91),
    .A1(WFIFO2IP_Data_30_IBUF_90),
    .A2(WFIFO2IP_Data_29_IBUF_88),
    .A3(WFIFO2IP_Data_28_IBUF_87),
    .D(WFIFO2IP_Data_6_IBUF_95),
    .DPRA0(\vga/vcnt [4]),
    .DPRA1(\vga/vcnt [5]),
    .DPRA2(\vga/vcnt [6]),
    .DPRA3(\vga/vcnt [7]),
    .WCLK(clock_100),
    .WE(\vga/write_ctrl2_356 ),
    .SPO(\NLW_vga/Mram_RAM19_SPO_UNCONNECTED ),
    .DPO(\vga/N47 )
  );
  RAM16X1D #(
    .INIT ( 16'h1E3C ))
  \vga/Mram_RAM21  (
    .A0(WFIFO2IP_Data_31_IBUF_91),
    .A1(WFIFO2IP_Data_30_IBUF_90),
    .A2(WFIFO2IP_Data_29_IBUF_88),
    .A3(WFIFO2IP_Data_28_IBUF_87),
    .D(WFIFO2IP_Data_6_IBUF_95),
    .DPRA0(\vga/vcnt [4]),
    .DPRA1(\vga/vcnt [5]),
    .DPRA2(\vga/vcnt [6]),
    .DPRA3(\vga/vcnt [7]),
    .WCLK(clock_100),
    .WE(\vga/write_ctrl4_358 ),
    .SPO(\NLW_vga/Mram_RAM21_SPO_UNCONNECTED ),
    .DPO(\vga/N51 )
  );
  RAM16X1D #(
    .INIT ( 16'h3C78 ))
  \vga/Mram_RAM17  (
    .A0(WFIFO2IP_Data_31_IBUF_91),
    .A1(WFIFO2IP_Data_30_IBUF_90),
    .A2(WFIFO2IP_Data_29_IBUF_88),
    .A3(WFIFO2IP_Data_28_IBUF_87),
    .D(WFIFO2IP_Data_6_IBUF_95),
    .DPRA0(\vga/vcnt [4]),
    .DPRA1(\vga/vcnt [5]),
    .DPRA2(\vga/vcnt [6]),
    .DPRA3(\vga/vcnt [7]),
    .WCLK(clock_100),
    .WE(\vga/write_ctrl_354 ),
    .SPO(\NLW_vga/Mram_RAM17_SPO_UNCONNECTED ),
    .DPO(\vga/N43 )
  );
  RAM16X1D #(
    .INIT ( 16'hF3E6 ))
  \vga/Mram_RAM16  (
    .A0(WFIFO2IP_Data_31_IBUF_91),
    .A1(WFIFO2IP_Data_30_IBUF_90),
    .A2(WFIFO2IP_Data_29_IBUF_88),
    .A3(WFIFO2IP_Data_28_IBUF_87),
    .D(WFIFO2IP_Data_7_IBUF_96),
    .DPRA0(\vga/vcnt [4]),
    .DPRA1(\vga/vcnt [5]),
    .DPRA2(\vga/vcnt [6]),
    .DPRA3(\vga/vcnt [7]),
    .WCLK(clock_100),
    .WE(\vga/write_ctrl7_361 ),
    .SPO(\NLW_vga/Mram_RAM16_SPO_UNCONNECTED ),
    .DPO(\vga/N41 )
  );
  RAM16X1D #(
    .INIT ( 16'h8F1E ))
  \vga/Mram_RAM18  (
    .A0(WFIFO2IP_Data_31_IBUF_91),
    .A1(WFIFO2IP_Data_30_IBUF_90),
    .A2(WFIFO2IP_Data_29_IBUF_88),
    .A3(WFIFO2IP_Data_28_IBUF_87),
    .D(WFIFO2IP_Data_6_IBUF_95),
    .DPRA0(\vga/vcnt [4]),
    .DPRA1(\vga/vcnt [5]),
    .DPRA2(\vga/vcnt [6]),
    .DPRA3(\vga/vcnt [7]),
    .WCLK(clock_100),
    .WE(\vga/write_ctrl1_355 ),
    .SPO(\NLW_vga/Mram_RAM18_SPO_UNCONNECTED ),
    .DPO(\vga/N45 )
  );
  RAM16X1D #(
    .INIT ( 16'h366C ))
  \vga/Mram_RAM14  (
    .A0(WFIFO2IP_Data_31_IBUF_91),
    .A1(WFIFO2IP_Data_30_IBUF_90),
    .A2(WFIFO2IP_Data_29_IBUF_88),
    .A3(WFIFO2IP_Data_28_IBUF_87),
    .D(WFIFO2IP_Data_7_IBUF_96),
    .DPRA0(\vga/vcnt [4]),
    .DPRA1(\vga/vcnt [5]),
    .DPRA2(\vga/vcnt [6]),
    .DPRA3(\vga/vcnt [7]),
    .WCLK(clock_100),
    .WE(\vga/write_ctrl5_359 ),
    .SPO(\NLW_vga/Mram_RAM14_SPO_UNCONNECTED ),
    .DPO(\vga/N37 )
  );
  RAM16X1D #(
    .INIT ( 16'hD9B3 ))
  \vga/Mram_RAM13  (
    .A0(WFIFO2IP_Data_31_IBUF_91),
    .A1(WFIFO2IP_Data_30_IBUF_90),
    .A2(WFIFO2IP_Data_29_IBUF_88),
    .A3(WFIFO2IP_Data_28_IBUF_87),
    .D(WFIFO2IP_Data_7_IBUF_96),
    .DPRA0(\vga/vcnt [4]),
    .DPRA1(\vga/vcnt [5]),
    .DPRA2(\vga/vcnt [6]),
    .DPRA3(\vga/vcnt [7]),
    .WCLK(clock_100),
    .WE(\vga/write_ctrl4_358 ),
    .SPO(\NLW_vga/Mram_RAM13_SPO_UNCONNECTED ),
    .DPO(\vga/N35 )
  );
  RAM16X1D #(
    .INIT ( 16'hCD9B ))
  \vga/Mram_RAM15  (
    .A0(WFIFO2IP_Data_31_IBUF_91),
    .A1(WFIFO2IP_Data_30_IBUF_90),
    .A2(WFIFO2IP_Data_29_IBUF_88),
    .A3(WFIFO2IP_Data_28_IBUF_87),
    .D(WFIFO2IP_Data_7_IBUF_96),
    .DPRA0(\vga/vcnt [4]),
    .DPRA1(\vga/vcnt [5]),
    .DPRA2(\vga/vcnt [6]),
    .DPRA3(\vga/vcnt [7]),
    .WCLK(clock_100),
    .WE(\vga/write_ctrl6_360 ),
    .SPO(\NLW_vga/Mram_RAM15_SPO_UNCONNECTED ),
    .DPO(\vga/N39 )
  );
  RAM16X1D #(
    .INIT ( 16'h66CD ))
  \vga/Mram_RAM12  (
    .A0(WFIFO2IP_Data_31_IBUF_91),
    .A1(WFIFO2IP_Data_30_IBUF_90),
    .A2(WFIFO2IP_Data_29_IBUF_88),
    .A3(WFIFO2IP_Data_28_IBUF_87),
    .D(WFIFO2IP_Data_7_IBUF_96),
    .DPRA0(\vga/vcnt [4]),
    .DPRA1(\vga/vcnt [5]),
    .DPRA2(\vga/vcnt [6]),
    .DPRA3(\vga/vcnt [7]),
    .WCLK(clock_100),
    .WE(\vga/write_ctrl3_357 ),
    .SPO(\NLW_vga/Mram_RAM12_SPO_UNCONNECTED ),
    .DPO(\vga/N33 )
  );
  RAM16X1D #(
    .INIT ( 16'h9B36 ))
  \vga/Mram_RAM11  (
    .A0(WFIFO2IP_Data_31_IBUF_91),
    .A1(WFIFO2IP_Data_30_IBUF_90),
    .A2(WFIFO2IP_Data_29_IBUF_88),
    .A3(WFIFO2IP_Data_28_IBUF_87),
    .D(WFIFO2IP_Data_7_IBUF_96),
    .DPRA0(\vga/vcnt [4]),
    .DPRA1(\vga/vcnt [5]),
    .DPRA2(\vga/vcnt [6]),
    .DPRA3(\vga/vcnt [7]),
    .WCLK(clock_100),
    .WE(\vga/write_ctrl2_356 ),
    .SPO(\NLW_vga/Mram_RAM11_SPO_UNCONNECTED ),
    .DPO(\vga/N31 )
  );
  RAM16X1D #(
    .INIT ( 16'hB366 ))
  \vga/Mram_RAM9  (
    .A0(WFIFO2IP_Data_31_IBUF_91),
    .A1(WFIFO2IP_Data_30_IBUF_90),
    .A2(WFIFO2IP_Data_29_IBUF_88),
    .A3(WFIFO2IP_Data_28_IBUF_87),
    .D(WFIFO2IP_Data_7_IBUF_96),
    .DPRA0(\vga/vcnt [4]),
    .DPRA1(\vga/vcnt [5]),
    .DPRA2(\vga/vcnt [6]),
    .DPRA3(\vga/vcnt [7]),
    .WCLK(clock_100),
    .WE(\vga/write_ctrl_354 ),
    .SPO(\NLW_vga/Mram_RAM9_SPO_UNCONNECTED ),
    .DPO(\vga/N27 )
  );
  RAM16X1D #(
    .INIT ( 16'hAAD5 ))
  \vga/Mram_RAM8  (
    .A0(WFIFO2IP_Data_31_IBUF_91),
    .A1(WFIFO2IP_Data_30_IBUF_90),
    .A2(WFIFO2IP_Data_29_IBUF_88),
    .A3(WFIFO2IP_Data_28_IBUF_87),
    .D(WFIFO2IP_Data_8_IBUF_97),
    .DPRA0(\vga/vcnt [4]),
    .DPRA1(\vga/vcnt [5]),
    .DPRA2(\vga/vcnt [6]),
    .DPRA3(\vga/vcnt [7]),
    .WCLK(clock_100),
    .WE(\vga/write_ctrl7_361 ),
    .SPO(\NLW_vga/Mram_RAM8_SPO_UNCONNECTED ),
    .DPO(\vga/N25 )
  );
  RAM16X1D #(
    .INIT ( 16'h6CD9 ))
  \vga/Mram_RAM10  (
    .A0(WFIFO2IP_Data_31_IBUF_91),
    .A1(WFIFO2IP_Data_30_IBUF_90),
    .A2(WFIFO2IP_Data_29_IBUF_88),
    .A3(WFIFO2IP_Data_28_IBUF_87),
    .D(WFIFO2IP_Data_7_IBUF_96),
    .DPRA0(\vga/vcnt [4]),
    .DPRA1(\vga/vcnt [5]),
    .DPRA2(\vga/vcnt [6]),
    .DPRA3(\vga/vcnt [7]),
    .WCLK(clock_100),
    .WE(\vga/write_ctrl1_355 ),
    .SPO(\NLW_vga/Mram_RAM10_SPO_UNCONNECTED ),
    .DPO(\vga/N29 )
  );
  RAM16X1D #(
    .INIT ( 16'hAD5A ))
  \vga/Mram_RAM6  (
    .A0(WFIFO2IP_Data_31_IBUF_91),
    .A1(WFIFO2IP_Data_30_IBUF_90),
    .A2(WFIFO2IP_Data_29_IBUF_88),
    .A3(WFIFO2IP_Data_28_IBUF_87),
    .D(WFIFO2IP_Data_8_IBUF_97),
    .DPRA0(\vga/vcnt [4]),
    .DPRA1(\vga/vcnt [5]),
    .DPRA2(\vga/vcnt [6]),
    .DPRA3(\vga/vcnt [7]),
    .WCLK(clock_100),
    .WE(\vga/write_ctrl5_359 ),
    .SPO(\NLW_vga/Mram_RAM6_SPO_UNCONNECTED ),
    .DPO(\vga/N21 )
  );
  RAM16X1D #(
    .INIT ( 16'hB56A ))
  \vga/Mram_RAM5  (
    .A0(WFIFO2IP_Data_31_IBUF_91),
    .A1(WFIFO2IP_Data_30_IBUF_90),
    .A2(WFIFO2IP_Data_29_IBUF_88),
    .A3(WFIFO2IP_Data_28_IBUF_87),
    .D(WFIFO2IP_Data_8_IBUF_97),
    .DPRA0(\vga/vcnt [4]),
    .DPRA1(\vga/vcnt [5]),
    .DPRA2(\vga/vcnt [6]),
    .DPRA3(\vga/vcnt [7]),
    .WCLK(clock_100),
    .WE(\vga/write_ctrl4_358 ),
    .SPO(\NLW_vga/Mram_RAM5_SPO_UNCONNECTED ),
    .DPO(\vga/N19 )
  );
  RAM16X1D #(
    .INIT ( 16'hAB56 ))
  \vga/Mram_RAM7  (
    .A0(WFIFO2IP_Data_31_IBUF_91),
    .A1(WFIFO2IP_Data_30_IBUF_90),
    .A2(WFIFO2IP_Data_29_IBUF_88),
    .A3(WFIFO2IP_Data_28_IBUF_87),
    .D(WFIFO2IP_Data_8_IBUF_97),
    .DPRA0(\vga/vcnt [4]),
    .DPRA1(\vga/vcnt [5]),
    .DPRA2(\vga/vcnt [6]),
    .DPRA3(\vga/vcnt [7]),
    .WCLK(clock_100),
    .WE(\vga/write_ctrl6_360 ),
    .SPO(\NLW_vga/Mram_RAM7_SPO_UNCONNECTED ),
    .DPO(\vga/N23 )
  );
  RAM16X1D #(
    .INIT ( 16'h56AD ))
  \vga/Mram_RAM3  (
    .A0(WFIFO2IP_Data_31_IBUF_91),
    .A1(WFIFO2IP_Data_30_IBUF_90),
    .A2(WFIFO2IP_Data_29_IBUF_88),
    .A3(WFIFO2IP_Data_28_IBUF_87),
    .D(WFIFO2IP_Data_8_IBUF_97),
    .DPRA0(\vga/vcnt [4]),
    .DPRA1(\vga/vcnt [5]),
    .DPRA2(\vga/vcnt [6]),
    .DPRA3(\vga/vcnt [7]),
    .WCLK(clock_100),
    .WE(\vga/write_ctrl2_356 ),
    .SPO(\NLW_vga/Mram_RAM3_SPO_UNCONNECTED ),
    .DPO(\vga/N15 )
  );
  RAM16X1D #(
    .INIT ( 16'h5AB5 ))
  \vga/Mram_RAM2  (
    .A0(WFIFO2IP_Data_31_IBUF_91),
    .A1(WFIFO2IP_Data_30_IBUF_90),
    .A2(WFIFO2IP_Data_29_IBUF_88),
    .A3(WFIFO2IP_Data_28_IBUF_87),
    .D(WFIFO2IP_Data_8_IBUF_97),
    .DPRA0(\vga/vcnt [4]),
    .DPRA1(\vga/vcnt [5]),
    .DPRA2(\vga/vcnt [6]),
    .DPRA3(\vga/vcnt [7]),
    .WCLK(clock_100),
    .WE(\vga/write_ctrl1_355 ),
    .SPO(\NLW_vga/Mram_RAM2_SPO_UNCONNECTED ),
    .DPO(\vga/N13 )
  );
  RAM16X1D #(
    .INIT ( 16'hD5AB ))
  \vga/Mram_RAM4  (
    .A0(WFIFO2IP_Data_31_IBUF_91),
    .A1(WFIFO2IP_Data_30_IBUF_90),
    .A2(WFIFO2IP_Data_29_IBUF_88),
    .A3(WFIFO2IP_Data_28_IBUF_87),
    .D(WFIFO2IP_Data_8_IBUF_97),
    .DPRA0(\vga/vcnt [4]),
    .DPRA1(\vga/vcnt [5]),
    .DPRA2(\vga/vcnt [6]),
    .DPRA3(\vga/vcnt [7]),
    .WCLK(clock_100),
    .WE(\vga/write_ctrl3_357 ),
    .SPO(\NLW_vga/Mram_RAM4_SPO_UNCONNECTED ),
    .DPO(\vga/N17 )
  );
  RAM16X1D #(
    .INIT ( 16'h6AD5 ))
  \vga/Mram_RAM1  (
    .A0(WFIFO2IP_Data_31_IBUF_91),
    .A1(WFIFO2IP_Data_30_IBUF_90),
    .A2(WFIFO2IP_Data_29_IBUF_88),
    .A3(WFIFO2IP_Data_28_IBUF_87),
    .D(WFIFO2IP_Data_8_IBUF_97),
    .DPRA0(\vga/vcnt [4]),
    .DPRA1(\vga/vcnt [5]),
    .DPRA2(\vga/vcnt [6]),
    .DPRA3(\vga/vcnt [7]),
    .WCLK(clock_100),
    .WE(\vga/write_ctrl_354 ),
    .SPO(\NLW_vga/Mram_RAM1_SPO_UNCONNECTED ),
    .DPO(\vga/N11 )
  );
  XORCY   \vga/Mcount_vcnt_xor<9>  (
    .CI(\vga/Mcount_vcnt_cy [8]),
    .LI(\vga/Mcount_vcnt_lut [9]),
    .O(\vga/Mcount_vcnt9 )
  );
  XORCY   \vga/Mcount_vcnt_xor<8>  (
    .CI(\vga/Mcount_vcnt_cy [7]),
    .LI(\vga/Mcount_vcnt_lut [8]),
    .O(\vga/Mcount_vcnt8 )
  );
  MUXCY   \vga/Mcount_vcnt_cy<8>  (
    .CI(\vga/Mcount_vcnt_cy [7]),
    .DI(IP2Bus_Data_31_OBUF_37),
    .S(\vga/Mcount_vcnt_lut [8]),
    .O(\vga/Mcount_vcnt_cy [8])
  );
  XORCY   \vga/Mcount_vcnt_xor<7>  (
    .CI(\vga/Mcount_vcnt_cy [6]),
    .LI(\vga/Mcount_vcnt_lut [7]),
    .O(\vga/Mcount_vcnt7 )
  );
  MUXCY   \vga/Mcount_vcnt_cy<7>  (
    .CI(\vga/Mcount_vcnt_cy [6]),
    .DI(IP2Bus_Data_31_OBUF_37),
    .S(\vga/Mcount_vcnt_lut [7]),
    .O(\vga/Mcount_vcnt_cy [7])
  );
  XORCY   \vga/Mcount_vcnt_xor<6>  (
    .CI(\vga/Mcount_vcnt_cy [5]),
    .LI(\vga/Mcount_vcnt_lut [6]),
    .O(\vga/Mcount_vcnt6 )
  );
  MUXCY   \vga/Mcount_vcnt_cy<6>  (
    .CI(\vga/Mcount_vcnt_cy [5]),
    .DI(IP2Bus_Data_31_OBUF_37),
    .S(\vga/Mcount_vcnt_lut [6]),
    .O(\vga/Mcount_vcnt_cy [6])
  );
  XORCY   \vga/Mcount_vcnt_xor<5>  (
    .CI(\vga/Mcount_vcnt_cy [4]),
    .LI(\vga/Mcount_vcnt_lut [5]),
    .O(\vga/Mcount_vcnt5 )
  );
  MUXCY   \vga/Mcount_vcnt_cy<5>  (
    .CI(\vga/Mcount_vcnt_cy [4]),
    .DI(IP2Bus_Data_31_OBUF_37),
    .S(\vga/Mcount_vcnt_lut [5]),
    .O(\vga/Mcount_vcnt_cy [5])
  );
  XORCY   \vga/Mcount_vcnt_xor<4>  (
    .CI(\vga/Mcount_vcnt_cy [3]),
    .LI(\vga/Mcount_vcnt_lut [4]),
    .O(\vga/Mcount_vcnt4 )
  );
  MUXCY   \vga/Mcount_vcnt_cy<4>  (
    .CI(\vga/Mcount_vcnt_cy [3]),
    .DI(IP2Bus_Data_31_OBUF_37),
    .S(\vga/Mcount_vcnt_lut [4]),
    .O(\vga/Mcount_vcnt_cy [4])
  );
  XORCY   \vga/Mcount_vcnt_xor<3>  (
    .CI(\vga/Mcount_vcnt_cy [2]),
    .LI(\vga/Mcount_vcnt_lut [3]),
    .O(\vga/Mcount_vcnt3 )
  );
  MUXCY   \vga/Mcount_vcnt_cy<3>  (
    .CI(\vga/Mcount_vcnt_cy [2]),
    .DI(IP2Bus_Data_31_OBUF_37),
    .S(\vga/Mcount_vcnt_lut [3]),
    .O(\vga/Mcount_vcnt_cy [3])
  );
  XORCY   \vga/Mcount_vcnt_xor<2>  (
    .CI(\vga/Mcount_vcnt_cy [1]),
    .LI(\vga/Mcount_vcnt_lut [2]),
    .O(\vga/Mcount_vcnt2 )
  );
  MUXCY   \vga/Mcount_vcnt_cy<2>  (
    .CI(\vga/Mcount_vcnt_cy [1]),
    .DI(IP2Bus_Data_31_OBUF_37),
    .S(\vga/Mcount_vcnt_lut [2]),
    .O(\vga/Mcount_vcnt_cy [2])
  );
  XORCY   \vga/Mcount_vcnt_xor<1>  (
    .CI(\vga/Mcount_vcnt_cy [0]),
    .LI(\vga/Mcount_vcnt_lut [1]),
    .O(\vga/Mcount_vcnt1 )
  );
  MUXCY   \vga/Mcount_vcnt_cy<1>  (
    .CI(\vga/Mcount_vcnt_cy [0]),
    .DI(IP2Bus_Data_31_OBUF_37),
    .S(\vga/Mcount_vcnt_lut [1]),
    .O(\vga/Mcount_vcnt_cy [1])
  );
  XORCY   \vga/Mcount_vcnt_xor<0>  (
    .CI(\vga/vcnt_not0001_inv ),
    .LI(\vga/Mcount_vcnt_lut [0]),
    .O(\vga/Mcount_vcnt )
  );
  MUXCY   \vga/Mcount_vcnt_cy<0>  (
    .CI(\vga/vcnt_not0001_inv ),
    .DI(IP2Bus_Data_31_OBUF_37),
    .S(\vga/Mcount_vcnt_lut [0]),
    .O(\vga/Mcount_vcnt_cy [0])
  );
  XORCY   \vga/Mcount_hcnt_xor<8>  (
    .CI(\vga/Mcount_hcnt_cy [7]),
    .LI(\vga/Mcount_hcnt_lut [8]),
    .O(\vga/Mcount_hcnt8 )
  );
  XORCY   \vga/Mcount_hcnt_xor<7>  (
    .CI(\vga/Mcount_hcnt_cy [6]),
    .LI(\vga/Mcount_hcnt_lut [7]),
    .O(\vga/Mcount_hcnt7 )
  );
  MUXCY   \vga/Mcount_hcnt_cy<7>  (
    .CI(\vga/Mcount_hcnt_cy [6]),
    .DI(IP2Bus_Data_31_OBUF_37),
    .S(\vga/Mcount_hcnt_lut [7]),
    .O(\vga/Mcount_hcnt_cy [7])
  );
  XORCY   \vga/Mcount_hcnt_xor<6>  (
    .CI(\vga/Mcount_hcnt_cy [5]),
    .LI(\vga/Mcount_hcnt_lut [6]),
    .O(\vga/Mcount_hcnt6 )
  );
  MUXCY   \vga/Mcount_hcnt_cy<6>  (
    .CI(\vga/Mcount_hcnt_cy [5]),
    .DI(IP2Bus_Data_31_OBUF_37),
    .S(\vga/Mcount_hcnt_lut [6]),
    .O(\vga/Mcount_hcnt_cy [6])
  );
  XORCY   \vga/Mcount_hcnt_xor<5>  (
    .CI(\vga/Mcount_hcnt_cy [4]),
    .LI(\vga/Mcount_hcnt_lut [5]),
    .O(\vga/Mcount_hcnt5 )
  );
  MUXCY   \vga/Mcount_hcnt_cy<5>  (
    .CI(\vga/Mcount_hcnt_cy [4]),
    .DI(IP2Bus_Data_31_OBUF_37),
    .S(\vga/Mcount_hcnt_lut [5]),
    .O(\vga/Mcount_hcnt_cy [5])
  );
  XORCY   \vga/Mcount_hcnt_xor<4>  (
    .CI(\vga/Mcount_hcnt_cy [3]),
    .LI(\vga/Mcount_hcnt_lut [4]),
    .O(\vga/Mcount_hcnt4 )
  );
  MUXCY   \vga/Mcount_hcnt_cy<4>  (
    .CI(\vga/Mcount_hcnt_cy [3]),
    .DI(IP2Bus_Data_31_OBUF_37),
    .S(\vga/Mcount_hcnt_lut [4]),
    .O(\vga/Mcount_hcnt_cy [4])
  );
  XORCY   \vga/Mcount_hcnt_xor<3>  (
    .CI(\vga/Mcount_hcnt_cy [2]),
    .LI(\vga/Mcount_hcnt_lut [3]),
    .O(\vga/Mcount_hcnt3 )
  );
  MUXCY   \vga/Mcount_hcnt_cy<3>  (
    .CI(\vga/Mcount_hcnt_cy [2]),
    .DI(IP2Bus_Data_31_OBUF_37),
    .S(\vga/Mcount_hcnt_lut [3]),
    .O(\vga/Mcount_hcnt_cy [3])
  );
  XORCY   \vga/Mcount_hcnt_xor<2>  (
    .CI(\vga/Mcount_hcnt_cy [1]),
    .LI(\vga/Mcount_hcnt_lut [2]),
    .O(\vga/Mcount_hcnt2 )
  );
  MUXCY   \vga/Mcount_hcnt_cy<2>  (
    .CI(\vga/Mcount_hcnt_cy [1]),
    .DI(IP2Bus_Data_31_OBUF_37),
    .S(\vga/Mcount_hcnt_lut [2]),
    .O(\vga/Mcount_hcnt_cy [2])
  );
  XORCY   \vga/Mcount_hcnt_xor<1>  (
    .CI(\vga/Mcount_hcnt_cy [0]),
    .LI(\vga/Mcount_hcnt_lut [1]),
    .O(\vga/Mcount_hcnt1 )
  );
  MUXCY   \vga/Mcount_hcnt_cy<1>  (
    .CI(\vga/Mcount_hcnt_cy [0]),
    .DI(IP2Bus_Data_31_OBUF_37),
    .S(\vga/Mcount_hcnt_lut [1]),
    .O(\vga/Mcount_hcnt_cy [1])
  );
  XORCY   \vga/Mcount_hcnt_xor<0>  (
    .CI(\vga/hcnt_not0001_inv ),
    .LI(\vga/Mcount_hcnt_lut [0]),
    .O(\vga/Mcount_hcnt )
  );
  MUXCY   \vga/Mcount_hcnt_cy<0>  (
    .CI(\vga/hcnt_not0001_inv ),
    .DI(IP2Bus_Data_31_OBUF_37),
    .S(\vga/Mcount_hcnt_lut [0]),
    .O(\vga/Mcount_hcnt_cy [0])
  );
  FDP   \vga/vsyncb  (
    .C(\vga/hsyncbAux_275 ),
    .D(\vga/vsyncb_mux0001 ),
    .PRE(Bus2IP_Reset_IBUF_3),
    .Q(\vga/vsyncb_349 )
  );
  FDP   \vga/hsyncbAux  (
    .C(clock_100),
    .D(\vga/hsyncbAux_mux0001 ),
    .PRE(Bus2IP_Reset_IBUF_3),
    .Q(\vga/hsyncbAux_275 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  fifo_rdreq_cmb1 (
    .I0(currentStateLectura[0]),
    .I1(WFIFO2IP_Empty_IBUF_99),
    .O(fifo_rdreq_cmb)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  cuenta_cmp_eq00001 (
    .I0(cuenta[0]),
    .I1(cuenta[1]),
    .O(cuenta_cmp_eq0000)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \sincro/Mcount_cs_xor<1>11  (
    .I0(\sincro/cs [1]),
    .I1(\sincro/cs [0]),
    .O(Result[1])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Mcount_cuenta_xor<1>11  (
    .I0(cuenta[0]),
    .I1(cuenta[1]),
    .O(Mcount_cuenta1)
  );
  LUT4 #(
    .INIT ( 16'h2A7F ))
  nextStateLectura_0_mux00001 (
    .I0(currentStateLectura[0]),
    .I1(\sincro/cs [1]),
    .I2(\sincro/cs [0]),
    .I3(WFIFO2IP_Empty_IBUF_99),
    .O(nextStateLectura)
  );
  LUT4 #(
    .INIT ( 16'h7FFF ))
  \vga/vsyncb_mux000133  (
    .I0(\vga/vcnt [8]),
    .I1(\vga/vcnt [7]),
    .I2(\vga/vcnt [6]),
    .I3(\vga/vcnt [5]),
    .O(\vga/vsyncb_mux000133_351 )
  );
  LUT4 #(
    .INIT ( 16'h1113 ))
  \vga/vsyncb_mux000149  (
    .I0(\vga/vcnt [3]),
    .I1(\vga/vcnt [4]),
    .I2(\vga/vcnt [1]),
    .I3(\vga/vcnt [2]),
    .O(\vga/vsyncb_mux000149_352 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \vga/vsyncb_mux000181  (
    .I0(\vga/vcnt [9]),
    .I1(\vga/vsyncb_mux000149_352 ),
    .I2(\vga/vsyncb_mux000133_351 ),
    .I3(\vga/vsyncb_mux00018_353 ),
    .O(\vga/vsyncb_mux0001 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \vga/rgb<8>1  (
    .I0(\vga/rgb_and0000 ),
    .I1(\vga/_varindex0000 [8]),
    .O(rgb_8_OBUF_126)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \vga/rgb<7>1  (
    .I0(\vga/rgb_and0000 ),
    .I1(\vga/_varindex0000 [7]),
    .O(rgb_7_OBUF_125)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \vga/rgb<6>1  (
    .I0(\vga/rgb_and0000 ),
    .I1(\vga/_varindex0000 [6]),
    .O(rgb_6_OBUF_124)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \vga/rgb<5>1  (
    .I0(\vga/rgb_and0000 ),
    .I1(\vga/_varindex0000 [5]),
    .O(rgb_5_OBUF_123)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \vga/rgb<4>1  (
    .I0(\vga/rgb_and0000 ),
    .I1(\vga/_varindex0000 [4]),
    .O(rgb_4_OBUF_122)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \vga/rgb<3>1  (
    .I0(\vga/rgb_and0000 ),
    .I1(\vga/_varindex0000 [3]),
    .O(rgb_3_OBUF_121)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \vga/rgb<2>1  (
    .I0(\vga/rgb_and0000 ),
    .I1(\vga/_varindex0000 [2]),
    .O(rgb_2_OBUF_120)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \vga/rgb<1>1  (
    .I0(\vga/rgb_and0000 ),
    .I1(\vga/_varindex0000 [1]),
    .O(rgb_1_OBUF_119)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \vga/rgb<0>1  (
    .I0(\vga/rgb_and0000 ),
    .I1(\vga/_varindex0000 [0]),
    .O(rgb_0_OBUF_118)
  );
  LUT4 #(
    .INIT ( 16'h0700 ))
  \vga/hsyncbAux_mux000117  (
    .I0(\vga/hcnt [1]),
    .I1(\vga/hcnt [0]),
    .I2(\vga/hcnt [4]),
    .I3(\vga/hsyncbAux_mux000112_277 ),
    .O(\vga/hsyncbAux_mux000117_278 )
  );
  LUT4 #(
    .INIT ( 16'hA888 ))
  \vga/hsyncbAux_mux000177  (
    .I0(\vga/hcnt [6]),
    .I1(\vga/hcnt [5]),
    .I2(\vga/hcnt [4]),
    .I3(\vga/hsyncbAux_mux000165_279 ),
    .O(\vga/hsyncbAux_mux000177_280 )
  );
  LUT4 #(
    .INIT ( 16'h3777 ))
  \vga/hcnt_not0001_inv1  (
    .I0(\vga/hcnt [7]),
    .I1(\vga/hcnt [8]),
    .I2(\vga/hcnt [4]),
    .I3(N79),
    .O(\vga/hcnt_not0001_inv )
  );
  LUT4 #(
    .INIT ( 16'h7FFF ))
  \vga/vcnt_not0001_inv212  (
    .I0(\vga/vcnt [0]),
    .I1(\vga/vcnt [1]),
    .I2(\vga/vcnt [3]),
    .I3(\vga/vcnt [2]),
    .O(\vga/vcnt_not0001_inv212_348 )
  );
  IBUF   WFIFO2IP_Empty_IBUF (
    .I(WFIFO2IP_Empty),
    .O(WFIFO2IP_Empty_IBUF_99)
  );
  IBUF   Bus2IP_Reset_IBUF (
    .I(Bus2IP_Reset),
    .O(Bus2IP_Reset_IBUF_3)
  );
  IBUF   WFIFO2IP_Data_0_IBUF (
    .I(WFIFO2IP_Data[0]),
    .O(WFIFO2IP_Data_0_IBUF_82)
  );
  IBUF   WFIFO2IP_Data_1_IBUF (
    .I(WFIFO2IP_Data[1]),
    .O(WFIFO2IP_Data_1_IBUF_83)
  );
  IBUF   WFIFO2IP_Data_2_IBUF (
    .I(WFIFO2IP_Data[2]),
    .O(WFIFO2IP_Data_2_IBUF_89)
  );
  IBUF   WFIFO2IP_Data_3_IBUF (
    .I(WFIFO2IP_Data[3]),
    .O(WFIFO2IP_Data_3_IBUF_92)
  );
  IBUF   WFIFO2IP_Data_4_IBUF (
    .I(WFIFO2IP_Data[4]),
    .O(WFIFO2IP_Data_4_IBUF_93)
  );
  IBUF   WFIFO2IP_Data_5_IBUF (
    .I(WFIFO2IP_Data[5]),
    .O(WFIFO2IP_Data_5_IBUF_94)
  );
  IBUF   WFIFO2IP_Data_6_IBUF (
    .I(WFIFO2IP_Data[6]),
    .O(WFIFO2IP_Data_6_IBUF_95)
  );
  IBUF   WFIFO2IP_Data_7_IBUF (
    .I(WFIFO2IP_Data[7]),
    .O(WFIFO2IP_Data_7_IBUF_96)
  );
  IBUF   WFIFO2IP_Data_8_IBUF (
    .I(WFIFO2IP_Data[8]),
    .O(WFIFO2IP_Data_8_IBUF_97)
  );
  IBUF   WFIFO2IP_Data_25_IBUF (
    .I(WFIFO2IP_Data[25]),
    .O(WFIFO2IP_Data_25_IBUF_84)
  );
  IBUF   WFIFO2IP_Data_26_IBUF (
    .I(WFIFO2IP_Data[26]),
    .O(WFIFO2IP_Data_26_IBUF_85)
  );
  IBUF   WFIFO2IP_Data_27_IBUF (
    .I(WFIFO2IP_Data[27]),
    .O(WFIFO2IP_Data_27_IBUF_86)
  );
  IBUF   WFIFO2IP_Data_28_IBUF (
    .I(WFIFO2IP_Data[28]),
    .O(WFIFO2IP_Data_28_IBUF_87)
  );
  IBUF   WFIFO2IP_Data_29_IBUF (
    .I(WFIFO2IP_Data[29]),
    .O(WFIFO2IP_Data_29_IBUF_88)
  );
  IBUF   WFIFO2IP_Data_30_IBUF (
    .I(WFIFO2IP_Data[30]),
    .O(WFIFO2IP_Data_30_IBUF_90)
  );
  IBUF   WFIFO2IP_Data_31_IBUF (
    .I(WFIFO2IP_Data[31]),
    .O(WFIFO2IP_Data_31_IBUF_91)
  );
  OBUF   IP2Bus_WrAck_OBUF (
    .I(IP2Bus_Data_31_OBUF_37),
    .O(IP2Bus_WrAck)
  );
  OBUF   vsyncb_OBUF (
    .I(\vga/vsyncb_349 ),
    .O(vsyncb)
  );
  OBUF   IP2Bus_Error_OBUF (
    .I(IP2Bus_Data_31_OBUF_37),
    .O(IP2Bus_Error)
  );
  OBUF   hsyncb_OBUF (
    .I(\vga/hsyncbAux_275 ),
    .O(hsyncb)
  );
  OBUF   IP2Bus_RdAck_OBUF (
    .I(IP2Bus_Data_31_OBUF_37),
    .O(IP2Bus_RdAck)
  );
  OBUF   IP2WFIFO_RdReq_OBUF (
    .I(IP2WFIFO_RdReq_OBUF_42),
    .O(IP2WFIFO_RdReq)
  );
  OBUF   rgb_8_OBUF (
    .I(rgb_8_OBUF_126),
    .O(rgb[8])
  );
  OBUF   rgb_7_OBUF (
    .I(rgb_7_OBUF_125),
    .O(rgb[7])
  );
  OBUF   rgb_6_OBUF (
    .I(rgb_6_OBUF_124),
    .O(rgb[6])
  );
  OBUF   rgb_5_OBUF (
    .I(rgb_5_OBUF_123),
    .O(rgb[5])
  );
  OBUF   rgb_4_OBUF (
    .I(rgb_4_OBUF_122),
    .O(rgb[4])
  );
  OBUF   rgb_3_OBUF (
    .I(rgb_3_OBUF_121),
    .O(rgb[3])
  );
  OBUF   rgb_2_OBUF (
    .I(rgb_2_OBUF_120),
    .O(rgb[2])
  );
  OBUF   rgb_1_OBUF (
    .I(rgb_1_OBUF_119),
    .O(rgb[1])
  );
  OBUF   rgb_0_OBUF (
    .I(rgb_0_OBUF_118),
    .O(rgb[0])
  );
  OBUF   IP2Bus_Data_0_OBUF (
    .I(IP2Bus_Data_31_OBUF_37),
    .O(IP2Bus_Data[0])
  );
  OBUF   IP2Bus_Data_1_OBUF (
    .I(IP2Bus_Data_31_OBUF_37),
    .O(IP2Bus_Data[1])
  );
  OBUF   IP2Bus_Data_2_OBUF (
    .I(IP2Bus_Data_31_OBUF_37),
    .O(IP2Bus_Data[2])
  );
  OBUF   IP2Bus_Data_3_OBUF (
    .I(IP2Bus_Data_31_OBUF_37),
    .O(IP2Bus_Data[3])
  );
  OBUF   IP2Bus_Data_4_OBUF (
    .I(IP2Bus_Data_31_OBUF_37),
    .O(IP2Bus_Data[4])
  );
  OBUF   IP2Bus_Data_5_OBUF (
    .I(IP2Bus_Data_31_OBUF_37),
    .O(IP2Bus_Data[5])
  );
  OBUF   IP2Bus_Data_6_OBUF (
    .I(IP2Bus_Data_31_OBUF_37),
    .O(IP2Bus_Data[6])
  );
  OBUF   IP2Bus_Data_7_OBUF (
    .I(IP2Bus_Data_31_OBUF_37),
    .O(IP2Bus_Data[7])
  );
  OBUF   IP2Bus_Data_8_OBUF (
    .I(IP2Bus_Data_31_OBUF_37),
    .O(IP2Bus_Data[8])
  );
  OBUF   IP2Bus_Data_9_OBUF (
    .I(IP2Bus_Data_31_OBUF_37),
    .O(IP2Bus_Data[9])
  );
  OBUF   IP2Bus_Data_10_OBUF (
    .I(IP2Bus_Data_31_OBUF_37),
    .O(IP2Bus_Data[10])
  );
  OBUF   IP2Bus_Data_11_OBUF (
    .I(IP2Bus_Data_31_OBUF_37),
    .O(IP2Bus_Data[11])
  );
  OBUF   IP2Bus_Data_12_OBUF (
    .I(IP2Bus_Data_31_OBUF_37),
    .O(IP2Bus_Data[12])
  );
  OBUF   IP2Bus_Data_13_OBUF (
    .I(IP2Bus_Data_31_OBUF_37),
    .O(IP2Bus_Data[13])
  );
  OBUF   IP2Bus_Data_14_OBUF (
    .I(IP2Bus_Data_31_OBUF_37),
    .O(IP2Bus_Data[14])
  );
  OBUF   IP2Bus_Data_15_OBUF (
    .I(IP2Bus_Data_31_OBUF_37),
    .O(IP2Bus_Data[15])
  );
  OBUF   IP2Bus_Data_16_OBUF (
    .I(IP2Bus_Data_31_OBUF_37),
    .O(IP2Bus_Data[16])
  );
  OBUF   IP2Bus_Data_17_OBUF (
    .I(IP2Bus_Data_31_OBUF_37),
    .O(IP2Bus_Data[17])
  );
  OBUF   IP2Bus_Data_18_OBUF (
    .I(IP2Bus_Data_31_OBUF_37),
    .O(IP2Bus_Data[18])
  );
  OBUF   IP2Bus_Data_19_OBUF (
    .I(IP2Bus_Data_31_OBUF_37),
    .O(IP2Bus_Data[19])
  );
  OBUF   IP2Bus_Data_20_OBUF (
    .I(IP2Bus_Data_31_OBUF_37),
    .O(IP2Bus_Data[20])
  );
  OBUF   IP2Bus_Data_21_OBUF (
    .I(IP2Bus_Data_31_OBUF_37),
    .O(IP2Bus_Data[21])
  );
  OBUF   IP2Bus_Data_22_OBUF (
    .I(IP2Bus_Data_31_OBUF_37),
    .O(IP2Bus_Data[22])
  );
  OBUF   IP2Bus_Data_23_OBUF (
    .I(IP2Bus_Data_31_OBUF_37),
    .O(IP2Bus_Data[23])
  );
  OBUF   IP2Bus_Data_24_OBUF (
    .I(IP2Bus_Data_31_OBUF_37),
    .O(IP2Bus_Data[24])
  );
  OBUF   IP2Bus_Data_25_OBUF (
    .I(IP2Bus_Data_31_OBUF_37),
    .O(IP2Bus_Data[25])
  );
  OBUF   IP2Bus_Data_26_OBUF (
    .I(IP2Bus_Data_31_OBUF_37),
    .O(IP2Bus_Data[26])
  );
  OBUF   IP2Bus_Data_27_OBUF (
    .I(IP2Bus_Data_31_OBUF_37),
    .O(IP2Bus_Data[27])
  );
  OBUF   IP2Bus_Data_28_OBUF (
    .I(IP2Bus_Data_31_OBUF_37),
    .O(IP2Bus_Data[28])
  );
  OBUF   IP2Bus_Data_29_OBUF (
    .I(IP2Bus_Data_31_OBUF_37),
    .O(IP2Bus_Data[29])
  );
  OBUF   IP2Bus_Data_30_OBUF (
    .I(IP2Bus_Data_31_OBUF_37),
    .O(IP2Bus_Data[30])
  );
  OBUF   IP2Bus_Data_31_OBUF (
    .I(IP2Bus_Data_31_OBUF_37),
    .O(IP2Bus_Data[31])
  );
  LUT4 #(
    .INIT ( 16'h3373 ))
  \vga/vcnt_not0001_inv251  (
    .I0(\vga/vcnt [8]),
    .I1(\vga/vcnt [9]),
    .I2(\vga/vcnt_not0001_inv212_348 ),
    .I3(N80),
    .O(\vga/vcnt_not0001_inv )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \vga/Mcount_hcnt_lut<7>  (
    .I0(\vga/hcnt [8]),
    .I1(\vga/hcnt [7]),
    .O(\vga/Mcount_hcnt_lut [7])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \vga/Mcount_vcnt_lut<8>  (
    .I0(\vga/vcnt [9]),
    .I1(\vga/vcnt [8]),
    .O(\vga/Mcount_vcnt_lut [8])
  );
  LUT4 #(
    .INIT ( 16'h3070 ))
  \vga/Mcount_hcnt_lut<4>  (
    .I0(\vga/hcnt [7]),
    .I1(\vga/hcnt [8]),
    .I2(\vga/hcnt [4]),
    .I3(N3),
    .O(\vga/Mcount_hcnt_lut [4])
  );
  LUT3 #(
    .INIT ( 8'hD5 ))
  \vga/hcnt_not00011_SW0  (
    .I0(\vga/hcnt [0]),
    .I1(\vga/hcnt [7]),
    .I2(\vga/hcnt [8]),
    .O(N22)
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \vga/hcnt_not00011_SW1  (
    .I0(\vga/hcnt [0]),
    .I1(\vga/hcnt [8]),
    .O(N23)
  );
  LUT4 #(
    .INIT ( 16'h1B33 ))
  \vga/Mcount_hcnt_lut<0>  (
    .I0(\vga/hcnt [4]),
    .I1(N22),
    .I2(N23),
    .I3(N3),
    .O(\vga/Mcount_hcnt_lut [0])
  );
  LUT3 #(
    .INIT ( 8'hD5 ))
  \vga/hcnt_not00011_SW2  (
    .I0(\vga/hcnt [1]),
    .I1(\vga/hcnt [7]),
    .I2(\vga/hcnt [8]),
    .O(N25)
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \vga/hcnt_not00011_SW3  (
    .I0(\vga/hcnt [1]),
    .I1(\vga/hcnt [8]),
    .O(N26)
  );
  LUT4 #(
    .INIT ( 16'h1B33 ))
  \vga/Mcount_hcnt_lut<1>  (
    .I0(\vga/hcnt [4]),
    .I1(N25),
    .I2(N26),
    .I3(N3),
    .O(\vga/Mcount_hcnt_lut [1])
  );
  LUT4 #(
    .INIT ( 16'h1030 ))
  \vga/Mcount_hcnt_lut<8>  (
    .I0(\vga/hcnt [4]),
    .I1(\vga/hcnt [7]),
    .I2(\vga/hcnt [8]),
    .I3(N3),
    .O(\vga/Mcount_hcnt_lut [8])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \vga/Mcount_hcnt_lut<2>_SW0  (
    .I0(\vga/hcnt [6]),
    .I1(\vga/hcnt [5]),
    .I2(\vga/hcnt [4]),
    .I3(\vga/hcnt [3]),
    .O(N49)
  );
  LUT4 #(
    .INIT ( 16'h0A2A ))
  \vga/Mcount_hcnt_lut<2>  (
    .I0(\vga/hcnt [2]),
    .I1(\vga/hcnt [7]),
    .I2(\vga/hcnt [8]),
    .I3(N49),
    .O(\vga/Mcount_hcnt_lut [2])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \vga/Mcount_hcnt_lut<3>_SW0  (
    .I0(\vga/hcnt [6]),
    .I1(\vga/hcnt [5]),
    .I2(\vga/hcnt [2]),
    .I3(\vga/hcnt [4]),
    .O(N51)
  );
  LUT4 #(
    .INIT ( 16'h3070 ))
  \vga/Mcount_hcnt_lut<3>  (
    .I0(\vga/hcnt [7]),
    .I1(\vga/hcnt [8]),
    .I2(\vga/hcnt [3]),
    .I3(N51),
    .O(\vga/Mcount_hcnt_lut [3])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \vga/Mcount_hcnt_lut<5>_SW0  (
    .I0(\vga/hcnt [2]),
    .I1(\vga/hcnt [6]),
    .I2(\vga/hcnt [4]),
    .I3(\vga/hcnt [3]),
    .O(N53)
  );
  LUT4 #(
    .INIT ( 16'h3070 ))
  \vga/Mcount_hcnt_lut<5>  (
    .I0(\vga/hcnt [7]),
    .I1(\vga/hcnt [8]),
    .I2(\vga/hcnt [5]),
    .I3(N53),
    .O(\vga/Mcount_hcnt_lut [5])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \vga/Mcount_hcnt_lut<6>_SW0  (
    .I0(\vga/hcnt [2]),
    .I1(\vga/hcnt [5]),
    .I2(\vga/hcnt [4]),
    .I3(\vga/hcnt [3]),
    .O(N55)
  );
  LUT4 #(
    .INIT ( 16'h0A2A ))
  \vga/Mcount_hcnt_lut<6>  (
    .I0(\vga/hcnt [6]),
    .I1(\vga/hcnt [7]),
    .I2(\vga/hcnt [8]),
    .I3(N55),
    .O(\vga/Mcount_hcnt_lut [6])
  );
  LUT4 #(
    .INIT ( 16'hFF80 ))
  \vga/Mcount_vcnt_lut<0>_SW0  (
    .I0(\vga/vcnt [1]),
    .I1(\vga/vcnt [2]),
    .I2(\vga/vcnt [3]),
    .I3(\vga/vcnt [8]),
    .O(N57)
  );
  LUT4 #(
    .INIT ( 16'h222A ))
  \vga/Mcount_vcnt_lut<0>  (
    .I0(\vga/vcnt [0]),
    .I1(\vga/vcnt [9]),
    .I2(N57),
    .I3(N5),
    .O(\vga/Mcount_vcnt_lut [0])
  );
  LUT4 #(
    .INIT ( 16'hFF80 ))
  \vga/Mcount_vcnt_lut<1>_SW0  (
    .I0(\vga/vcnt [0]),
    .I1(\vga/vcnt [2]),
    .I2(\vga/vcnt [3]),
    .I3(\vga/vcnt [8]),
    .O(N59)
  );
  LUT4 #(
    .INIT ( 16'h222A ))
  \vga/Mcount_vcnt_lut<1>  (
    .I0(\vga/vcnt [1]),
    .I1(\vga/vcnt [9]),
    .I2(N59),
    .I3(N5),
    .O(\vga/Mcount_vcnt_lut [1])
  );
  LUT4 #(
    .INIT ( 16'hFF80 ))
  \vga/Mcount_vcnt_lut<2>_SW0  (
    .I0(\vga/vcnt [0]),
    .I1(\vga/vcnt [1]),
    .I2(\vga/vcnt [3]),
    .I3(\vga/vcnt [8]),
    .O(N61)
  );
  LUT4 #(
    .INIT ( 16'h222A ))
  \vga/Mcount_vcnt_lut<2>  (
    .I0(\vga/vcnt [2]),
    .I1(\vga/vcnt [9]),
    .I2(N61),
    .I3(N5),
    .O(\vga/Mcount_vcnt_lut [2])
  );
  LUT4 #(
    .INIT ( 16'hFF80 ))
  \vga/Mcount_vcnt_lut<3>_SW0  (
    .I0(\vga/vcnt [2]),
    .I1(\vga/vcnt [1]),
    .I2(\vga/vcnt [0]),
    .I3(\vga/vcnt [8]),
    .O(N63)
  );
  LUT4 #(
    .INIT ( 16'h222A ))
  \vga/Mcount_vcnt_lut<3>  (
    .I0(\vga/vcnt [3]),
    .I1(\vga/vcnt [9]),
    .I2(N63),
    .I3(N5),
    .O(\vga/Mcount_vcnt_lut [3])
  );
  LUT4 #(
    .INIT ( 16'h0040 ))
  \vga/Mcount_vcnt_lut<9>  (
    .I0(\vga/vcnt [8]),
    .I1(\vga/vcnt [9]),
    .I2(\vga/vcnt_not0001_inv212_348 ),
    .I3(N5),
    .O(\vga/Mcount_vcnt_lut [9])
  );
  LUT3 #(
    .INIT ( 8'hDF ))
  \vga/hsyncbAux_mux000136_SW1  (
    .I0(\vga/hcnt [8]),
    .I1(\vga/hcnt [7]),
    .I2(\vga/hcnt [6]),
    .O(N74)
  );
  LUT4 #(
    .INIT ( 16'hFCFA ))
  \vga/hsyncbAux_mux0001100  (
    .I0(N73),
    .I1(N74),
    .I2(\vga/hsyncbAux_mux000177_280 ),
    .I3(\vga/hsyncbAux_mux000117_278 ),
    .O(\vga/hsyncbAux_mux0001 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \vga/Mcount_vcnt_lut<4>  (
    .I0(\vga/vcnt [9]),
    .I1(\vga/vcnt [4]),
    .O(\vga/Mcount_vcnt_lut [4])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \vga/Mcount_vcnt_lut<5>  (
    .I0(\vga/vcnt [9]),
    .I1(\vga/vcnt [5]),
    .O(\vga/Mcount_vcnt_lut [5])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \vga/Mcount_vcnt_lut<6>  (
    .I0(\vga/vcnt [9]),
    .I1(\vga/vcnt [6]),
    .O(\vga/Mcount_vcnt_lut [6])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \vga/Mcount_vcnt_lut<7>  (
    .I0(\vga/vcnt [9]),
    .I1(\vga/vcnt [7]),
    .O(\vga/Mcount_vcnt_lut [7])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \vga/vsyncb_mux00018_SW0  (
    .I0(\vga/vcnt [8]),
    .I1(\vga/vcnt [7]),
    .I2(\vga/vcnt [6]),
    .I3(\vga/vcnt [5]),
    .O(N76)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \vga/write_ctrl7  (
    .I0(WFIFO2IP_Data_25_IBUF_84),
    .I1(WFIFO2IP_Data_26_IBUF_85),
    .I2(WFIFO2IP_Data_27_IBUF_86),
    .I3(currentStateLectura[0]),
    .O(\vga/write_ctrl7_361 )
  );
  LUT4 #(
    .INIT ( 16'h0080 ))
  \vga/write_ctrl6  (
    .I0(currentStateLectura[0]),
    .I1(WFIFO2IP_Data_26_IBUF_85),
    .I2(WFIFO2IP_Data_25_IBUF_84),
    .I3(WFIFO2IP_Data_27_IBUF_86),
    .O(\vga/write_ctrl6_360 )
  );
  LUT4 #(
    .INIT ( 16'h0080 ))
  \vga/write_ctrl5  (
    .I0(currentStateLectura[0]),
    .I1(WFIFO2IP_Data_25_IBUF_84),
    .I2(WFIFO2IP_Data_27_IBUF_86),
    .I3(WFIFO2IP_Data_26_IBUF_85),
    .O(\vga/write_ctrl5_359 )
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \vga/write_ctrl4  (
    .I0(WFIFO2IP_Data_25_IBUF_84),
    .I1(WFIFO2IP_Data_26_IBUF_85),
    .I2(WFIFO2IP_Data_27_IBUF_86),
    .I3(currentStateLectura[0]),
    .O(\vga/write_ctrl4_358 )
  );
  LUT4 #(
    .INIT ( 16'h0080 ))
  \vga/write_ctrl3  (
    .I0(currentStateLectura[0]),
    .I1(WFIFO2IP_Data_26_IBUF_85),
    .I2(WFIFO2IP_Data_27_IBUF_86),
    .I3(WFIFO2IP_Data_25_IBUF_84),
    .O(\vga/write_ctrl3_357 )
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \vga/write_ctrl2  (
    .I0(WFIFO2IP_Data_26_IBUF_85),
    .I1(WFIFO2IP_Data_25_IBUF_84),
    .I2(WFIFO2IP_Data_27_IBUF_86),
    .I3(currentStateLectura[0]),
    .O(\vga/write_ctrl2_356 )
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \vga/write_ctrl1  (
    .I0(WFIFO2IP_Data_27_IBUF_86),
    .I1(WFIFO2IP_Data_25_IBUF_84),
    .I2(WFIFO2IP_Data_26_IBUF_85),
    .I3(currentStateLectura[0]),
    .O(\vga/write_ctrl1_355 )
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  \vga/write_ctrl  (
    .I0(WFIFO2IP_Data_25_IBUF_84),
    .I1(currentStateLectura[0]),
    .I2(WFIFO2IP_Data_26_IBUF_85),
    .I3(WFIFO2IP_Data_27_IBUF_86),
    .O(\vga/write_ctrl_354 )
  );
  BUFG   clock_BUFG (
    .I(clock1),
    .O(clock_100)
  );
  BUFGP   Bus2IP_Clk_BUFGP (
    .I(Bus2IP_Clk),
    .O(Bus2IP_Clk_BUFGP_1)
  );
  INV   Bus2IP_Reset_inv1_INV_0 (
    .I(Bus2IP_Reset_IBUF_3),
    .O(Bus2IP_Reset_inv)
  );
  INV   \sincro/Mcount_cs_xor<0>11_INV_0  (
    .I(\sincro/cs [0]),
    .O(Result[0])
  );
  INV   \Mcount_cuenta_xor<0>11_INV_0  (
    .I(cuenta[0]),
    .O(Mcount_cuenta)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \vga/rgb_and00001  (
    .I0(\vga/hcnt [6]),
    .I1(\vga/vcnt [8]),
    .I2(\vga/hcnt [7]),
    .I3(\vga/hcnt [8]),
    .O(\vga/rgb_and00001_336 )
  );
  MUXF5   \vga/rgb_and0000_f5  (
    .I0(\vga/rgb_and00001_336 ),
    .I1(IP2Bus_Data_31_OBUF_37),
    .S(\vga/vcnt [9]),
    .O(\vga/rgb_and0000 )
  );
  LUT2_L #(
    .INIT ( 4'h1 ))
  \vga/hsyncbAux_mux000112  (
    .I0(\vga/hcnt [2]),
    .I1(\vga/hcnt [3]),
    .LO(\vga/hsyncbAux_mux000112_277 )
  );
  LUT4_L #(
    .INIT ( 16'hFFFE ))
  \vga/hsyncbAux_mux000165  (
    .I0(\vga/hcnt [0]),
    .I1(\vga/hcnt [1]),
    .I2(\vga/hcnt [2]),
    .I3(\vga/hcnt [3]),
    .LO(\vga/hsyncbAux_mux000165_279 )
  );
  LUT4_D #(
    .INIT ( 16'h8000 ))
  \vga/hcnt_not0001_inv1_SW0  (
    .I0(\vga/hcnt [2]),
    .I1(\vga/hcnt [6]),
    .I2(\vga/hcnt [5]),
    .I3(\vga/hcnt [3]),
    .LO(N79),
    .O(N3)
  );
  LUT4_D #(
    .INIT ( 16'hFFFE ))
  \vga/vcnt_not0001_inv251_SW0  (
    .I0(\vga/vcnt [7]),
    .I1(\vga/vcnt [6]),
    .I2(\vga/vcnt [5]),
    .I3(\vga/vcnt [4]),
    .LO(N80),
    .O(N5)
  );
  LUT4_L #(
    .INIT ( 16'hABFF ))
  \vga/hsyncbAux_mux000136_SW0  (
    .I0(\vga/hcnt [7]),
    .I1(\vga/hcnt [5]),
    .I2(\vga/hcnt [6]),
    .I3(\vga/hcnt [8]),
    .LO(N73)
  );
  LUT4_L #(
    .INIT ( 16'hF800 ))
  \vga/vsyncb_mux00018  (
    .I0(\vga/vcnt [3]),
    .I1(\vga/vcnt [2]),
    .I2(\vga/vcnt [4]),
    .I3(N76),
    .LO(\vga/vsyncb_mux00018_353 )
  );
endmodule


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

