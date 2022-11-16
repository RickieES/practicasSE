--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.15xf
--  \   \         Application: netgen
--  /   /         Filename: top_sumador_synthesis.vhd
-- /___/   /\     Timestamp: Wed Nov 16 00:53:23 2022
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm top_sumador -w -dir netgen/synthesis -ofmt vhdl -sim top_sumador.ngc top_sumador_synthesis.vhd 
-- Device	: xc3s1000-5-ft256
-- Input file	: top_sumador.ngc
-- Output file	: \\vboxsvr\se\ws\practica3\pcores\top_sumador_v1_00_a\devl\projnav\netgen\synthesis\top_sumador_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: top_sumador
-- Xilinx	: C:\Xilinx\14.1\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity top_sumador is
  port (
    Sl_rearbitrate : out STD_LOGIC; 
    PLB_wrPrim : in STD_LOGIC := 'X'; 
    Sl_wrDAck : out STD_LOGIC; 
    Sl_wrBTerm : out STD_LOGIC; 
    PLB_rdBurst : in STD_LOGIC := 'X'; 
    Sl_rdComp : out STD_LOGIC; 
    PLB_SAValid : in STD_LOGIC := 'X'; 
    PLB_wrPendReq : in STD_LOGIC := 'X'; 
    SPLB_Clk : in STD_LOGIC := 'X'; 
    PLB_rdPendReq : in STD_LOGIC := 'X'; 
    PLB_PAValid : in STD_LOGIC := 'X'; 
    SPLB_Rst : in STD_LOGIC := 'X'; 
    PLB_busLock : in STD_LOGIC := 'X'; 
    Sl_wrComp : out STD_LOGIC; 
    PLB_RNW : in STD_LOGIC := 'X'; 
    PLB_lockErr : in STD_LOGIC := 'X'; 
    PLB_wrBurst : in STD_LOGIC := 'X'; 
    Sl_addrAck : out STD_LOGIC; 
    Sl_rdBTerm : out STD_LOGIC; 
    PLB_rdPrim : in STD_LOGIC := 'X'; 
    Sl_rdDAck : out STD_LOGIC; 
    PLB_abort : in STD_LOGIC := 'X'; 
    Sl_wait : out STD_LOGIC; 
    Sl_MRdErr : out STD_LOGIC_VECTOR ( 0 to 7 ); 
    leds : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    Sl_MWrErr : out STD_LOGIC_VECTOR ( 0 to 7 ); 
    Sl_rdDBus : out STD_LOGIC_VECTOR ( 0 to 127 ); 
    Sl_SSize : out STD_LOGIC_VECTOR ( 0 to 1 ); 
    Sl_MBusy : out STD_LOGIC_VECTOR ( 0 to 7 ); 
    Sl_MIRQ : out STD_LOGIC_VECTOR ( 0 to 7 ); 
    Sl_rdWdAddr : out STD_LOGIC_VECTOR ( 0 to 3 ); 
    PLB_MSize : in STD_LOGIC_VECTOR ( 0 to 1 ); 
    switches : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    PLB_masterID : in STD_LOGIC_VECTOR ( 0 to 2 ); 
    PLB_wrPendPri : in STD_LOGIC_VECTOR ( 0 to 1 ); 
    PLB_UABus : in STD_LOGIC_VECTOR ( 0 to 31 ); 
    PLB_rdPendPri : in STD_LOGIC_VECTOR ( 0 to 1 ); 
    PLB_size : in STD_LOGIC_VECTOR ( 0 to 3 ); 
    PLB_wrDBus : in STD_LOGIC_VECTOR ( 0 to 127 ); 
    PLB_BE : in STD_LOGIC_VECTOR ( 0 to 15 ); 
    PLB_reqPri : in STD_LOGIC_VECTOR ( 0 to 1 ); 
    PLB_TAttribute : in STD_LOGIC_VECTOR ( 0 to 15 ); 
    PLB_ABus : in STD_LOGIC_VECTOR ( 0 to 31 ); 
    PLB_type : in STD_LOGIC_VECTOR ( 0 to 2 ) 
  );
end top_sumador;

architecture Structure of top_sumador is
  signal N1 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal N11 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal N13 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal N15 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal N17 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal N19 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal N20 : STD_LOGIC; 
  signal N21 : STD_LOGIC; 
  signal N22 : STD_LOGIC; 
  signal N23 : STD_LOGIC; 
  signal N24 : STD_LOGIC; 
  signal N25 : STD_LOGIC; 
  signal N26 : STD_LOGIC; 
  signal N27 : STD_LOGIC; 
  signal N28 : STD_LOGIC; 
  signal N29 : STD_LOGIC; 
  signal N3 : STD_LOGIC; 
  signal N30 : STD_LOGIC; 
  signal N31 : STD_LOGIC; 
  signal N32 : STD_LOGIC; 
  signal N33 : STD_LOGIC; 
  signal N34 : STD_LOGIC; 
  signal N35 : STD_LOGIC; 
  signal N36 : STD_LOGIC; 
  signal N37 : STD_LOGIC; 
  signal N38 : STD_LOGIC; 
  signal N39 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal N40 : STD_LOGIC; 
  signal N41 : STD_LOGIC; 
  signal N42 : STD_LOGIC; 
  signal N43 : STD_LOGIC; 
  signal N44 : STD_LOGIC; 
  signal N45 : STD_LOGIC; 
  signal N46 : STD_LOGIC; 
  signal N47 : STD_LOGIC; 
  signal N48 : STD_LOGIC; 
  signal N49 : STD_LOGIC; 
  signal N5 : STD_LOGIC; 
  signal N50 : STD_LOGIC; 
  signal N51 : STD_LOGIC; 
  signal N52 : STD_LOGIC; 
  signal N53 : STD_LOGIC; 
  signal N54 : STD_LOGIC; 
  signal N55 : STD_LOGIC; 
  signal N56 : STD_LOGIC; 
  signal N57 : STD_LOGIC; 
  signal N58 : STD_LOGIC; 
  signal N59 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal N60 : STD_LOGIC; 
  signal N61 : STD_LOGIC; 
  signal N62 : STD_LOGIC; 
  signal N63 : STD_LOGIC; 
  signal N64 : STD_LOGIC; 
  signal N65 : STD_LOGIC; 
  signal N66 : STD_LOGIC; 
  signal N67 : STD_LOGIC; 
  signal N68 : STD_LOGIC; 
  signal N69 : STD_LOGIC; 
  signal N7 : STD_LOGIC; 
  signal N70 : STD_LOGIC; 
  signal N71 : STD_LOGIC; 
  signal N72 : STD_LOGIC; 
  signal N73 : STD_LOGIC; 
  signal N74 : STD_LOGIC; 
  signal N75 : STD_LOGIC; 
  signal N76 : STD_LOGIC; 
  signal N77 : STD_LOGIC; 
  signal N78 : STD_LOGIC; 
  signal N79 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal N80 : STD_LOGIC; 
  signal N81 : STD_LOGIC; 
  signal N82 : STD_LOGIC; 
  signal N83 : STD_LOGIC; 
  signal N84 : STD_LOGIC; 
  signal N9 : STD_LOGIC; 
  signal PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_decode_hit_reg_90 : STD_LOGIC; 
  signal PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_decode_hit_reg_or0000 : STD_LOGIC; 
  signal PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_clr : STD_LOGIC; 
  signal PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i_0_1_94 : STD_LOGIC; 
  signal PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i_1_1_96 : STD_LOGIC; 
  signal PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i_2_1_98 : STD_LOGIC; 
  signal PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i_3_1_100 : STD_LOGIC; 
  signal PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rnw_s_h_101 : STD_LOGIC; 
  signal PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rnw_s_h_or0000 : STD_LOGIC; 
  signal PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_wrce_clr : STD_LOGIC; 
  signal PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_N11 : STD_LOGIC; 
  signal PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_addr_cntl_ns : STD_LOGIC; 
  signal PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_bus2ip_rnw_i_or0000 : STD_LOGIC; 
  signal PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_decode_s_h_cs : STD_LOGIC; 
  signal PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_pavalid_reg_129 : STD_LOGIC; 
  signal PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_rnw_reg_130 : STD_LOGIC; 
  signal PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_rd_clear_sl_busy_170 : STD_LOGIC; 
  signal PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_set_sl_busy_171 : STD_LOGIC; 
  signal PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_set_sl_busy_mux0000_norst : STD_LOGIC; 
  signal PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_busy_173 : STD_LOGIC; 
  signal PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_mbusy_i_0_and0000 : STD_LOGIC; 
  signal PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_mbusy_i_1_and0000 : STD_LOGIC; 
  signal PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_mbusy_i_2_and0000 : STD_LOGIC; 
  signal PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_mbusy_i_3_and0000 : STD_LOGIC; 
  signal PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_mbusy_i_4_and0000 : STD_LOGIC; 
  signal PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_mbusy_i_5_and0000 : STD_LOGIC; 
  signal PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_mbusy_i_6_and0000 : STD_LOGIC; 
  signal PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_mbusy_i_7_and0000 : STD_LOGIC; 
  signal PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i_or0000 : STD_LOGIC; 
  signal PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rearbitrate_i_223 : STD_LOGIC; 
  signal PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rearbitrate_ns : STD_LOGIC; 
  signal PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rearbitrate_ns131_225 : STD_LOGIC; 
  signal PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rearbitrate_ns17_226 : STD_LOGIC; 
  signal PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_wrcomp_i_227 : STD_LOGIC; 
  signal PLBV46_SLAVE_SINGLE_I_Mmux_plb_be_muxed_3_228 : STD_LOGIC; 
  signal PLBV46_SLAVE_SINGLE_I_Mmux_plb_be_muxed_31_229 : STD_LOGIC; 
  signal PLBV46_SLAVE_SINGLE_I_Mmux_plb_be_muxed_32_230 : STD_LOGIC; 
  signal PLBV46_SLAVE_SINGLE_I_Mmux_plb_be_muxed_33_231 : STD_LOGIC; 
  signal PLBV46_SLAVE_SINGLE_I_Mmux_plb_be_muxed_4_232 : STD_LOGIC; 
  signal PLBV46_SLAVE_SINGLE_I_Mmux_plb_be_muxed_41_233 : STD_LOGIC; 
  signal PLBV46_SLAVE_SINGLE_I_Mmux_plb_be_muxed_42_234 : STD_LOGIC; 
  signal PLBV46_SLAVE_SINGLE_I_Mmux_plb_be_muxed_43_235 : STD_LOGIC; 
  signal PLB_ABus_28_IBUF_242 : STD_LOGIC; 
  signal PLB_ABus_29_IBUF_243 : STD_LOGIC; 
  signal PLB_BE_0_IBUF_260 : STD_LOGIC; 
  signal PLB_BE_10_IBUF_261 : STD_LOGIC; 
  signal PLB_BE_11_IBUF_262 : STD_LOGIC; 
  signal PLB_BE_12_IBUF_263 : STD_LOGIC; 
  signal PLB_BE_13_IBUF_264 : STD_LOGIC; 
  signal PLB_BE_14_IBUF_265 : STD_LOGIC; 
  signal PLB_BE_15_IBUF_266 : STD_LOGIC; 
  signal PLB_BE_1_IBUF_267 : STD_LOGIC; 
  signal PLB_BE_2_IBUF_268 : STD_LOGIC; 
  signal PLB_BE_3_IBUF_269 : STD_LOGIC; 
  signal PLB_BE_4_IBUF_270 : STD_LOGIC; 
  signal PLB_BE_5_IBUF_271 : STD_LOGIC; 
  signal PLB_BE_6_IBUF_272 : STD_LOGIC; 
  signal PLB_BE_7_IBUF_273 : STD_LOGIC; 
  signal PLB_BE_8_IBUF_274 : STD_LOGIC; 
  signal PLB_BE_9_IBUF_275 : STD_LOGIC; 
  signal PLB_PAValid_IBUF_277 : STD_LOGIC; 
  signal PLB_RNW_IBUF_279 : STD_LOGIC; 
  signal PLB_masterID_0_IBUF_283 : STD_LOGIC; 
  signal PLB_masterID_1_IBUF_284 : STD_LOGIC; 
  signal PLB_masterID_2_IBUF_285 : STD_LOGIC; 
  signal PLB_size_0_IBUF_290 : STD_LOGIC; 
  signal PLB_size_1_IBUF_291 : STD_LOGIC; 
  signal PLB_size_2_IBUF_292 : STD_LOGIC; 
  signal PLB_size_3_IBUF_293 : STD_LOGIC; 
  signal PLB_type_0_IBUF_297 : STD_LOGIC; 
  signal PLB_type_1_IBUF_298 : STD_LOGIC; 
  signal PLB_type_2_IBUF_299 : STD_LOGIC; 
  signal PLB_wrDBus_0_IBUF_332 : STD_LOGIC; 
  signal PLB_wrDBus_10_IBUF_333 : STD_LOGIC; 
  signal PLB_wrDBus_11_IBUF_334 : STD_LOGIC; 
  signal PLB_wrDBus_12_IBUF_335 : STD_LOGIC; 
  signal PLB_wrDBus_13_IBUF_336 : STD_LOGIC; 
  signal PLB_wrDBus_14_IBUF_337 : STD_LOGIC; 
  signal PLB_wrDBus_15_IBUF_338 : STD_LOGIC; 
  signal PLB_wrDBus_16_IBUF_339 : STD_LOGIC; 
  signal PLB_wrDBus_17_IBUF_340 : STD_LOGIC; 
  signal PLB_wrDBus_18_IBUF_341 : STD_LOGIC; 
  signal PLB_wrDBus_19_IBUF_342 : STD_LOGIC; 
  signal PLB_wrDBus_1_IBUF_343 : STD_LOGIC; 
  signal PLB_wrDBus_20_IBUF_344 : STD_LOGIC; 
  signal PLB_wrDBus_21_IBUF_345 : STD_LOGIC; 
  signal PLB_wrDBus_22_IBUF_346 : STD_LOGIC; 
  signal PLB_wrDBus_23_IBUF_347 : STD_LOGIC; 
  signal PLB_wrDBus_24_IBUF_348 : STD_LOGIC; 
  signal PLB_wrDBus_25_IBUF_349 : STD_LOGIC; 
  signal PLB_wrDBus_26_IBUF_350 : STD_LOGIC; 
  signal PLB_wrDBus_27_IBUF_351 : STD_LOGIC; 
  signal PLB_wrDBus_28_IBUF_352 : STD_LOGIC; 
  signal PLB_wrDBus_29_IBUF_353 : STD_LOGIC; 
  signal PLB_wrDBus_2_IBUF_354 : STD_LOGIC; 
  signal PLB_wrDBus_30_IBUF_355 : STD_LOGIC; 
  signal PLB_wrDBus_31_IBUF_356 : STD_LOGIC; 
  signal PLB_wrDBus_3_IBUF_357 : STD_LOGIC; 
  signal PLB_wrDBus_4_IBUF_358 : STD_LOGIC; 
  signal PLB_wrDBus_5_IBUF_359 : STD_LOGIC; 
  signal PLB_wrDBus_6_IBUF_360 : STD_LOGIC; 
  signal PLB_wrDBus_7_IBUF_361 : STD_LOGIC; 
  signal PLB_wrDBus_8_IBUF_362 : STD_LOGIC; 
  signal PLB_wrDBus_9_IBUF_363 : STD_LOGIC; 
  signal SPLB_Clk_BUFGP_365 : STD_LOGIC; 
  signal SPLB_Rst_IBUF_367 : STD_LOGIC; 
  signal Sl_MWrErr_0_OBUF_400 : STD_LOGIC; 
  signal USER_LOGIC_I_Bus2IP_Reset_inv : STD_LOGIC; 
  signal USER_LOGIC_I_IP2Bus_Data_0_20 : STD_LOGIC; 
  signal USER_LOGIC_I_IP2Bus_Data_0_47_546 : STD_LOGIC; 
  signal USER_LOGIC_I_IP2Bus_Data_10_47_547 : STD_LOGIC; 
  signal USER_LOGIC_I_IP2Bus_Data_11_47_548 : STD_LOGIC; 
  signal USER_LOGIC_I_IP2Bus_Data_12_47_549 : STD_LOGIC; 
  signal USER_LOGIC_I_IP2Bus_Data_13_47_550 : STD_LOGIC; 
  signal USER_LOGIC_I_IP2Bus_Data_14_47_551 : STD_LOGIC; 
  signal USER_LOGIC_I_IP2Bus_Data_15_47_552 : STD_LOGIC; 
  signal USER_LOGIC_I_IP2Bus_Data_16_47_553 : STD_LOGIC; 
  signal USER_LOGIC_I_IP2Bus_Data_17_51_554 : STD_LOGIC; 
  signal USER_LOGIC_I_IP2Bus_Data_18_51_555 : STD_LOGIC; 
  signal USER_LOGIC_I_IP2Bus_Data_19_51_556 : STD_LOGIC; 
  signal USER_LOGIC_I_IP2Bus_Data_1_51_557 : STD_LOGIC; 
  signal USER_LOGIC_I_IP2Bus_Data_20_51_558 : STD_LOGIC; 
  signal USER_LOGIC_I_IP2Bus_Data_21_51_559 : STD_LOGIC; 
  signal USER_LOGIC_I_IP2Bus_Data_22_51_560 : STD_LOGIC; 
  signal USER_LOGIC_I_IP2Bus_Data_23_51_561 : STD_LOGIC; 
  signal USER_LOGIC_I_IP2Bus_Data_24_51_562 : STD_LOGIC; 
  signal USER_LOGIC_I_IP2Bus_Data_25_51_563 : STD_LOGIC; 
  signal USER_LOGIC_I_IP2Bus_Data_26_51_564 : STD_LOGIC; 
  signal USER_LOGIC_I_IP2Bus_Data_27_51_565 : STD_LOGIC; 
  signal USER_LOGIC_I_IP2Bus_Data_28_51_566 : STD_LOGIC; 
  signal USER_LOGIC_I_IP2Bus_Data_29_51_567 : STD_LOGIC; 
  signal USER_LOGIC_I_IP2Bus_Data_2_51_568 : STD_LOGIC; 
  signal USER_LOGIC_I_IP2Bus_Data_30_51_569 : STD_LOGIC; 
  signal USER_LOGIC_I_IP2Bus_Data_31_51_570 : STD_LOGIC; 
  signal USER_LOGIC_I_IP2Bus_Data_3_51_571 : STD_LOGIC; 
  signal USER_LOGIC_I_IP2Bus_Data_4_51_572 : STD_LOGIC; 
  signal USER_LOGIC_I_IP2Bus_Data_5_51_573 : STD_LOGIC; 
  signal USER_LOGIC_I_IP2Bus_Data_6_51_574 : STD_LOGIC; 
  signal USER_LOGIC_I_IP2Bus_Data_7_51_575 : STD_LOGIC; 
  signal USER_LOGIC_I_IP2Bus_Data_8_51_576 : STD_LOGIC; 
  signal USER_LOGIC_I_IP2Bus_Data_9_51_577 : STD_LOGIC; 
  signal USER_LOGIC_I_Mcount_my_counter_cy_1_rt_659 : STD_LOGIC; 
  signal USER_LOGIC_I_Mcount_my_counter_cy_2_rt_661 : STD_LOGIC; 
  signal USER_LOGIC_I_Mcount_my_counter_cy_3_rt_663 : STD_LOGIC; 
  signal USER_LOGIC_I_Mcount_my_counter_cy_4_rt_665 : STD_LOGIC; 
  signal USER_LOGIC_I_Mcount_my_counter_cy_5_rt_667 : STD_LOGIC; 
  signal USER_LOGIC_I_Mcount_my_counter_cy_6_rt_669 : STD_LOGIC; 
  signal USER_LOGIC_I_Mcount_my_counter_xor_7_rt_671 : STD_LOGIC; 
  signal USER_LOGIC_I_N2 : STD_LOGIC; 
  signal USER_LOGIC_I_N3 : STD_LOGIC; 
  signal USER_LOGIC_I_N4 : STD_LOGIC; 
  signal USER_LOGIC_I_Result_0_1 : STD_LOGIC; 
  signal USER_LOGIC_I_Result_1_1 : STD_LOGIC; 
  signal USER_LOGIC_I_Result_2_1 : STD_LOGIC; 
  signal USER_LOGIC_I_Result_3_1 : STD_LOGIC; 
  signal USER_LOGIC_I_Result_4_1 : STD_LOGIC; 
  signal USER_LOGIC_I_Result_5_1 : STD_LOGIC; 
  signal USER_LOGIC_I_Result_6_1 : STD_LOGIC; 
  signal USER_LOGIC_I_Result_7_1 : STD_LOGIC; 
  signal USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_10_rt_712 : STD_LOGIC; 
  signal USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_11_rt_714 : STD_LOGIC; 
  signal USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_12_rt_716 : STD_LOGIC; 
  signal USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_13_rt_718 : STD_LOGIC; 
  signal USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_14_rt_720 : STD_LOGIC; 
  signal USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_15_rt_722 : STD_LOGIC; 
  signal USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_16_rt_724 : STD_LOGIC; 
  signal USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_17_rt_726 : STD_LOGIC; 
  signal USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_18_rt_728 : STD_LOGIC; 
  signal USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_19_rt_730 : STD_LOGIC; 
  signal USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_1_rt_732 : STD_LOGIC; 
  signal USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_20_rt_734 : STD_LOGIC; 
  signal USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_21_rt_736 : STD_LOGIC; 
  signal USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_22_rt_738 : STD_LOGIC; 
  signal USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_23_rt_740 : STD_LOGIC; 
  signal USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_24_rt_742 : STD_LOGIC; 
  signal USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_25_rt_744 : STD_LOGIC; 
  signal USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_2_rt_746 : STD_LOGIC; 
  signal USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_3_rt_748 : STD_LOGIC; 
  signal USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_4_rt_750 : STD_LOGIC; 
  signal USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_5_rt_752 : STD_LOGIC; 
  signal USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_6_rt_754 : STD_LOGIC; 
  signal USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_7_rt_756 : STD_LOGIC; 
  signal USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_8_rt_758 : STD_LOGIC; 
  signal USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_9_rt_760 : STD_LOGIC; 
  signal USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_0 : STD_LOGIC; 
  signal USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_1 : STD_LOGIC; 
  signal USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_10 : STD_LOGIC; 
  signal USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_11 : STD_LOGIC; 
  signal USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_12 : STD_LOGIC; 
  signal USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_13 : STD_LOGIC; 
  signal USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_14 : STD_LOGIC; 
  signal USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_15 : STD_LOGIC; 
  signal USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_16 : STD_LOGIC; 
  signal USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_17 : STD_LOGIC; 
  signal USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_18 : STD_LOGIC; 
  signal USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_19 : STD_LOGIC; 
  signal USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_2 : STD_LOGIC; 
  signal USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_20 : STD_LOGIC; 
  signal USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_21 : STD_LOGIC; 
  signal USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_22 : STD_LOGIC; 
  signal USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_23 : STD_LOGIC; 
  signal USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_24 : STD_LOGIC; 
  signal USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_25 : STD_LOGIC; 
  signal USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_26 : STD_LOGIC; 
  signal USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_3 : STD_LOGIC; 
  signal USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_4 : STD_LOGIC; 
  signal USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_5 : STD_LOGIC; 
  signal USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_6 : STD_LOGIC; 
  signal USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_7 : STD_LOGIC; 
  signal USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_8 : STD_LOGIC; 
  signal USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_9 : STD_LOGIC; 
  signal USER_LOGIC_I_mi_divisor_Mcount_cuenta_xor_26_rt_789 : STD_LOGIC; 
  signal USER_LOGIC_I_mi_divisor_clk_aux_790 : STD_LOGIC; 
  signal USER_LOGIC_I_mi_divisor_clk_aux_and0000 : STD_LOGIC; 
  signal USER_LOGIC_I_mi_divisor_clk_aux_not0001 : STD_LOGIC; 
  signal USER_LOGIC_I_mi_divisor_cuenta_cmp_eq0000 : STD_LOGIC; 
  signal USER_LOGIC_I_my_counter_cmp_lt0000 : STD_LOGIC; 
  signal USER_LOGIC_I_my_counter_reset_843 : STD_LOGIC; 
  signal USER_LOGIC_I_my_leds_mux0002_0_0_852 : STD_LOGIC; 
  signal USER_LOGIC_I_my_leds_mux0002_0_59 : STD_LOGIC; 
  signal USER_LOGIC_I_my_leds_mux0002_1_0_854 : STD_LOGIC; 
  signal USER_LOGIC_I_my_leds_mux0002_1_59 : STD_LOGIC; 
  signal USER_LOGIC_I_my_leds_mux0002_2_0_856 : STD_LOGIC; 
  signal USER_LOGIC_I_my_leds_mux0002_2_59 : STD_LOGIC; 
  signal USER_LOGIC_I_my_leds_mux0002_3_0_858 : STD_LOGIC; 
  signal USER_LOGIC_I_my_leds_mux0002_3_59 : STD_LOGIC; 
  signal USER_LOGIC_I_my_leds_mux0002_4_0_860 : STD_LOGIC; 
  signal USER_LOGIC_I_my_leds_mux0002_4_59 : STD_LOGIC; 
  signal USER_LOGIC_I_my_leds_mux0002_5_0_862 : STD_LOGIC; 
  signal USER_LOGIC_I_my_leds_mux0002_5_59 : STD_LOGIC; 
  signal USER_LOGIC_I_my_leds_mux0002_6_0_864 : STD_LOGIC; 
  signal USER_LOGIC_I_my_leds_mux0002_6_59 : STD_LOGIC; 
  signal USER_LOGIC_I_my_leds_mux0002_7_0_866 : STD_LOGIC; 
  signal USER_LOGIC_I_my_leds_mux0002_7_59 : STD_LOGIC; 
  signal USER_LOGIC_I_slv_reg0_0_not0001 : STD_LOGIC; 
  signal USER_LOGIC_I_slv_reg0_20_not0001 : STD_LOGIC; 
  signal USER_LOGIC_I_slv_reg0_24_not0001 : STD_LOGIC; 
  signal USER_LOGIC_I_slv_reg0_9_not0001 : STD_LOGIC; 
  signal USER_LOGIC_I_slv_reg1_0_not0001 : STD_LOGIC; 
  signal USER_LOGIC_I_slv_reg1_20_not0001 : STD_LOGIC; 
  signal USER_LOGIC_I_slv_reg1_28_not0001 : STD_LOGIC; 
  signal USER_LOGIC_I_slv_reg1_8_not0001 : STD_LOGIC; 
  signal USER_LOGIC_I_slv_reg2_0_not0001 : STD_LOGIC; 
  signal USER_LOGIC_I_slv_reg2_14_not0001 : STD_LOGIC; 
  signal USER_LOGIC_I_slv_reg2_20_not0001 : STD_LOGIC; 
  signal USER_LOGIC_I_slv_reg2_24_not0001 : STD_LOGIC; 
  signal USER_LOGIC_I_slv_reg3_cmp_eq0000 : STD_LOGIC; 
  signal switches_0_IBUF_1052 : STD_LOGIC; 
  signal switches_1_IBUF_1053 : STD_LOGIC; 
  signal switches_3_IBUF_1054 : STD_LOGIC; 
  signal user_IP2Bus_RdAck : STD_LOGIC; 
  signal user_IP2Bus_WrAck : STD_LOGIC; 
  signal PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_addr_out_s_h : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_ce_expnd_i : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_wrce_out_i : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_addr_cntl_cs : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_bus2ip_be_i : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_master_id : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_abus_reg : STD_LOGIC_VECTOR ( 29 downto 28 ); 
  signal PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_be_reg : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_masterid_reg : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_size_reg : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_type_reg : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_mbusy_i : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal PLBV46_SLAVE_SINGLE_I_plb_be_muxed : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal USER_LOGIC_I_Mcompar_my_counter_cmp_lt0000_cy : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal USER_LOGIC_I_Mcompar_my_counter_cmp_lt0000_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal USER_LOGIC_I_Mcount_my_counter_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal USER_LOGIC_I_Mcount_my_counter_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal USER_LOGIC_I_Result : STD_LOGIC_VECTOR ( 26 downto 0 ); 
  signal USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy : STD_LOGIC_VECTOR ( 25 downto 0 ); 
  signal USER_LOGIC_I_mi_divisor_Mcount_cuenta_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal USER_LOGIC_I_mi_divisor_cuenta : STD_LOGIC_VECTOR ( 26 downto 0 ); 
  signal USER_LOGIC_I_mi_divisor_cuenta_cmp_eq0000_wg_cy : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal USER_LOGIC_I_mi_divisor_cuenta_cmp_eq0000_wg_lut : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal USER_LOGIC_I_my_counter : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal USER_LOGIC_I_my_leds : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal USER_LOGIC_I_slv_reg0 : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal USER_LOGIC_I_slv_reg1 : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal USER_LOGIC_I_slv_reg2 : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal USER_LOGIC_I_slv_reg3 : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal USER_LOGIC_I_slv_reg3_mux0000 : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal user_IP2Bus_Data : STD_LOGIC_VECTOR ( 31 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => Sl_MWrErr_0_OBUF_400
    );
  XST_VCC : VCC
    port map (
      P => N1
    );
  PLBV46_SLAVE_SINGLE_I_Mmux_plb_be_muxed_2_f5_2 : MUXF5
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_Mmux_plb_be_muxed_43_235,
      I1 => PLBV46_SLAVE_SINGLE_I_Mmux_plb_be_muxed_33_231,
      S => PLB_ABus_28_IBUF_242,
      O => PLBV46_SLAVE_SINGLE_I_plb_be_muxed(3)
    );
  PLBV46_SLAVE_SINGLE_I_Mmux_plb_be_muxed_43 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => PLB_ABus_29_IBUF_243,
      I1 => PLB_BE_3_IBUF_269,
      I2 => PLB_BE_7_IBUF_273,
      O => PLBV46_SLAVE_SINGLE_I_Mmux_plb_be_muxed_43_235
    );
  PLBV46_SLAVE_SINGLE_I_Mmux_plb_be_muxed_33 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => PLB_ABus_29_IBUF_243,
      I1 => PLB_BE_11_IBUF_262,
      I2 => PLB_BE_15_IBUF_266,
      O => PLBV46_SLAVE_SINGLE_I_Mmux_plb_be_muxed_33_231
    );
  PLBV46_SLAVE_SINGLE_I_Mmux_plb_be_muxed_2_f5_1 : MUXF5
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_Mmux_plb_be_muxed_42_234,
      I1 => PLBV46_SLAVE_SINGLE_I_Mmux_plb_be_muxed_32_230,
      S => PLB_ABus_28_IBUF_242,
      O => PLBV46_SLAVE_SINGLE_I_plb_be_muxed(2)
    );
  PLBV46_SLAVE_SINGLE_I_Mmux_plb_be_muxed_42 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => PLB_ABus_29_IBUF_243,
      I1 => PLB_BE_2_IBUF_268,
      I2 => PLB_BE_6_IBUF_272,
      O => PLBV46_SLAVE_SINGLE_I_Mmux_plb_be_muxed_42_234
    );
  PLBV46_SLAVE_SINGLE_I_Mmux_plb_be_muxed_32 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => PLB_ABus_29_IBUF_243,
      I1 => PLB_BE_10_IBUF_261,
      I2 => PLB_BE_14_IBUF_265,
      O => PLBV46_SLAVE_SINGLE_I_Mmux_plb_be_muxed_32_230
    );
  PLBV46_SLAVE_SINGLE_I_Mmux_plb_be_muxed_2_f5_0 : MUXF5
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_Mmux_plb_be_muxed_41_233,
      I1 => PLBV46_SLAVE_SINGLE_I_Mmux_plb_be_muxed_31_229,
      S => PLB_ABus_28_IBUF_242,
      O => PLBV46_SLAVE_SINGLE_I_plb_be_muxed(1)
    );
  PLBV46_SLAVE_SINGLE_I_Mmux_plb_be_muxed_41 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => PLB_ABus_29_IBUF_243,
      I1 => PLB_BE_1_IBUF_267,
      I2 => PLB_BE_5_IBUF_271,
      O => PLBV46_SLAVE_SINGLE_I_Mmux_plb_be_muxed_41_233
    );
  PLBV46_SLAVE_SINGLE_I_Mmux_plb_be_muxed_31 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => PLB_ABus_29_IBUF_243,
      I1 => PLB_BE_9_IBUF_275,
      I2 => PLB_BE_13_IBUF_264,
      O => PLBV46_SLAVE_SINGLE_I_Mmux_plb_be_muxed_31_229
    );
  PLBV46_SLAVE_SINGLE_I_Mmux_plb_be_muxed_2_f5 : MUXF5
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_Mmux_plb_be_muxed_4_232,
      I1 => PLBV46_SLAVE_SINGLE_I_Mmux_plb_be_muxed_3_228,
      S => PLB_ABus_28_IBUF_242,
      O => PLBV46_SLAVE_SINGLE_I_plb_be_muxed(0)
    );
  PLBV46_SLAVE_SINGLE_I_Mmux_plb_be_muxed_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => PLB_ABus_29_IBUF_243,
      I1 => PLB_BE_0_IBUF_260,
      I2 => PLB_BE_4_IBUF_270,
      O => PLBV46_SLAVE_SINGLE_I_Mmux_plb_be_muxed_4_232
    );
  PLBV46_SLAVE_SINGLE_I_Mmux_plb_be_muxed_3 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => PLB_ABus_29_IBUF_243,
      I1 => PLB_BE_8_IBUF_274,
      I2 => PLB_BE_12_IBUF_263,
      O => PLBV46_SLAVE_SINGLE_I_Mmux_plb_be_muxed_3_228
    );
  USER_LOGIC_I_Mcount_my_counter_xor_7_Q : XORCY
    port map (
      CI => USER_LOGIC_I_Mcount_my_counter_cy(6),
      LI => USER_LOGIC_I_Mcount_my_counter_xor_7_rt_671,
      O => USER_LOGIC_I_Result_7_1
    );
  USER_LOGIC_I_Mcount_my_counter_xor_6_Q : XORCY
    port map (
      CI => USER_LOGIC_I_Mcount_my_counter_cy(5),
      LI => USER_LOGIC_I_Mcount_my_counter_cy_6_rt_669,
      O => USER_LOGIC_I_Result_6_1
    );
  USER_LOGIC_I_Mcount_my_counter_cy_6_Q : MUXCY
    port map (
      CI => USER_LOGIC_I_Mcount_my_counter_cy(5),
      DI => Sl_MWrErr_0_OBUF_400,
      S => USER_LOGIC_I_Mcount_my_counter_cy_6_rt_669,
      O => USER_LOGIC_I_Mcount_my_counter_cy(6)
    );
  USER_LOGIC_I_Mcount_my_counter_xor_5_Q : XORCY
    port map (
      CI => USER_LOGIC_I_Mcount_my_counter_cy(4),
      LI => USER_LOGIC_I_Mcount_my_counter_cy_5_rt_667,
      O => USER_LOGIC_I_Result_5_1
    );
  USER_LOGIC_I_Mcount_my_counter_cy_5_Q : MUXCY
    port map (
      CI => USER_LOGIC_I_Mcount_my_counter_cy(4),
      DI => Sl_MWrErr_0_OBUF_400,
      S => USER_LOGIC_I_Mcount_my_counter_cy_5_rt_667,
      O => USER_LOGIC_I_Mcount_my_counter_cy(5)
    );
  USER_LOGIC_I_Mcount_my_counter_xor_4_Q : XORCY
    port map (
      CI => USER_LOGIC_I_Mcount_my_counter_cy(3),
      LI => USER_LOGIC_I_Mcount_my_counter_cy_4_rt_665,
      O => USER_LOGIC_I_Result_4_1
    );
  USER_LOGIC_I_Mcount_my_counter_cy_4_Q : MUXCY
    port map (
      CI => USER_LOGIC_I_Mcount_my_counter_cy(3),
      DI => Sl_MWrErr_0_OBUF_400,
      S => USER_LOGIC_I_Mcount_my_counter_cy_4_rt_665,
      O => USER_LOGIC_I_Mcount_my_counter_cy(4)
    );
  USER_LOGIC_I_Mcount_my_counter_xor_3_Q : XORCY
    port map (
      CI => USER_LOGIC_I_Mcount_my_counter_cy(2),
      LI => USER_LOGIC_I_Mcount_my_counter_cy_3_rt_663,
      O => USER_LOGIC_I_Result_3_1
    );
  USER_LOGIC_I_Mcount_my_counter_cy_3_Q : MUXCY
    port map (
      CI => USER_LOGIC_I_Mcount_my_counter_cy(2),
      DI => Sl_MWrErr_0_OBUF_400,
      S => USER_LOGIC_I_Mcount_my_counter_cy_3_rt_663,
      O => USER_LOGIC_I_Mcount_my_counter_cy(3)
    );
  USER_LOGIC_I_Mcount_my_counter_xor_2_Q : XORCY
    port map (
      CI => USER_LOGIC_I_Mcount_my_counter_cy(1),
      LI => USER_LOGIC_I_Mcount_my_counter_cy_2_rt_661,
      O => USER_LOGIC_I_Result_2_1
    );
  USER_LOGIC_I_Mcount_my_counter_cy_2_Q : MUXCY
    port map (
      CI => USER_LOGIC_I_Mcount_my_counter_cy(1),
      DI => Sl_MWrErr_0_OBUF_400,
      S => USER_LOGIC_I_Mcount_my_counter_cy_2_rt_661,
      O => USER_LOGIC_I_Mcount_my_counter_cy(2)
    );
  USER_LOGIC_I_Mcount_my_counter_xor_1_Q : XORCY
    port map (
      CI => USER_LOGIC_I_Mcount_my_counter_cy(0),
      LI => USER_LOGIC_I_Mcount_my_counter_cy_1_rt_659,
      O => USER_LOGIC_I_Result_1_1
    );
  USER_LOGIC_I_Mcount_my_counter_cy_1_Q : MUXCY
    port map (
      CI => USER_LOGIC_I_Mcount_my_counter_cy(0),
      DI => Sl_MWrErr_0_OBUF_400,
      S => USER_LOGIC_I_Mcount_my_counter_cy_1_rt_659,
      O => USER_LOGIC_I_Mcount_my_counter_cy(1)
    );
  USER_LOGIC_I_Mcount_my_counter_xor_0_Q : XORCY
    port map (
      CI => Sl_MWrErr_0_OBUF_400,
      LI => USER_LOGIC_I_Mcount_my_counter_lut(0),
      O => USER_LOGIC_I_Result_0_1
    );
  USER_LOGIC_I_Mcount_my_counter_cy_0_Q : MUXCY
    port map (
      CI => Sl_MWrErr_0_OBUF_400,
      DI => N1,
      S => USER_LOGIC_I_Mcount_my_counter_lut(0),
      O => USER_LOGIC_I_Mcount_my_counter_cy(0)
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_xor_26_Q : XORCY
    port map (
      CI => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy(25),
      LI => USER_LOGIC_I_mi_divisor_Mcount_cuenta_xor_26_rt_789,
      O => USER_LOGIC_I_Result(26)
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_xor_25_Q : XORCY
    port map (
      CI => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy(24),
      LI => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_25_rt_744,
      O => USER_LOGIC_I_Result(25)
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_25_Q : MUXCY
    port map (
      CI => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy(24),
      DI => Sl_MWrErr_0_OBUF_400,
      S => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_25_rt_744,
      O => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy(25)
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_xor_24_Q : XORCY
    port map (
      CI => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy(23),
      LI => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_24_rt_742,
      O => USER_LOGIC_I_Result(24)
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_24_Q : MUXCY
    port map (
      CI => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy(23),
      DI => Sl_MWrErr_0_OBUF_400,
      S => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_24_rt_742,
      O => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy(24)
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_xor_23_Q : XORCY
    port map (
      CI => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy(22),
      LI => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_23_rt_740,
      O => USER_LOGIC_I_Result(23)
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_23_Q : MUXCY
    port map (
      CI => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy(22),
      DI => Sl_MWrErr_0_OBUF_400,
      S => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_23_rt_740,
      O => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy(23)
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_xor_22_Q : XORCY
    port map (
      CI => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy(21),
      LI => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_22_rt_738,
      O => USER_LOGIC_I_Result(22)
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_22_Q : MUXCY
    port map (
      CI => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy(21),
      DI => Sl_MWrErr_0_OBUF_400,
      S => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_22_rt_738,
      O => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy(22)
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_xor_21_Q : XORCY
    port map (
      CI => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy(20),
      LI => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_21_rt_736,
      O => USER_LOGIC_I_Result(21)
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_21_Q : MUXCY
    port map (
      CI => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy(20),
      DI => Sl_MWrErr_0_OBUF_400,
      S => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_21_rt_736,
      O => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy(21)
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_xor_20_Q : XORCY
    port map (
      CI => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy(19),
      LI => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_20_rt_734,
      O => USER_LOGIC_I_Result(20)
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_20_Q : MUXCY
    port map (
      CI => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy(19),
      DI => Sl_MWrErr_0_OBUF_400,
      S => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_20_rt_734,
      O => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy(20)
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_xor_19_Q : XORCY
    port map (
      CI => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy(18),
      LI => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_19_rt_730,
      O => USER_LOGIC_I_Result(19)
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_19_Q : MUXCY
    port map (
      CI => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy(18),
      DI => Sl_MWrErr_0_OBUF_400,
      S => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_19_rt_730,
      O => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy(19)
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_xor_18_Q : XORCY
    port map (
      CI => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy(17),
      LI => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_18_rt_728,
      O => USER_LOGIC_I_Result(18)
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_18_Q : MUXCY
    port map (
      CI => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy(17),
      DI => Sl_MWrErr_0_OBUF_400,
      S => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_18_rt_728,
      O => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy(18)
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_xor_17_Q : XORCY
    port map (
      CI => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy(16),
      LI => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_17_rt_726,
      O => USER_LOGIC_I_Result(17)
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_17_Q : MUXCY
    port map (
      CI => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy(16),
      DI => Sl_MWrErr_0_OBUF_400,
      S => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_17_rt_726,
      O => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy(17)
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_xor_16_Q : XORCY
    port map (
      CI => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy(15),
      LI => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_16_rt_724,
      O => USER_LOGIC_I_Result(16)
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_16_Q : MUXCY
    port map (
      CI => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy(15),
      DI => Sl_MWrErr_0_OBUF_400,
      S => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_16_rt_724,
      O => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy(16)
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_xor_15_Q : XORCY
    port map (
      CI => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy(14),
      LI => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_15_rt_722,
      O => USER_LOGIC_I_Result(15)
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_15_Q : MUXCY
    port map (
      CI => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy(14),
      DI => Sl_MWrErr_0_OBUF_400,
      S => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_15_rt_722,
      O => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy(15)
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_xor_14_Q : XORCY
    port map (
      CI => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy(13),
      LI => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_14_rt_720,
      O => USER_LOGIC_I_Result(14)
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_14_Q : MUXCY
    port map (
      CI => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy(13),
      DI => Sl_MWrErr_0_OBUF_400,
      S => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_14_rt_720,
      O => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy(14)
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_xor_13_Q : XORCY
    port map (
      CI => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy(12),
      LI => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_13_rt_718,
      O => USER_LOGIC_I_Result(13)
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_13_Q : MUXCY
    port map (
      CI => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy(12),
      DI => Sl_MWrErr_0_OBUF_400,
      S => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_13_rt_718,
      O => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy(13)
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_xor_12_Q : XORCY
    port map (
      CI => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy(11),
      LI => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_12_rt_716,
      O => USER_LOGIC_I_Result(12)
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_12_Q : MUXCY
    port map (
      CI => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy(11),
      DI => Sl_MWrErr_0_OBUF_400,
      S => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_12_rt_716,
      O => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy(12)
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_xor_11_Q : XORCY
    port map (
      CI => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy(10),
      LI => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_11_rt_714,
      O => USER_LOGIC_I_Result(11)
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_11_Q : MUXCY
    port map (
      CI => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy(10),
      DI => Sl_MWrErr_0_OBUF_400,
      S => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_11_rt_714,
      O => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy(11)
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_xor_10_Q : XORCY
    port map (
      CI => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy(9),
      LI => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_10_rt_712,
      O => USER_LOGIC_I_Result(10)
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_10_Q : MUXCY
    port map (
      CI => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy(9),
      DI => Sl_MWrErr_0_OBUF_400,
      S => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_10_rt_712,
      O => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy(10)
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_xor_9_Q : XORCY
    port map (
      CI => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy(8),
      LI => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_9_rt_760,
      O => USER_LOGIC_I_Result(9)
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_9_Q : MUXCY
    port map (
      CI => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy(8),
      DI => Sl_MWrErr_0_OBUF_400,
      S => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_9_rt_760,
      O => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy(9)
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_xor_8_Q : XORCY
    port map (
      CI => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy(7),
      LI => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_8_rt_758,
      O => USER_LOGIC_I_Result(8)
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_8_Q : MUXCY
    port map (
      CI => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy(7),
      DI => Sl_MWrErr_0_OBUF_400,
      S => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_8_rt_758,
      O => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy(8)
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_xor_7_Q : XORCY
    port map (
      CI => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy(6),
      LI => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_7_rt_756,
      O => USER_LOGIC_I_Result(7)
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_7_Q : MUXCY
    port map (
      CI => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy(6),
      DI => Sl_MWrErr_0_OBUF_400,
      S => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_7_rt_756,
      O => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy(7)
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_xor_6_Q : XORCY
    port map (
      CI => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy(5),
      LI => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_6_rt_754,
      O => USER_LOGIC_I_Result(6)
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_6_Q : MUXCY
    port map (
      CI => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy(5),
      DI => Sl_MWrErr_0_OBUF_400,
      S => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_6_rt_754,
      O => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy(6)
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_xor_5_Q : XORCY
    port map (
      CI => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy(4),
      LI => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_5_rt_752,
      O => USER_LOGIC_I_Result(5)
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_5_Q : MUXCY
    port map (
      CI => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy(4),
      DI => Sl_MWrErr_0_OBUF_400,
      S => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_5_rt_752,
      O => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy(5)
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_xor_4_Q : XORCY
    port map (
      CI => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy(3),
      LI => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_4_rt_750,
      O => USER_LOGIC_I_Result(4)
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_4_Q : MUXCY
    port map (
      CI => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy(3),
      DI => Sl_MWrErr_0_OBUF_400,
      S => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_4_rt_750,
      O => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy(4)
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_xor_3_Q : XORCY
    port map (
      CI => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy(2),
      LI => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_3_rt_748,
      O => USER_LOGIC_I_Result(3)
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_3_Q : MUXCY
    port map (
      CI => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy(2),
      DI => Sl_MWrErr_0_OBUF_400,
      S => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_3_rt_748,
      O => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy(3)
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_xor_2_Q : XORCY
    port map (
      CI => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy(1),
      LI => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_2_rt_746,
      O => USER_LOGIC_I_Result(2)
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_2_Q : MUXCY
    port map (
      CI => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy(1),
      DI => Sl_MWrErr_0_OBUF_400,
      S => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_2_rt_746,
      O => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy(2)
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_xor_1_Q : XORCY
    port map (
      CI => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy(0),
      LI => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_1_rt_732,
      O => USER_LOGIC_I_Result(1)
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_1_Q : MUXCY
    port map (
      CI => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy(0),
      DI => Sl_MWrErr_0_OBUF_400,
      S => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_1_rt_732,
      O => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy(1)
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_xor_0_Q : XORCY
    port map (
      CI => Sl_MWrErr_0_OBUF_400,
      LI => USER_LOGIC_I_mi_divisor_Mcount_cuenta_lut(0),
      O => USER_LOGIC_I_Result(0)
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_0_Q : MUXCY
    port map (
      CI => Sl_MWrErr_0_OBUF_400,
      DI => N1,
      S => USER_LOGIC_I_mi_divisor_Mcount_cuenta_lut(0),
      O => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy(0)
    );
  USER_LOGIC_I_Mcompar_my_counter_cmp_lt0000_cy_7_Q : MUXCY
    port map (
      CI => USER_LOGIC_I_Mcompar_my_counter_cmp_lt0000_cy(6),
      DI => USER_LOGIC_I_my_counter(7),
      S => USER_LOGIC_I_Mcompar_my_counter_cmp_lt0000_lut(7),
      O => USER_LOGIC_I_Mcompar_my_counter_cmp_lt0000_cy(7)
    );
  USER_LOGIC_I_Mcompar_my_counter_cmp_lt0000_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => USER_LOGIC_I_slv_reg3(0),
      I1 => USER_LOGIC_I_my_counter(7),
      O => USER_LOGIC_I_Mcompar_my_counter_cmp_lt0000_lut(7)
    );
  USER_LOGIC_I_Mcompar_my_counter_cmp_lt0000_cy_6_Q : MUXCY
    port map (
      CI => USER_LOGIC_I_Mcompar_my_counter_cmp_lt0000_cy(5),
      DI => USER_LOGIC_I_my_counter(6),
      S => USER_LOGIC_I_Mcompar_my_counter_cmp_lt0000_lut(6),
      O => USER_LOGIC_I_Mcompar_my_counter_cmp_lt0000_cy(6)
    );
  USER_LOGIC_I_Mcompar_my_counter_cmp_lt0000_lut_6_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => USER_LOGIC_I_slv_reg3(1),
      I1 => USER_LOGIC_I_my_counter(6),
      O => USER_LOGIC_I_Mcompar_my_counter_cmp_lt0000_lut(6)
    );
  USER_LOGIC_I_Mcompar_my_counter_cmp_lt0000_cy_5_Q : MUXCY
    port map (
      CI => USER_LOGIC_I_Mcompar_my_counter_cmp_lt0000_cy(4),
      DI => USER_LOGIC_I_my_counter(5),
      S => USER_LOGIC_I_Mcompar_my_counter_cmp_lt0000_lut(5),
      O => USER_LOGIC_I_Mcompar_my_counter_cmp_lt0000_cy(5)
    );
  USER_LOGIC_I_Mcompar_my_counter_cmp_lt0000_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => USER_LOGIC_I_slv_reg3(2),
      I1 => USER_LOGIC_I_my_counter(5),
      O => USER_LOGIC_I_Mcompar_my_counter_cmp_lt0000_lut(5)
    );
  USER_LOGIC_I_Mcompar_my_counter_cmp_lt0000_cy_4_Q : MUXCY
    port map (
      CI => USER_LOGIC_I_Mcompar_my_counter_cmp_lt0000_cy(3),
      DI => USER_LOGIC_I_my_counter(4),
      S => USER_LOGIC_I_Mcompar_my_counter_cmp_lt0000_lut(4),
      O => USER_LOGIC_I_Mcompar_my_counter_cmp_lt0000_cy(4)
    );
  USER_LOGIC_I_Mcompar_my_counter_cmp_lt0000_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => USER_LOGIC_I_slv_reg3(3),
      I1 => USER_LOGIC_I_my_counter(4),
      O => USER_LOGIC_I_Mcompar_my_counter_cmp_lt0000_lut(4)
    );
  USER_LOGIC_I_Mcompar_my_counter_cmp_lt0000_cy_3_Q : MUXCY
    port map (
      CI => USER_LOGIC_I_Mcompar_my_counter_cmp_lt0000_cy(2),
      DI => USER_LOGIC_I_my_counter(3),
      S => USER_LOGIC_I_Mcompar_my_counter_cmp_lt0000_lut(3),
      O => USER_LOGIC_I_Mcompar_my_counter_cmp_lt0000_cy(3)
    );
  USER_LOGIC_I_Mcompar_my_counter_cmp_lt0000_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => USER_LOGIC_I_slv_reg3(4),
      I1 => USER_LOGIC_I_my_counter(3),
      O => USER_LOGIC_I_Mcompar_my_counter_cmp_lt0000_lut(3)
    );
  USER_LOGIC_I_Mcompar_my_counter_cmp_lt0000_cy_2_Q : MUXCY
    port map (
      CI => USER_LOGIC_I_Mcompar_my_counter_cmp_lt0000_cy(1),
      DI => USER_LOGIC_I_my_counter(2),
      S => USER_LOGIC_I_Mcompar_my_counter_cmp_lt0000_lut(2),
      O => USER_LOGIC_I_Mcompar_my_counter_cmp_lt0000_cy(2)
    );
  USER_LOGIC_I_Mcompar_my_counter_cmp_lt0000_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => USER_LOGIC_I_slv_reg3(5),
      I1 => USER_LOGIC_I_my_counter(2),
      O => USER_LOGIC_I_Mcompar_my_counter_cmp_lt0000_lut(2)
    );
  USER_LOGIC_I_Mcompar_my_counter_cmp_lt0000_cy_1_Q : MUXCY
    port map (
      CI => USER_LOGIC_I_Mcompar_my_counter_cmp_lt0000_cy(0),
      DI => USER_LOGIC_I_my_counter(1),
      S => USER_LOGIC_I_Mcompar_my_counter_cmp_lt0000_lut(1),
      O => USER_LOGIC_I_Mcompar_my_counter_cmp_lt0000_cy(1)
    );
  USER_LOGIC_I_Mcompar_my_counter_cmp_lt0000_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => USER_LOGIC_I_slv_reg3(6),
      I1 => USER_LOGIC_I_my_counter(1),
      O => USER_LOGIC_I_Mcompar_my_counter_cmp_lt0000_lut(1)
    );
  USER_LOGIC_I_Mcompar_my_counter_cmp_lt0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => USER_LOGIC_I_my_counter(0),
      S => USER_LOGIC_I_Mcompar_my_counter_cmp_lt0000_lut(0),
      O => USER_LOGIC_I_Mcompar_my_counter_cmp_lt0000_cy(0)
    );
  USER_LOGIC_I_Mcompar_my_counter_cmp_lt0000_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => USER_LOGIC_I_slv_reg3(7),
      I1 => USER_LOGIC_I_my_counter(0),
      O => USER_LOGIC_I_Mcompar_my_counter_cmp_lt0000_lut(0)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_xor_31_Q : XORCY
    port map (
      CI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(30),
      LI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(31),
      O => USER_LOGIC_I_slv_reg3_mux0000(31)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut_31_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => USER_LOGIC_I_slv_reg1(0),
      I1 => USER_LOGIC_I_slv_reg2(0),
      I2 => USER_LOGIC_I_slv_reg0(31),
      O => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(31)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_xor_30_Q : XORCY
    port map (
      CI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(29),
      LI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(30),
      O => USER_LOGIC_I_slv_reg3_mux0000(30)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy_30_Q : MUXCY
    port map (
      CI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(29),
      DI => USER_LOGIC_I_slv_reg1(1),
      S => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(30),
      O => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(30)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut_30_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => USER_LOGIC_I_slv_reg1(1),
      I1 => USER_LOGIC_I_slv_reg2(1),
      I2 => USER_LOGIC_I_slv_reg0(31),
      O => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(30)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_xor_29_Q : XORCY
    port map (
      CI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(28),
      LI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(29),
      O => USER_LOGIC_I_slv_reg3_mux0000(29)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy_29_Q : MUXCY
    port map (
      CI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(28),
      DI => USER_LOGIC_I_slv_reg1(2),
      S => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(29),
      O => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(29)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut_29_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => USER_LOGIC_I_slv_reg1(2),
      I1 => USER_LOGIC_I_slv_reg2(2),
      I2 => USER_LOGIC_I_slv_reg0(31),
      O => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(29)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_xor_28_Q : XORCY
    port map (
      CI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(27),
      LI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(28),
      O => USER_LOGIC_I_slv_reg3_mux0000(28)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy_28_Q : MUXCY
    port map (
      CI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(27),
      DI => USER_LOGIC_I_slv_reg1(3),
      S => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(28),
      O => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(28)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut_28_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => USER_LOGIC_I_slv_reg1(3),
      I1 => USER_LOGIC_I_slv_reg2(3),
      I2 => USER_LOGIC_I_slv_reg0(31),
      O => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(28)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_xor_27_Q : XORCY
    port map (
      CI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(26),
      LI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(27),
      O => USER_LOGIC_I_slv_reg3_mux0000(27)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy_27_Q : MUXCY
    port map (
      CI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(26),
      DI => USER_LOGIC_I_slv_reg1(4),
      S => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(27),
      O => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(27)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut_27_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => USER_LOGIC_I_slv_reg1(4),
      I1 => USER_LOGIC_I_slv_reg2(4),
      I2 => USER_LOGIC_I_slv_reg0(31),
      O => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(27)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_xor_26_Q : XORCY
    port map (
      CI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(25),
      LI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(26),
      O => USER_LOGIC_I_slv_reg3_mux0000(26)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy_26_Q : MUXCY
    port map (
      CI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(25),
      DI => USER_LOGIC_I_slv_reg1(5),
      S => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(26),
      O => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(26)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut_26_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => USER_LOGIC_I_slv_reg1(5),
      I1 => USER_LOGIC_I_slv_reg2(5),
      I2 => USER_LOGIC_I_slv_reg0(31),
      O => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(26)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_xor_25_Q : XORCY
    port map (
      CI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(24),
      LI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(25),
      O => USER_LOGIC_I_slv_reg3_mux0000(25)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy_25_Q : MUXCY
    port map (
      CI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(24),
      DI => USER_LOGIC_I_slv_reg1(6),
      S => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(25),
      O => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(25)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut_25_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => USER_LOGIC_I_slv_reg1(6),
      I1 => USER_LOGIC_I_slv_reg2(6),
      I2 => USER_LOGIC_I_slv_reg0(31),
      O => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(25)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_xor_24_Q : XORCY
    port map (
      CI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(23),
      LI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(24),
      O => USER_LOGIC_I_slv_reg3_mux0000(24)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy_24_Q : MUXCY
    port map (
      CI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(23),
      DI => USER_LOGIC_I_slv_reg1(7),
      S => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(24),
      O => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(24)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut_24_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => USER_LOGIC_I_slv_reg1(7),
      I1 => USER_LOGIC_I_slv_reg2(7),
      I2 => USER_LOGIC_I_slv_reg0(31),
      O => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(24)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_xor_23_Q : XORCY
    port map (
      CI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(22),
      LI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(23),
      O => USER_LOGIC_I_slv_reg3_mux0000(23)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy_23_Q : MUXCY
    port map (
      CI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(22),
      DI => USER_LOGIC_I_slv_reg1(8),
      S => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(23),
      O => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(23)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut_23_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => USER_LOGIC_I_slv_reg1(8),
      I1 => USER_LOGIC_I_slv_reg2(8),
      I2 => USER_LOGIC_I_slv_reg0(31),
      O => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(23)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_xor_22_Q : XORCY
    port map (
      CI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(21),
      LI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(22),
      O => USER_LOGIC_I_slv_reg3_mux0000(22)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy_22_Q : MUXCY
    port map (
      CI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(21),
      DI => USER_LOGIC_I_slv_reg1(9),
      S => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(22),
      O => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(22)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut_22_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => USER_LOGIC_I_slv_reg1(9),
      I1 => USER_LOGIC_I_slv_reg2(9),
      I2 => USER_LOGIC_I_slv_reg0(31),
      O => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(22)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_xor_21_Q : XORCY
    port map (
      CI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(20),
      LI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(21),
      O => USER_LOGIC_I_slv_reg3_mux0000(21)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy_21_Q : MUXCY
    port map (
      CI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(20),
      DI => USER_LOGIC_I_slv_reg1(10),
      S => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(21),
      O => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(21)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut_21_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => USER_LOGIC_I_slv_reg1(10),
      I1 => USER_LOGIC_I_slv_reg2(10),
      I2 => USER_LOGIC_I_slv_reg0(31),
      O => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(21)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_xor_20_Q : XORCY
    port map (
      CI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(19),
      LI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(20),
      O => USER_LOGIC_I_slv_reg3_mux0000(20)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy_20_Q : MUXCY
    port map (
      CI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(19),
      DI => USER_LOGIC_I_slv_reg1(11),
      S => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(20),
      O => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(20)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut_20_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => USER_LOGIC_I_slv_reg1(11),
      I1 => USER_LOGIC_I_slv_reg2(11),
      I2 => USER_LOGIC_I_slv_reg0(31),
      O => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(20)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_xor_19_Q : XORCY
    port map (
      CI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(18),
      LI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(19),
      O => USER_LOGIC_I_slv_reg3_mux0000(19)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy_19_Q : MUXCY
    port map (
      CI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(18),
      DI => USER_LOGIC_I_slv_reg1(12),
      S => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(19),
      O => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(19)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut_19_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => USER_LOGIC_I_slv_reg1(12),
      I1 => USER_LOGIC_I_slv_reg2(12),
      I2 => USER_LOGIC_I_slv_reg0(31),
      O => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(19)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_xor_18_Q : XORCY
    port map (
      CI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(17),
      LI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(18),
      O => USER_LOGIC_I_slv_reg3_mux0000(18)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy_18_Q : MUXCY
    port map (
      CI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(17),
      DI => USER_LOGIC_I_slv_reg1(13),
      S => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(18),
      O => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(18)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut_18_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => USER_LOGIC_I_slv_reg1(13),
      I1 => USER_LOGIC_I_slv_reg2(13),
      I2 => USER_LOGIC_I_slv_reg0(31),
      O => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(18)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_xor_17_Q : XORCY
    port map (
      CI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(16),
      LI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(17),
      O => USER_LOGIC_I_slv_reg3_mux0000(17)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy_17_Q : MUXCY
    port map (
      CI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(16),
      DI => USER_LOGIC_I_slv_reg1(14),
      S => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(17),
      O => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(17)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut_17_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => USER_LOGIC_I_slv_reg1(14),
      I1 => USER_LOGIC_I_slv_reg2(14),
      I2 => USER_LOGIC_I_slv_reg0(31),
      O => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(17)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_xor_16_Q : XORCY
    port map (
      CI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(15),
      LI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(16),
      O => USER_LOGIC_I_slv_reg3_mux0000(16)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy_16_Q : MUXCY
    port map (
      CI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(15),
      DI => USER_LOGIC_I_slv_reg1(15),
      S => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(16),
      O => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(16)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut_16_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => USER_LOGIC_I_slv_reg1(15),
      I1 => USER_LOGIC_I_slv_reg2(15),
      I2 => USER_LOGIC_I_slv_reg0(31),
      O => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(16)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_xor_15_Q : XORCY
    port map (
      CI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(14),
      LI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(15),
      O => USER_LOGIC_I_slv_reg3_mux0000(15)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy_15_Q : MUXCY
    port map (
      CI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(14),
      DI => USER_LOGIC_I_slv_reg1(16),
      S => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(15),
      O => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(15)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut_15_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => USER_LOGIC_I_slv_reg1(16),
      I1 => USER_LOGIC_I_slv_reg2(16),
      I2 => USER_LOGIC_I_slv_reg0(31),
      O => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(15)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_xor_14_Q : XORCY
    port map (
      CI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(13),
      LI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(14),
      O => USER_LOGIC_I_slv_reg3_mux0000(14)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy_14_Q : MUXCY
    port map (
      CI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(13),
      DI => USER_LOGIC_I_slv_reg1(17),
      S => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(14),
      O => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(14)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut_14_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => USER_LOGIC_I_slv_reg1(17),
      I1 => USER_LOGIC_I_slv_reg2(17),
      I2 => USER_LOGIC_I_slv_reg0(31),
      O => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(14)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_xor_13_Q : XORCY
    port map (
      CI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(12),
      LI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(13),
      O => USER_LOGIC_I_slv_reg3_mux0000(13)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy_13_Q : MUXCY
    port map (
      CI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(12),
      DI => USER_LOGIC_I_slv_reg1(18),
      S => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(13),
      O => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(13)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut_13_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => USER_LOGIC_I_slv_reg1(18),
      I1 => USER_LOGIC_I_slv_reg2(18),
      I2 => USER_LOGIC_I_slv_reg0(31),
      O => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(13)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_xor_12_Q : XORCY
    port map (
      CI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(11),
      LI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(12),
      O => USER_LOGIC_I_slv_reg3_mux0000(12)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy_12_Q : MUXCY
    port map (
      CI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(11),
      DI => USER_LOGIC_I_slv_reg1(19),
      S => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(12),
      O => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(12)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut_12_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => USER_LOGIC_I_slv_reg1(19),
      I1 => USER_LOGIC_I_slv_reg2(19),
      I2 => USER_LOGIC_I_slv_reg0(31),
      O => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(12)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_xor_11_Q : XORCY
    port map (
      CI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(10),
      LI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(11),
      O => USER_LOGIC_I_slv_reg3_mux0000(11)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy_11_Q : MUXCY
    port map (
      CI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(10),
      DI => USER_LOGIC_I_slv_reg1(20),
      S => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(11),
      O => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(11)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut_11_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => USER_LOGIC_I_slv_reg1(20),
      I1 => USER_LOGIC_I_slv_reg2(20),
      I2 => USER_LOGIC_I_slv_reg0(31),
      O => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(11)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_xor_10_Q : XORCY
    port map (
      CI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(9),
      LI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(10),
      O => USER_LOGIC_I_slv_reg3_mux0000(10)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy_10_Q : MUXCY
    port map (
      CI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(9),
      DI => USER_LOGIC_I_slv_reg1(21),
      S => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(10),
      O => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(10)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut_10_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => USER_LOGIC_I_slv_reg1(21),
      I1 => USER_LOGIC_I_slv_reg2(21),
      I2 => USER_LOGIC_I_slv_reg0(31),
      O => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(10)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_xor_9_Q : XORCY
    port map (
      CI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(8),
      LI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(9),
      O => USER_LOGIC_I_slv_reg3_mux0000(9)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy_9_Q : MUXCY
    port map (
      CI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(8),
      DI => USER_LOGIC_I_slv_reg1(22),
      S => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(9),
      O => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(9)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut_9_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => USER_LOGIC_I_slv_reg1(22),
      I1 => USER_LOGIC_I_slv_reg2(22),
      I2 => USER_LOGIC_I_slv_reg0(31),
      O => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(9)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_xor_8_Q : XORCY
    port map (
      CI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(7),
      LI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(8),
      O => USER_LOGIC_I_slv_reg3_mux0000(8)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy_8_Q : MUXCY
    port map (
      CI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(7),
      DI => USER_LOGIC_I_slv_reg1(23),
      S => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(8),
      O => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(8)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut_8_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => USER_LOGIC_I_slv_reg1(23),
      I1 => USER_LOGIC_I_slv_reg2(23),
      I2 => USER_LOGIC_I_slv_reg0(31),
      O => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(8)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_xor_7_Q : XORCY
    port map (
      CI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(6),
      LI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(7),
      O => USER_LOGIC_I_slv_reg3_mux0000(7)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy_7_Q : MUXCY
    port map (
      CI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(6),
      DI => USER_LOGIC_I_slv_reg1(24),
      S => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(7),
      O => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(7)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut_7_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => USER_LOGIC_I_slv_reg1(24),
      I1 => USER_LOGIC_I_slv_reg2(24),
      I2 => USER_LOGIC_I_slv_reg0(31),
      O => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(7)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_xor_6_Q : XORCY
    port map (
      CI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(5),
      LI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(6),
      O => USER_LOGIC_I_slv_reg3_mux0000(6)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy_6_Q : MUXCY
    port map (
      CI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(5),
      DI => USER_LOGIC_I_slv_reg1(25),
      S => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(6),
      O => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(6)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut_6_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => USER_LOGIC_I_slv_reg1(25),
      I1 => USER_LOGIC_I_slv_reg2(25),
      I2 => USER_LOGIC_I_slv_reg0(31),
      O => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(6)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_xor_5_Q : XORCY
    port map (
      CI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(4),
      LI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(5),
      O => USER_LOGIC_I_slv_reg3_mux0000(5)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy_5_Q : MUXCY
    port map (
      CI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(4),
      DI => USER_LOGIC_I_slv_reg1(26),
      S => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(5),
      O => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(5)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut_5_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => USER_LOGIC_I_slv_reg1(26),
      I1 => USER_LOGIC_I_slv_reg2(26),
      I2 => USER_LOGIC_I_slv_reg0(31),
      O => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(5)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_xor_4_Q : XORCY
    port map (
      CI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(3),
      LI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(4),
      O => USER_LOGIC_I_slv_reg3_mux0000(4)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy_4_Q : MUXCY
    port map (
      CI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(3),
      DI => USER_LOGIC_I_slv_reg1(27),
      S => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(4),
      O => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(4)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut_4_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => USER_LOGIC_I_slv_reg1(27),
      I1 => USER_LOGIC_I_slv_reg2(27),
      I2 => USER_LOGIC_I_slv_reg0(31),
      O => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(4)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_xor_3_Q : XORCY
    port map (
      CI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(2),
      LI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(3),
      O => USER_LOGIC_I_slv_reg3_mux0000(3)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy_3_Q : MUXCY
    port map (
      CI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(2),
      DI => USER_LOGIC_I_slv_reg1(28),
      S => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(3),
      O => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(3)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut_3_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => USER_LOGIC_I_slv_reg1(28),
      I1 => USER_LOGIC_I_slv_reg2(28),
      I2 => USER_LOGIC_I_slv_reg0(31),
      O => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(3)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_xor_2_Q : XORCY
    port map (
      CI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(1),
      LI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(2),
      O => USER_LOGIC_I_slv_reg3_mux0000(2)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy_2_Q : MUXCY
    port map (
      CI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(1),
      DI => USER_LOGIC_I_slv_reg1(29),
      S => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(2),
      O => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(2)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut_2_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => USER_LOGIC_I_slv_reg1(29),
      I1 => USER_LOGIC_I_slv_reg2(29),
      I2 => USER_LOGIC_I_slv_reg0(31),
      O => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(2)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_xor_1_Q : XORCY
    port map (
      CI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(0),
      LI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(1),
      O => USER_LOGIC_I_slv_reg3_mux0000(1)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy_1_Q : MUXCY
    port map (
      CI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(0),
      DI => USER_LOGIC_I_slv_reg1(30),
      S => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(1),
      O => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(1)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut_1_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => USER_LOGIC_I_slv_reg1(30),
      I1 => USER_LOGIC_I_slv_reg2(30),
      I2 => USER_LOGIC_I_slv_reg0(31),
      O => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(1)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_xor_0_Q : XORCY
    port map (
      CI => USER_LOGIC_I_slv_reg0(31),
      LI => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(0),
      O => USER_LOGIC_I_slv_reg3_mux0000(0)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy_0_Q : MUXCY
    port map (
      CI => USER_LOGIC_I_slv_reg0(31),
      DI => USER_LOGIC_I_slv_reg1(31),
      S => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(0),
      O => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_cy(0)
    );
  USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut_0_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => USER_LOGIC_I_slv_reg1(31),
      I1 => USER_LOGIC_I_slv_reg2(31),
      I2 => USER_LOGIC_I_slv_reg0(31),
      O => USER_LOGIC_I_Maddsub_slv_reg3_mux0000_lut(0)
    );
  USER_LOGIC_I_my_counter_7 : FDRE
    port map (
      C => USER_LOGIC_I_mi_divisor_clk_aux_790,
      CE => USER_LOGIC_I_my_counter_cmp_lt0000,
      D => USER_LOGIC_I_Result_7_1,
      R => USER_LOGIC_I_my_counter_reset_843,
      Q => USER_LOGIC_I_my_counter(7)
    );
  USER_LOGIC_I_my_counter_6 : FDRE
    port map (
      C => USER_LOGIC_I_mi_divisor_clk_aux_790,
      CE => USER_LOGIC_I_my_counter_cmp_lt0000,
      D => USER_LOGIC_I_Result_6_1,
      R => USER_LOGIC_I_my_counter_reset_843,
      Q => USER_LOGIC_I_my_counter(6)
    );
  USER_LOGIC_I_my_counter_5 : FDRE
    port map (
      C => USER_LOGIC_I_mi_divisor_clk_aux_790,
      CE => USER_LOGIC_I_my_counter_cmp_lt0000,
      D => USER_LOGIC_I_Result_5_1,
      R => USER_LOGIC_I_my_counter_reset_843,
      Q => USER_LOGIC_I_my_counter(5)
    );
  USER_LOGIC_I_my_counter_4 : FDRE
    port map (
      C => USER_LOGIC_I_mi_divisor_clk_aux_790,
      CE => USER_LOGIC_I_my_counter_cmp_lt0000,
      D => USER_LOGIC_I_Result_4_1,
      R => USER_LOGIC_I_my_counter_reset_843,
      Q => USER_LOGIC_I_my_counter(4)
    );
  USER_LOGIC_I_my_counter_3 : FDRE
    port map (
      C => USER_LOGIC_I_mi_divisor_clk_aux_790,
      CE => USER_LOGIC_I_my_counter_cmp_lt0000,
      D => USER_LOGIC_I_Result_3_1,
      R => USER_LOGIC_I_my_counter_reset_843,
      Q => USER_LOGIC_I_my_counter(3)
    );
  USER_LOGIC_I_my_counter_2 : FDRE
    port map (
      C => USER_LOGIC_I_mi_divisor_clk_aux_790,
      CE => USER_LOGIC_I_my_counter_cmp_lt0000,
      D => USER_LOGIC_I_Result_2_1,
      R => USER_LOGIC_I_my_counter_reset_843,
      Q => USER_LOGIC_I_my_counter(2)
    );
  USER_LOGIC_I_my_counter_1 : FDRE
    port map (
      C => USER_LOGIC_I_mi_divisor_clk_aux_790,
      CE => USER_LOGIC_I_my_counter_cmp_lt0000,
      D => USER_LOGIC_I_Result_1_1,
      R => USER_LOGIC_I_my_counter_reset_843,
      Q => USER_LOGIC_I_my_counter(1)
    );
  USER_LOGIC_I_my_counter_0 : FDRE
    port map (
      C => USER_LOGIC_I_mi_divisor_clk_aux_790,
      CE => USER_LOGIC_I_my_counter_cmp_lt0000,
      D => USER_LOGIC_I_Result_0_1,
      R => USER_LOGIC_I_my_counter_reset_843,
      Q => USER_LOGIC_I_my_counter(0)
    );
  USER_LOGIC_I_mi_divisor_cuenta_26 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => SPLB_Clk_BUFGP_365,
      CLR => USER_LOGIC_I_Bus2IP_Reset_inv,
      D => USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_26,
      Q => USER_LOGIC_I_mi_divisor_cuenta(26)
    );
  USER_LOGIC_I_mi_divisor_cuenta_25 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => SPLB_Clk_BUFGP_365,
      CLR => USER_LOGIC_I_Bus2IP_Reset_inv,
      D => USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_25,
      Q => USER_LOGIC_I_mi_divisor_cuenta(25)
    );
  USER_LOGIC_I_mi_divisor_cuenta_24 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => SPLB_Clk_BUFGP_365,
      CLR => USER_LOGIC_I_Bus2IP_Reset_inv,
      D => USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_24,
      Q => USER_LOGIC_I_mi_divisor_cuenta(24)
    );
  USER_LOGIC_I_mi_divisor_cuenta_23 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => SPLB_Clk_BUFGP_365,
      CLR => USER_LOGIC_I_Bus2IP_Reset_inv,
      D => USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_23,
      Q => USER_LOGIC_I_mi_divisor_cuenta(23)
    );
  USER_LOGIC_I_mi_divisor_cuenta_22 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => SPLB_Clk_BUFGP_365,
      CLR => USER_LOGIC_I_Bus2IP_Reset_inv,
      D => USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_22,
      Q => USER_LOGIC_I_mi_divisor_cuenta(22)
    );
  USER_LOGIC_I_mi_divisor_cuenta_21 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => SPLB_Clk_BUFGP_365,
      CLR => USER_LOGIC_I_Bus2IP_Reset_inv,
      D => USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_21,
      Q => USER_LOGIC_I_mi_divisor_cuenta(21)
    );
  USER_LOGIC_I_mi_divisor_cuenta_20 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => SPLB_Clk_BUFGP_365,
      CLR => USER_LOGIC_I_Bus2IP_Reset_inv,
      D => USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_20,
      Q => USER_LOGIC_I_mi_divisor_cuenta(20)
    );
  USER_LOGIC_I_mi_divisor_cuenta_19 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => SPLB_Clk_BUFGP_365,
      CLR => USER_LOGIC_I_Bus2IP_Reset_inv,
      D => USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_19,
      Q => USER_LOGIC_I_mi_divisor_cuenta(19)
    );
  USER_LOGIC_I_mi_divisor_cuenta_18 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => SPLB_Clk_BUFGP_365,
      CLR => USER_LOGIC_I_Bus2IP_Reset_inv,
      D => USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_18,
      Q => USER_LOGIC_I_mi_divisor_cuenta(18)
    );
  USER_LOGIC_I_mi_divisor_cuenta_17 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => SPLB_Clk_BUFGP_365,
      CLR => USER_LOGIC_I_Bus2IP_Reset_inv,
      D => USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_17,
      Q => USER_LOGIC_I_mi_divisor_cuenta(17)
    );
  USER_LOGIC_I_mi_divisor_cuenta_16 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => SPLB_Clk_BUFGP_365,
      CLR => USER_LOGIC_I_Bus2IP_Reset_inv,
      D => USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_16,
      Q => USER_LOGIC_I_mi_divisor_cuenta(16)
    );
  USER_LOGIC_I_mi_divisor_cuenta_15 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => SPLB_Clk_BUFGP_365,
      CLR => USER_LOGIC_I_Bus2IP_Reset_inv,
      D => USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_15,
      Q => USER_LOGIC_I_mi_divisor_cuenta(15)
    );
  USER_LOGIC_I_mi_divisor_cuenta_14 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => SPLB_Clk_BUFGP_365,
      CLR => USER_LOGIC_I_Bus2IP_Reset_inv,
      D => USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_14,
      Q => USER_LOGIC_I_mi_divisor_cuenta(14)
    );
  USER_LOGIC_I_mi_divisor_cuenta_13 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => SPLB_Clk_BUFGP_365,
      CLR => USER_LOGIC_I_Bus2IP_Reset_inv,
      D => USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_13,
      Q => USER_LOGIC_I_mi_divisor_cuenta(13)
    );
  USER_LOGIC_I_mi_divisor_cuenta_12 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => SPLB_Clk_BUFGP_365,
      CLR => USER_LOGIC_I_Bus2IP_Reset_inv,
      D => USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_12,
      Q => USER_LOGIC_I_mi_divisor_cuenta(12)
    );
  USER_LOGIC_I_mi_divisor_cuenta_11 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => SPLB_Clk_BUFGP_365,
      CLR => USER_LOGIC_I_Bus2IP_Reset_inv,
      D => USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_11,
      Q => USER_LOGIC_I_mi_divisor_cuenta(11)
    );
  USER_LOGIC_I_mi_divisor_cuenta_10 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => SPLB_Clk_BUFGP_365,
      CLR => USER_LOGIC_I_Bus2IP_Reset_inv,
      D => USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_10,
      Q => USER_LOGIC_I_mi_divisor_cuenta(10)
    );
  USER_LOGIC_I_mi_divisor_cuenta_9 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => SPLB_Clk_BUFGP_365,
      CLR => USER_LOGIC_I_Bus2IP_Reset_inv,
      D => USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_9,
      Q => USER_LOGIC_I_mi_divisor_cuenta(9)
    );
  USER_LOGIC_I_mi_divisor_cuenta_8 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => SPLB_Clk_BUFGP_365,
      CLR => USER_LOGIC_I_Bus2IP_Reset_inv,
      D => USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_8,
      Q => USER_LOGIC_I_mi_divisor_cuenta(8)
    );
  USER_LOGIC_I_mi_divisor_cuenta_7 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => SPLB_Clk_BUFGP_365,
      CLR => USER_LOGIC_I_Bus2IP_Reset_inv,
      D => USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_7,
      Q => USER_LOGIC_I_mi_divisor_cuenta(7)
    );
  USER_LOGIC_I_mi_divisor_cuenta_6 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => SPLB_Clk_BUFGP_365,
      CLR => USER_LOGIC_I_Bus2IP_Reset_inv,
      D => USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_6,
      Q => USER_LOGIC_I_mi_divisor_cuenta(6)
    );
  USER_LOGIC_I_mi_divisor_cuenta_5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => SPLB_Clk_BUFGP_365,
      CLR => USER_LOGIC_I_Bus2IP_Reset_inv,
      D => USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_5,
      Q => USER_LOGIC_I_mi_divisor_cuenta(5)
    );
  USER_LOGIC_I_mi_divisor_cuenta_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => SPLB_Clk_BUFGP_365,
      CLR => USER_LOGIC_I_Bus2IP_Reset_inv,
      D => USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_4,
      Q => USER_LOGIC_I_mi_divisor_cuenta(4)
    );
  USER_LOGIC_I_mi_divisor_cuenta_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => SPLB_Clk_BUFGP_365,
      CLR => USER_LOGIC_I_Bus2IP_Reset_inv,
      D => USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_3,
      Q => USER_LOGIC_I_mi_divisor_cuenta(3)
    );
  USER_LOGIC_I_mi_divisor_cuenta_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => SPLB_Clk_BUFGP_365,
      CLR => USER_LOGIC_I_Bus2IP_Reset_inv,
      D => USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_2,
      Q => USER_LOGIC_I_mi_divisor_cuenta(2)
    );
  USER_LOGIC_I_mi_divisor_cuenta_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => SPLB_Clk_BUFGP_365,
      CLR => USER_LOGIC_I_Bus2IP_Reset_inv,
      D => USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_1,
      Q => USER_LOGIC_I_mi_divisor_cuenta(1)
    );
  USER_LOGIC_I_mi_divisor_cuenta_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => SPLB_Clk_BUFGP_365,
      CLR => USER_LOGIC_I_Bus2IP_Reset_inv,
      D => USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_0,
      Q => USER_LOGIC_I_mi_divisor_cuenta(0)
    );
  USER_LOGIC_I_mi_divisor_clk_aux : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_mi_divisor_clk_aux_and0000,
      D => USER_LOGIC_I_mi_divisor_clk_aux_not0001,
      Q => USER_LOGIC_I_mi_divisor_clk_aux_790
    );
  USER_LOGIC_I_slv_reg3_0 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg3_cmp_eq0000,
      D => USER_LOGIC_I_slv_reg3_mux0000(31),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg3(0)
    );
  USER_LOGIC_I_slv_reg3_1 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg3_cmp_eq0000,
      D => USER_LOGIC_I_slv_reg3_mux0000(30),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg3(1)
    );
  USER_LOGIC_I_slv_reg3_2 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg3_cmp_eq0000,
      D => USER_LOGIC_I_slv_reg3_mux0000(29),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg3(2)
    );
  USER_LOGIC_I_slv_reg3_3 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg3_cmp_eq0000,
      D => USER_LOGIC_I_slv_reg3_mux0000(28),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg3(3)
    );
  USER_LOGIC_I_slv_reg3_4 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg3_cmp_eq0000,
      D => USER_LOGIC_I_slv_reg3_mux0000(27),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg3(4)
    );
  USER_LOGIC_I_slv_reg3_5 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg3_cmp_eq0000,
      D => USER_LOGIC_I_slv_reg3_mux0000(26),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg3(5)
    );
  USER_LOGIC_I_slv_reg3_6 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg3_cmp_eq0000,
      D => USER_LOGIC_I_slv_reg3_mux0000(25),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg3(6)
    );
  USER_LOGIC_I_slv_reg3_7 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg3_cmp_eq0000,
      D => USER_LOGIC_I_slv_reg3_mux0000(24),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg3(7)
    );
  USER_LOGIC_I_slv_reg3_8 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg3_cmp_eq0000,
      D => USER_LOGIC_I_slv_reg3_mux0000(23),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg3(8)
    );
  USER_LOGIC_I_slv_reg3_9 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg3_cmp_eq0000,
      D => USER_LOGIC_I_slv_reg3_mux0000(22),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg3(9)
    );
  USER_LOGIC_I_slv_reg3_10 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg3_cmp_eq0000,
      D => USER_LOGIC_I_slv_reg3_mux0000(21),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg3(10)
    );
  USER_LOGIC_I_slv_reg3_11 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg3_cmp_eq0000,
      D => USER_LOGIC_I_slv_reg3_mux0000(20),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg3(11)
    );
  USER_LOGIC_I_slv_reg3_12 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg3_cmp_eq0000,
      D => USER_LOGIC_I_slv_reg3_mux0000(19),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg3(12)
    );
  USER_LOGIC_I_slv_reg3_13 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg3_cmp_eq0000,
      D => USER_LOGIC_I_slv_reg3_mux0000(18),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg3(13)
    );
  USER_LOGIC_I_slv_reg3_14 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg3_cmp_eq0000,
      D => USER_LOGIC_I_slv_reg3_mux0000(17),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg3(14)
    );
  USER_LOGIC_I_slv_reg3_15 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg3_cmp_eq0000,
      D => USER_LOGIC_I_slv_reg3_mux0000(16),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg3(15)
    );
  USER_LOGIC_I_slv_reg3_16 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg3_cmp_eq0000,
      D => USER_LOGIC_I_slv_reg3_mux0000(15),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg3(16)
    );
  USER_LOGIC_I_slv_reg3_17 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg3_cmp_eq0000,
      D => USER_LOGIC_I_slv_reg3_mux0000(14),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg3(17)
    );
  USER_LOGIC_I_slv_reg3_18 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg3_cmp_eq0000,
      D => USER_LOGIC_I_slv_reg3_mux0000(13),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg3(18)
    );
  USER_LOGIC_I_slv_reg3_19 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg3_cmp_eq0000,
      D => USER_LOGIC_I_slv_reg3_mux0000(12),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg3(19)
    );
  USER_LOGIC_I_slv_reg3_20 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg3_cmp_eq0000,
      D => USER_LOGIC_I_slv_reg3_mux0000(11),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg3(20)
    );
  USER_LOGIC_I_slv_reg3_21 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg3_cmp_eq0000,
      D => USER_LOGIC_I_slv_reg3_mux0000(10),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg3(21)
    );
  USER_LOGIC_I_slv_reg3_22 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg3_cmp_eq0000,
      D => USER_LOGIC_I_slv_reg3_mux0000(9),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg3(22)
    );
  USER_LOGIC_I_slv_reg3_23 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg3_cmp_eq0000,
      D => USER_LOGIC_I_slv_reg3_mux0000(8),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg3(23)
    );
  USER_LOGIC_I_slv_reg3_24 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg3_cmp_eq0000,
      D => USER_LOGIC_I_slv_reg3_mux0000(7),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg3(24)
    );
  USER_LOGIC_I_slv_reg3_25 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg3_cmp_eq0000,
      D => USER_LOGIC_I_slv_reg3_mux0000(6),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg3(25)
    );
  USER_LOGIC_I_slv_reg3_26 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg3_cmp_eq0000,
      D => USER_LOGIC_I_slv_reg3_mux0000(5),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg3(26)
    );
  USER_LOGIC_I_slv_reg3_27 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg3_cmp_eq0000,
      D => USER_LOGIC_I_slv_reg3_mux0000(4),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg3(27)
    );
  USER_LOGIC_I_slv_reg3_28 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg3_cmp_eq0000,
      D => USER_LOGIC_I_slv_reg3_mux0000(3),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg3(28)
    );
  USER_LOGIC_I_slv_reg3_29 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg3_cmp_eq0000,
      D => USER_LOGIC_I_slv_reg3_mux0000(2),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg3(29)
    );
  USER_LOGIC_I_slv_reg3_30 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg3_cmp_eq0000,
      D => USER_LOGIC_I_slv_reg3_mux0000(1),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg3(30)
    );
  USER_LOGIC_I_slv_reg3_31 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg3_cmp_eq0000,
      D => USER_LOGIC_I_slv_reg3_mux0000(0),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg3(31)
    );
  USER_LOGIC_I_slv_reg2_13 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg2_14_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(13),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg2(13)
    );
  USER_LOGIC_I_slv_reg0_8 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg0_9_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(8),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg0(8)
    );
  USER_LOGIC_I_slv_reg2_12 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg2_14_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(12),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg2(12)
    );
  USER_LOGIC_I_slv_reg1_27 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg1_28_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(27),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg1(27)
    );
  USER_LOGIC_I_slv_reg1_31 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg1_28_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(31),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg1(31)
    );
  USER_LOGIC_I_my_counter_reset : FDE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_Bus2IP_Reset_inv,
      D => USER_LOGIC_I_slv_reg3_cmp_eq0000,
      Q => USER_LOGIC_I_my_counter_reset_843
    );
  USER_LOGIC_I_slv_reg1_26 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg1_28_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(26),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg1(26)
    );
  USER_LOGIC_I_slv_reg2_11 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg2_14_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(11),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg2(11)
    );
  USER_LOGIC_I_slv_reg1_25 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg1_28_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(25),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg1(25)
    );
  USER_LOGIC_I_slv_reg0_7 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg0_0_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(7),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg0(7)
    );
  USER_LOGIC_I_slv_reg0_6 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg0_0_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(6),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg0(6)
    );
  USER_LOGIC_I_slv_reg2_10 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg2_14_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(10),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg2(10)
    );
  USER_LOGIC_I_slv_reg1_30 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg1_28_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(30),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg1(30)
    );
  USER_LOGIC_I_slv_reg1_24 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg1_28_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(24),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg1(24)
    );
  USER_LOGIC_I_slv_reg0_5 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg0_0_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(5),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg0(5)
    );
  USER_LOGIC_I_slv_reg1_19 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg1_20_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(19),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg1(19)
    );
  USER_LOGIC_I_slv_reg1_23 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg1_20_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(23),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg1(23)
    );
  USER_LOGIC_I_slv_reg0_4 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg0_0_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(4),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg0(4)
    );
  USER_LOGIC_I_slv_reg1_18 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg1_20_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(18),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg1(18)
    );
  USER_LOGIC_I_slv_reg1_17 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg1_20_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(17),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg1(17)
    );
  USER_LOGIC_I_slv_reg1_22 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg1_20_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(22),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg1(22)
    );
  USER_LOGIC_I_slv_reg0_3 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg0_0_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(3),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg0(3)
    );
  USER_LOGIC_I_slv_reg1_16 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg1_20_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(16),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg1(16)
    );
  USER_LOGIC_I_slv_reg0_2 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg0_0_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(2),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg0(2)
    );
  USER_LOGIC_I_slv_reg1_15 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg1_8_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(15),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg1(15)
    );
  USER_LOGIC_I_slv_reg1_21 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg1_20_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(21),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg1(21)
    );
  USER_LOGIC_I_slv_reg0_1 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg0_0_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(1),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg0(1)
    );
  USER_LOGIC_I_slv_reg0_29 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg0_24_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(29),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg0(29)
    );
  USER_LOGIC_I_slv_reg1_20 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg1_20_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(20),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg1(20)
    );
  USER_LOGIC_I_slv_reg1_14 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg1_8_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(14),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg1(14)
    );
  USER_LOGIC_I_slv_reg0_0 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg0_0_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(0),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg0(0)
    );
  USER_LOGIC_I_slv_reg0_28 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg0_24_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(28),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg0(28)
    );
  USER_LOGIC_I_slv_reg1_13 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg1_8_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(13),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg1(13)
    );
  USER_LOGIC_I_slv_reg0_27 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg0_24_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(27),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg0(27)
    );
  USER_LOGIC_I_slv_reg1_12 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg1_8_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(12),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg1(12)
    );
  USER_LOGIC_I_slv_reg0_26 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg0_24_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(26),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg0(26)
    );
  USER_LOGIC_I_slv_reg1_11 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg1_8_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(11),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg1(11)
    );
  USER_LOGIC_I_slv_reg0_31 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg0_24_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(31),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg0(31)
    );
  USER_LOGIC_I_slv_reg0_25 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg0_24_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(25),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg0(25)
    );
  USER_LOGIC_I_slv_reg0_30 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg0_24_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(30),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg0(30)
    );
  USER_LOGIC_I_slv_reg0_24 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg0_24_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(24),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg0(24)
    );
  USER_LOGIC_I_slv_reg0_19 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg0_20_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(19),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg0(19)
    );
  USER_LOGIC_I_slv_reg1_10 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg1_8_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(10),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg1(10)
    );
  USER_LOGIC_I_slv_reg1_9 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg1_8_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(9),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg1(9)
    );
  USER_LOGIC_I_slv_reg0_23 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg0_20_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(23),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg0(23)
    );
  USER_LOGIC_I_slv_reg0_18 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg0_20_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(18),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg0(18)
    );
  USER_LOGIC_I_slv_reg1_8 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg1_8_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(8),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg1(8)
    );
  USER_LOGIC_I_slv_reg0_17 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg0_20_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(17),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg0(17)
    );
  USER_LOGIC_I_slv_reg1_7 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg1_0_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(7),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg1(7)
    );
  USER_LOGIC_I_slv_reg0_22 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg0_20_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(22),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg0(22)
    );
  USER_LOGIC_I_slv_reg0_16 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg0_20_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(16),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg0(16)
    );
  USER_LOGIC_I_slv_reg1_6 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg1_0_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(6),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg1(6)
    );
  USER_LOGIC_I_slv_reg0_21 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg0_20_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(21),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg0(21)
    );
  USER_LOGIC_I_slv_reg0_15 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg0_9_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(15),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg0(15)
    );
  USER_LOGIC_I_slv_reg1_5 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg1_0_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(5),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg1(5)
    );
  USER_LOGIC_I_slv_reg0_20 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg0_20_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(20),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg0(20)
    );
  USER_LOGIC_I_slv_reg0_14 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg0_9_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(14),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg0(14)
    );
  USER_LOGIC_I_slv_reg1_4 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg1_0_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(4),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg1(4)
    );
  USER_LOGIC_I_slv_reg0_13 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg0_9_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(13),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg0(13)
    );
  USER_LOGIC_I_slv_reg0_12 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg0_9_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(12),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg0(12)
    );
  USER_LOGIC_I_slv_reg1_2 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg1_0_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(2),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg1(2)
    );
  USER_LOGIC_I_slv_reg1_3 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg1_0_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(3),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg1(3)
    );
  USER_LOGIC_I_slv_reg1_1 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg1_0_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(1),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg1(1)
    );
  USER_LOGIC_I_slv_reg0_10 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg0_9_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(10),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg0(10)
    );
  USER_LOGIC_I_slv_reg0_11 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg0_9_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(11),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg0(11)
    );
  USER_LOGIC_I_slv_reg2_9 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg2_14_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(9),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg2(9)
    );
  USER_LOGIC_I_slv_reg2_8 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg2_14_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(8),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg2(8)
    );
  USER_LOGIC_I_slv_reg1_0 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg1_0_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(0),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg1(0)
    );
  USER_LOGIC_I_slv_reg2_29 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg2_24_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(29),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg2(29)
    );
  USER_LOGIC_I_slv_reg2_7 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg2_0_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(7),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg2(7)
    );
  USER_LOGIC_I_slv_reg2_28 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg2_24_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(28),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg2(28)
    );
  USER_LOGIC_I_slv_reg2_6 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg2_0_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(6),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg2(6)
    );
  USER_LOGIC_I_slv_reg2_5 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg2_0_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(5),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg2(5)
    );
  USER_LOGIC_I_slv_reg2_31 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg2_24_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(31),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg2(31)
    );
  USER_LOGIC_I_slv_reg2_27 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg2_24_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(27),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg2(27)
    );
  USER_LOGIC_I_slv_reg2_4 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg2_0_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(4),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg2(4)
    );
  USER_LOGIC_I_slv_reg2_30 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg2_24_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(30),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg2(30)
    );
  USER_LOGIC_I_slv_reg2_26 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg2_24_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(26),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg2(26)
    );
  USER_LOGIC_I_slv_reg2_3 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg2_0_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(3),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg2(3)
    );
  USER_LOGIC_I_slv_reg2_24 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg2_24_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(24),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg2(24)
    );
  USER_LOGIC_I_slv_reg2_25 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg2_24_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(25),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg2(25)
    );
  USER_LOGIC_I_slv_reg2_19 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg2_20_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(19),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg2(19)
    );
  USER_LOGIC_I_slv_reg2_2 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg2_0_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(2),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg2(2)
    );
  USER_LOGIC_I_slv_reg2_18 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg2_20_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(18),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg2(18)
    );
  USER_LOGIC_I_slv_reg2_23 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg2_20_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(23),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg2(23)
    );
  USER_LOGIC_I_slv_reg2_22 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg2_20_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(22),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg2(22)
    );
  USER_LOGIC_I_slv_reg2_17 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg2_20_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(17),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg2(17)
    );
  USER_LOGIC_I_slv_reg2_1 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg2_0_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(1),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg2(1)
    );
  USER_LOGIC_I_slv_reg2_21 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg2_20_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(21),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg2(21)
    );
  USER_LOGIC_I_slv_reg2_16 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg2_20_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(16),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg2(16)
    );
  USER_LOGIC_I_slv_reg2_0 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg2_0_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(0),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg2(0)
    );
  USER_LOGIC_I_slv_reg2_15 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg2_14_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(15),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg2(15)
    );
  USER_LOGIC_I_slv_reg1_29 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg1_28_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(29),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg1(29)
    );
  USER_LOGIC_I_slv_reg2_20 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg2_20_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(20),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg2(20)
    );
  USER_LOGIC_I_slv_reg2_14 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg2_14_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(14),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg2(14)
    );
  USER_LOGIC_I_slv_reg1_28 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg1_28_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(28),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg1(28)
    );
  USER_LOGIC_I_slv_reg0_9 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => USER_LOGIC_I_slv_reg0_9_not0001,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(9),
      R => SPLB_Rst_IBUF_367,
      Q => USER_LOGIC_I_slv_reg0(9)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rnw_s_h : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_decode_s_h_cs,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_rnw_reg_130,
      R => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rnw_s_h_or0000,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rnw_s_h_101
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_addr_out_s_h_1 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_decode_s_h_cs,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_abus_reg(29),
      R => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rnw_s_h_or0000,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_addr_out_s_h(1)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_addr_out_s_h_0 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_decode_s_h_cs,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_abus_reg(28),
      R => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rnw_s_h_or0000,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_addr_out_s_h(0)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_wrce_out_i_2 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_set_sl_busy_171,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_ce_expnd_i(2),
      R => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_wrce_clr,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_wrce_out_i(2)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_wrce_out_i_1 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_set_sl_busy_171,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_ce_expnd_i(1),
      R => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_wrce_clr,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_wrce_out_i(1)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_wrce_out_i_3 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_set_sl_busy_171,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_ce_expnd_i(3),
      R => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_wrce_clr,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_wrce_out_i(3)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i_1 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_set_sl_busy_171,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_ce_expnd_i(1),
      R => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_clr,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(1)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i_0 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_set_sl_busy_171,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_ce_expnd_i(0),
      R => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_clr,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(0)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i_2 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_set_sl_busy_171,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_ce_expnd_i(2),
      R => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_clr,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(2)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i_3 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_set_sl_busy_171,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_ce_expnd_i(3),
      R => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_clr,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(3)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_decode_hit_reg : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_pavalid_reg_129,
      R => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_decode_hit_reg_or0000,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_decode_hit_reg_90
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_wrce_out_i_0 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_set_sl_busy_171,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_ce_expnd_i(0),
      R => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_wrce_clr,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_wrce_out_i(0)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_master_id_2 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_decode_s_h_cs,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_masterid_reg(0),
      R => SPLB_Rst_IBUF_367,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_master_id(2)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_master_id_1 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_decode_s_h_cs,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_masterid_reg(1),
      R => SPLB_Rst_IBUF_367,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_master_id(1)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_master_id_0 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_decode_s_h_cs,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_masterid_reg(2),
      R => SPLB_Rst_IBUF_367,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_master_id(0)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_busy : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_set_sl_busy_171,
      D => N1,
      R => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rnw_s_h_or0000,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_busy_173
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_bus2ip_be_i_0 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_set_sl_busy_171,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_be_reg(0),
      R => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_bus2ip_rnw_i_or0000,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_bus2ip_be_i(0)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_bus2ip_be_i_1 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_set_sl_busy_171,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_be_reg(1),
      R => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_bus2ip_rnw_i_or0000,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_bus2ip_be_i(1)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_bus2ip_be_i_2 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_set_sl_busy_171,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_be_reg(2),
      R => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_bus2ip_rnw_i_or0000,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_bus2ip_be_i(2)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_bus2ip_be_i_3 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_set_sl_busy_171,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_be_reg(3),
      R => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_bus2ip_rnw_i_or0000,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_bus2ip_be_i(3)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_wrcomp_i : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => user_IP2Bus_WrAck,
      R => SPLB_Rst_IBUF_367,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_wrcomp_i_227
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_set_sl_busy : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_set_sl_busy_mux0000_norst,
      R => SPLB_Rst_IBUF_367,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_set_sl_busy_171
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_mbusy_i_7 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_mbusy_i_7_and0000,
      D => N1,
      R => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rnw_s_h_or0000,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_mbusy_i(7)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_mbusy_i_6 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_mbusy_i_6_and0000,
      D => N1,
      R => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rnw_s_h_or0000,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_mbusy_i(6)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_rd_clear_sl_busy : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => user_IP2Bus_RdAck,
      R => SPLB_Rst_IBUF_367,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_rd_clear_sl_busy_170
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_mbusy_i_5 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_mbusy_i_5_and0000,
      D => N1,
      R => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rnw_s_h_or0000,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_mbusy_i(5)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_be_reg_0 : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => PLBV46_SLAVE_SINGLE_I_plb_be_muxed(0),
      R => SPLB_Rst_IBUF_367,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_be_reg(0)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_be_reg_1 : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => PLBV46_SLAVE_SINGLE_I_plb_be_muxed(1),
      R => SPLB_Rst_IBUF_367,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_be_reg(1)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_be_reg_2 : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => PLBV46_SLAVE_SINGLE_I_plb_be_muxed(2),
      R => SPLB_Rst_IBUF_367,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_be_reg(2)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_be_reg_3 : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => PLBV46_SLAVE_SINGLE_I_plb_be_muxed(3),
      R => SPLB_Rst_IBUF_367,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_be_reg(3)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_mbusy_i_4 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_mbusy_i_4_and0000,
      D => N1,
      R => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rnw_s_h_or0000,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_mbusy_i(4)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_mbusy_i_3 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_mbusy_i_3_and0000,
      D => N1,
      R => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rnw_s_h_or0000,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_mbusy_i(3)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_rnw_reg : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => PLB_RNW_IBUF_279,
      R => SPLB_Rst_IBUF_367,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_rnw_reg_130
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_mbusy_i_1 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_mbusy_i_1_and0000,
      D => N1,
      R => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rnw_s_h_or0000,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_mbusy_i(1)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_mbusy_i_2 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_mbusy_i_2_and0000,
      D => N1,
      R => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rnw_s_h_or0000,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_mbusy_i(2)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_mbusy_i_0 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_mbusy_i_0_and0000,
      D => N1,
      R => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rnw_s_h_or0000,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_mbusy_i(0)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_masterid_reg_0 : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => PLB_masterID_0_IBUF_283,
      R => SPLB_Rst_IBUF_367,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_masterid_reg(0)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_masterid_reg_1 : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => PLB_masterID_1_IBUF_284,
      R => SPLB_Rst_IBUF_367,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_masterid_reg(1)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_masterid_reg_2 : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => PLB_masterID_2_IBUF_285,
      R => SPLB_Rst_IBUF_367,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_masterid_reg(2)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_abus_reg_28 : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => PLB_ABus_28_IBUF_242,
      R => SPLB_Rst_IBUF_367,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_abus_reg(28)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_abus_reg_29 : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => PLB_ABus_29_IBUF_243,
      R => SPLB_Rst_IBUF_367,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_abus_reg(29)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rearbitrate_i : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rearbitrate_ns,
      R => SPLB_Rst_IBUF_367,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rearbitrate_i_223
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_type_reg_0 : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => PLB_type_0_IBUF_297,
      R => SPLB_Rst_IBUF_367,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_type_reg(0)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_type_reg_1 : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => PLB_type_1_IBUF_298,
      R => SPLB_Rst_IBUF_367,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_type_reg(1)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_type_reg_2 : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => PLB_type_2_IBUF_299,
      R => SPLB_Rst_IBUF_367,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_type_reg(2)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_size_reg_0 : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => PLB_size_0_IBUF_290,
      R => SPLB_Rst_IBUF_367,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_size_reg(0)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_size_reg_1 : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => PLB_size_1_IBUF_291,
      R => SPLB_Rst_IBUF_367,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_size_reg(1)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_size_reg_2 : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => PLB_size_2_IBUF_292,
      R => SPLB_Rst_IBUF_367,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_size_reg(2)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_size_reg_3 : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => PLB_size_3_IBUF_293,
      R => SPLB_Rst_IBUF_367,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_size_reg(3)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i_0 : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => user_IP2Bus_Data(0),
      R => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i_or0000,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(0)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i_1 : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => user_IP2Bus_Data(1),
      R => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i_or0000,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(1)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i_2 : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => user_IP2Bus_Data(2),
      R => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i_or0000,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(2)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i_3 : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => user_IP2Bus_Data(3),
      R => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i_or0000,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(3)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i_4 : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => user_IP2Bus_Data(4),
      R => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i_or0000,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(4)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i_5 : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => user_IP2Bus_Data(5),
      R => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i_or0000,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(5)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i_6 : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => user_IP2Bus_Data(6),
      R => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i_or0000,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(6)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i_7 : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => user_IP2Bus_Data(7),
      R => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i_or0000,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(7)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i_8 : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => user_IP2Bus_Data(8),
      R => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i_or0000,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(8)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i_9 : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => user_IP2Bus_Data(9),
      R => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i_or0000,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(9)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i_10 : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => user_IP2Bus_Data(10),
      R => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i_or0000,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(10)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i_11 : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => user_IP2Bus_Data(11),
      R => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i_or0000,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(11)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i_12 : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => user_IP2Bus_Data(12),
      R => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i_or0000,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(12)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i_13 : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => user_IP2Bus_Data(13),
      R => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i_or0000,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(13)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i_14 : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => user_IP2Bus_Data(14),
      R => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i_or0000,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(14)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i_15 : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => user_IP2Bus_Data(15),
      R => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i_or0000,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(15)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i_16 : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => user_IP2Bus_Data(16),
      R => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i_or0000,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(16)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i_17 : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => user_IP2Bus_Data(17),
      R => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i_or0000,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(17)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i_18 : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => user_IP2Bus_Data(18),
      R => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i_or0000,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(18)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i_19 : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => user_IP2Bus_Data(19),
      R => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i_or0000,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(19)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i_20 : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => user_IP2Bus_Data(20),
      R => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i_or0000,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(20)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i_21 : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => user_IP2Bus_Data(21),
      R => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i_or0000,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(21)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i_22 : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => user_IP2Bus_Data(22),
      R => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i_or0000,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(22)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i_23 : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => user_IP2Bus_Data(23),
      R => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i_or0000,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(23)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i_24 : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => user_IP2Bus_Data(24),
      R => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i_or0000,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(24)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i_25 : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => user_IP2Bus_Data(25),
      R => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i_or0000,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(25)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i_26 : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => user_IP2Bus_Data(26),
      R => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i_or0000,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(26)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i_27 : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => user_IP2Bus_Data(27),
      R => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i_or0000,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(27)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i_28 : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => user_IP2Bus_Data(28),
      R => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i_or0000,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(28)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i_29 : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => user_IP2Bus_Data(29),
      R => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i_or0000,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(29)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i_30 : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => user_IP2Bus_Data(30),
      R => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i_or0000,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(30)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i_31 : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => user_IP2Bus_Data(31),
      R => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i_or0000,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(31)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_addr_cntl_cs_0 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_addr_cntl_ns,
      R => SPLB_Rst_IBUF_367,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_addr_cntl_cs(0)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_pavalid_reg : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => PLB_PAValid_IBUF_277,
      R => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_decode_hit_reg_or0000,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_pavalid_reg_129
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg_0 : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => PLB_wrDBus_0_IBUF_332,
      R => SPLB_Rst_IBUF_367,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(0)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg_1 : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => PLB_wrDBus_1_IBUF_343,
      R => SPLB_Rst_IBUF_367,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(1)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg_2 : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => PLB_wrDBus_2_IBUF_354,
      R => SPLB_Rst_IBUF_367,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(2)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg_3 : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => PLB_wrDBus_3_IBUF_357,
      R => SPLB_Rst_IBUF_367,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(3)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg_4 : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => PLB_wrDBus_4_IBUF_358,
      R => SPLB_Rst_IBUF_367,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(4)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg_5 : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => PLB_wrDBus_5_IBUF_359,
      R => SPLB_Rst_IBUF_367,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(5)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg_6 : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => PLB_wrDBus_6_IBUF_360,
      R => SPLB_Rst_IBUF_367,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(6)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg_7 : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => PLB_wrDBus_7_IBUF_361,
      R => SPLB_Rst_IBUF_367,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(7)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg_8 : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => PLB_wrDBus_8_IBUF_362,
      R => SPLB_Rst_IBUF_367,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(8)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg_9 : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => PLB_wrDBus_9_IBUF_363,
      R => SPLB_Rst_IBUF_367,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(9)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg_10 : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => PLB_wrDBus_10_IBUF_333,
      R => SPLB_Rst_IBUF_367,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(10)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg_11 : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => PLB_wrDBus_11_IBUF_334,
      R => SPLB_Rst_IBUF_367,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(11)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg_12 : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => PLB_wrDBus_12_IBUF_335,
      R => SPLB_Rst_IBUF_367,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(12)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg_13 : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => PLB_wrDBus_13_IBUF_336,
      R => SPLB_Rst_IBUF_367,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(13)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg_14 : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => PLB_wrDBus_14_IBUF_337,
      R => SPLB_Rst_IBUF_367,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(14)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg_15 : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => PLB_wrDBus_15_IBUF_338,
      R => SPLB_Rst_IBUF_367,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(15)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg_16 : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => PLB_wrDBus_16_IBUF_339,
      R => SPLB_Rst_IBUF_367,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(16)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg_17 : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => PLB_wrDBus_17_IBUF_340,
      R => SPLB_Rst_IBUF_367,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(17)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg_18 : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => PLB_wrDBus_18_IBUF_341,
      R => SPLB_Rst_IBUF_367,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(18)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg_19 : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => PLB_wrDBus_19_IBUF_342,
      R => SPLB_Rst_IBUF_367,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(19)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg_20 : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => PLB_wrDBus_20_IBUF_344,
      R => SPLB_Rst_IBUF_367,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(20)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg_21 : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => PLB_wrDBus_21_IBUF_345,
      R => SPLB_Rst_IBUF_367,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(21)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg_22 : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => PLB_wrDBus_22_IBUF_346,
      R => SPLB_Rst_IBUF_367,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(22)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg_23 : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => PLB_wrDBus_23_IBUF_347,
      R => SPLB_Rst_IBUF_367,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(23)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg_24 : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => PLB_wrDBus_24_IBUF_348,
      R => SPLB_Rst_IBUF_367,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(24)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg_25 : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => PLB_wrDBus_25_IBUF_349,
      R => SPLB_Rst_IBUF_367,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(25)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg_26 : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => PLB_wrDBus_26_IBUF_350,
      R => SPLB_Rst_IBUF_367,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(26)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg_27 : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => PLB_wrDBus_27_IBUF_351,
      R => SPLB_Rst_IBUF_367,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(27)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg_28 : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => PLB_wrDBus_28_IBUF_352,
      R => SPLB_Rst_IBUF_367,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(28)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg_29 : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => PLB_wrDBus_29_IBUF_353,
      R => SPLB_Rst_IBUF_367,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(29)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg_30 : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => PLB_wrDBus_30_IBUF_355,
      R => SPLB_Rst_IBUF_367,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(30)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg_31 : FDR
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => PLB_wrDBus_31_IBUF_356,
      R => SPLB_Rst_IBUF_367,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_wrdbus_reg(31)
    );
  USER_LOGIC_I_mi_divisor_cuenta_cmp_eq0000_wg_lut_0_Q : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => USER_LOGIC_I_mi_divisor_cuenta(7),
      I1 => USER_LOGIC_I_mi_divisor_cuenta(5),
      I2 => USER_LOGIC_I_mi_divisor_cuenta(8),
      O => USER_LOGIC_I_mi_divisor_cuenta_cmp_eq0000_wg_lut(0)
    );
  USER_LOGIC_I_mi_divisor_cuenta_cmp_eq0000_wg_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => Sl_MWrErr_0_OBUF_400,
      S => USER_LOGIC_I_mi_divisor_cuenta_cmp_eq0000_wg_lut(0),
      O => USER_LOGIC_I_mi_divisor_cuenta_cmp_eq0000_wg_cy(0)
    );
  USER_LOGIC_I_mi_divisor_cuenta_cmp_eq0000_wg_lut_1_Q : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => USER_LOGIC_I_mi_divisor_cuenta(9),
      I1 => USER_LOGIC_I_mi_divisor_cuenta(10),
      I2 => USER_LOGIC_I_mi_divisor_cuenta(4),
      I3 => USER_LOGIC_I_mi_divisor_cuenta(13),
      O => USER_LOGIC_I_mi_divisor_cuenta_cmp_eq0000_wg_lut(1)
    );
  USER_LOGIC_I_mi_divisor_cuenta_cmp_eq0000_wg_cy_1_Q : MUXCY
    port map (
      CI => USER_LOGIC_I_mi_divisor_cuenta_cmp_eq0000_wg_cy(0),
      DI => Sl_MWrErr_0_OBUF_400,
      S => USER_LOGIC_I_mi_divisor_cuenta_cmp_eq0000_wg_lut(1),
      O => USER_LOGIC_I_mi_divisor_cuenta_cmp_eq0000_wg_cy(1)
    );
  USER_LOGIC_I_mi_divisor_cuenta_cmp_eq0000_wg_lut_2_Q : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => USER_LOGIC_I_mi_divisor_cuenta(11),
      I1 => USER_LOGIC_I_mi_divisor_cuenta(12),
      I2 => USER_LOGIC_I_mi_divisor_cuenta(6),
      I3 => USER_LOGIC_I_mi_divisor_cuenta(14),
      O => USER_LOGIC_I_mi_divisor_cuenta_cmp_eq0000_wg_lut(2)
    );
  USER_LOGIC_I_mi_divisor_cuenta_cmp_eq0000_wg_cy_2_Q : MUXCY
    port map (
      CI => USER_LOGIC_I_mi_divisor_cuenta_cmp_eq0000_wg_cy(1),
      DI => Sl_MWrErr_0_OBUF_400,
      S => USER_LOGIC_I_mi_divisor_cuenta_cmp_eq0000_wg_lut(2),
      O => USER_LOGIC_I_mi_divisor_cuenta_cmp_eq0000_wg_cy(2)
    );
  USER_LOGIC_I_mi_divisor_cuenta_cmp_eq0000_wg_lut_3_Q : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => USER_LOGIC_I_mi_divisor_cuenta(15),
      I1 => USER_LOGIC_I_mi_divisor_cuenta(16),
      I2 => USER_LOGIC_I_mi_divisor_cuenta(3),
      I3 => USER_LOGIC_I_mi_divisor_cuenta(17),
      O => USER_LOGIC_I_mi_divisor_cuenta_cmp_eq0000_wg_lut(3)
    );
  USER_LOGIC_I_mi_divisor_cuenta_cmp_eq0000_wg_cy_3_Q : MUXCY
    port map (
      CI => USER_LOGIC_I_mi_divisor_cuenta_cmp_eq0000_wg_cy(2),
      DI => Sl_MWrErr_0_OBUF_400,
      S => USER_LOGIC_I_mi_divisor_cuenta_cmp_eq0000_wg_lut(3),
      O => USER_LOGIC_I_mi_divisor_cuenta_cmp_eq0000_wg_cy(3)
    );
  USER_LOGIC_I_mi_divisor_cuenta_cmp_eq0000_wg_lut_4_Q : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => USER_LOGIC_I_mi_divisor_cuenta(20),
      I1 => USER_LOGIC_I_mi_divisor_cuenta(18),
      I2 => USER_LOGIC_I_mi_divisor_cuenta(2),
      I3 => USER_LOGIC_I_mi_divisor_cuenta(19),
      O => USER_LOGIC_I_mi_divisor_cuenta_cmp_eq0000_wg_lut(4)
    );
  USER_LOGIC_I_mi_divisor_cuenta_cmp_eq0000_wg_cy_4_Q : MUXCY
    port map (
      CI => USER_LOGIC_I_mi_divisor_cuenta_cmp_eq0000_wg_cy(3),
      DI => Sl_MWrErr_0_OBUF_400,
      S => USER_LOGIC_I_mi_divisor_cuenta_cmp_eq0000_wg_lut(4),
      O => USER_LOGIC_I_mi_divisor_cuenta_cmp_eq0000_wg_cy(4)
    );
  USER_LOGIC_I_mi_divisor_cuenta_cmp_eq0000_wg_lut_5_Q : LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => USER_LOGIC_I_mi_divisor_cuenta(23),
      I1 => USER_LOGIC_I_mi_divisor_cuenta(21),
      I2 => USER_LOGIC_I_mi_divisor_cuenta(1),
      I3 => USER_LOGIC_I_mi_divisor_cuenta(22),
      O => USER_LOGIC_I_mi_divisor_cuenta_cmp_eq0000_wg_lut(5)
    );
  USER_LOGIC_I_mi_divisor_cuenta_cmp_eq0000_wg_cy_5_Q : MUXCY
    port map (
      CI => USER_LOGIC_I_mi_divisor_cuenta_cmp_eq0000_wg_cy(4),
      DI => Sl_MWrErr_0_OBUF_400,
      S => USER_LOGIC_I_mi_divisor_cuenta_cmp_eq0000_wg_lut(5),
      O => USER_LOGIC_I_mi_divisor_cuenta_cmp_eq0000_wg_cy(5)
    );
  USER_LOGIC_I_mi_divisor_cuenta_cmp_eq0000_wg_lut_6_Q : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => USER_LOGIC_I_mi_divisor_cuenta(26),
      I1 => USER_LOGIC_I_mi_divisor_cuenta(24),
      I2 => USER_LOGIC_I_mi_divisor_cuenta(0),
      I3 => USER_LOGIC_I_mi_divisor_cuenta(25),
      O => USER_LOGIC_I_mi_divisor_cuenta_cmp_eq0000_wg_lut(6)
    );
  USER_LOGIC_I_mi_divisor_cuenta_cmp_eq0000_wg_cy_6_Q : MUXCY
    port map (
      CI => USER_LOGIC_I_mi_divisor_cuenta_cmp_eq0000_wg_cy(5),
      DI => Sl_MWrErr_0_OBUF_400,
      S => USER_LOGIC_I_mi_divisor_cuenta_cmp_eq0000_wg_lut(6),
      O => USER_LOGIC_I_mi_divisor_cuenta_cmp_eq0000
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_MEM_DECODE_GEN_0_PER_CE_GEN_3_MULTIPLE_CES_THIS_CS_GEN_CE_I_CS1 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_addr_out_s_h(0),
      I1 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_addr_out_s_h(1),
      I2 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_pavalid_reg_129,
      O => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_ce_expnd_i(3)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_MEM_DECODE_GEN_0_PER_CE_GEN_2_MULTIPLE_CES_THIS_CS_GEN_CE_I_CS1 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_pavalid_reg_129,
      I1 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_addr_out_s_h(0),
      I2 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_addr_out_s_h(1),
      O => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_ce_expnd_i(2)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_MEM_DECODE_GEN_0_PER_CE_GEN_1_MULTIPLE_CES_THIS_CS_GEN_CE_I_CS1 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_pavalid_reg_129,
      I1 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_addr_out_s_h(1),
      I2 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_addr_out_s_h(0),
      O => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_ce_expnd_i(1)
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_MEM_DECODE_GEN_0_PER_CE_GEN_0_MULTIPLE_CES_THIS_CS_GEN_CE_I_CS1 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_addr_out_s_h(0),
      I1 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_addr_out_s_h(1),
      I2 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_pavalid_reg_129,
      O => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_ce_expnd_i(0)
    );
  USER_LOGIC_I_slv_reg3_cmp_eq00001 : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_wrce_out_i(2),
      I1 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_wrce_out_i(0),
      I2 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_wrce_out_i(1),
      I3 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_wrce_out_i(3),
      O => USER_LOGIC_I_slv_reg3_cmp_eq0000
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_mbusy_i_7_and00001 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_set_sl_busy_171,
      I1 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_master_id(0),
      I2 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_master_id(1),
      I3 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_master_id(2),
      O => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_mbusy_i_7_and0000
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_mbusy_i_6_and00001 : LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_master_id(1),
      I1 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_set_sl_busy_171,
      I2 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_master_id(0),
      I3 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_master_id(2),
      O => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_mbusy_i_6_and0000
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_mbusy_i_5_and00001 : LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_set_sl_busy_171,
      I1 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_master_id(0),
      I2 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_master_id(1),
      I3 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_master_id(2),
      O => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_mbusy_i_5_and0000
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_mbusy_i_4_and00001 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_set_sl_busy_171,
      I1 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_master_id(2),
      I2 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_master_id(0),
      I3 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_master_id(1),
      O => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_mbusy_i_4_and0000
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_mbusy_i_3_and00001 : LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_master_id(1),
      I1 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_master_id(0),
      I2 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_master_id(2),
      I3 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_set_sl_busy_171,
      O => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_mbusy_i_3_and0000
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_mbusy_i_2_and00001 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_master_id(1),
      I1 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_set_sl_busy_171,
      I2 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_master_id(0),
      I3 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_master_id(2),
      O => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_mbusy_i_2_and0000
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_mbusy_i_1_and00001 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_set_sl_busy_171,
      I1 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_master_id(0),
      I2 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_master_id(1),
      I3 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_master_id(2),
      O => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_mbusy_i_1_and0000
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_mbusy_i_0_and00001 : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_master_id(0),
      I1 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_master_id(1),
      I2 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_master_id(2),
      I3 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_set_sl_busy_171,
      O => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_mbusy_i_0_and0000
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_pavalid_reg_or00001 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => SPLB_Rst_IBUF_367,
      I1 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_addr_cntl_cs(0),
      O => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_decode_hit_reg_or0000
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_mbusy_i_0_or00001 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => SPLB_Rst_IBUF_367,
      I1 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_wrcomp_i_227,
      I2 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_rd_clear_sl_busy_170,
      O => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rnw_s_h_or0000
    );
  USER_LOGIC_I_slv_reg2_24_not00011 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_bus2ip_be_i(3),
      I1 => USER_LOGIC_I_N3,
      O => USER_LOGIC_I_slv_reg2_24_not0001
    );
  USER_LOGIC_I_slv_reg2_20_not00011 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_bus2ip_be_i(2),
      I1 => N82,
      O => USER_LOGIC_I_slv_reg2_20_not0001
    );
  USER_LOGIC_I_slv_reg2_14_not00011 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_bus2ip_be_i(1),
      I1 => USER_LOGIC_I_N3,
      O => USER_LOGIC_I_slv_reg2_14_not0001
    );
  USER_LOGIC_I_slv_reg2_0_not00012 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_bus2ip_be_i(0),
      I1 => USER_LOGIC_I_N3,
      O => USER_LOGIC_I_slv_reg2_0_not0001
    );
  USER_LOGIC_I_slv_reg1_8_not00011 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_bus2ip_be_i(1),
      I1 => N83,
      O => USER_LOGIC_I_slv_reg1_8_not0001
    );
  USER_LOGIC_I_slv_reg1_28_not00011 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_bus2ip_be_i(3),
      I1 => USER_LOGIC_I_N4,
      O => USER_LOGIC_I_slv_reg1_28_not0001
    );
  USER_LOGIC_I_slv_reg1_20_not00011 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_bus2ip_be_i(2),
      I1 => USER_LOGIC_I_N4,
      O => USER_LOGIC_I_slv_reg1_20_not0001
    );
  USER_LOGIC_I_slv_reg1_0_not00012 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_bus2ip_be_i(0),
      I1 => USER_LOGIC_I_N4,
      O => USER_LOGIC_I_slv_reg1_0_not0001
    );
  USER_LOGIC_I_slv_reg0_9_not00011 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_bus2ip_be_i(1),
      I1 => N84,
      O => USER_LOGIC_I_slv_reg0_9_not0001
    );
  USER_LOGIC_I_slv_reg0_24_not00011 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_bus2ip_be_i(3),
      I1 => USER_LOGIC_I_N2,
      O => USER_LOGIC_I_slv_reg0_24_not0001
    );
  USER_LOGIC_I_slv_reg0_20_not00011 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_bus2ip_be_i(2),
      I1 => USER_LOGIC_I_N2,
      O => USER_LOGIC_I_slv_reg0_20_not0001
    );
  USER_LOGIC_I_slv_reg0_0_not00012 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_bus2ip_be_i(0),
      I1 => USER_LOGIC_I_N2,
      O => USER_LOGIC_I_slv_reg0_0_not0001
    );
  USER_LOGIC_I_IP2Bus_Data_9_22 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(1),
      I1 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(0),
      O => USER_LOGIC_I_IP2Bus_Data_0_20
    );
  USER_LOGIC_I_IP2Bus_Data_9_51 : LUT4
    generic map(
      INIT => X"6240"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(1),
      I1 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(0),
      I2 => USER_LOGIC_I_slv_reg0(9),
      I3 => USER_LOGIC_I_slv_reg1(9),
      O => USER_LOGIC_I_IP2Bus_Data_9_51_577
    );
  USER_LOGIC_I_IP2Bus_Data_8_51 : LUT4
    generic map(
      INIT => X"6240"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(1),
      I1 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(0),
      I2 => USER_LOGIC_I_slv_reg0(8),
      I3 => USER_LOGIC_I_slv_reg1(8),
      O => USER_LOGIC_I_IP2Bus_Data_8_51_576
    );
  USER_LOGIC_I_IP2Bus_Data_7_51 : LUT4
    generic map(
      INIT => X"6240"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(1),
      I1 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(0),
      I2 => USER_LOGIC_I_slv_reg0(7),
      I3 => USER_LOGIC_I_slv_reg1(7),
      O => USER_LOGIC_I_IP2Bus_Data_7_51_575
    );
  USER_LOGIC_I_IP2Bus_Data_6_51 : LUT4
    generic map(
      INIT => X"6240"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(1),
      I1 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(0),
      I2 => USER_LOGIC_I_slv_reg0(6),
      I3 => USER_LOGIC_I_slv_reg1(6),
      O => USER_LOGIC_I_IP2Bus_Data_6_51_574
    );
  USER_LOGIC_I_IP2Bus_Data_5_51 : LUT4
    generic map(
      INIT => X"6240"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(1),
      I1 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(0),
      I2 => USER_LOGIC_I_slv_reg0(5),
      I3 => USER_LOGIC_I_slv_reg1(5),
      O => USER_LOGIC_I_IP2Bus_Data_5_51_573
    );
  USER_LOGIC_I_IP2Bus_Data_4_51 : LUT4
    generic map(
      INIT => X"6240"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(1),
      I1 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(0),
      I2 => USER_LOGIC_I_slv_reg0(4),
      I3 => USER_LOGIC_I_slv_reg1(4),
      O => USER_LOGIC_I_IP2Bus_Data_4_51_572
    );
  USER_LOGIC_I_IP2Bus_Data_3_51 : LUT4
    generic map(
      INIT => X"6240"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(1),
      I1 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(0),
      I2 => USER_LOGIC_I_slv_reg0(3),
      I3 => USER_LOGIC_I_slv_reg1(3),
      O => USER_LOGIC_I_IP2Bus_Data_3_51_571
    );
  USER_LOGIC_I_IP2Bus_Data_31_51 : LUT4
    generic map(
      INIT => X"6240"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(1),
      I1 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(0),
      I2 => USER_LOGIC_I_slv_reg0(31),
      I3 => USER_LOGIC_I_slv_reg1(31),
      O => USER_LOGIC_I_IP2Bus_Data_31_51_570
    );
  USER_LOGIC_I_IP2Bus_Data_30_51 : LUT4
    generic map(
      INIT => X"6240"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(1),
      I1 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(0),
      I2 => USER_LOGIC_I_slv_reg0(30),
      I3 => USER_LOGIC_I_slv_reg1(30),
      O => USER_LOGIC_I_IP2Bus_Data_30_51_569
    );
  USER_LOGIC_I_IP2Bus_Data_2_51 : LUT4
    generic map(
      INIT => X"6240"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(1),
      I1 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(0),
      I2 => USER_LOGIC_I_slv_reg0(2),
      I3 => USER_LOGIC_I_slv_reg1(2),
      O => USER_LOGIC_I_IP2Bus_Data_2_51_568
    );
  USER_LOGIC_I_IP2Bus_Data_29_51 : LUT4
    generic map(
      INIT => X"6240"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(1),
      I1 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(0),
      I2 => USER_LOGIC_I_slv_reg0(29),
      I3 => USER_LOGIC_I_slv_reg1(29),
      O => USER_LOGIC_I_IP2Bus_Data_29_51_567
    );
  USER_LOGIC_I_IP2Bus_Data_28_51 : LUT4
    generic map(
      INIT => X"6240"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(1),
      I1 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(0),
      I2 => USER_LOGIC_I_slv_reg0(28),
      I3 => USER_LOGIC_I_slv_reg1(28),
      O => USER_LOGIC_I_IP2Bus_Data_28_51_566
    );
  USER_LOGIC_I_IP2Bus_Data_27_51 : LUT4
    generic map(
      INIT => X"6240"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(1),
      I1 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(0),
      I2 => USER_LOGIC_I_slv_reg0(27),
      I3 => USER_LOGIC_I_slv_reg1(27),
      O => USER_LOGIC_I_IP2Bus_Data_27_51_565
    );
  USER_LOGIC_I_IP2Bus_Data_26_51 : LUT4
    generic map(
      INIT => X"6240"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(1),
      I1 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(0),
      I2 => USER_LOGIC_I_slv_reg0(26),
      I3 => USER_LOGIC_I_slv_reg1(26),
      O => USER_LOGIC_I_IP2Bus_Data_26_51_564
    );
  USER_LOGIC_I_IP2Bus_Data_25_51 : LUT4
    generic map(
      INIT => X"6240"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(1),
      I1 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(0),
      I2 => USER_LOGIC_I_slv_reg0(25),
      I3 => USER_LOGIC_I_slv_reg1(25),
      O => USER_LOGIC_I_IP2Bus_Data_25_51_563
    );
  USER_LOGIC_I_IP2Bus_Data_24_51 : LUT4
    generic map(
      INIT => X"6240"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(1),
      I1 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(0),
      I2 => USER_LOGIC_I_slv_reg0(24),
      I3 => USER_LOGIC_I_slv_reg1(24),
      O => USER_LOGIC_I_IP2Bus_Data_24_51_562
    );
  USER_LOGIC_I_IP2Bus_Data_23_51 : LUT4
    generic map(
      INIT => X"6240"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(1),
      I1 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(0),
      I2 => USER_LOGIC_I_slv_reg0(23),
      I3 => USER_LOGIC_I_slv_reg1(23),
      O => USER_LOGIC_I_IP2Bus_Data_23_51_561
    );
  USER_LOGIC_I_IP2Bus_Data_22_51 : LUT4
    generic map(
      INIT => X"6240"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(1),
      I1 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(0),
      I2 => USER_LOGIC_I_slv_reg0(22),
      I3 => USER_LOGIC_I_slv_reg1(22),
      O => USER_LOGIC_I_IP2Bus_Data_22_51_560
    );
  USER_LOGIC_I_IP2Bus_Data_21_51 : LUT4
    generic map(
      INIT => X"6240"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(1),
      I1 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(0),
      I2 => USER_LOGIC_I_slv_reg0(21),
      I3 => USER_LOGIC_I_slv_reg1(21),
      O => USER_LOGIC_I_IP2Bus_Data_21_51_559
    );
  USER_LOGIC_I_IP2Bus_Data_20_51 : LUT4
    generic map(
      INIT => X"6240"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(1),
      I1 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(0),
      I2 => USER_LOGIC_I_slv_reg0(20),
      I3 => USER_LOGIC_I_slv_reg1(20),
      O => USER_LOGIC_I_IP2Bus_Data_20_51_558
    );
  USER_LOGIC_I_IP2Bus_Data_1_51 : LUT4
    generic map(
      INIT => X"6240"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(1),
      I1 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(0),
      I2 => USER_LOGIC_I_slv_reg0(1),
      I3 => USER_LOGIC_I_slv_reg1(1),
      O => USER_LOGIC_I_IP2Bus_Data_1_51_557
    );
  USER_LOGIC_I_IP2Bus_Data_19_51 : LUT4
    generic map(
      INIT => X"6240"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(1),
      I1 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(0),
      I2 => USER_LOGIC_I_slv_reg0(19),
      I3 => USER_LOGIC_I_slv_reg1(19),
      O => USER_LOGIC_I_IP2Bus_Data_19_51_556
    );
  USER_LOGIC_I_IP2Bus_Data_18_51 : LUT4
    generic map(
      INIT => X"6240"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(1),
      I1 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(0),
      I2 => USER_LOGIC_I_slv_reg0(18),
      I3 => USER_LOGIC_I_slv_reg1(18),
      O => USER_LOGIC_I_IP2Bus_Data_18_51_555
    );
  USER_LOGIC_I_IP2Bus_Data_17_51 : LUT4
    generic map(
      INIT => X"6240"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(1),
      I1 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(0),
      I2 => USER_LOGIC_I_slv_reg0(17),
      I3 => USER_LOGIC_I_slv_reg1(17),
      O => USER_LOGIC_I_IP2Bus_Data_17_51_554
    );
  USER_LOGIC_I_IP2Bus_Data_16_47 : LUT4
    generic map(
      INIT => X"6240"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(1),
      I1 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(0),
      I2 => USER_LOGIC_I_slv_reg0(16),
      I3 => USER_LOGIC_I_slv_reg1(16),
      O => USER_LOGIC_I_IP2Bus_Data_16_47_553
    );
  USER_LOGIC_I_IP2Bus_Data_15_47 : LUT4
    generic map(
      INIT => X"6240"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(1),
      I1 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(0),
      I2 => USER_LOGIC_I_slv_reg0(15),
      I3 => USER_LOGIC_I_slv_reg1(15),
      O => USER_LOGIC_I_IP2Bus_Data_15_47_552
    );
  USER_LOGIC_I_IP2Bus_Data_14_47 : LUT4
    generic map(
      INIT => X"6240"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(1),
      I1 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(0),
      I2 => USER_LOGIC_I_slv_reg0(14),
      I3 => USER_LOGIC_I_slv_reg1(14),
      O => USER_LOGIC_I_IP2Bus_Data_14_47_551
    );
  USER_LOGIC_I_IP2Bus_Data_13_47 : LUT4
    generic map(
      INIT => X"6240"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(1),
      I1 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(0),
      I2 => USER_LOGIC_I_slv_reg0(13),
      I3 => USER_LOGIC_I_slv_reg1(13),
      O => USER_LOGIC_I_IP2Bus_Data_13_47_550
    );
  USER_LOGIC_I_IP2Bus_Data_12_47 : LUT4
    generic map(
      INIT => X"6240"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(1),
      I1 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(0),
      I2 => USER_LOGIC_I_slv_reg0(12),
      I3 => USER_LOGIC_I_slv_reg1(12),
      O => USER_LOGIC_I_IP2Bus_Data_12_47_549
    );
  USER_LOGIC_I_IP2Bus_Data_11_47 : LUT4
    generic map(
      INIT => X"6240"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(1),
      I1 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(0),
      I2 => USER_LOGIC_I_slv_reg0(11),
      I3 => USER_LOGIC_I_slv_reg1(11),
      O => USER_LOGIC_I_IP2Bus_Data_11_47_548
    );
  USER_LOGIC_I_IP2Bus_Data_10_47 : LUT4
    generic map(
      INIT => X"6240"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(1),
      I1 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(0),
      I2 => USER_LOGIC_I_slv_reg0(10),
      I3 => USER_LOGIC_I_slv_reg1(10),
      O => USER_LOGIC_I_IP2Bus_Data_10_47_547
    );
  USER_LOGIC_I_IP2Bus_Data_0_47 : LUT4
    generic map(
      INIT => X"6240"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(1),
      I1 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(0),
      I2 => USER_LOGIC_I_slv_reg0(0),
      I3 => USER_LOGIC_I_slv_reg1(0),
      O => USER_LOGIC_I_IP2Bus_Data_0_47_546
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i_or00001 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => SPLB_Rst_IBUF_367,
      I1 => user_IP2Bus_RdAck,
      O => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i_or0000
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_bus2ip_rnw_i_or00001 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => SPLB_Rst_IBUF_367,
      I1 => user_IP2Bus_RdAck,
      I2 => user_IP2Bus_WrAck,
      O => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_bus2ip_rnw_i_or0000
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_01 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => USER_LOGIC_I_Result(0),
      I1 => USER_LOGIC_I_mi_divisor_cuenta_cmp_eq0000,
      O => USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_0
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_addrack_i_ns1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_busy_173,
      I1 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_N11,
      O => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_set_sl_busy_mux0000_norst
    );
  USER_LOGIC_I_my_leds_mux0002_7_0 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => USER_LOGIC_I_my_counter(7),
      I1 => switches_3_IBUF_1054,
      O => USER_LOGIC_I_my_leds_mux0002_7_0_866
    );
  USER_LOGIC_I_my_leds_mux0002_6_0 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => USER_LOGIC_I_my_counter(6),
      I1 => switches_3_IBUF_1054,
      O => USER_LOGIC_I_my_leds_mux0002_6_0_864
    );
  USER_LOGIC_I_my_leds_mux0002_5_0 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => USER_LOGIC_I_my_counter(5),
      I1 => switches_3_IBUF_1054,
      O => USER_LOGIC_I_my_leds_mux0002_5_0_862
    );
  USER_LOGIC_I_my_leds_mux0002_4_0 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => USER_LOGIC_I_my_counter(4),
      I1 => switches_3_IBUF_1054,
      O => USER_LOGIC_I_my_leds_mux0002_4_0_860
    );
  USER_LOGIC_I_my_leds_mux0002_3_0 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => USER_LOGIC_I_my_counter(3),
      I1 => switches_3_IBUF_1054,
      O => USER_LOGIC_I_my_leds_mux0002_3_0_858
    );
  USER_LOGIC_I_my_leds_mux0002_2_0 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => USER_LOGIC_I_my_counter(2),
      I1 => switches_3_IBUF_1054,
      O => USER_LOGIC_I_my_leds_mux0002_2_0_856
    );
  USER_LOGIC_I_my_leds_mux0002_1_0 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => USER_LOGIC_I_my_counter(1),
      I1 => switches_3_IBUF_1054,
      O => USER_LOGIC_I_my_leds_mux0002_1_0_854
    );
  USER_LOGIC_I_my_leds_mux0002_0_0 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => USER_LOGIC_I_my_counter(0),
      I1 => switches_3_IBUF_1054,
      O => USER_LOGIC_I_my_leds_mux0002_0_0_852
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rearbitrate_ns17 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_type_reg(2),
      I1 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_size_reg(1),
      I2 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_pavalid_reg_129,
      O => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rearbitrate_ns17_226
    );
  USER_LOGIC_I_mi_divisor_clk_aux_and00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => SPLB_Rst_IBUF_367,
      I1 => USER_LOGIC_I_mi_divisor_cuenta_cmp_eq0000,
      O => USER_LOGIC_I_mi_divisor_clk_aux_and0000
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_110 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => USER_LOGIC_I_Result(1),
      I1 => USER_LOGIC_I_mi_divisor_cuenta_cmp_eq0000,
      O => USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_1
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_27 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => USER_LOGIC_I_Result(2),
      I1 => USER_LOGIC_I_mi_divisor_cuenta_cmp_eq0000,
      O => USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_2
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_31 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => USER_LOGIC_I_Result(3),
      I1 => USER_LOGIC_I_mi_divisor_cuenta_cmp_eq0000,
      O => USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_3
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_41 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => USER_LOGIC_I_Result(4),
      I1 => USER_LOGIC_I_mi_divisor_cuenta_cmp_eq0000,
      O => USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_4
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_51 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => USER_LOGIC_I_Result(5),
      I1 => USER_LOGIC_I_mi_divisor_cuenta_cmp_eq0000,
      O => USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_5
    );
  USER_LOGIC_I_slv_write_ack1 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_wrce_out_i(2),
      I1 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_wrce_out_i(3),
      I2 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_wrce_out_i(0),
      I3 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_wrce_out_i(1),
      O => user_IP2Bus_WrAck
    );
  USER_LOGIC_I_slv_read_ack1 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i_3_1_100,
      I1 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i_1_1_96,
      I2 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i_0_1_94,
      I3 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i_2_1_98,
      O => user_IP2Bus_RdAck
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_61 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => USER_LOGIC_I_Result(6),
      I1 => USER_LOGIC_I_mi_divisor_cuenta_cmp_eq0000,
      O => USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_6
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_71 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => USER_LOGIC_I_Result(7),
      I1 => USER_LOGIC_I_mi_divisor_cuenta_cmp_eq0000,
      O => USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_7
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_81 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => USER_LOGIC_I_Result(8),
      I1 => USER_LOGIC_I_mi_divisor_cuenta_cmp_eq0000,
      O => USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_8
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_91 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => USER_LOGIC_I_mi_divisor_cuenta_cmp_eq0000,
      I1 => USER_LOGIC_I_Result(9),
      O => USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_9
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_101 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => USER_LOGIC_I_mi_divisor_cuenta_cmp_eq0000,
      I1 => USER_LOGIC_I_Result(10),
      O => USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_10
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_111 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => USER_LOGIC_I_mi_divisor_cuenta_cmp_eq0000,
      I1 => USER_LOGIC_I_Result(11),
      O => USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_11
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_121 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => USER_LOGIC_I_mi_divisor_cuenta_cmp_eq0000,
      I1 => USER_LOGIC_I_Result(12),
      O => USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_12
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_131 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => USER_LOGIC_I_mi_divisor_cuenta_cmp_eq0000,
      I1 => USER_LOGIC_I_Result(13),
      O => USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_13
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_141 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => USER_LOGIC_I_mi_divisor_cuenta_cmp_eq0000,
      I1 => USER_LOGIC_I_Result(14),
      O => USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_14
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_151 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => USER_LOGIC_I_mi_divisor_cuenta_cmp_eq0000,
      I1 => USER_LOGIC_I_Result(15),
      O => USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_15
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_161 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => USER_LOGIC_I_mi_divisor_cuenta_cmp_eq0000,
      I1 => USER_LOGIC_I_Result(16),
      O => USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_16
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_171 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => USER_LOGIC_I_mi_divisor_cuenta_cmp_eq0000,
      I1 => USER_LOGIC_I_Result(17),
      O => USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_17
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_181 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => USER_LOGIC_I_mi_divisor_cuenta_cmp_eq0000,
      I1 => USER_LOGIC_I_Result(18),
      O => USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_18
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_191 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => USER_LOGIC_I_mi_divisor_cuenta_cmp_eq0000,
      I1 => USER_LOGIC_I_Result(19),
      O => USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_19
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_201 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => USER_LOGIC_I_mi_divisor_cuenta_cmp_eq0000,
      I1 => USER_LOGIC_I_Result(20),
      O => USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_20
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_211 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => USER_LOGIC_I_mi_divisor_cuenta_cmp_eq0000,
      I1 => USER_LOGIC_I_Result(21),
      O => USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_21
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_221 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => USER_LOGIC_I_mi_divisor_cuenta_cmp_eq0000,
      I1 => USER_LOGIC_I_Result(22),
      O => USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_22
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_231 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => USER_LOGIC_I_mi_divisor_cuenta_cmp_eq0000,
      I1 => USER_LOGIC_I_Result(23),
      O => USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_23
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_241 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => USER_LOGIC_I_mi_divisor_cuenta_cmp_eq0000,
      I1 => USER_LOGIC_I_Result(24),
      O => USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_24
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_251 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => USER_LOGIC_I_mi_divisor_cuenta_cmp_eq0000,
      I1 => USER_LOGIC_I_Result(25),
      O => USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_25
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_261 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => USER_LOGIC_I_mi_divisor_cuenta_cmp_eq0000,
      I1 => USER_LOGIC_I_Result(26),
      O => USER_LOGIC_I_mi_divisor_Mcount_cuenta_eqn_26
    );
  PLB_PAValid_IBUF : IBUF
    port map (
      I => PLB_PAValid,
      O => PLB_PAValid_IBUF_277
    );
  SPLB_Rst_IBUF : IBUF
    port map (
      I => SPLB_Rst,
      O => SPLB_Rst_IBUF_367
    );
  PLB_RNW_IBUF : IBUF
    port map (
      I => PLB_RNW,
      O => PLB_RNW_IBUF_279
    );
  switches_3_IBUF : IBUF
    port map (
      I => switches(3),
      O => switches_3_IBUF_1054
    );
  switches_1_IBUF : IBUF
    port map (
      I => switches(1),
      O => switches_1_IBUF_1053
    );
  switches_0_IBUF : IBUF
    port map (
      I => switches(0),
      O => switches_0_IBUF_1052
    );
  PLB_masterID_0_IBUF : IBUF
    port map (
      I => PLB_masterID(0),
      O => PLB_masterID_0_IBUF_283
    );
  PLB_masterID_1_IBUF : IBUF
    port map (
      I => PLB_masterID(1),
      O => PLB_masterID_1_IBUF_284
    );
  PLB_masterID_2_IBUF : IBUF
    port map (
      I => PLB_masterID(2),
      O => PLB_masterID_2_IBUF_285
    );
  PLB_size_0_IBUF : IBUF
    port map (
      I => PLB_size(0),
      O => PLB_size_0_IBUF_290
    );
  PLB_size_1_IBUF : IBUF
    port map (
      I => PLB_size(1),
      O => PLB_size_1_IBUF_291
    );
  PLB_size_2_IBUF : IBUF
    port map (
      I => PLB_size(2),
      O => PLB_size_2_IBUF_292
    );
  PLB_size_3_IBUF : IBUF
    port map (
      I => PLB_size(3),
      O => PLB_size_3_IBUF_293
    );
  PLB_wrDBus_0_IBUF : IBUF
    port map (
      I => PLB_wrDBus(0),
      O => PLB_wrDBus_0_IBUF_332
    );
  PLB_wrDBus_1_IBUF : IBUF
    port map (
      I => PLB_wrDBus(1),
      O => PLB_wrDBus_1_IBUF_343
    );
  PLB_wrDBus_2_IBUF : IBUF
    port map (
      I => PLB_wrDBus(2),
      O => PLB_wrDBus_2_IBUF_354
    );
  PLB_wrDBus_3_IBUF : IBUF
    port map (
      I => PLB_wrDBus(3),
      O => PLB_wrDBus_3_IBUF_357
    );
  PLB_wrDBus_4_IBUF : IBUF
    port map (
      I => PLB_wrDBus(4),
      O => PLB_wrDBus_4_IBUF_358
    );
  PLB_wrDBus_5_IBUF : IBUF
    port map (
      I => PLB_wrDBus(5),
      O => PLB_wrDBus_5_IBUF_359
    );
  PLB_wrDBus_6_IBUF : IBUF
    port map (
      I => PLB_wrDBus(6),
      O => PLB_wrDBus_6_IBUF_360
    );
  PLB_wrDBus_7_IBUF : IBUF
    port map (
      I => PLB_wrDBus(7),
      O => PLB_wrDBus_7_IBUF_361
    );
  PLB_wrDBus_8_IBUF : IBUF
    port map (
      I => PLB_wrDBus(8),
      O => PLB_wrDBus_8_IBUF_362
    );
  PLB_wrDBus_9_IBUF : IBUF
    port map (
      I => PLB_wrDBus(9),
      O => PLB_wrDBus_9_IBUF_363
    );
  PLB_wrDBus_10_IBUF : IBUF
    port map (
      I => PLB_wrDBus(10),
      O => PLB_wrDBus_10_IBUF_333
    );
  PLB_wrDBus_11_IBUF : IBUF
    port map (
      I => PLB_wrDBus(11),
      O => PLB_wrDBus_11_IBUF_334
    );
  PLB_wrDBus_12_IBUF : IBUF
    port map (
      I => PLB_wrDBus(12),
      O => PLB_wrDBus_12_IBUF_335
    );
  PLB_wrDBus_13_IBUF : IBUF
    port map (
      I => PLB_wrDBus(13),
      O => PLB_wrDBus_13_IBUF_336
    );
  PLB_wrDBus_14_IBUF : IBUF
    port map (
      I => PLB_wrDBus(14),
      O => PLB_wrDBus_14_IBUF_337
    );
  PLB_wrDBus_15_IBUF : IBUF
    port map (
      I => PLB_wrDBus(15),
      O => PLB_wrDBus_15_IBUF_338
    );
  PLB_wrDBus_16_IBUF : IBUF
    port map (
      I => PLB_wrDBus(16),
      O => PLB_wrDBus_16_IBUF_339
    );
  PLB_wrDBus_17_IBUF : IBUF
    port map (
      I => PLB_wrDBus(17),
      O => PLB_wrDBus_17_IBUF_340
    );
  PLB_wrDBus_18_IBUF : IBUF
    port map (
      I => PLB_wrDBus(18),
      O => PLB_wrDBus_18_IBUF_341
    );
  PLB_wrDBus_19_IBUF : IBUF
    port map (
      I => PLB_wrDBus(19),
      O => PLB_wrDBus_19_IBUF_342
    );
  PLB_wrDBus_20_IBUF : IBUF
    port map (
      I => PLB_wrDBus(20),
      O => PLB_wrDBus_20_IBUF_344
    );
  PLB_wrDBus_21_IBUF : IBUF
    port map (
      I => PLB_wrDBus(21),
      O => PLB_wrDBus_21_IBUF_345
    );
  PLB_wrDBus_22_IBUF : IBUF
    port map (
      I => PLB_wrDBus(22),
      O => PLB_wrDBus_22_IBUF_346
    );
  PLB_wrDBus_23_IBUF : IBUF
    port map (
      I => PLB_wrDBus(23),
      O => PLB_wrDBus_23_IBUF_347
    );
  PLB_wrDBus_24_IBUF : IBUF
    port map (
      I => PLB_wrDBus(24),
      O => PLB_wrDBus_24_IBUF_348
    );
  PLB_wrDBus_25_IBUF : IBUF
    port map (
      I => PLB_wrDBus(25),
      O => PLB_wrDBus_25_IBUF_349
    );
  PLB_wrDBus_26_IBUF : IBUF
    port map (
      I => PLB_wrDBus(26),
      O => PLB_wrDBus_26_IBUF_350
    );
  PLB_wrDBus_27_IBUF : IBUF
    port map (
      I => PLB_wrDBus(27),
      O => PLB_wrDBus_27_IBUF_351
    );
  PLB_wrDBus_28_IBUF : IBUF
    port map (
      I => PLB_wrDBus(28),
      O => PLB_wrDBus_28_IBUF_352
    );
  PLB_wrDBus_29_IBUF : IBUF
    port map (
      I => PLB_wrDBus(29),
      O => PLB_wrDBus_29_IBUF_353
    );
  PLB_wrDBus_30_IBUF : IBUF
    port map (
      I => PLB_wrDBus(30),
      O => PLB_wrDBus_30_IBUF_355
    );
  PLB_wrDBus_31_IBUF : IBUF
    port map (
      I => PLB_wrDBus(31),
      O => PLB_wrDBus_31_IBUF_356
    );
  PLB_BE_0_IBUF : IBUF
    port map (
      I => PLB_BE(0),
      O => PLB_BE_0_IBUF_260
    );
  PLB_BE_1_IBUF : IBUF
    port map (
      I => PLB_BE(1),
      O => PLB_BE_1_IBUF_267
    );
  PLB_BE_2_IBUF : IBUF
    port map (
      I => PLB_BE(2),
      O => PLB_BE_2_IBUF_268
    );
  PLB_BE_3_IBUF : IBUF
    port map (
      I => PLB_BE(3),
      O => PLB_BE_3_IBUF_269
    );
  PLB_BE_4_IBUF : IBUF
    port map (
      I => PLB_BE(4),
      O => PLB_BE_4_IBUF_270
    );
  PLB_BE_5_IBUF : IBUF
    port map (
      I => PLB_BE(5),
      O => PLB_BE_5_IBUF_271
    );
  PLB_BE_6_IBUF : IBUF
    port map (
      I => PLB_BE(6),
      O => PLB_BE_6_IBUF_272
    );
  PLB_BE_7_IBUF : IBUF
    port map (
      I => PLB_BE(7),
      O => PLB_BE_7_IBUF_273
    );
  PLB_BE_8_IBUF : IBUF
    port map (
      I => PLB_BE(8),
      O => PLB_BE_8_IBUF_274
    );
  PLB_BE_9_IBUF : IBUF
    port map (
      I => PLB_BE(9),
      O => PLB_BE_9_IBUF_275
    );
  PLB_BE_10_IBUF : IBUF
    port map (
      I => PLB_BE(10),
      O => PLB_BE_10_IBUF_261
    );
  PLB_BE_11_IBUF : IBUF
    port map (
      I => PLB_BE(11),
      O => PLB_BE_11_IBUF_262
    );
  PLB_BE_12_IBUF : IBUF
    port map (
      I => PLB_BE(12),
      O => PLB_BE_12_IBUF_263
    );
  PLB_BE_13_IBUF : IBUF
    port map (
      I => PLB_BE(13),
      O => PLB_BE_13_IBUF_264
    );
  PLB_BE_14_IBUF : IBUF
    port map (
      I => PLB_BE(14),
      O => PLB_BE_14_IBUF_265
    );
  PLB_BE_15_IBUF : IBUF
    port map (
      I => PLB_BE(15),
      O => PLB_BE_15_IBUF_266
    );
  PLB_ABus_28_IBUF : IBUF
    port map (
      I => PLB_ABus(28),
      O => PLB_ABus_28_IBUF_242
    );
  PLB_ABus_29_IBUF : IBUF
    port map (
      I => PLB_ABus(29),
      O => PLB_ABus_29_IBUF_243
    );
  PLB_type_0_IBUF : IBUF
    port map (
      I => PLB_type(0),
      O => PLB_type_0_IBUF_297
    );
  PLB_type_1_IBUF : IBUF
    port map (
      I => PLB_type(1),
      O => PLB_type_1_IBUF_298
    );
  PLB_type_2_IBUF : IBUF
    port map (
      I => PLB_type(2),
      O => PLB_type_2_IBUF_299
    );
  Sl_rearbitrate_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rearbitrate_i_223,
      O => Sl_rearbitrate
    );
  Sl_wrDAck_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_wrcomp_i_227,
      O => Sl_wrDAck
    );
  Sl_wrBTerm_OBUF : OBUF
    port map (
      I => Sl_MWrErr_0_OBUF_400,
      O => Sl_wrBTerm
    );
  Sl_rdComp_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_rd_clear_sl_busy_170,
      O => Sl_rdComp
    );
  Sl_wrComp_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_wrcomp_i_227,
      O => Sl_wrComp
    );
  Sl_addrAck_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_set_sl_busy_171,
      O => Sl_addrAck
    );
  Sl_rdBTerm_OBUF : OBUF
    port map (
      I => Sl_MWrErr_0_OBUF_400,
      O => Sl_rdBTerm
    );
  Sl_rdDAck_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_rd_clear_sl_busy_170,
      O => Sl_rdDAck
    );
  Sl_wait_OBUF : OBUF
    port map (
      I => Sl_MWrErr_0_OBUF_400,
      O => Sl_wait
    );
  Sl_MRdErr_0_OBUF : OBUF
    port map (
      I => Sl_MWrErr_0_OBUF_400,
      O => Sl_MRdErr(0)
    );
  Sl_MRdErr_1_OBUF : OBUF
    port map (
      I => Sl_MWrErr_0_OBUF_400,
      O => Sl_MRdErr(1)
    );
  Sl_MRdErr_2_OBUF : OBUF
    port map (
      I => Sl_MWrErr_0_OBUF_400,
      O => Sl_MRdErr(2)
    );
  Sl_MRdErr_3_OBUF : OBUF
    port map (
      I => Sl_MWrErr_0_OBUF_400,
      O => Sl_MRdErr(3)
    );
  Sl_MRdErr_4_OBUF : OBUF
    port map (
      I => Sl_MWrErr_0_OBUF_400,
      O => Sl_MRdErr(4)
    );
  Sl_MRdErr_5_OBUF : OBUF
    port map (
      I => Sl_MWrErr_0_OBUF_400,
      O => Sl_MRdErr(5)
    );
  Sl_MRdErr_6_OBUF : OBUF
    port map (
      I => Sl_MWrErr_0_OBUF_400,
      O => Sl_MRdErr(6)
    );
  Sl_MRdErr_7_OBUF : OBUF
    port map (
      I => Sl_MWrErr_0_OBUF_400,
      O => Sl_MRdErr(7)
    );
  leds_7_OBUF : OBUF
    port map (
      I => USER_LOGIC_I_my_leds(7),
      O => leds(7)
    );
  leds_6_OBUF : OBUF
    port map (
      I => USER_LOGIC_I_my_leds(6),
      O => leds(6)
    );
  leds_5_OBUF : OBUF
    port map (
      I => USER_LOGIC_I_my_leds(5),
      O => leds(5)
    );
  leds_4_OBUF : OBUF
    port map (
      I => USER_LOGIC_I_my_leds(4),
      O => leds(4)
    );
  leds_3_OBUF : OBUF
    port map (
      I => USER_LOGIC_I_my_leds(3),
      O => leds(3)
    );
  leds_2_OBUF : OBUF
    port map (
      I => USER_LOGIC_I_my_leds(2),
      O => leds(2)
    );
  leds_1_OBUF : OBUF
    port map (
      I => USER_LOGIC_I_my_leds(1),
      O => leds(1)
    );
  leds_0_OBUF : OBUF
    port map (
      I => USER_LOGIC_I_my_leds(0),
      O => leds(0)
    );
  Sl_MWrErr_0_OBUF : OBUF
    port map (
      I => Sl_MWrErr_0_OBUF_400,
      O => Sl_MWrErr(0)
    );
  Sl_MWrErr_1_OBUF : OBUF
    port map (
      I => Sl_MWrErr_0_OBUF_400,
      O => Sl_MWrErr(1)
    );
  Sl_MWrErr_2_OBUF : OBUF
    port map (
      I => Sl_MWrErr_0_OBUF_400,
      O => Sl_MWrErr(2)
    );
  Sl_MWrErr_3_OBUF : OBUF
    port map (
      I => Sl_MWrErr_0_OBUF_400,
      O => Sl_MWrErr(3)
    );
  Sl_MWrErr_4_OBUF : OBUF
    port map (
      I => Sl_MWrErr_0_OBUF_400,
      O => Sl_MWrErr(4)
    );
  Sl_MWrErr_5_OBUF : OBUF
    port map (
      I => Sl_MWrErr_0_OBUF_400,
      O => Sl_MWrErr(5)
    );
  Sl_MWrErr_6_OBUF : OBUF
    port map (
      I => Sl_MWrErr_0_OBUF_400,
      O => Sl_MWrErr(6)
    );
  Sl_MWrErr_7_OBUF : OBUF
    port map (
      I => Sl_MWrErr_0_OBUF_400,
      O => Sl_MWrErr(7)
    );
  Sl_rdDBus_0_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(0),
      O => Sl_rdDBus(0)
    );
  Sl_rdDBus_1_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(1),
      O => Sl_rdDBus(1)
    );
  Sl_rdDBus_2_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(2),
      O => Sl_rdDBus(2)
    );
  Sl_rdDBus_3_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(3),
      O => Sl_rdDBus(3)
    );
  Sl_rdDBus_4_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(4),
      O => Sl_rdDBus(4)
    );
  Sl_rdDBus_5_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(5),
      O => Sl_rdDBus(5)
    );
  Sl_rdDBus_6_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(6),
      O => Sl_rdDBus(6)
    );
  Sl_rdDBus_7_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(7),
      O => Sl_rdDBus(7)
    );
  Sl_rdDBus_8_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(8),
      O => Sl_rdDBus(8)
    );
  Sl_rdDBus_9_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(9),
      O => Sl_rdDBus(9)
    );
  Sl_rdDBus_10_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(10),
      O => Sl_rdDBus(10)
    );
  Sl_rdDBus_11_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(11),
      O => Sl_rdDBus(11)
    );
  Sl_rdDBus_12_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(12),
      O => Sl_rdDBus(12)
    );
  Sl_rdDBus_13_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(13),
      O => Sl_rdDBus(13)
    );
  Sl_rdDBus_14_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(14),
      O => Sl_rdDBus(14)
    );
  Sl_rdDBus_15_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(15),
      O => Sl_rdDBus(15)
    );
  Sl_rdDBus_16_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(16),
      O => Sl_rdDBus(16)
    );
  Sl_rdDBus_17_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(17),
      O => Sl_rdDBus(17)
    );
  Sl_rdDBus_18_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(18),
      O => Sl_rdDBus(18)
    );
  Sl_rdDBus_19_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(19),
      O => Sl_rdDBus(19)
    );
  Sl_rdDBus_20_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(20),
      O => Sl_rdDBus(20)
    );
  Sl_rdDBus_21_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(21),
      O => Sl_rdDBus(21)
    );
  Sl_rdDBus_22_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(22),
      O => Sl_rdDBus(22)
    );
  Sl_rdDBus_23_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(23),
      O => Sl_rdDBus(23)
    );
  Sl_rdDBus_24_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(24),
      O => Sl_rdDBus(24)
    );
  Sl_rdDBus_25_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(25),
      O => Sl_rdDBus(25)
    );
  Sl_rdDBus_26_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(26),
      O => Sl_rdDBus(26)
    );
  Sl_rdDBus_27_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(27),
      O => Sl_rdDBus(27)
    );
  Sl_rdDBus_28_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(28),
      O => Sl_rdDBus(28)
    );
  Sl_rdDBus_29_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(29),
      O => Sl_rdDBus(29)
    );
  Sl_rdDBus_30_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(30),
      O => Sl_rdDBus(30)
    );
  Sl_rdDBus_31_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(31),
      O => Sl_rdDBus(31)
    );
  Sl_rdDBus_32_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(0),
      O => Sl_rdDBus(32)
    );
  Sl_rdDBus_33_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(1),
      O => Sl_rdDBus(33)
    );
  Sl_rdDBus_34_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(2),
      O => Sl_rdDBus(34)
    );
  Sl_rdDBus_35_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(3),
      O => Sl_rdDBus(35)
    );
  Sl_rdDBus_36_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(4),
      O => Sl_rdDBus(36)
    );
  Sl_rdDBus_37_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(5),
      O => Sl_rdDBus(37)
    );
  Sl_rdDBus_38_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(6),
      O => Sl_rdDBus(38)
    );
  Sl_rdDBus_39_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(7),
      O => Sl_rdDBus(39)
    );
  Sl_rdDBus_40_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(8),
      O => Sl_rdDBus(40)
    );
  Sl_rdDBus_41_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(9),
      O => Sl_rdDBus(41)
    );
  Sl_rdDBus_42_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(10),
      O => Sl_rdDBus(42)
    );
  Sl_rdDBus_43_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(11),
      O => Sl_rdDBus(43)
    );
  Sl_rdDBus_44_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(12),
      O => Sl_rdDBus(44)
    );
  Sl_rdDBus_45_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(13),
      O => Sl_rdDBus(45)
    );
  Sl_rdDBus_46_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(14),
      O => Sl_rdDBus(46)
    );
  Sl_rdDBus_47_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(15),
      O => Sl_rdDBus(47)
    );
  Sl_rdDBus_48_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(16),
      O => Sl_rdDBus(48)
    );
  Sl_rdDBus_49_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(17),
      O => Sl_rdDBus(49)
    );
  Sl_rdDBus_50_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(18),
      O => Sl_rdDBus(50)
    );
  Sl_rdDBus_51_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(19),
      O => Sl_rdDBus(51)
    );
  Sl_rdDBus_52_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(20),
      O => Sl_rdDBus(52)
    );
  Sl_rdDBus_53_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(21),
      O => Sl_rdDBus(53)
    );
  Sl_rdDBus_54_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(22),
      O => Sl_rdDBus(54)
    );
  Sl_rdDBus_55_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(23),
      O => Sl_rdDBus(55)
    );
  Sl_rdDBus_56_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(24),
      O => Sl_rdDBus(56)
    );
  Sl_rdDBus_57_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(25),
      O => Sl_rdDBus(57)
    );
  Sl_rdDBus_58_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(26),
      O => Sl_rdDBus(58)
    );
  Sl_rdDBus_59_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(27),
      O => Sl_rdDBus(59)
    );
  Sl_rdDBus_60_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(28),
      O => Sl_rdDBus(60)
    );
  Sl_rdDBus_61_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(29),
      O => Sl_rdDBus(61)
    );
  Sl_rdDBus_62_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(30),
      O => Sl_rdDBus(62)
    );
  Sl_rdDBus_63_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(31),
      O => Sl_rdDBus(63)
    );
  Sl_rdDBus_64_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(0),
      O => Sl_rdDBus(64)
    );
  Sl_rdDBus_65_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(1),
      O => Sl_rdDBus(65)
    );
  Sl_rdDBus_66_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(2),
      O => Sl_rdDBus(66)
    );
  Sl_rdDBus_67_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(3),
      O => Sl_rdDBus(67)
    );
  Sl_rdDBus_68_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(4),
      O => Sl_rdDBus(68)
    );
  Sl_rdDBus_69_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(5),
      O => Sl_rdDBus(69)
    );
  Sl_rdDBus_70_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(6),
      O => Sl_rdDBus(70)
    );
  Sl_rdDBus_71_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(7),
      O => Sl_rdDBus(71)
    );
  Sl_rdDBus_72_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(8),
      O => Sl_rdDBus(72)
    );
  Sl_rdDBus_73_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(9),
      O => Sl_rdDBus(73)
    );
  Sl_rdDBus_74_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(10),
      O => Sl_rdDBus(74)
    );
  Sl_rdDBus_75_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(11),
      O => Sl_rdDBus(75)
    );
  Sl_rdDBus_76_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(12),
      O => Sl_rdDBus(76)
    );
  Sl_rdDBus_77_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(13),
      O => Sl_rdDBus(77)
    );
  Sl_rdDBus_78_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(14),
      O => Sl_rdDBus(78)
    );
  Sl_rdDBus_79_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(15),
      O => Sl_rdDBus(79)
    );
  Sl_rdDBus_80_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(16),
      O => Sl_rdDBus(80)
    );
  Sl_rdDBus_81_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(17),
      O => Sl_rdDBus(81)
    );
  Sl_rdDBus_82_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(18),
      O => Sl_rdDBus(82)
    );
  Sl_rdDBus_83_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(19),
      O => Sl_rdDBus(83)
    );
  Sl_rdDBus_84_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(20),
      O => Sl_rdDBus(84)
    );
  Sl_rdDBus_85_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(21),
      O => Sl_rdDBus(85)
    );
  Sl_rdDBus_86_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(22),
      O => Sl_rdDBus(86)
    );
  Sl_rdDBus_87_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(23),
      O => Sl_rdDBus(87)
    );
  Sl_rdDBus_88_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(24),
      O => Sl_rdDBus(88)
    );
  Sl_rdDBus_89_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(25),
      O => Sl_rdDBus(89)
    );
  Sl_rdDBus_90_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(26),
      O => Sl_rdDBus(90)
    );
  Sl_rdDBus_91_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(27),
      O => Sl_rdDBus(91)
    );
  Sl_rdDBus_92_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(28),
      O => Sl_rdDBus(92)
    );
  Sl_rdDBus_93_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(29),
      O => Sl_rdDBus(93)
    );
  Sl_rdDBus_94_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(30),
      O => Sl_rdDBus(94)
    );
  Sl_rdDBus_95_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(31),
      O => Sl_rdDBus(95)
    );
  Sl_rdDBus_96_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(0),
      O => Sl_rdDBus(96)
    );
  Sl_rdDBus_97_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(1),
      O => Sl_rdDBus(97)
    );
  Sl_rdDBus_98_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(2),
      O => Sl_rdDBus(98)
    );
  Sl_rdDBus_99_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(3),
      O => Sl_rdDBus(99)
    );
  Sl_rdDBus_100_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(4),
      O => Sl_rdDBus(100)
    );
  Sl_rdDBus_101_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(5),
      O => Sl_rdDBus(101)
    );
  Sl_rdDBus_102_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(6),
      O => Sl_rdDBus(102)
    );
  Sl_rdDBus_103_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(7),
      O => Sl_rdDBus(103)
    );
  Sl_rdDBus_104_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(8),
      O => Sl_rdDBus(104)
    );
  Sl_rdDBus_105_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(9),
      O => Sl_rdDBus(105)
    );
  Sl_rdDBus_106_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(10),
      O => Sl_rdDBus(106)
    );
  Sl_rdDBus_107_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(11),
      O => Sl_rdDBus(107)
    );
  Sl_rdDBus_108_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(12),
      O => Sl_rdDBus(108)
    );
  Sl_rdDBus_109_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(13),
      O => Sl_rdDBus(109)
    );
  Sl_rdDBus_110_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(14),
      O => Sl_rdDBus(110)
    );
  Sl_rdDBus_111_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(15),
      O => Sl_rdDBus(111)
    );
  Sl_rdDBus_112_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(16),
      O => Sl_rdDBus(112)
    );
  Sl_rdDBus_113_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(17),
      O => Sl_rdDBus(113)
    );
  Sl_rdDBus_114_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(18),
      O => Sl_rdDBus(114)
    );
  Sl_rdDBus_115_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(19),
      O => Sl_rdDBus(115)
    );
  Sl_rdDBus_116_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(20),
      O => Sl_rdDBus(116)
    );
  Sl_rdDBus_117_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(21),
      O => Sl_rdDBus(117)
    );
  Sl_rdDBus_118_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(22),
      O => Sl_rdDBus(118)
    );
  Sl_rdDBus_119_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(23),
      O => Sl_rdDBus(119)
    );
  Sl_rdDBus_120_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(24),
      O => Sl_rdDBus(120)
    );
  Sl_rdDBus_121_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(25),
      O => Sl_rdDBus(121)
    );
  Sl_rdDBus_122_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(26),
      O => Sl_rdDBus(122)
    );
  Sl_rdDBus_123_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(27),
      O => Sl_rdDBus(123)
    );
  Sl_rdDBus_124_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(28),
      O => Sl_rdDBus(124)
    );
  Sl_rdDBus_125_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(29),
      O => Sl_rdDBus(125)
    );
  Sl_rdDBus_126_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(30),
      O => Sl_rdDBus(126)
    );
  Sl_rdDBus_127_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rddbus_i(31),
      O => Sl_rdDBus(127)
    );
  Sl_SSize_0_OBUF : OBUF
    port map (
      I => Sl_MWrErr_0_OBUF_400,
      O => Sl_SSize(0)
    );
  Sl_SSize_1_OBUF : OBUF
    port map (
      I => Sl_MWrErr_0_OBUF_400,
      O => Sl_SSize(1)
    );
  Sl_MBusy_0_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_mbusy_i(0),
      O => Sl_MBusy(0)
    );
  Sl_MBusy_1_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_mbusy_i(1),
      O => Sl_MBusy(1)
    );
  Sl_MBusy_2_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_mbusy_i(2),
      O => Sl_MBusy(2)
    );
  Sl_MBusy_3_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_mbusy_i(3),
      O => Sl_MBusy(3)
    );
  Sl_MBusy_4_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_mbusy_i(4),
      O => Sl_MBusy(4)
    );
  Sl_MBusy_5_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_mbusy_i(5),
      O => Sl_MBusy(5)
    );
  Sl_MBusy_6_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_mbusy_i(6),
      O => Sl_MBusy(6)
    );
  Sl_MBusy_7_OBUF : OBUF
    port map (
      I => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_mbusy_i(7),
      O => Sl_MBusy(7)
    );
  Sl_MIRQ_0_OBUF : OBUF
    port map (
      I => Sl_MWrErr_0_OBUF_400,
      O => Sl_MIRQ(0)
    );
  Sl_MIRQ_1_OBUF : OBUF
    port map (
      I => Sl_MWrErr_0_OBUF_400,
      O => Sl_MIRQ(1)
    );
  Sl_MIRQ_2_OBUF : OBUF
    port map (
      I => Sl_MWrErr_0_OBUF_400,
      O => Sl_MIRQ(2)
    );
  Sl_MIRQ_3_OBUF : OBUF
    port map (
      I => Sl_MWrErr_0_OBUF_400,
      O => Sl_MIRQ(3)
    );
  Sl_MIRQ_4_OBUF : OBUF
    port map (
      I => Sl_MWrErr_0_OBUF_400,
      O => Sl_MIRQ(4)
    );
  Sl_MIRQ_5_OBUF : OBUF
    port map (
      I => Sl_MWrErr_0_OBUF_400,
      O => Sl_MIRQ(5)
    );
  Sl_MIRQ_6_OBUF : OBUF
    port map (
      I => Sl_MWrErr_0_OBUF_400,
      O => Sl_MIRQ(6)
    );
  Sl_MIRQ_7_OBUF : OBUF
    port map (
      I => Sl_MWrErr_0_OBUF_400,
      O => Sl_MIRQ(7)
    );
  Sl_rdWdAddr_0_OBUF : OBUF
    port map (
      I => Sl_MWrErr_0_OBUF_400,
      O => Sl_rdWdAddr(0)
    );
  Sl_rdWdAddr_1_OBUF : OBUF
    port map (
      I => Sl_MWrErr_0_OBUF_400,
      O => Sl_rdWdAddr(1)
    );
  Sl_rdWdAddr_2_OBUF : OBUF
    port map (
      I => Sl_MWrErr_0_OBUF_400,
      O => Sl_rdWdAddr(2)
    );
  Sl_rdWdAddr_3_OBUF : OBUF
    port map (
      I => Sl_MWrErr_0_OBUF_400,
      O => Sl_rdWdAddr(3)
    );
  USER_LOGIC_I_my_leds_7 : FDS
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => USER_LOGIC_I_my_leds_mux0002_7_59,
      S => USER_LOGIC_I_my_leds_mux0002_7_0_866,
      Q => USER_LOGIC_I_my_leds(7)
    );
  USER_LOGIC_I_my_leds_6 : FDS
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => USER_LOGIC_I_my_leds_mux0002_6_59,
      S => USER_LOGIC_I_my_leds_mux0002_6_0_864,
      Q => USER_LOGIC_I_my_leds(6)
    );
  USER_LOGIC_I_my_leds_5 : FDS
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => USER_LOGIC_I_my_leds_mux0002_5_59,
      S => USER_LOGIC_I_my_leds_mux0002_5_0_862,
      Q => USER_LOGIC_I_my_leds(5)
    );
  USER_LOGIC_I_my_leds_4 : FDS
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => USER_LOGIC_I_my_leds_mux0002_4_59,
      S => USER_LOGIC_I_my_leds_mux0002_4_0_860,
      Q => USER_LOGIC_I_my_leds(4)
    );
  USER_LOGIC_I_my_leds_3 : FDS
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => USER_LOGIC_I_my_leds_mux0002_3_59,
      S => USER_LOGIC_I_my_leds_mux0002_3_0_858,
      Q => USER_LOGIC_I_my_leds(3)
    );
  USER_LOGIC_I_my_leds_2 : FDS
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => USER_LOGIC_I_my_leds_mux0002_2_59,
      S => USER_LOGIC_I_my_leds_mux0002_2_0_856,
      Q => USER_LOGIC_I_my_leds(2)
    );
  USER_LOGIC_I_my_leds_1 : FDS
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => USER_LOGIC_I_my_leds_mux0002_1_59,
      S => USER_LOGIC_I_my_leds_mux0002_1_0_854,
      Q => USER_LOGIC_I_my_leds(1)
    );
  USER_LOGIC_I_my_leds_0 : FDS
    port map (
      C => SPLB_Clk_BUFGP_365,
      D => USER_LOGIC_I_my_leds_mux0002_0_59,
      S => USER_LOGIC_I_my_leds_mux0002_0_0_852,
      Q => USER_LOGIC_I_my_leds(0)
    );
  USER_LOGIC_I_Mcount_my_counter_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => USER_LOGIC_I_my_counter(6),
      O => USER_LOGIC_I_Mcount_my_counter_cy_6_rt_669
    );
  USER_LOGIC_I_Mcount_my_counter_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => USER_LOGIC_I_my_counter(5),
      O => USER_LOGIC_I_Mcount_my_counter_cy_5_rt_667
    );
  USER_LOGIC_I_Mcount_my_counter_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => USER_LOGIC_I_my_counter(4),
      O => USER_LOGIC_I_Mcount_my_counter_cy_4_rt_665
    );
  USER_LOGIC_I_Mcount_my_counter_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => USER_LOGIC_I_my_counter(3),
      O => USER_LOGIC_I_Mcount_my_counter_cy_3_rt_663
    );
  USER_LOGIC_I_Mcount_my_counter_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => USER_LOGIC_I_my_counter(2),
      O => USER_LOGIC_I_Mcount_my_counter_cy_2_rt_661
    );
  USER_LOGIC_I_Mcount_my_counter_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => USER_LOGIC_I_my_counter(1),
      O => USER_LOGIC_I_Mcount_my_counter_cy_1_rt_659
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_25_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => USER_LOGIC_I_mi_divisor_cuenta(25),
      O => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_25_rt_744
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => USER_LOGIC_I_mi_divisor_cuenta(24),
      O => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_24_rt_742
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => USER_LOGIC_I_mi_divisor_cuenta(23),
      O => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_23_rt_740
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => USER_LOGIC_I_mi_divisor_cuenta(22),
      O => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_22_rt_738
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => USER_LOGIC_I_mi_divisor_cuenta(21),
      O => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_21_rt_736
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => USER_LOGIC_I_mi_divisor_cuenta(20),
      O => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_20_rt_734
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => USER_LOGIC_I_mi_divisor_cuenta(19),
      O => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_19_rt_730
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => USER_LOGIC_I_mi_divisor_cuenta(18),
      O => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_18_rt_728
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => USER_LOGIC_I_mi_divisor_cuenta(17),
      O => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_17_rt_726
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => USER_LOGIC_I_mi_divisor_cuenta(16),
      O => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_16_rt_724
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => USER_LOGIC_I_mi_divisor_cuenta(15),
      O => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_15_rt_722
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => USER_LOGIC_I_mi_divisor_cuenta(14),
      O => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_14_rt_720
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => USER_LOGIC_I_mi_divisor_cuenta(13),
      O => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_13_rt_718
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => USER_LOGIC_I_mi_divisor_cuenta(12),
      O => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_12_rt_716
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => USER_LOGIC_I_mi_divisor_cuenta(11),
      O => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_11_rt_714
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => USER_LOGIC_I_mi_divisor_cuenta(10),
      O => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_10_rt_712
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => USER_LOGIC_I_mi_divisor_cuenta(9),
      O => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_9_rt_760
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => USER_LOGIC_I_mi_divisor_cuenta(8),
      O => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_8_rt_758
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => USER_LOGIC_I_mi_divisor_cuenta(7),
      O => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_7_rt_756
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => USER_LOGIC_I_mi_divisor_cuenta(6),
      O => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_6_rt_754
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => USER_LOGIC_I_mi_divisor_cuenta(5),
      O => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_5_rt_752
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => USER_LOGIC_I_mi_divisor_cuenta(4),
      O => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_4_rt_750
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => USER_LOGIC_I_mi_divisor_cuenta(3),
      O => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_3_rt_748
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => USER_LOGIC_I_mi_divisor_cuenta(2),
      O => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_2_rt_746
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => USER_LOGIC_I_mi_divisor_cuenta(1),
      O => USER_LOGIC_I_mi_divisor_Mcount_cuenta_cy_1_rt_732
    );
  USER_LOGIC_I_Mcount_my_counter_xor_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => USER_LOGIC_I_my_counter(7),
      O => USER_LOGIC_I_Mcount_my_counter_xor_7_rt_671
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_xor_26_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => USER_LOGIC_I_mi_divisor_cuenta(26),
      O => USER_LOGIC_I_mi_divisor_Mcount_cuenta_xor_26_rt_789
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rearbitrate_ns133 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_size_reg(2),
      I1 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_size_reg(0),
      I2 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rearbitrate_ns131_225,
      I3 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rearbitrate_ns17_226,
      O => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_N11
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_wrce_clr1 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => SPLB_Rst_IBUF_367,
      I1 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rnw_s_h_101,
      I2 => user_IP2Bus_RdAck,
      I3 => user_IP2Bus_WrAck,
      O => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_wrce_clr
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_clr1 : LUT4
    generic map(
      INIT => X"FFFB"
    )
    port map (
      I0 => SPLB_Rst_IBUF_367,
      I1 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rnw_s_h_101,
      I2 => user_IP2Bus_RdAck,
      I3 => user_IP2Bus_WrAck,
      O => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_clr
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_decode_s_h_cs1 : LUT4
    generic map(
      INIT => X"CF8F"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_wrcomp_i_227,
      I1 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_decode_hit_reg_90,
      I2 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_busy_173,
      I3 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_rd_clear_sl_busy_170,
      O => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_decode_s_h_cs
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rearbitrate_ns2 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_busy_173,
      I1 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_wrcomp_i_227,
      I2 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_rd_clear_sl_busy_170,
      I3 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_N11,
      O => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rearbitrate_ns
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_addr_cntl_ns1 : LUT4
    generic map(
      INIT => X"5700"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_busy_173,
      I1 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_rd_clear_sl_busy_170,
      I2 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_wrcomp_i_227,
      I3 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_N11,
      O => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_addr_cntl_ns
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i_2_1 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_set_sl_busy_171,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_ce_expnd_i(2),
      R => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_clr,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i_2_1_98
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i_1_1 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_set_sl_busy_171,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_ce_expnd_i(1),
      R => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_clr,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i_1_1_96
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i_0_1 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_set_sl_busy_171,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_ce_expnd_i(0),
      R => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_clr,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i_0_1_94
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i_3_1 : FDRE
    port map (
      C => SPLB_Clk_BUFGP_365,
      CE => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_set_sl_busy_171,
      D => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_ce_expnd_i(3),
      R => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_clr,
      Q => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i_3_1_100
    );
  USER_LOGIC_I_my_leds_mux0002_7_591 : MUXF5
    port map (
      I0 => N2,
      I1 => N3,
      S => switches_1_IBUF_1053,
      O => USER_LOGIC_I_my_leds_mux0002_7_59
    );
  USER_LOGIC_I_my_leds_mux0002_7_591_F : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => switches_0_IBUF_1052,
      I1 => USER_LOGIC_I_slv_reg0(0),
      I2 => switches_3_IBUF_1054,
      I3 => USER_LOGIC_I_slv_reg1(0),
      O => N2
    );
  USER_LOGIC_I_my_leds_mux0002_7_591_G : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => switches_0_IBUF_1052,
      I1 => USER_LOGIC_I_slv_reg2(0),
      I2 => switches_3_IBUF_1054,
      I3 => USER_LOGIC_I_slv_reg3(0),
      O => N3
    );
  USER_LOGIC_I_my_leds_mux0002_6_591 : MUXF5
    port map (
      I0 => N4,
      I1 => N5,
      S => switches_1_IBUF_1053,
      O => USER_LOGIC_I_my_leds_mux0002_6_59
    );
  USER_LOGIC_I_my_leds_mux0002_6_591_F : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => switches_0_IBUF_1052,
      I1 => USER_LOGIC_I_slv_reg0(1),
      I2 => switches_3_IBUF_1054,
      I3 => USER_LOGIC_I_slv_reg1(1),
      O => N4
    );
  USER_LOGIC_I_my_leds_mux0002_6_591_G : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => switches_0_IBUF_1052,
      I1 => USER_LOGIC_I_slv_reg2(1),
      I2 => switches_3_IBUF_1054,
      I3 => USER_LOGIC_I_slv_reg3(1),
      O => N5
    );
  USER_LOGIC_I_my_leds_mux0002_5_591 : MUXF5
    port map (
      I0 => N6,
      I1 => N7,
      S => switches_1_IBUF_1053,
      O => USER_LOGIC_I_my_leds_mux0002_5_59
    );
  USER_LOGIC_I_my_leds_mux0002_5_591_F : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => switches_0_IBUF_1052,
      I1 => USER_LOGIC_I_slv_reg0(2),
      I2 => switches_3_IBUF_1054,
      I3 => USER_LOGIC_I_slv_reg1(2),
      O => N6
    );
  USER_LOGIC_I_my_leds_mux0002_5_591_G : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => switches_0_IBUF_1052,
      I1 => USER_LOGIC_I_slv_reg2(2),
      I2 => switches_3_IBUF_1054,
      I3 => USER_LOGIC_I_slv_reg3(2),
      O => N7
    );
  USER_LOGIC_I_my_leds_mux0002_4_591 : MUXF5
    port map (
      I0 => N8,
      I1 => N9,
      S => switches_1_IBUF_1053,
      O => USER_LOGIC_I_my_leds_mux0002_4_59
    );
  USER_LOGIC_I_my_leds_mux0002_4_591_F : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => switches_0_IBUF_1052,
      I1 => USER_LOGIC_I_slv_reg0(3),
      I2 => switches_3_IBUF_1054,
      I3 => USER_LOGIC_I_slv_reg1(3),
      O => N8
    );
  USER_LOGIC_I_my_leds_mux0002_4_591_G : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => switches_0_IBUF_1052,
      I1 => USER_LOGIC_I_slv_reg2(3),
      I2 => switches_3_IBUF_1054,
      I3 => USER_LOGIC_I_slv_reg3(3),
      O => N9
    );
  USER_LOGIC_I_my_leds_mux0002_3_591 : MUXF5
    port map (
      I0 => N10,
      I1 => N11,
      S => switches_1_IBUF_1053,
      O => USER_LOGIC_I_my_leds_mux0002_3_59
    );
  USER_LOGIC_I_my_leds_mux0002_3_591_F : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => switches_0_IBUF_1052,
      I1 => USER_LOGIC_I_slv_reg0(4),
      I2 => switches_3_IBUF_1054,
      I3 => USER_LOGIC_I_slv_reg1(4),
      O => N10
    );
  USER_LOGIC_I_my_leds_mux0002_3_591_G : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => switches_0_IBUF_1052,
      I1 => USER_LOGIC_I_slv_reg2(4),
      I2 => switches_3_IBUF_1054,
      I3 => USER_LOGIC_I_slv_reg3(4),
      O => N11
    );
  USER_LOGIC_I_my_leds_mux0002_2_591 : MUXF5
    port map (
      I0 => N12,
      I1 => N13,
      S => switches_1_IBUF_1053,
      O => USER_LOGIC_I_my_leds_mux0002_2_59
    );
  USER_LOGIC_I_my_leds_mux0002_2_591_F : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => switches_0_IBUF_1052,
      I1 => USER_LOGIC_I_slv_reg0(5),
      I2 => switches_3_IBUF_1054,
      I3 => USER_LOGIC_I_slv_reg1(5),
      O => N12
    );
  USER_LOGIC_I_my_leds_mux0002_2_591_G : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => switches_0_IBUF_1052,
      I1 => USER_LOGIC_I_slv_reg2(5),
      I2 => switches_3_IBUF_1054,
      I3 => USER_LOGIC_I_slv_reg3(5),
      O => N13
    );
  USER_LOGIC_I_my_leds_mux0002_1_591 : MUXF5
    port map (
      I0 => N14,
      I1 => N15,
      S => switches_1_IBUF_1053,
      O => USER_LOGIC_I_my_leds_mux0002_1_59
    );
  USER_LOGIC_I_my_leds_mux0002_1_591_F : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => switches_0_IBUF_1052,
      I1 => USER_LOGIC_I_slv_reg0(6),
      I2 => switches_3_IBUF_1054,
      I3 => USER_LOGIC_I_slv_reg1(6),
      O => N14
    );
  USER_LOGIC_I_my_leds_mux0002_1_591_G : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => switches_0_IBUF_1052,
      I1 => USER_LOGIC_I_slv_reg2(6),
      I2 => switches_3_IBUF_1054,
      I3 => USER_LOGIC_I_slv_reg3(6),
      O => N15
    );
  USER_LOGIC_I_my_leds_mux0002_0_591 : MUXF5
    port map (
      I0 => N16,
      I1 => N17,
      S => switches_1_IBUF_1053,
      O => USER_LOGIC_I_my_leds_mux0002_0_59
    );
  USER_LOGIC_I_my_leds_mux0002_0_591_F : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => switches_0_IBUF_1052,
      I1 => USER_LOGIC_I_slv_reg0(7),
      I2 => switches_3_IBUF_1054,
      I3 => USER_LOGIC_I_slv_reg1(7),
      O => N16
    );
  USER_LOGIC_I_my_leds_mux0002_0_591_G : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => switches_0_IBUF_1052,
      I1 => USER_LOGIC_I_slv_reg2(7),
      I2 => switches_3_IBUF_1054,
      I3 => USER_LOGIC_I_slv_reg3(7),
      O => N17
    );
  USER_LOGIC_I_IP2Bus_Data_9_68 : MUXF5
    port map (
      I0 => N18,
      I1 => N19,
      S => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(3),
      O => user_IP2Bus_Data(9)
    );
  USER_LOGIC_I_IP2Bus_Data_9_68_F : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(2),
      I1 => USER_LOGIC_I_IP2Bus_Data_9_51_577,
      I2 => USER_LOGIC_I_slv_reg2(9),
      I3 => USER_LOGIC_I_IP2Bus_Data_0_20,
      O => N18
    );
  USER_LOGIC_I_IP2Bus_Data_9_68_G : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => USER_LOGIC_I_IP2Bus_Data_0_20,
      I1 => USER_LOGIC_I_slv_reg3(9),
      I2 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(2),
      O => N19
    );
  USER_LOGIC_I_IP2Bus_Data_8_68 : MUXF5
    port map (
      I0 => N20,
      I1 => N21,
      S => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(3),
      O => user_IP2Bus_Data(8)
    );
  USER_LOGIC_I_IP2Bus_Data_8_68_F : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(2),
      I1 => USER_LOGIC_I_IP2Bus_Data_8_51_576,
      I2 => USER_LOGIC_I_slv_reg2(8),
      I3 => USER_LOGIC_I_IP2Bus_Data_0_20,
      O => N20
    );
  USER_LOGIC_I_IP2Bus_Data_8_68_G : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => USER_LOGIC_I_IP2Bus_Data_0_20,
      I1 => USER_LOGIC_I_slv_reg3(8),
      I2 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(2),
      O => N21
    );
  USER_LOGIC_I_IP2Bus_Data_7_68 : MUXF5
    port map (
      I0 => N22,
      I1 => N23,
      S => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(3),
      O => user_IP2Bus_Data(7)
    );
  USER_LOGIC_I_IP2Bus_Data_7_68_F : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(2),
      I1 => USER_LOGIC_I_IP2Bus_Data_7_51_575,
      I2 => USER_LOGIC_I_slv_reg2(7),
      I3 => USER_LOGIC_I_IP2Bus_Data_0_20,
      O => N22
    );
  USER_LOGIC_I_IP2Bus_Data_7_68_G : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => USER_LOGIC_I_IP2Bus_Data_0_20,
      I1 => USER_LOGIC_I_slv_reg3(7),
      I2 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(2),
      O => N23
    );
  USER_LOGIC_I_IP2Bus_Data_6_68 : MUXF5
    port map (
      I0 => N24,
      I1 => N25,
      S => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(3),
      O => user_IP2Bus_Data(6)
    );
  USER_LOGIC_I_IP2Bus_Data_6_68_F : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(2),
      I1 => USER_LOGIC_I_IP2Bus_Data_6_51_574,
      I2 => USER_LOGIC_I_slv_reg2(6),
      I3 => USER_LOGIC_I_IP2Bus_Data_0_20,
      O => N24
    );
  USER_LOGIC_I_IP2Bus_Data_6_68_G : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => USER_LOGIC_I_IP2Bus_Data_0_20,
      I1 => USER_LOGIC_I_slv_reg3(6),
      I2 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(2),
      O => N25
    );
  USER_LOGIC_I_IP2Bus_Data_5_68 : MUXF5
    port map (
      I0 => N26,
      I1 => N27,
      S => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(3),
      O => user_IP2Bus_Data(5)
    );
  USER_LOGIC_I_IP2Bus_Data_5_68_F : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(2),
      I1 => USER_LOGIC_I_IP2Bus_Data_5_51_573,
      I2 => USER_LOGIC_I_slv_reg2(5),
      I3 => USER_LOGIC_I_IP2Bus_Data_0_20,
      O => N26
    );
  USER_LOGIC_I_IP2Bus_Data_5_68_G : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => USER_LOGIC_I_IP2Bus_Data_0_20,
      I1 => USER_LOGIC_I_slv_reg3(5),
      I2 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(2),
      O => N27
    );
  USER_LOGIC_I_IP2Bus_Data_4_68 : MUXF5
    port map (
      I0 => N28,
      I1 => N29,
      S => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(3),
      O => user_IP2Bus_Data(4)
    );
  USER_LOGIC_I_IP2Bus_Data_4_68_F : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(2),
      I1 => USER_LOGIC_I_IP2Bus_Data_4_51_572,
      I2 => USER_LOGIC_I_slv_reg2(4),
      I3 => USER_LOGIC_I_IP2Bus_Data_0_20,
      O => N28
    );
  USER_LOGIC_I_IP2Bus_Data_4_68_G : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => USER_LOGIC_I_IP2Bus_Data_0_20,
      I1 => USER_LOGIC_I_slv_reg3(4),
      I2 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(2),
      O => N29
    );
  USER_LOGIC_I_IP2Bus_Data_3_68 : MUXF5
    port map (
      I0 => N30,
      I1 => N31,
      S => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(3),
      O => user_IP2Bus_Data(3)
    );
  USER_LOGIC_I_IP2Bus_Data_3_68_F : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(2),
      I1 => USER_LOGIC_I_IP2Bus_Data_3_51_571,
      I2 => USER_LOGIC_I_slv_reg2(3),
      I3 => USER_LOGIC_I_IP2Bus_Data_0_20,
      O => N30
    );
  USER_LOGIC_I_IP2Bus_Data_3_68_G : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => USER_LOGIC_I_IP2Bus_Data_0_20,
      I1 => USER_LOGIC_I_slv_reg3(3),
      I2 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(2),
      O => N31
    );
  USER_LOGIC_I_IP2Bus_Data_31_68 : MUXF5
    port map (
      I0 => N32,
      I1 => N33,
      S => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(3),
      O => user_IP2Bus_Data(31)
    );
  USER_LOGIC_I_IP2Bus_Data_31_68_F : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(2),
      I1 => USER_LOGIC_I_IP2Bus_Data_31_51_570,
      I2 => USER_LOGIC_I_slv_reg2(31),
      I3 => USER_LOGIC_I_IP2Bus_Data_0_20,
      O => N32
    );
  USER_LOGIC_I_IP2Bus_Data_31_68_G : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => USER_LOGIC_I_IP2Bus_Data_0_20,
      I1 => USER_LOGIC_I_slv_reg3(31),
      I2 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(2),
      O => N33
    );
  USER_LOGIC_I_IP2Bus_Data_30_68 : MUXF5
    port map (
      I0 => N34,
      I1 => N35,
      S => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(3),
      O => user_IP2Bus_Data(30)
    );
  USER_LOGIC_I_IP2Bus_Data_30_68_F : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(2),
      I1 => USER_LOGIC_I_IP2Bus_Data_30_51_569,
      I2 => USER_LOGIC_I_slv_reg2(30),
      I3 => USER_LOGIC_I_IP2Bus_Data_0_20,
      O => N34
    );
  USER_LOGIC_I_IP2Bus_Data_30_68_G : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => USER_LOGIC_I_IP2Bus_Data_0_20,
      I1 => USER_LOGIC_I_slv_reg3(30),
      I2 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(2),
      O => N35
    );
  USER_LOGIC_I_IP2Bus_Data_2_68 : MUXF5
    port map (
      I0 => N36,
      I1 => N37,
      S => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(3),
      O => user_IP2Bus_Data(2)
    );
  USER_LOGIC_I_IP2Bus_Data_2_68_F : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(2),
      I1 => USER_LOGIC_I_IP2Bus_Data_2_51_568,
      I2 => USER_LOGIC_I_slv_reg2(2),
      I3 => USER_LOGIC_I_IP2Bus_Data_0_20,
      O => N36
    );
  USER_LOGIC_I_IP2Bus_Data_2_68_G : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => USER_LOGIC_I_IP2Bus_Data_0_20,
      I1 => USER_LOGIC_I_slv_reg3(2),
      I2 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(2),
      O => N37
    );
  USER_LOGIC_I_IP2Bus_Data_29_68 : MUXF5
    port map (
      I0 => N38,
      I1 => N39,
      S => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(3),
      O => user_IP2Bus_Data(29)
    );
  USER_LOGIC_I_IP2Bus_Data_29_68_F : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(2),
      I1 => USER_LOGIC_I_IP2Bus_Data_29_51_567,
      I2 => USER_LOGIC_I_slv_reg2(29),
      I3 => USER_LOGIC_I_IP2Bus_Data_0_20,
      O => N38
    );
  USER_LOGIC_I_IP2Bus_Data_29_68_G : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => USER_LOGIC_I_IP2Bus_Data_0_20,
      I1 => USER_LOGIC_I_slv_reg3(29),
      I2 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(2),
      O => N39
    );
  USER_LOGIC_I_IP2Bus_Data_28_68 : MUXF5
    port map (
      I0 => N40,
      I1 => N41,
      S => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(3),
      O => user_IP2Bus_Data(28)
    );
  USER_LOGIC_I_IP2Bus_Data_28_68_F : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(2),
      I1 => USER_LOGIC_I_IP2Bus_Data_28_51_566,
      I2 => USER_LOGIC_I_slv_reg2(28),
      I3 => USER_LOGIC_I_IP2Bus_Data_0_20,
      O => N40
    );
  USER_LOGIC_I_IP2Bus_Data_28_68_G : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => USER_LOGIC_I_IP2Bus_Data_0_20,
      I1 => USER_LOGIC_I_slv_reg3(28),
      I2 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(2),
      O => N41
    );
  USER_LOGIC_I_IP2Bus_Data_27_68 : MUXF5
    port map (
      I0 => N42,
      I1 => N43,
      S => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(3),
      O => user_IP2Bus_Data(27)
    );
  USER_LOGIC_I_IP2Bus_Data_27_68_F : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(2),
      I1 => USER_LOGIC_I_IP2Bus_Data_27_51_565,
      I2 => USER_LOGIC_I_slv_reg2(27),
      I3 => USER_LOGIC_I_IP2Bus_Data_0_20,
      O => N42
    );
  USER_LOGIC_I_IP2Bus_Data_27_68_G : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => USER_LOGIC_I_IP2Bus_Data_0_20,
      I1 => USER_LOGIC_I_slv_reg3(27),
      I2 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(2),
      O => N43
    );
  USER_LOGIC_I_IP2Bus_Data_26_68 : MUXF5
    port map (
      I0 => N44,
      I1 => N45,
      S => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(3),
      O => user_IP2Bus_Data(26)
    );
  USER_LOGIC_I_IP2Bus_Data_26_68_F : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(2),
      I1 => USER_LOGIC_I_IP2Bus_Data_26_51_564,
      I2 => USER_LOGIC_I_slv_reg2(26),
      I3 => USER_LOGIC_I_IP2Bus_Data_0_20,
      O => N44
    );
  USER_LOGIC_I_IP2Bus_Data_26_68_G : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => USER_LOGIC_I_IP2Bus_Data_0_20,
      I1 => USER_LOGIC_I_slv_reg3(26),
      I2 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(2),
      O => N45
    );
  USER_LOGIC_I_IP2Bus_Data_25_68 : MUXF5
    port map (
      I0 => N46,
      I1 => N47,
      S => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(3),
      O => user_IP2Bus_Data(25)
    );
  USER_LOGIC_I_IP2Bus_Data_25_68_F : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(2),
      I1 => USER_LOGIC_I_IP2Bus_Data_25_51_563,
      I2 => USER_LOGIC_I_slv_reg2(25),
      I3 => USER_LOGIC_I_IP2Bus_Data_0_20,
      O => N46
    );
  USER_LOGIC_I_IP2Bus_Data_25_68_G : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => USER_LOGIC_I_IP2Bus_Data_0_20,
      I1 => USER_LOGIC_I_slv_reg3(25),
      I2 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(2),
      O => N47
    );
  USER_LOGIC_I_IP2Bus_Data_24_68 : MUXF5
    port map (
      I0 => N48,
      I1 => N49,
      S => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(3),
      O => user_IP2Bus_Data(24)
    );
  USER_LOGIC_I_IP2Bus_Data_24_68_F : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(2),
      I1 => USER_LOGIC_I_IP2Bus_Data_24_51_562,
      I2 => USER_LOGIC_I_slv_reg2(24),
      I3 => USER_LOGIC_I_IP2Bus_Data_0_20,
      O => N48
    );
  USER_LOGIC_I_IP2Bus_Data_24_68_G : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => USER_LOGIC_I_IP2Bus_Data_0_20,
      I1 => USER_LOGIC_I_slv_reg3(24),
      I2 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(2),
      O => N49
    );
  USER_LOGIC_I_IP2Bus_Data_23_68 : MUXF5
    port map (
      I0 => N50,
      I1 => N51,
      S => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(3),
      O => user_IP2Bus_Data(23)
    );
  USER_LOGIC_I_IP2Bus_Data_23_68_F : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(2),
      I1 => USER_LOGIC_I_IP2Bus_Data_23_51_561,
      I2 => USER_LOGIC_I_slv_reg2(23),
      I3 => USER_LOGIC_I_IP2Bus_Data_0_20,
      O => N50
    );
  USER_LOGIC_I_IP2Bus_Data_23_68_G : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => USER_LOGIC_I_IP2Bus_Data_0_20,
      I1 => USER_LOGIC_I_slv_reg3(23),
      I2 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(2),
      O => N51
    );
  USER_LOGIC_I_IP2Bus_Data_22_68 : MUXF5
    port map (
      I0 => N52,
      I1 => N53,
      S => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(3),
      O => user_IP2Bus_Data(22)
    );
  USER_LOGIC_I_IP2Bus_Data_22_68_F : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(2),
      I1 => USER_LOGIC_I_IP2Bus_Data_22_51_560,
      I2 => USER_LOGIC_I_slv_reg2(22),
      I3 => USER_LOGIC_I_IP2Bus_Data_0_20,
      O => N52
    );
  USER_LOGIC_I_IP2Bus_Data_22_68_G : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => USER_LOGIC_I_IP2Bus_Data_0_20,
      I1 => USER_LOGIC_I_slv_reg3(22),
      I2 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(2),
      O => N53
    );
  USER_LOGIC_I_IP2Bus_Data_21_68 : MUXF5
    port map (
      I0 => N54,
      I1 => N55,
      S => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(3),
      O => user_IP2Bus_Data(21)
    );
  USER_LOGIC_I_IP2Bus_Data_21_68_F : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(2),
      I1 => USER_LOGIC_I_IP2Bus_Data_21_51_559,
      I2 => USER_LOGIC_I_slv_reg2(21),
      I3 => USER_LOGIC_I_IP2Bus_Data_0_20,
      O => N54
    );
  USER_LOGIC_I_IP2Bus_Data_21_68_G : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => USER_LOGIC_I_IP2Bus_Data_0_20,
      I1 => USER_LOGIC_I_slv_reg3(21),
      I2 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(2),
      O => N55
    );
  USER_LOGIC_I_IP2Bus_Data_20_68 : MUXF5
    port map (
      I0 => N56,
      I1 => N57,
      S => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(3),
      O => user_IP2Bus_Data(20)
    );
  USER_LOGIC_I_IP2Bus_Data_20_68_F : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(2),
      I1 => USER_LOGIC_I_IP2Bus_Data_20_51_558,
      I2 => USER_LOGIC_I_slv_reg2(20),
      I3 => USER_LOGIC_I_IP2Bus_Data_0_20,
      O => N56
    );
  USER_LOGIC_I_IP2Bus_Data_20_68_G : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => USER_LOGIC_I_IP2Bus_Data_0_20,
      I1 => USER_LOGIC_I_slv_reg3(20),
      I2 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(2),
      O => N57
    );
  USER_LOGIC_I_IP2Bus_Data_1_68 : MUXF5
    port map (
      I0 => N58,
      I1 => N59,
      S => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(3),
      O => user_IP2Bus_Data(1)
    );
  USER_LOGIC_I_IP2Bus_Data_1_68_F : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(2),
      I1 => USER_LOGIC_I_IP2Bus_Data_1_51_557,
      I2 => USER_LOGIC_I_slv_reg2(1),
      I3 => USER_LOGIC_I_IP2Bus_Data_0_20,
      O => N58
    );
  USER_LOGIC_I_IP2Bus_Data_1_68_G : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => USER_LOGIC_I_IP2Bus_Data_0_20,
      I1 => USER_LOGIC_I_slv_reg3(1),
      I2 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(2),
      O => N59
    );
  USER_LOGIC_I_IP2Bus_Data_19_68 : MUXF5
    port map (
      I0 => N60,
      I1 => N61,
      S => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(3),
      O => user_IP2Bus_Data(19)
    );
  USER_LOGIC_I_IP2Bus_Data_19_68_F : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(2),
      I1 => USER_LOGIC_I_IP2Bus_Data_19_51_556,
      I2 => USER_LOGIC_I_slv_reg2(19),
      I3 => USER_LOGIC_I_IP2Bus_Data_0_20,
      O => N60
    );
  USER_LOGIC_I_IP2Bus_Data_19_68_G : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => USER_LOGIC_I_IP2Bus_Data_0_20,
      I1 => USER_LOGIC_I_slv_reg3(19),
      I2 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(2),
      O => N61
    );
  USER_LOGIC_I_IP2Bus_Data_18_68 : MUXF5
    port map (
      I0 => N62,
      I1 => N63,
      S => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(3),
      O => user_IP2Bus_Data(18)
    );
  USER_LOGIC_I_IP2Bus_Data_18_68_F : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(2),
      I1 => USER_LOGIC_I_IP2Bus_Data_18_51_555,
      I2 => USER_LOGIC_I_slv_reg2(18),
      I3 => USER_LOGIC_I_IP2Bus_Data_0_20,
      O => N62
    );
  USER_LOGIC_I_IP2Bus_Data_18_68_G : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => USER_LOGIC_I_IP2Bus_Data_0_20,
      I1 => USER_LOGIC_I_slv_reg3(18),
      I2 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(2),
      O => N63
    );
  USER_LOGIC_I_IP2Bus_Data_17_68 : MUXF5
    port map (
      I0 => N64,
      I1 => N65,
      S => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(3),
      O => user_IP2Bus_Data(17)
    );
  USER_LOGIC_I_IP2Bus_Data_17_68_F : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(2),
      I1 => USER_LOGIC_I_IP2Bus_Data_17_51_554,
      I2 => USER_LOGIC_I_slv_reg2(17),
      I3 => USER_LOGIC_I_IP2Bus_Data_0_20,
      O => N64
    );
  USER_LOGIC_I_IP2Bus_Data_17_68_G : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => USER_LOGIC_I_IP2Bus_Data_0_20,
      I1 => USER_LOGIC_I_slv_reg3(17),
      I2 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(2),
      O => N65
    );
  USER_LOGIC_I_IP2Bus_Data_16_64 : MUXF5
    port map (
      I0 => N66,
      I1 => N67,
      S => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(3),
      O => user_IP2Bus_Data(16)
    );
  USER_LOGIC_I_IP2Bus_Data_16_64_F : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(2),
      I1 => USER_LOGIC_I_IP2Bus_Data_16_47_553,
      I2 => USER_LOGIC_I_slv_reg2(16),
      I3 => USER_LOGIC_I_IP2Bus_Data_0_20,
      O => N66
    );
  USER_LOGIC_I_IP2Bus_Data_16_64_G : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => USER_LOGIC_I_IP2Bus_Data_0_20,
      I1 => USER_LOGIC_I_slv_reg3(16),
      I2 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(2),
      O => N67
    );
  USER_LOGIC_I_IP2Bus_Data_15_64 : MUXF5
    port map (
      I0 => N68,
      I1 => N69,
      S => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(3),
      O => user_IP2Bus_Data(15)
    );
  USER_LOGIC_I_IP2Bus_Data_15_64_F : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(2),
      I1 => USER_LOGIC_I_IP2Bus_Data_15_47_552,
      I2 => USER_LOGIC_I_slv_reg2(15),
      I3 => USER_LOGIC_I_IP2Bus_Data_0_20,
      O => N68
    );
  USER_LOGIC_I_IP2Bus_Data_15_64_G : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => USER_LOGIC_I_IP2Bus_Data_0_20,
      I1 => USER_LOGIC_I_slv_reg3(15),
      I2 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(2),
      O => N69
    );
  USER_LOGIC_I_IP2Bus_Data_14_64 : MUXF5
    port map (
      I0 => N70,
      I1 => N71,
      S => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(3),
      O => user_IP2Bus_Data(14)
    );
  USER_LOGIC_I_IP2Bus_Data_14_64_F : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(2),
      I1 => USER_LOGIC_I_IP2Bus_Data_14_47_551,
      I2 => USER_LOGIC_I_slv_reg2(14),
      I3 => USER_LOGIC_I_IP2Bus_Data_0_20,
      O => N70
    );
  USER_LOGIC_I_IP2Bus_Data_14_64_G : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => USER_LOGIC_I_IP2Bus_Data_0_20,
      I1 => USER_LOGIC_I_slv_reg3(14),
      I2 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(2),
      O => N71
    );
  USER_LOGIC_I_IP2Bus_Data_13_64 : MUXF5
    port map (
      I0 => N72,
      I1 => N73,
      S => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(3),
      O => user_IP2Bus_Data(13)
    );
  USER_LOGIC_I_IP2Bus_Data_13_64_F : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(2),
      I1 => USER_LOGIC_I_IP2Bus_Data_13_47_550,
      I2 => USER_LOGIC_I_slv_reg2(13),
      I3 => USER_LOGIC_I_IP2Bus_Data_0_20,
      O => N72
    );
  USER_LOGIC_I_IP2Bus_Data_13_64_G : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => USER_LOGIC_I_IP2Bus_Data_0_20,
      I1 => USER_LOGIC_I_slv_reg3(13),
      I2 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(2),
      O => N73
    );
  USER_LOGIC_I_IP2Bus_Data_12_64 : MUXF5
    port map (
      I0 => N74,
      I1 => N75,
      S => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(3),
      O => user_IP2Bus_Data(12)
    );
  USER_LOGIC_I_IP2Bus_Data_12_64_F : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(2),
      I1 => USER_LOGIC_I_IP2Bus_Data_12_47_549,
      I2 => USER_LOGIC_I_slv_reg2(12),
      I3 => USER_LOGIC_I_IP2Bus_Data_0_20,
      O => N74
    );
  USER_LOGIC_I_IP2Bus_Data_12_64_G : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => USER_LOGIC_I_IP2Bus_Data_0_20,
      I1 => USER_LOGIC_I_slv_reg3(12),
      I2 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(2),
      O => N75
    );
  USER_LOGIC_I_IP2Bus_Data_11_64 : MUXF5
    port map (
      I0 => N76,
      I1 => N77,
      S => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(3),
      O => user_IP2Bus_Data(11)
    );
  USER_LOGIC_I_IP2Bus_Data_11_64_F : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(2),
      I1 => USER_LOGIC_I_IP2Bus_Data_11_47_548,
      I2 => USER_LOGIC_I_slv_reg2(11),
      I3 => USER_LOGIC_I_IP2Bus_Data_0_20,
      O => N76
    );
  USER_LOGIC_I_IP2Bus_Data_11_64_G : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => USER_LOGIC_I_IP2Bus_Data_0_20,
      I1 => USER_LOGIC_I_slv_reg3(11),
      I2 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(2),
      O => N77
    );
  USER_LOGIC_I_IP2Bus_Data_10_64 : MUXF5
    port map (
      I0 => N78,
      I1 => N79,
      S => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(3),
      O => user_IP2Bus_Data(10)
    );
  USER_LOGIC_I_IP2Bus_Data_10_64_F : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(2),
      I1 => USER_LOGIC_I_IP2Bus_Data_10_47_547,
      I2 => USER_LOGIC_I_slv_reg2(10),
      I3 => USER_LOGIC_I_IP2Bus_Data_0_20,
      O => N78
    );
  USER_LOGIC_I_IP2Bus_Data_10_64_G : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => USER_LOGIC_I_IP2Bus_Data_0_20,
      I1 => USER_LOGIC_I_slv_reg3(10),
      I2 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(2),
      O => N79
    );
  USER_LOGIC_I_IP2Bus_Data_0_64 : MUXF5
    port map (
      I0 => N80,
      I1 => N81,
      S => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(3),
      O => user_IP2Bus_Data(0)
    );
  USER_LOGIC_I_IP2Bus_Data_0_64_F : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(2),
      I1 => USER_LOGIC_I_IP2Bus_Data_0_47_546,
      I2 => USER_LOGIC_I_slv_reg2(0),
      I3 => USER_LOGIC_I_IP2Bus_Data_0_20,
      O => N80
    );
  USER_LOGIC_I_IP2Bus_Data_0_64_G : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => USER_LOGIC_I_IP2Bus_Data_0_20,
      I1 => USER_LOGIC_I_slv_reg3(0),
      I2 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_rdce_out_i(2),
      O => N81
    );
  SPLB_Clk_BUFGP : BUFGP
    port map (
      I => SPLB_Clk,
      O => SPLB_Clk_BUFGP_365
    );
  USER_LOGIC_I_Mcount_my_counter_lut_0_INV_0 : INV
    port map (
      I => USER_LOGIC_I_my_counter(0),
      O => USER_LOGIC_I_Mcount_my_counter_lut(0)
    );
  USER_LOGIC_I_mi_divisor_Mcount_cuenta_lut_0_INV_0 : INV
    port map (
      I => USER_LOGIC_I_mi_divisor_cuenta(0),
      O => USER_LOGIC_I_mi_divisor_Mcount_cuenta_lut(0)
    );
  USER_LOGIC_I_Mcompar_my_counter_cmp_lt0000_cy_7_inv_INV_0 : INV
    port map (
      I => USER_LOGIC_I_Mcompar_my_counter_cmp_lt0000_cy(7),
      O => USER_LOGIC_I_my_counter_cmp_lt0000
    );
  USER_LOGIC_I_Bus2IP_Reset_inv1_INV_0 : INV
    port map (
      I => SPLB_Rst_IBUF_367,
      O => USER_LOGIC_I_Bus2IP_Reset_inv
    );
  USER_LOGIC_I_mi_divisor_clk_aux_not00011_INV_0 : INV
    port map (
      I => USER_LOGIC_I_mi_divisor_clk_aux_790,
      O => USER_LOGIC_I_mi_divisor_clk_aux_not0001
    );
  USER_LOGIC_I_slv_reg2_0_not000111 : LUT4_D
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_wrce_out_i(0),
      I1 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_wrce_out_i(3),
      I2 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_wrce_out_i(1),
      I3 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_wrce_out_i(2),
      LO => N82,
      O => USER_LOGIC_I_N3
    );
  USER_LOGIC_I_slv_reg1_0_not000111 : LUT4_D
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_wrce_out_i(2),
      I1 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_wrce_out_i(0),
      I2 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_wrce_out_i(3),
      I3 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_wrce_out_i(1),
      LO => N83,
      O => USER_LOGIC_I_N4
    );
  USER_LOGIC_I_slv_reg0_0_not000111 : LUT4_D
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_wrce_out_i(2),
      I1 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_wrce_out_i(3),
      I2 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_wrce_out_i(1),
      I3 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_I_DECODER_wrce_out_i(0),
      LO => N84,
      O => USER_LOGIC_I_N2
    );
  PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rearbitrate_ns131 : LUT4_L
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_type_reg(0),
      I1 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_size_reg(3),
      I2 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_plb_type_reg(1),
      I3 => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_addr_cntl_cs(0),
      LO => PLBV46_SLAVE_SINGLE_I_I_SLAVE_ATTACHMENT_sl_rearbitrate_ns131_225
    );

end Structure;

