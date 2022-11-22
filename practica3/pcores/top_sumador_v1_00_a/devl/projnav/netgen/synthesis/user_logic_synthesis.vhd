--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.15xf
--  \   \         Application: netgen
--  /   /         Filename: user_logic_synthesis.vhd
-- /___/   /\     Timestamp: Sun Nov 20 20:27:26 2022
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm user_logic -w -dir netgen/synthesis -ofmt vhdl -sim user_logic.ngc user_logic_synthesis.vhd 
-- Device	: xc3s1000-5-ft256
-- Input file	: user_logic.ngc
-- Output file	: \\vboxsvr\se\ws\practica3\pcores\top_sumador_v1_00_a\devl\projnav\netgen\synthesis\user_logic_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: user_logic
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

entity user_logic is
  port (
    IP2Bus_WrAck : out STD_LOGIC; 
    IP2Bus_Error : out STD_LOGIC; 
    Bus2IP_Clk : in STD_LOGIC := 'X'; 
    IP2Bus_RdAck : out STD_LOGIC; 
    Bus2IP_Reset : in STD_LOGIC := 'X'; 
    leds : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    IP2Bus_Data : out STD_LOGIC_VECTOR ( 0 to 31 ); 
    switches : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    Bus2IP_Data : in STD_LOGIC_VECTOR ( 0 to 31 ); 
    Bus2IP_RdCE : in STD_LOGIC_VECTOR ( 0 to 3 ); 
    Bus2IP_WrCE : in STD_LOGIC_VECTOR ( 0 to 3 ); 
    Bus2IP_BE : in STD_LOGIC_VECTOR ( 0 to 3 ) 
  );
end user_logic;

architecture Structure of user_logic is
  signal Bus2IP_BE_0_IBUF_4 : STD_LOGIC; 
  signal Bus2IP_BE_1_IBUF_5 : STD_LOGIC; 
  signal Bus2IP_BE_2_IBUF_6 : STD_LOGIC; 
  signal Bus2IP_BE_3_IBUF_7 : STD_LOGIC; 
  signal Bus2IP_Clk_BUFGP_9 : STD_LOGIC; 
  signal Bus2IP_Data_0_IBUF_42 : STD_LOGIC; 
  signal Bus2IP_Data_10_IBUF_43 : STD_LOGIC; 
  signal Bus2IP_Data_11_IBUF_44 : STD_LOGIC; 
  signal Bus2IP_Data_12_IBUF_45 : STD_LOGIC; 
  signal Bus2IP_Data_13_IBUF_46 : STD_LOGIC; 
  signal Bus2IP_Data_14_IBUF_47 : STD_LOGIC; 
  signal Bus2IP_Data_15_IBUF_48 : STD_LOGIC; 
  signal Bus2IP_Data_16_IBUF_49 : STD_LOGIC; 
  signal Bus2IP_Data_17_IBUF_50 : STD_LOGIC; 
  signal Bus2IP_Data_18_IBUF_51 : STD_LOGIC; 
  signal Bus2IP_Data_19_IBUF_52 : STD_LOGIC; 
  signal Bus2IP_Data_1_IBUF_53 : STD_LOGIC; 
  signal Bus2IP_Data_20_IBUF_54 : STD_LOGIC; 
  signal Bus2IP_Data_21_IBUF_55 : STD_LOGIC; 
  signal Bus2IP_Data_22_IBUF_56 : STD_LOGIC; 
  signal Bus2IP_Data_23_IBUF_57 : STD_LOGIC; 
  signal Bus2IP_Data_24_IBUF_58 : STD_LOGIC; 
  signal Bus2IP_Data_25_IBUF_59 : STD_LOGIC; 
  signal Bus2IP_Data_26_IBUF_60 : STD_LOGIC; 
  signal Bus2IP_Data_27_IBUF_61 : STD_LOGIC; 
  signal Bus2IP_Data_28_IBUF_62 : STD_LOGIC; 
  signal Bus2IP_Data_29_IBUF_63 : STD_LOGIC; 
  signal Bus2IP_Data_2_IBUF_64 : STD_LOGIC; 
  signal Bus2IP_Data_30_IBUF_65 : STD_LOGIC; 
  signal Bus2IP_Data_31_IBUF_66 : STD_LOGIC; 
  signal Bus2IP_Data_3_IBUF_67 : STD_LOGIC; 
  signal Bus2IP_Data_4_IBUF_68 : STD_LOGIC; 
  signal Bus2IP_Data_5_IBUF_69 : STD_LOGIC; 
  signal Bus2IP_Data_6_IBUF_70 : STD_LOGIC; 
  signal Bus2IP_Data_7_IBUF_71 : STD_LOGIC; 
  signal Bus2IP_Data_8_IBUF_72 : STD_LOGIC; 
  signal Bus2IP_Data_9_IBUF_73 : STD_LOGIC; 
  signal Bus2IP_RdCE_0_IBUF_78 : STD_LOGIC; 
  signal Bus2IP_RdCE_1_IBUF_79 : STD_LOGIC; 
  signal Bus2IP_RdCE_2_IBUF_80 : STD_LOGIC; 
  signal Bus2IP_RdCE_3_IBUF_81 : STD_LOGIC; 
  signal Bus2IP_Reset_IBUF_83 : STD_LOGIC; 
  signal Bus2IP_Reset_inv : STD_LOGIC; 
  signal Bus2IP_WrCE_0_IBUF_89 : STD_LOGIC; 
  signal Bus2IP_WrCE_1_IBUF_90 : STD_LOGIC; 
  signal Bus2IP_WrCE_2_IBUF_91 : STD_LOGIC; 
  signal Bus2IP_WrCE_3_IBUF_92 : STD_LOGIC; 
  signal IP2Bus_Data_0_22 : STD_LOGIC; 
  signal IP2Bus_Data_0_51_95 : STD_LOGIC; 
  signal IP2Bus_Data_10_51_97 : STD_LOGIC; 
  signal IP2Bus_Data_11_51_99 : STD_LOGIC; 
  signal IP2Bus_Data_12_51_101 : STD_LOGIC; 
  signal IP2Bus_Data_13_51_103 : STD_LOGIC; 
  signal IP2Bus_Data_14_51_105 : STD_LOGIC; 
  signal IP2Bus_Data_15_51_107 : STD_LOGIC; 
  signal IP2Bus_Data_16_51_109 : STD_LOGIC; 
  signal IP2Bus_Data_17_51_111 : STD_LOGIC; 
  signal IP2Bus_Data_18_51_113 : STD_LOGIC; 
  signal IP2Bus_Data_19_51_115 : STD_LOGIC; 
  signal IP2Bus_Data_1_51_117 : STD_LOGIC; 
  signal IP2Bus_Data_20_51_119 : STD_LOGIC; 
  signal IP2Bus_Data_21_51_121 : STD_LOGIC; 
  signal IP2Bus_Data_22_51_123 : STD_LOGIC; 
  signal IP2Bus_Data_23_51_125 : STD_LOGIC; 
  signal IP2Bus_Data_24_51_127 : STD_LOGIC; 
  signal IP2Bus_Data_25_51_129 : STD_LOGIC; 
  signal IP2Bus_Data_26_51_131 : STD_LOGIC; 
  signal IP2Bus_Data_27_51_133 : STD_LOGIC; 
  signal IP2Bus_Data_28_51_135 : STD_LOGIC; 
  signal IP2Bus_Data_29_51_137 : STD_LOGIC; 
  signal IP2Bus_Data_2_51_139 : STD_LOGIC; 
  signal IP2Bus_Data_30_51_141 : STD_LOGIC; 
  signal IP2Bus_Data_31_51_143 : STD_LOGIC; 
  signal IP2Bus_Data_3_51_145 : STD_LOGIC; 
  signal IP2Bus_Data_4_51_147 : STD_LOGIC; 
  signal IP2Bus_Data_5_51_149 : STD_LOGIC; 
  signal IP2Bus_Data_6_51_151 : STD_LOGIC; 
  signal IP2Bus_Data_7_51_153 : STD_LOGIC; 
  signal IP2Bus_Data_8_51_155 : STD_LOGIC; 
  signal IP2Bus_Data_9_51_157 : STD_LOGIC; 
  signal IP2Bus_Data_0_OBUF_158 : STD_LOGIC; 
  signal IP2Bus_Data_10_OBUF_159 : STD_LOGIC; 
  signal IP2Bus_Data_11_OBUF_160 : STD_LOGIC; 
  signal IP2Bus_Data_12_OBUF_161 : STD_LOGIC; 
  signal IP2Bus_Data_13_OBUF_162 : STD_LOGIC; 
  signal IP2Bus_Data_14_OBUF_163 : STD_LOGIC; 
  signal IP2Bus_Data_15_OBUF_164 : STD_LOGIC; 
  signal IP2Bus_Data_16_OBUF_165 : STD_LOGIC; 
  signal IP2Bus_Data_17_OBUF_166 : STD_LOGIC; 
  signal IP2Bus_Data_18_OBUF_167 : STD_LOGIC; 
  signal IP2Bus_Data_19_OBUF_168 : STD_LOGIC; 
  signal IP2Bus_Data_1_OBUF_169 : STD_LOGIC; 
  signal IP2Bus_Data_20_OBUF_170 : STD_LOGIC; 
  signal IP2Bus_Data_21_OBUF_171 : STD_LOGIC; 
  signal IP2Bus_Data_22_OBUF_172 : STD_LOGIC; 
  signal IP2Bus_Data_23_OBUF_173 : STD_LOGIC; 
  signal IP2Bus_Data_24_OBUF_174 : STD_LOGIC; 
  signal IP2Bus_Data_25_OBUF_175 : STD_LOGIC; 
  signal IP2Bus_Data_26_OBUF_176 : STD_LOGIC; 
  signal IP2Bus_Data_27_OBUF_177 : STD_LOGIC; 
  signal IP2Bus_Data_28_OBUF_178 : STD_LOGIC; 
  signal IP2Bus_Data_29_OBUF_179 : STD_LOGIC; 
  signal IP2Bus_Data_2_OBUF_180 : STD_LOGIC; 
  signal IP2Bus_Data_30_OBUF_181 : STD_LOGIC; 
  signal IP2Bus_Data_31_OBUF_182 : STD_LOGIC; 
  signal IP2Bus_Data_3_OBUF_183 : STD_LOGIC; 
  signal IP2Bus_Data_4_OBUF_184 : STD_LOGIC; 
  signal IP2Bus_Data_5_OBUF_185 : STD_LOGIC; 
  signal IP2Bus_Data_6_OBUF_186 : STD_LOGIC; 
  signal IP2Bus_Data_7_OBUF_187 : STD_LOGIC; 
  signal IP2Bus_Data_8_OBUF_188 : STD_LOGIC; 
  signal IP2Bus_Data_9_OBUF_189 : STD_LOGIC; 
  signal IP2Bus_Error_OBUF_191 : STD_LOGIC; 
  signal IP2Bus_RdAck_OBUF_193 : STD_LOGIC; 
  signal IP2Bus_WrAck_OBUF_195 : STD_LOGIC; 
  signal Mcount_my_counter_cy_1_rt_277 : STD_LOGIC; 
  signal Mcount_my_counter_cy_2_rt_279 : STD_LOGIC; 
  signal Mcount_my_counter_cy_3_rt_281 : STD_LOGIC; 
  signal Mcount_my_counter_cy_4_rt_283 : STD_LOGIC; 
  signal Mcount_my_counter_cy_5_rt_285 : STD_LOGIC; 
  signal Mcount_my_counter_cy_6_rt_287 : STD_LOGIC; 
  signal Mcount_my_counter_xor_7_rt_289 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal N11 : STD_LOGIC; 
  signal N111 : STD_LOGIC; 
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
  signal N211 : STD_LOGIC; 
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
  signal N311 : STD_LOGIC; 
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
  signal N411 : STD_LOGIC; 
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
  signal N9 : STD_LOGIC; 
  signal Result_0_1 : STD_LOGIC; 
  signal Result_1_1 : STD_LOGIC; 
  signal Result_2_1 : STD_LOGIC; 
  signal Result_3_1 : STD_LOGIC; 
  signal Result_4_1 : STD_LOGIC; 
  signal Result_5_1 : STD_LOGIC; 
  signal Result_6_1 : STD_LOGIC; 
  signal Result_7_1 : STD_LOGIC; 
  signal mi_divisor_Mcount_cuenta_cy_10_rt_419 : STD_LOGIC; 
  signal mi_divisor_Mcount_cuenta_cy_11_rt_421 : STD_LOGIC; 
  signal mi_divisor_Mcount_cuenta_cy_12_rt_423 : STD_LOGIC; 
  signal mi_divisor_Mcount_cuenta_cy_13_rt_425 : STD_LOGIC; 
  signal mi_divisor_Mcount_cuenta_cy_14_rt_427 : STD_LOGIC; 
  signal mi_divisor_Mcount_cuenta_cy_15_rt_429 : STD_LOGIC; 
  signal mi_divisor_Mcount_cuenta_cy_16_rt_431 : STD_LOGIC; 
  signal mi_divisor_Mcount_cuenta_cy_17_rt_433 : STD_LOGIC; 
  signal mi_divisor_Mcount_cuenta_cy_18_rt_435 : STD_LOGIC; 
  signal mi_divisor_Mcount_cuenta_cy_19_rt_437 : STD_LOGIC; 
  signal mi_divisor_Mcount_cuenta_cy_1_rt_439 : STD_LOGIC; 
  signal mi_divisor_Mcount_cuenta_cy_20_rt_441 : STD_LOGIC; 
  signal mi_divisor_Mcount_cuenta_cy_21_rt_443 : STD_LOGIC; 
  signal mi_divisor_Mcount_cuenta_cy_22_rt_445 : STD_LOGIC; 
  signal mi_divisor_Mcount_cuenta_cy_23_rt_447 : STD_LOGIC; 
  signal mi_divisor_Mcount_cuenta_cy_24_rt_449 : STD_LOGIC; 
  signal mi_divisor_Mcount_cuenta_cy_25_rt_451 : STD_LOGIC; 
  signal mi_divisor_Mcount_cuenta_cy_2_rt_453 : STD_LOGIC; 
  signal mi_divisor_Mcount_cuenta_cy_3_rt_455 : STD_LOGIC; 
  signal mi_divisor_Mcount_cuenta_cy_4_rt_457 : STD_LOGIC; 
  signal mi_divisor_Mcount_cuenta_cy_5_rt_459 : STD_LOGIC; 
  signal mi_divisor_Mcount_cuenta_cy_6_rt_461 : STD_LOGIC; 
  signal mi_divisor_Mcount_cuenta_cy_7_rt_463 : STD_LOGIC; 
  signal mi_divisor_Mcount_cuenta_cy_8_rt_465 : STD_LOGIC; 
  signal mi_divisor_Mcount_cuenta_cy_9_rt_467 : STD_LOGIC; 
  signal mi_divisor_Mcount_cuenta_eqn_0 : STD_LOGIC; 
  signal mi_divisor_Mcount_cuenta_eqn_1 : STD_LOGIC; 
  signal mi_divisor_Mcount_cuenta_eqn_10 : STD_LOGIC; 
  signal mi_divisor_Mcount_cuenta_eqn_11 : STD_LOGIC; 
  signal mi_divisor_Mcount_cuenta_eqn_12 : STD_LOGIC; 
  signal mi_divisor_Mcount_cuenta_eqn_13 : STD_LOGIC; 
  signal mi_divisor_Mcount_cuenta_eqn_14 : STD_LOGIC; 
  signal mi_divisor_Mcount_cuenta_eqn_15 : STD_LOGIC; 
  signal mi_divisor_Mcount_cuenta_eqn_16 : STD_LOGIC; 
  signal mi_divisor_Mcount_cuenta_eqn_17 : STD_LOGIC; 
  signal mi_divisor_Mcount_cuenta_eqn_18 : STD_LOGIC; 
  signal mi_divisor_Mcount_cuenta_eqn_19 : STD_LOGIC; 
  signal mi_divisor_Mcount_cuenta_eqn_2 : STD_LOGIC; 
  signal mi_divisor_Mcount_cuenta_eqn_20 : STD_LOGIC; 
  signal mi_divisor_Mcount_cuenta_eqn_21 : STD_LOGIC; 
  signal mi_divisor_Mcount_cuenta_eqn_22 : STD_LOGIC; 
  signal mi_divisor_Mcount_cuenta_eqn_23 : STD_LOGIC; 
  signal mi_divisor_Mcount_cuenta_eqn_24 : STD_LOGIC; 
  signal mi_divisor_Mcount_cuenta_eqn_25 : STD_LOGIC; 
  signal mi_divisor_Mcount_cuenta_eqn_26 : STD_LOGIC; 
  signal mi_divisor_Mcount_cuenta_eqn_3 : STD_LOGIC; 
  signal mi_divisor_Mcount_cuenta_eqn_4 : STD_LOGIC; 
  signal mi_divisor_Mcount_cuenta_eqn_5 : STD_LOGIC; 
  signal mi_divisor_Mcount_cuenta_eqn_6 : STD_LOGIC; 
  signal mi_divisor_Mcount_cuenta_eqn_7 : STD_LOGIC; 
  signal mi_divisor_Mcount_cuenta_eqn_8 : STD_LOGIC; 
  signal mi_divisor_Mcount_cuenta_eqn_9 : STD_LOGIC; 
  signal mi_divisor_Mcount_cuenta_xor_26_rt_496 : STD_LOGIC; 
  signal mi_divisor_clk_aux_497 : STD_LOGIC; 
  signal mi_divisor_clk_aux_and0000 : STD_LOGIC; 
  signal mi_divisor_clk_aux_not0001 : STD_LOGIC; 
  signal mi_divisor_cuenta_cmp_eq0000 : STD_LOGIC; 
  signal my_counter_cmp_lt0000 : STD_LOGIC; 
  signal my_counter_reset_550 : STD_LOGIC; 
  signal my_leds_mux0002_0_0_559 : STD_LOGIC; 
  signal my_leds_mux0002_0_59 : STD_LOGIC; 
  signal my_leds_mux0002_1_0_561 : STD_LOGIC; 
  signal my_leds_mux0002_1_59 : STD_LOGIC; 
  signal my_leds_mux0002_2_0_563 : STD_LOGIC; 
  signal my_leds_mux0002_2_59 : STD_LOGIC; 
  signal my_leds_mux0002_3_0_565 : STD_LOGIC; 
  signal my_leds_mux0002_3_59 : STD_LOGIC; 
  signal my_leds_mux0002_4_0_567 : STD_LOGIC; 
  signal my_leds_mux0002_4_59 : STD_LOGIC; 
  signal my_leds_mux0002_5_0_569 : STD_LOGIC; 
  signal my_leds_mux0002_5_59 : STD_LOGIC; 
  signal my_leds_mux0002_6_0_571 : STD_LOGIC; 
  signal my_leds_mux0002_6_59 : STD_LOGIC; 
  signal my_leds_mux0002_7_0_573 : STD_LOGIC; 
  signal my_leds_mux0002_7_59 : STD_LOGIC; 
  signal slv_reg0_0_not0001 : STD_LOGIC; 
  signal slv_reg0_20_not0001 : STD_LOGIC; 
  signal slv_reg0_24_not0001 : STD_LOGIC; 
  signal slv_reg0_9_not0001 : STD_LOGIC; 
  signal slv_reg1_0_not0001 : STD_LOGIC; 
  signal slv_reg1_20_not0001 : STD_LOGIC; 
  signal slv_reg1_28_not0001 : STD_LOGIC; 
  signal slv_reg1_8_not0001 : STD_LOGIC; 
  signal slv_reg2_0_not0001 : STD_LOGIC; 
  signal slv_reg2_14_not0001 : STD_LOGIC; 
  signal slv_reg2_20_not0001 : STD_LOGIC; 
  signal slv_reg2_24_not0001 : STD_LOGIC; 
  signal slv_reg3_cmp_eq0000 : STD_LOGIC; 
  signal switches_0_IBUF_751 : STD_LOGIC; 
  signal switches_1_IBUF_752 : STD_LOGIC; 
  signal switches_3_IBUF_753 : STD_LOGIC; 
  signal Maddsub_slv_reg3_mux0000_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal Maddsub_slv_reg3_mux0000_lut : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal Mcompar_my_counter_cmp_lt0000_cy : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Mcompar_my_counter_cmp_lt0000_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Mcount_my_counter_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal Mcount_my_counter_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 26 downto 0 ); 
  signal mi_divisor_Mcount_cuenta_cy : STD_LOGIC_VECTOR ( 25 downto 0 ); 
  signal mi_divisor_Mcount_cuenta_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal mi_divisor_cuenta : STD_LOGIC_VECTOR ( 26 downto 0 ); 
  signal mi_divisor_cuenta_cmp_eq0000_wg_cy : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal mi_divisor_cuenta_cmp_eq0000_wg_lut : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal my_counter : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal my_leds : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal slv_reg0 : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal slv_reg1 : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal slv_reg2 : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal slv_reg3 : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal slv_reg3_mux0000 : STD_LOGIC_VECTOR ( 31 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => IP2Bus_Error_OBUF_191
    );
  XST_VCC : VCC
    port map (
      P => N1
    );
  slv_reg0_9 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg0_9_not0001,
      D => Bus2IP_Data_9_IBUF_73,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg0(9)
    );
  slv_reg1_28 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg1_28_not0001,
      D => Bus2IP_Data_28_IBUF_62,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg1(28)
    );
  slv_reg2_14 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg2_14_not0001,
      D => Bus2IP_Data_14_IBUF_47,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg2(14)
    );
  slv_reg2_20 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg2_20_not0001,
      D => Bus2IP_Data_20_IBUF_54,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg2(20)
    );
  slv_reg1_29 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg1_28_not0001,
      D => Bus2IP_Data_29_IBUF_63,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg1(29)
    );
  slv_reg2_15 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg2_14_not0001,
      D => Bus2IP_Data_15_IBUF_48,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg2(15)
    );
  slv_reg2_0 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg2_0_not0001,
      D => Bus2IP_Data_0_IBUF_42,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg2(0)
    );
  slv_reg2_16 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg2_20_not0001,
      D => Bus2IP_Data_16_IBUF_49,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg2(16)
    );
  slv_reg2_21 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg2_20_not0001,
      D => Bus2IP_Data_21_IBUF_55,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg2(21)
    );
  slv_reg2_1 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg2_0_not0001,
      D => Bus2IP_Data_1_IBUF_53,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg2(1)
    );
  slv_reg2_17 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg2_20_not0001,
      D => Bus2IP_Data_17_IBUF_50,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg2(17)
    );
  slv_reg2_22 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg2_20_not0001,
      D => Bus2IP_Data_22_IBUF_56,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg2(22)
    );
  slv_reg2_23 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg2_20_not0001,
      D => Bus2IP_Data_23_IBUF_57,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg2(23)
    );
  slv_reg2_18 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg2_20_not0001,
      D => Bus2IP_Data_18_IBUF_51,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg2(18)
    );
  slv_reg2_2 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg2_0_not0001,
      D => Bus2IP_Data_2_IBUF_64,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg2(2)
    );
  slv_reg2_19 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg2_20_not0001,
      D => Bus2IP_Data_19_IBUF_52,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg2(19)
    );
  slv_reg2_25 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg2_24_not0001,
      D => Bus2IP_Data_25_IBUF_59,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg2(25)
    );
  slv_reg2_24 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg2_24_not0001,
      D => Bus2IP_Data_24_IBUF_58,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg2(24)
    );
  slv_reg2_3 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg2_0_not0001,
      D => Bus2IP_Data_3_IBUF_67,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg2(3)
    );
  slv_reg2_26 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg2_24_not0001,
      D => Bus2IP_Data_26_IBUF_60,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg2(26)
    );
  slv_reg2_30 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg2_24_not0001,
      D => Bus2IP_Data_30_IBUF_65,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg2(30)
    );
  slv_reg2_4 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg2_0_not0001,
      D => Bus2IP_Data_4_IBUF_68,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg2(4)
    );
  slv_reg2_27 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg2_24_not0001,
      D => Bus2IP_Data_27_IBUF_61,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg2(27)
    );
  slv_reg2_31 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg2_24_not0001,
      D => Bus2IP_Data_31_IBUF_66,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg2(31)
    );
  slv_reg2_5 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg2_0_not0001,
      D => Bus2IP_Data_5_IBUF_69,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg2(5)
    );
  slv_reg2_6 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg2_0_not0001,
      D => Bus2IP_Data_6_IBUF_70,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg2(6)
    );
  slv_reg2_28 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg2_24_not0001,
      D => Bus2IP_Data_28_IBUF_62,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg2(28)
    );
  slv_reg2_7 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg2_0_not0001,
      D => Bus2IP_Data_7_IBUF_71,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg2(7)
    );
  slv_reg2_29 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg2_24_not0001,
      D => Bus2IP_Data_29_IBUF_63,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg2(29)
    );
  slv_reg1_0 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg1_0_not0001,
      D => Bus2IP_Data_0_IBUF_42,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg1(0)
    );
  slv_reg2_8 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg2_14_not0001,
      D => Bus2IP_Data_8_IBUF_72,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg2(8)
    );
  slv_reg2_9 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg2_14_not0001,
      D => Bus2IP_Data_9_IBUF_73,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg2(9)
    );
  slv_reg0_11 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg0_9_not0001,
      D => Bus2IP_Data_11_IBUF_44,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg0(11)
    );
  slv_reg0_10 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg0_9_not0001,
      D => Bus2IP_Data_10_IBUF_43,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg0(10)
    );
  slv_reg1_1 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg1_0_not0001,
      D => Bus2IP_Data_1_IBUF_53,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg1(1)
    );
  slv_reg1_3 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg1_0_not0001,
      D => Bus2IP_Data_3_IBUF_67,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg1(3)
    );
  slv_reg1_2 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg1_0_not0001,
      D => Bus2IP_Data_2_IBUF_64,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg1(2)
    );
  slv_reg0_12 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg0_9_not0001,
      D => Bus2IP_Data_12_IBUF_45,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg0(12)
    );
  slv_reg0_13 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg0_9_not0001,
      D => Bus2IP_Data_13_IBUF_46,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg0(13)
    );
  slv_reg1_4 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg1_0_not0001,
      D => Bus2IP_Data_4_IBUF_68,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg1(4)
    );
  slv_reg0_14 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg0_9_not0001,
      D => Bus2IP_Data_14_IBUF_47,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg0(14)
    );
  slv_reg0_20 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg0_20_not0001,
      D => Bus2IP_Data_20_IBUF_54,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg0(20)
    );
  slv_reg1_5 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg1_0_not0001,
      D => Bus2IP_Data_5_IBUF_69,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg1(5)
    );
  slv_reg0_15 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg0_9_not0001,
      D => Bus2IP_Data_15_IBUF_48,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg0(15)
    );
  slv_reg0_21 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg0_20_not0001,
      D => Bus2IP_Data_21_IBUF_55,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg0(21)
    );
  slv_reg1_6 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg1_0_not0001,
      D => Bus2IP_Data_6_IBUF_70,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg1(6)
    );
  slv_reg0_16 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg0_20_not0001,
      D => Bus2IP_Data_16_IBUF_49,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg0(16)
    );
  slv_reg0_22 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg0_20_not0001,
      D => Bus2IP_Data_22_IBUF_56,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg0(22)
    );
  slv_reg1_7 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg1_0_not0001,
      D => Bus2IP_Data_7_IBUF_71,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg1(7)
    );
  slv_reg0_17 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg0_20_not0001,
      D => Bus2IP_Data_17_IBUF_50,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg0(17)
    );
  slv_reg1_8 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg1_8_not0001,
      D => Bus2IP_Data_8_IBUF_72,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg1(8)
    );
  slv_reg0_18 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg0_20_not0001,
      D => Bus2IP_Data_18_IBUF_51,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg0(18)
    );
  slv_reg0_23 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg0_20_not0001,
      D => Bus2IP_Data_23_IBUF_57,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg0(23)
    );
  slv_reg1_9 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg1_8_not0001,
      D => Bus2IP_Data_9_IBUF_73,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg1(9)
    );
  slv_reg1_10 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg1_8_not0001,
      D => Bus2IP_Data_10_IBUF_43,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg1(10)
    );
  slv_reg0_19 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg0_20_not0001,
      D => Bus2IP_Data_19_IBUF_52,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg0(19)
    );
  slv_reg0_24 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg0_24_not0001,
      D => Bus2IP_Data_24_IBUF_58,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg0(24)
    );
  slv_reg0_30 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg0_24_not0001,
      D => Bus2IP_Data_30_IBUF_65,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg0(30)
    );
  slv_reg0_25 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg0_24_not0001,
      D => Bus2IP_Data_25_IBUF_59,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg0(25)
    );
  slv_reg0_31 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg0_24_not0001,
      D => Bus2IP_Data_31_IBUF_66,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg0(31)
    );
  slv_reg1_11 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg1_8_not0001,
      D => Bus2IP_Data_11_IBUF_44,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg1(11)
    );
  slv_reg0_26 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg0_24_not0001,
      D => Bus2IP_Data_26_IBUF_60,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg0(26)
    );
  slv_reg1_12 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg1_8_not0001,
      D => Bus2IP_Data_12_IBUF_45,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg1(12)
    );
  slv_reg0_27 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg0_24_not0001,
      D => Bus2IP_Data_27_IBUF_61,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg0(27)
    );
  slv_reg1_13 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg1_8_not0001,
      D => Bus2IP_Data_13_IBUF_46,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg1(13)
    );
  slv_reg0_28 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg0_24_not0001,
      D => Bus2IP_Data_28_IBUF_62,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg0(28)
    );
  slv_reg0_0 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg0_0_not0001,
      D => Bus2IP_Data_0_IBUF_42,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg0(0)
    );
  slv_reg1_14 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg1_8_not0001,
      D => Bus2IP_Data_14_IBUF_47,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg1(14)
    );
  slv_reg1_20 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg1_20_not0001,
      D => Bus2IP_Data_20_IBUF_54,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg1(20)
    );
  slv_reg0_29 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg0_24_not0001,
      D => Bus2IP_Data_29_IBUF_63,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg0(29)
    );
  slv_reg0_1 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg0_0_not0001,
      D => Bus2IP_Data_1_IBUF_53,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg0(1)
    );
  slv_reg1_21 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg1_20_not0001,
      D => Bus2IP_Data_21_IBUF_55,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg1(21)
    );
  slv_reg1_15 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg1_8_not0001,
      D => Bus2IP_Data_15_IBUF_48,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg1(15)
    );
  slv_reg0_2 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg0_0_not0001,
      D => Bus2IP_Data_2_IBUF_64,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg0(2)
    );
  slv_reg1_16 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg1_20_not0001,
      D => Bus2IP_Data_16_IBUF_49,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg1(16)
    );
  slv_reg0_3 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg0_0_not0001,
      D => Bus2IP_Data_3_IBUF_67,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg0(3)
    );
  slv_reg1_22 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg1_20_not0001,
      D => Bus2IP_Data_22_IBUF_56,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg1(22)
    );
  slv_reg1_17 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg1_20_not0001,
      D => Bus2IP_Data_17_IBUF_50,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg1(17)
    );
  slv_reg1_18 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg1_20_not0001,
      D => Bus2IP_Data_18_IBUF_51,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg1(18)
    );
  slv_reg0_4 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg0_0_not0001,
      D => Bus2IP_Data_4_IBUF_68,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg0(4)
    );
  slv_reg1_23 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg1_20_not0001,
      D => Bus2IP_Data_23_IBUF_57,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg1(23)
    );
  slv_reg1_19 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg1_20_not0001,
      D => Bus2IP_Data_19_IBUF_52,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg1(19)
    );
  slv_reg0_5 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg0_0_not0001,
      D => Bus2IP_Data_5_IBUF_69,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg0(5)
    );
  slv_reg1_24 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg1_28_not0001,
      D => Bus2IP_Data_24_IBUF_58,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg1(24)
    );
  slv_reg1_30 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg1_28_not0001,
      D => Bus2IP_Data_30_IBUF_65,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg1(30)
    );
  slv_reg2_10 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg2_14_not0001,
      D => Bus2IP_Data_10_IBUF_43,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg2(10)
    );
  slv_reg0_6 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg0_0_not0001,
      D => Bus2IP_Data_6_IBUF_70,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg0(6)
    );
  slv_reg0_7 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg0_0_not0001,
      D => Bus2IP_Data_7_IBUF_71,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg0(7)
    );
  slv_reg1_25 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg1_28_not0001,
      D => Bus2IP_Data_25_IBUF_59,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg1(25)
    );
  slv_reg2_11 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg2_14_not0001,
      D => Bus2IP_Data_11_IBUF_44,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg2(11)
    );
  slv_reg1_26 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg1_28_not0001,
      D => Bus2IP_Data_26_IBUF_60,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg1(26)
    );
  my_counter_reset : FDE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => Bus2IP_Reset_inv,
      D => slv_reg3_cmp_eq0000,
      Q => my_counter_reset_550
    );
  slv_reg1_31 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg1_28_not0001,
      D => Bus2IP_Data_31_IBUF_66,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg1(31)
    );
  slv_reg1_27 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg1_28_not0001,
      D => Bus2IP_Data_27_IBUF_61,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg1(27)
    );
  slv_reg2_12 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg2_14_not0001,
      D => Bus2IP_Data_12_IBUF_45,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg2(12)
    );
  slv_reg0_8 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg0_9_not0001,
      D => Bus2IP_Data_8_IBUF_72,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg0(8)
    );
  slv_reg2_13 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg2_14_not0001,
      D => Bus2IP_Data_13_IBUF_46,
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg2(13)
    );
  slv_reg3_31 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg3_cmp_eq0000,
      D => slv_reg3_mux0000(0),
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg3(31)
    );
  slv_reg3_30 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg3_cmp_eq0000,
      D => slv_reg3_mux0000(1),
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg3(30)
    );
  slv_reg3_29 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg3_cmp_eq0000,
      D => slv_reg3_mux0000(2),
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg3(29)
    );
  slv_reg3_28 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg3_cmp_eq0000,
      D => slv_reg3_mux0000(3),
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg3(28)
    );
  slv_reg3_27 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg3_cmp_eq0000,
      D => slv_reg3_mux0000(4),
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg3(27)
    );
  slv_reg3_26 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg3_cmp_eq0000,
      D => slv_reg3_mux0000(5),
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg3(26)
    );
  slv_reg3_25 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg3_cmp_eq0000,
      D => slv_reg3_mux0000(6),
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg3(25)
    );
  slv_reg3_24 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg3_cmp_eq0000,
      D => slv_reg3_mux0000(7),
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg3(24)
    );
  slv_reg3_23 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg3_cmp_eq0000,
      D => slv_reg3_mux0000(8),
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg3(23)
    );
  slv_reg3_22 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg3_cmp_eq0000,
      D => slv_reg3_mux0000(9),
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg3(22)
    );
  slv_reg3_21 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg3_cmp_eq0000,
      D => slv_reg3_mux0000(10),
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg3(21)
    );
  slv_reg3_20 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg3_cmp_eq0000,
      D => slv_reg3_mux0000(11),
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg3(20)
    );
  slv_reg3_19 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg3_cmp_eq0000,
      D => slv_reg3_mux0000(12),
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg3(19)
    );
  slv_reg3_18 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg3_cmp_eq0000,
      D => slv_reg3_mux0000(13),
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg3(18)
    );
  slv_reg3_17 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg3_cmp_eq0000,
      D => slv_reg3_mux0000(14),
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg3(17)
    );
  slv_reg3_16 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg3_cmp_eq0000,
      D => slv_reg3_mux0000(15),
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg3(16)
    );
  slv_reg3_15 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg3_cmp_eq0000,
      D => slv_reg3_mux0000(16),
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg3(15)
    );
  slv_reg3_14 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg3_cmp_eq0000,
      D => slv_reg3_mux0000(17),
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg3(14)
    );
  slv_reg3_13 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg3_cmp_eq0000,
      D => slv_reg3_mux0000(18),
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg3(13)
    );
  slv_reg3_12 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg3_cmp_eq0000,
      D => slv_reg3_mux0000(19),
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg3(12)
    );
  slv_reg3_11 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg3_cmp_eq0000,
      D => slv_reg3_mux0000(20),
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg3(11)
    );
  slv_reg3_10 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg3_cmp_eq0000,
      D => slv_reg3_mux0000(21),
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg3(10)
    );
  slv_reg3_9 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg3_cmp_eq0000,
      D => slv_reg3_mux0000(22),
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg3(9)
    );
  slv_reg3_8 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg3_cmp_eq0000,
      D => slv_reg3_mux0000(23),
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg3(8)
    );
  slv_reg3_7 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg3_cmp_eq0000,
      D => slv_reg3_mux0000(24),
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg3(7)
    );
  slv_reg3_6 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg3_cmp_eq0000,
      D => slv_reg3_mux0000(25),
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg3(6)
    );
  slv_reg3_5 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg3_cmp_eq0000,
      D => slv_reg3_mux0000(26),
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg3(5)
    );
  slv_reg3_4 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg3_cmp_eq0000,
      D => slv_reg3_mux0000(27),
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg3(4)
    );
  slv_reg3_3 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg3_cmp_eq0000,
      D => slv_reg3_mux0000(28),
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg3(3)
    );
  slv_reg3_2 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg3_cmp_eq0000,
      D => slv_reg3_mux0000(29),
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg3(2)
    );
  slv_reg3_1 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg3_cmp_eq0000,
      D => slv_reg3_mux0000(30),
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg3(1)
    );
  slv_reg3_0 : FDRE
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => slv_reg3_cmp_eq0000,
      D => slv_reg3_mux0000(31),
      R => Bus2IP_Reset_IBUF_83,
      Q => slv_reg3(0)
    );
  mi_divisor_clk_aux : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CE => mi_divisor_clk_aux_and0000,
      D => mi_divisor_clk_aux_not0001,
      Q => mi_divisor_clk_aux_497
    );
  mi_divisor_cuenta_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CLR => Bus2IP_Reset_inv,
      D => mi_divisor_Mcount_cuenta_eqn_0,
      Q => mi_divisor_cuenta(0)
    );
  mi_divisor_cuenta_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CLR => Bus2IP_Reset_inv,
      D => mi_divisor_Mcount_cuenta_eqn_1,
      Q => mi_divisor_cuenta(1)
    );
  mi_divisor_cuenta_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CLR => Bus2IP_Reset_inv,
      D => mi_divisor_Mcount_cuenta_eqn_2,
      Q => mi_divisor_cuenta(2)
    );
  mi_divisor_cuenta_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CLR => Bus2IP_Reset_inv,
      D => mi_divisor_Mcount_cuenta_eqn_3,
      Q => mi_divisor_cuenta(3)
    );
  mi_divisor_cuenta_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CLR => Bus2IP_Reset_inv,
      D => mi_divisor_Mcount_cuenta_eqn_4,
      Q => mi_divisor_cuenta(4)
    );
  mi_divisor_cuenta_5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CLR => Bus2IP_Reset_inv,
      D => mi_divisor_Mcount_cuenta_eqn_5,
      Q => mi_divisor_cuenta(5)
    );
  mi_divisor_cuenta_6 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CLR => Bus2IP_Reset_inv,
      D => mi_divisor_Mcount_cuenta_eqn_6,
      Q => mi_divisor_cuenta(6)
    );
  mi_divisor_cuenta_7 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CLR => Bus2IP_Reset_inv,
      D => mi_divisor_Mcount_cuenta_eqn_7,
      Q => mi_divisor_cuenta(7)
    );
  mi_divisor_cuenta_8 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CLR => Bus2IP_Reset_inv,
      D => mi_divisor_Mcount_cuenta_eqn_8,
      Q => mi_divisor_cuenta(8)
    );
  mi_divisor_cuenta_9 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CLR => Bus2IP_Reset_inv,
      D => mi_divisor_Mcount_cuenta_eqn_9,
      Q => mi_divisor_cuenta(9)
    );
  mi_divisor_cuenta_10 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CLR => Bus2IP_Reset_inv,
      D => mi_divisor_Mcount_cuenta_eqn_10,
      Q => mi_divisor_cuenta(10)
    );
  mi_divisor_cuenta_11 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CLR => Bus2IP_Reset_inv,
      D => mi_divisor_Mcount_cuenta_eqn_11,
      Q => mi_divisor_cuenta(11)
    );
  mi_divisor_cuenta_12 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CLR => Bus2IP_Reset_inv,
      D => mi_divisor_Mcount_cuenta_eqn_12,
      Q => mi_divisor_cuenta(12)
    );
  mi_divisor_cuenta_13 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CLR => Bus2IP_Reset_inv,
      D => mi_divisor_Mcount_cuenta_eqn_13,
      Q => mi_divisor_cuenta(13)
    );
  mi_divisor_cuenta_14 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CLR => Bus2IP_Reset_inv,
      D => mi_divisor_Mcount_cuenta_eqn_14,
      Q => mi_divisor_cuenta(14)
    );
  mi_divisor_cuenta_15 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CLR => Bus2IP_Reset_inv,
      D => mi_divisor_Mcount_cuenta_eqn_15,
      Q => mi_divisor_cuenta(15)
    );
  mi_divisor_cuenta_16 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CLR => Bus2IP_Reset_inv,
      D => mi_divisor_Mcount_cuenta_eqn_16,
      Q => mi_divisor_cuenta(16)
    );
  mi_divisor_cuenta_17 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CLR => Bus2IP_Reset_inv,
      D => mi_divisor_Mcount_cuenta_eqn_17,
      Q => mi_divisor_cuenta(17)
    );
  mi_divisor_cuenta_18 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CLR => Bus2IP_Reset_inv,
      D => mi_divisor_Mcount_cuenta_eqn_18,
      Q => mi_divisor_cuenta(18)
    );
  mi_divisor_cuenta_19 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CLR => Bus2IP_Reset_inv,
      D => mi_divisor_Mcount_cuenta_eqn_19,
      Q => mi_divisor_cuenta(19)
    );
  mi_divisor_cuenta_20 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CLR => Bus2IP_Reset_inv,
      D => mi_divisor_Mcount_cuenta_eqn_20,
      Q => mi_divisor_cuenta(20)
    );
  mi_divisor_cuenta_21 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CLR => Bus2IP_Reset_inv,
      D => mi_divisor_Mcount_cuenta_eqn_21,
      Q => mi_divisor_cuenta(21)
    );
  mi_divisor_cuenta_22 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CLR => Bus2IP_Reset_inv,
      D => mi_divisor_Mcount_cuenta_eqn_22,
      Q => mi_divisor_cuenta(22)
    );
  mi_divisor_cuenta_23 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CLR => Bus2IP_Reset_inv,
      D => mi_divisor_Mcount_cuenta_eqn_23,
      Q => mi_divisor_cuenta(23)
    );
  mi_divisor_cuenta_24 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CLR => Bus2IP_Reset_inv,
      D => mi_divisor_Mcount_cuenta_eqn_24,
      Q => mi_divisor_cuenta(24)
    );
  mi_divisor_cuenta_25 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CLR => Bus2IP_Reset_inv,
      D => mi_divisor_Mcount_cuenta_eqn_25,
      Q => mi_divisor_cuenta(25)
    );
  mi_divisor_cuenta_26 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      CLR => Bus2IP_Reset_inv,
      D => mi_divisor_Mcount_cuenta_eqn_26,
      Q => mi_divisor_cuenta(26)
    );
  my_counter_0 : FDRE
    port map (
      C => mi_divisor_clk_aux_497,
      CE => my_counter_cmp_lt0000,
      D => Result_0_1,
      R => my_counter_reset_550,
      Q => my_counter(0)
    );
  my_counter_1 : FDRE
    port map (
      C => mi_divisor_clk_aux_497,
      CE => my_counter_cmp_lt0000,
      D => Result_1_1,
      R => my_counter_reset_550,
      Q => my_counter(1)
    );
  my_counter_2 : FDRE
    port map (
      C => mi_divisor_clk_aux_497,
      CE => my_counter_cmp_lt0000,
      D => Result_2_1,
      R => my_counter_reset_550,
      Q => my_counter(2)
    );
  my_counter_3 : FDRE
    port map (
      C => mi_divisor_clk_aux_497,
      CE => my_counter_cmp_lt0000,
      D => Result_3_1,
      R => my_counter_reset_550,
      Q => my_counter(3)
    );
  my_counter_4 : FDRE
    port map (
      C => mi_divisor_clk_aux_497,
      CE => my_counter_cmp_lt0000,
      D => Result_4_1,
      R => my_counter_reset_550,
      Q => my_counter(4)
    );
  my_counter_5 : FDRE
    port map (
      C => mi_divisor_clk_aux_497,
      CE => my_counter_cmp_lt0000,
      D => Result_5_1,
      R => my_counter_reset_550,
      Q => my_counter(5)
    );
  my_counter_6 : FDRE
    port map (
      C => mi_divisor_clk_aux_497,
      CE => my_counter_cmp_lt0000,
      D => Result_6_1,
      R => my_counter_reset_550,
      Q => my_counter(6)
    );
  my_counter_7 : FDRE
    port map (
      C => mi_divisor_clk_aux_497,
      CE => my_counter_cmp_lt0000,
      D => Result_7_1,
      R => my_counter_reset_550,
      Q => my_counter(7)
    );
  Maddsub_slv_reg3_mux0000_lut_0_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => slv_reg1(31),
      I1 => slv_reg2(31),
      I2 => slv_reg0(31),
      O => Maddsub_slv_reg3_mux0000_lut(0)
    );
  Maddsub_slv_reg3_mux0000_cy_0_Q : MUXCY
    port map (
      CI => slv_reg0(31),
      DI => slv_reg1(31),
      S => Maddsub_slv_reg3_mux0000_lut(0),
      O => Maddsub_slv_reg3_mux0000_cy(0)
    );
  Maddsub_slv_reg3_mux0000_xor_0_Q : XORCY
    port map (
      CI => slv_reg0(31),
      LI => Maddsub_slv_reg3_mux0000_lut(0),
      O => slv_reg3_mux0000(0)
    );
  Maddsub_slv_reg3_mux0000_lut_1_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => slv_reg1(30),
      I1 => slv_reg2(30),
      I2 => slv_reg0(31),
      O => Maddsub_slv_reg3_mux0000_lut(1)
    );
  Maddsub_slv_reg3_mux0000_cy_1_Q : MUXCY
    port map (
      CI => Maddsub_slv_reg3_mux0000_cy(0),
      DI => slv_reg1(30),
      S => Maddsub_slv_reg3_mux0000_lut(1),
      O => Maddsub_slv_reg3_mux0000_cy(1)
    );
  Maddsub_slv_reg3_mux0000_xor_1_Q : XORCY
    port map (
      CI => Maddsub_slv_reg3_mux0000_cy(0),
      LI => Maddsub_slv_reg3_mux0000_lut(1),
      O => slv_reg3_mux0000(1)
    );
  Maddsub_slv_reg3_mux0000_lut_2_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => slv_reg1(29),
      I1 => slv_reg2(29),
      I2 => slv_reg0(31),
      O => Maddsub_slv_reg3_mux0000_lut(2)
    );
  Maddsub_slv_reg3_mux0000_cy_2_Q : MUXCY
    port map (
      CI => Maddsub_slv_reg3_mux0000_cy(1),
      DI => slv_reg1(29),
      S => Maddsub_slv_reg3_mux0000_lut(2),
      O => Maddsub_slv_reg3_mux0000_cy(2)
    );
  Maddsub_slv_reg3_mux0000_xor_2_Q : XORCY
    port map (
      CI => Maddsub_slv_reg3_mux0000_cy(1),
      LI => Maddsub_slv_reg3_mux0000_lut(2),
      O => slv_reg3_mux0000(2)
    );
  Maddsub_slv_reg3_mux0000_lut_3_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => slv_reg1(28),
      I1 => slv_reg2(28),
      I2 => slv_reg0(31),
      O => Maddsub_slv_reg3_mux0000_lut(3)
    );
  Maddsub_slv_reg3_mux0000_cy_3_Q : MUXCY
    port map (
      CI => Maddsub_slv_reg3_mux0000_cy(2),
      DI => slv_reg1(28),
      S => Maddsub_slv_reg3_mux0000_lut(3),
      O => Maddsub_slv_reg3_mux0000_cy(3)
    );
  Maddsub_slv_reg3_mux0000_xor_3_Q : XORCY
    port map (
      CI => Maddsub_slv_reg3_mux0000_cy(2),
      LI => Maddsub_slv_reg3_mux0000_lut(3),
      O => slv_reg3_mux0000(3)
    );
  Maddsub_slv_reg3_mux0000_lut_4_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => slv_reg1(27),
      I1 => slv_reg2(27),
      I2 => slv_reg0(31),
      O => Maddsub_slv_reg3_mux0000_lut(4)
    );
  Maddsub_slv_reg3_mux0000_cy_4_Q : MUXCY
    port map (
      CI => Maddsub_slv_reg3_mux0000_cy(3),
      DI => slv_reg1(27),
      S => Maddsub_slv_reg3_mux0000_lut(4),
      O => Maddsub_slv_reg3_mux0000_cy(4)
    );
  Maddsub_slv_reg3_mux0000_xor_4_Q : XORCY
    port map (
      CI => Maddsub_slv_reg3_mux0000_cy(3),
      LI => Maddsub_slv_reg3_mux0000_lut(4),
      O => slv_reg3_mux0000(4)
    );
  Maddsub_slv_reg3_mux0000_lut_5_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => slv_reg1(26),
      I1 => slv_reg2(26),
      I2 => slv_reg0(31),
      O => Maddsub_slv_reg3_mux0000_lut(5)
    );
  Maddsub_slv_reg3_mux0000_cy_5_Q : MUXCY
    port map (
      CI => Maddsub_slv_reg3_mux0000_cy(4),
      DI => slv_reg1(26),
      S => Maddsub_slv_reg3_mux0000_lut(5),
      O => Maddsub_slv_reg3_mux0000_cy(5)
    );
  Maddsub_slv_reg3_mux0000_xor_5_Q : XORCY
    port map (
      CI => Maddsub_slv_reg3_mux0000_cy(4),
      LI => Maddsub_slv_reg3_mux0000_lut(5),
      O => slv_reg3_mux0000(5)
    );
  Maddsub_slv_reg3_mux0000_lut_6_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => slv_reg1(25),
      I1 => slv_reg2(25),
      I2 => slv_reg0(31),
      O => Maddsub_slv_reg3_mux0000_lut(6)
    );
  Maddsub_slv_reg3_mux0000_cy_6_Q : MUXCY
    port map (
      CI => Maddsub_slv_reg3_mux0000_cy(5),
      DI => slv_reg1(25),
      S => Maddsub_slv_reg3_mux0000_lut(6),
      O => Maddsub_slv_reg3_mux0000_cy(6)
    );
  Maddsub_slv_reg3_mux0000_xor_6_Q : XORCY
    port map (
      CI => Maddsub_slv_reg3_mux0000_cy(5),
      LI => Maddsub_slv_reg3_mux0000_lut(6),
      O => slv_reg3_mux0000(6)
    );
  Maddsub_slv_reg3_mux0000_lut_7_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => slv_reg1(24),
      I1 => slv_reg2(24),
      I2 => slv_reg0(31),
      O => Maddsub_slv_reg3_mux0000_lut(7)
    );
  Maddsub_slv_reg3_mux0000_cy_7_Q : MUXCY
    port map (
      CI => Maddsub_slv_reg3_mux0000_cy(6),
      DI => slv_reg1(24),
      S => Maddsub_slv_reg3_mux0000_lut(7),
      O => Maddsub_slv_reg3_mux0000_cy(7)
    );
  Maddsub_slv_reg3_mux0000_xor_7_Q : XORCY
    port map (
      CI => Maddsub_slv_reg3_mux0000_cy(6),
      LI => Maddsub_slv_reg3_mux0000_lut(7),
      O => slv_reg3_mux0000(7)
    );
  Maddsub_slv_reg3_mux0000_lut_8_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => slv_reg1(23),
      I1 => slv_reg2(23),
      I2 => slv_reg0(31),
      O => Maddsub_slv_reg3_mux0000_lut(8)
    );
  Maddsub_slv_reg3_mux0000_cy_8_Q : MUXCY
    port map (
      CI => Maddsub_slv_reg3_mux0000_cy(7),
      DI => slv_reg1(23),
      S => Maddsub_slv_reg3_mux0000_lut(8),
      O => Maddsub_slv_reg3_mux0000_cy(8)
    );
  Maddsub_slv_reg3_mux0000_xor_8_Q : XORCY
    port map (
      CI => Maddsub_slv_reg3_mux0000_cy(7),
      LI => Maddsub_slv_reg3_mux0000_lut(8),
      O => slv_reg3_mux0000(8)
    );
  Maddsub_slv_reg3_mux0000_lut_9_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => slv_reg1(22),
      I1 => slv_reg2(22),
      I2 => slv_reg0(31),
      O => Maddsub_slv_reg3_mux0000_lut(9)
    );
  Maddsub_slv_reg3_mux0000_cy_9_Q : MUXCY
    port map (
      CI => Maddsub_slv_reg3_mux0000_cy(8),
      DI => slv_reg1(22),
      S => Maddsub_slv_reg3_mux0000_lut(9),
      O => Maddsub_slv_reg3_mux0000_cy(9)
    );
  Maddsub_slv_reg3_mux0000_xor_9_Q : XORCY
    port map (
      CI => Maddsub_slv_reg3_mux0000_cy(8),
      LI => Maddsub_slv_reg3_mux0000_lut(9),
      O => slv_reg3_mux0000(9)
    );
  Maddsub_slv_reg3_mux0000_lut_10_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => slv_reg1(21),
      I1 => slv_reg2(21),
      I2 => slv_reg0(31),
      O => Maddsub_slv_reg3_mux0000_lut(10)
    );
  Maddsub_slv_reg3_mux0000_cy_10_Q : MUXCY
    port map (
      CI => Maddsub_slv_reg3_mux0000_cy(9),
      DI => slv_reg1(21),
      S => Maddsub_slv_reg3_mux0000_lut(10),
      O => Maddsub_slv_reg3_mux0000_cy(10)
    );
  Maddsub_slv_reg3_mux0000_xor_10_Q : XORCY
    port map (
      CI => Maddsub_slv_reg3_mux0000_cy(9),
      LI => Maddsub_slv_reg3_mux0000_lut(10),
      O => slv_reg3_mux0000(10)
    );
  Maddsub_slv_reg3_mux0000_lut_11_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => slv_reg1(20),
      I1 => slv_reg2(20),
      I2 => slv_reg0(31),
      O => Maddsub_slv_reg3_mux0000_lut(11)
    );
  Maddsub_slv_reg3_mux0000_cy_11_Q : MUXCY
    port map (
      CI => Maddsub_slv_reg3_mux0000_cy(10),
      DI => slv_reg1(20),
      S => Maddsub_slv_reg3_mux0000_lut(11),
      O => Maddsub_slv_reg3_mux0000_cy(11)
    );
  Maddsub_slv_reg3_mux0000_xor_11_Q : XORCY
    port map (
      CI => Maddsub_slv_reg3_mux0000_cy(10),
      LI => Maddsub_slv_reg3_mux0000_lut(11),
      O => slv_reg3_mux0000(11)
    );
  Maddsub_slv_reg3_mux0000_lut_12_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => slv_reg1(19),
      I1 => slv_reg2(19),
      I2 => slv_reg0(31),
      O => Maddsub_slv_reg3_mux0000_lut(12)
    );
  Maddsub_slv_reg3_mux0000_cy_12_Q : MUXCY
    port map (
      CI => Maddsub_slv_reg3_mux0000_cy(11),
      DI => slv_reg1(19),
      S => Maddsub_slv_reg3_mux0000_lut(12),
      O => Maddsub_slv_reg3_mux0000_cy(12)
    );
  Maddsub_slv_reg3_mux0000_xor_12_Q : XORCY
    port map (
      CI => Maddsub_slv_reg3_mux0000_cy(11),
      LI => Maddsub_slv_reg3_mux0000_lut(12),
      O => slv_reg3_mux0000(12)
    );
  Maddsub_slv_reg3_mux0000_lut_13_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => slv_reg1(18),
      I1 => slv_reg2(18),
      I2 => slv_reg0(31),
      O => Maddsub_slv_reg3_mux0000_lut(13)
    );
  Maddsub_slv_reg3_mux0000_cy_13_Q : MUXCY
    port map (
      CI => Maddsub_slv_reg3_mux0000_cy(12),
      DI => slv_reg1(18),
      S => Maddsub_slv_reg3_mux0000_lut(13),
      O => Maddsub_slv_reg3_mux0000_cy(13)
    );
  Maddsub_slv_reg3_mux0000_xor_13_Q : XORCY
    port map (
      CI => Maddsub_slv_reg3_mux0000_cy(12),
      LI => Maddsub_slv_reg3_mux0000_lut(13),
      O => slv_reg3_mux0000(13)
    );
  Maddsub_slv_reg3_mux0000_lut_14_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => slv_reg1(17),
      I1 => slv_reg2(17),
      I2 => slv_reg0(31),
      O => Maddsub_slv_reg3_mux0000_lut(14)
    );
  Maddsub_slv_reg3_mux0000_cy_14_Q : MUXCY
    port map (
      CI => Maddsub_slv_reg3_mux0000_cy(13),
      DI => slv_reg1(17),
      S => Maddsub_slv_reg3_mux0000_lut(14),
      O => Maddsub_slv_reg3_mux0000_cy(14)
    );
  Maddsub_slv_reg3_mux0000_xor_14_Q : XORCY
    port map (
      CI => Maddsub_slv_reg3_mux0000_cy(13),
      LI => Maddsub_slv_reg3_mux0000_lut(14),
      O => slv_reg3_mux0000(14)
    );
  Maddsub_slv_reg3_mux0000_lut_15_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => slv_reg1(16),
      I1 => slv_reg2(16),
      I2 => slv_reg0(31),
      O => Maddsub_slv_reg3_mux0000_lut(15)
    );
  Maddsub_slv_reg3_mux0000_cy_15_Q : MUXCY
    port map (
      CI => Maddsub_slv_reg3_mux0000_cy(14),
      DI => slv_reg1(16),
      S => Maddsub_slv_reg3_mux0000_lut(15),
      O => Maddsub_slv_reg3_mux0000_cy(15)
    );
  Maddsub_slv_reg3_mux0000_xor_15_Q : XORCY
    port map (
      CI => Maddsub_slv_reg3_mux0000_cy(14),
      LI => Maddsub_slv_reg3_mux0000_lut(15),
      O => slv_reg3_mux0000(15)
    );
  Maddsub_slv_reg3_mux0000_lut_16_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => slv_reg1(15),
      I1 => slv_reg2(15),
      I2 => slv_reg0(31),
      O => Maddsub_slv_reg3_mux0000_lut(16)
    );
  Maddsub_slv_reg3_mux0000_cy_16_Q : MUXCY
    port map (
      CI => Maddsub_slv_reg3_mux0000_cy(15),
      DI => slv_reg1(15),
      S => Maddsub_slv_reg3_mux0000_lut(16),
      O => Maddsub_slv_reg3_mux0000_cy(16)
    );
  Maddsub_slv_reg3_mux0000_xor_16_Q : XORCY
    port map (
      CI => Maddsub_slv_reg3_mux0000_cy(15),
      LI => Maddsub_slv_reg3_mux0000_lut(16),
      O => slv_reg3_mux0000(16)
    );
  Maddsub_slv_reg3_mux0000_lut_17_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => slv_reg1(14),
      I1 => slv_reg2(14),
      I2 => slv_reg0(31),
      O => Maddsub_slv_reg3_mux0000_lut(17)
    );
  Maddsub_slv_reg3_mux0000_cy_17_Q : MUXCY
    port map (
      CI => Maddsub_slv_reg3_mux0000_cy(16),
      DI => slv_reg1(14),
      S => Maddsub_slv_reg3_mux0000_lut(17),
      O => Maddsub_slv_reg3_mux0000_cy(17)
    );
  Maddsub_slv_reg3_mux0000_xor_17_Q : XORCY
    port map (
      CI => Maddsub_slv_reg3_mux0000_cy(16),
      LI => Maddsub_slv_reg3_mux0000_lut(17),
      O => slv_reg3_mux0000(17)
    );
  Maddsub_slv_reg3_mux0000_lut_18_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => slv_reg1(13),
      I1 => slv_reg2(13),
      I2 => slv_reg0(31),
      O => Maddsub_slv_reg3_mux0000_lut(18)
    );
  Maddsub_slv_reg3_mux0000_cy_18_Q : MUXCY
    port map (
      CI => Maddsub_slv_reg3_mux0000_cy(17),
      DI => slv_reg1(13),
      S => Maddsub_slv_reg3_mux0000_lut(18),
      O => Maddsub_slv_reg3_mux0000_cy(18)
    );
  Maddsub_slv_reg3_mux0000_xor_18_Q : XORCY
    port map (
      CI => Maddsub_slv_reg3_mux0000_cy(17),
      LI => Maddsub_slv_reg3_mux0000_lut(18),
      O => slv_reg3_mux0000(18)
    );
  Maddsub_slv_reg3_mux0000_lut_19_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => slv_reg1(12),
      I1 => slv_reg2(12),
      I2 => slv_reg0(31),
      O => Maddsub_slv_reg3_mux0000_lut(19)
    );
  Maddsub_slv_reg3_mux0000_cy_19_Q : MUXCY
    port map (
      CI => Maddsub_slv_reg3_mux0000_cy(18),
      DI => slv_reg1(12),
      S => Maddsub_slv_reg3_mux0000_lut(19),
      O => Maddsub_slv_reg3_mux0000_cy(19)
    );
  Maddsub_slv_reg3_mux0000_xor_19_Q : XORCY
    port map (
      CI => Maddsub_slv_reg3_mux0000_cy(18),
      LI => Maddsub_slv_reg3_mux0000_lut(19),
      O => slv_reg3_mux0000(19)
    );
  Maddsub_slv_reg3_mux0000_lut_20_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => slv_reg1(11),
      I1 => slv_reg2(11),
      I2 => slv_reg0(31),
      O => Maddsub_slv_reg3_mux0000_lut(20)
    );
  Maddsub_slv_reg3_mux0000_cy_20_Q : MUXCY
    port map (
      CI => Maddsub_slv_reg3_mux0000_cy(19),
      DI => slv_reg1(11),
      S => Maddsub_slv_reg3_mux0000_lut(20),
      O => Maddsub_slv_reg3_mux0000_cy(20)
    );
  Maddsub_slv_reg3_mux0000_xor_20_Q : XORCY
    port map (
      CI => Maddsub_slv_reg3_mux0000_cy(19),
      LI => Maddsub_slv_reg3_mux0000_lut(20),
      O => slv_reg3_mux0000(20)
    );
  Maddsub_slv_reg3_mux0000_lut_21_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => slv_reg1(10),
      I1 => slv_reg2(10),
      I2 => slv_reg0(31),
      O => Maddsub_slv_reg3_mux0000_lut(21)
    );
  Maddsub_slv_reg3_mux0000_cy_21_Q : MUXCY
    port map (
      CI => Maddsub_slv_reg3_mux0000_cy(20),
      DI => slv_reg1(10),
      S => Maddsub_slv_reg3_mux0000_lut(21),
      O => Maddsub_slv_reg3_mux0000_cy(21)
    );
  Maddsub_slv_reg3_mux0000_xor_21_Q : XORCY
    port map (
      CI => Maddsub_slv_reg3_mux0000_cy(20),
      LI => Maddsub_slv_reg3_mux0000_lut(21),
      O => slv_reg3_mux0000(21)
    );
  Maddsub_slv_reg3_mux0000_lut_22_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => slv_reg1(9),
      I1 => slv_reg2(9),
      I2 => slv_reg0(31),
      O => Maddsub_slv_reg3_mux0000_lut(22)
    );
  Maddsub_slv_reg3_mux0000_cy_22_Q : MUXCY
    port map (
      CI => Maddsub_slv_reg3_mux0000_cy(21),
      DI => slv_reg1(9),
      S => Maddsub_slv_reg3_mux0000_lut(22),
      O => Maddsub_slv_reg3_mux0000_cy(22)
    );
  Maddsub_slv_reg3_mux0000_xor_22_Q : XORCY
    port map (
      CI => Maddsub_slv_reg3_mux0000_cy(21),
      LI => Maddsub_slv_reg3_mux0000_lut(22),
      O => slv_reg3_mux0000(22)
    );
  Maddsub_slv_reg3_mux0000_lut_23_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => slv_reg1(8),
      I1 => slv_reg2(8),
      I2 => slv_reg0(31),
      O => Maddsub_slv_reg3_mux0000_lut(23)
    );
  Maddsub_slv_reg3_mux0000_cy_23_Q : MUXCY
    port map (
      CI => Maddsub_slv_reg3_mux0000_cy(22),
      DI => slv_reg1(8),
      S => Maddsub_slv_reg3_mux0000_lut(23),
      O => Maddsub_slv_reg3_mux0000_cy(23)
    );
  Maddsub_slv_reg3_mux0000_xor_23_Q : XORCY
    port map (
      CI => Maddsub_slv_reg3_mux0000_cy(22),
      LI => Maddsub_slv_reg3_mux0000_lut(23),
      O => slv_reg3_mux0000(23)
    );
  Maddsub_slv_reg3_mux0000_lut_24_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => slv_reg1(7),
      I1 => slv_reg2(7),
      I2 => slv_reg0(31),
      O => Maddsub_slv_reg3_mux0000_lut(24)
    );
  Maddsub_slv_reg3_mux0000_cy_24_Q : MUXCY
    port map (
      CI => Maddsub_slv_reg3_mux0000_cy(23),
      DI => slv_reg1(7),
      S => Maddsub_slv_reg3_mux0000_lut(24),
      O => Maddsub_slv_reg3_mux0000_cy(24)
    );
  Maddsub_slv_reg3_mux0000_xor_24_Q : XORCY
    port map (
      CI => Maddsub_slv_reg3_mux0000_cy(23),
      LI => Maddsub_slv_reg3_mux0000_lut(24),
      O => slv_reg3_mux0000(24)
    );
  Maddsub_slv_reg3_mux0000_lut_25_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => slv_reg1(6),
      I1 => slv_reg2(6),
      I2 => slv_reg0(31),
      O => Maddsub_slv_reg3_mux0000_lut(25)
    );
  Maddsub_slv_reg3_mux0000_cy_25_Q : MUXCY
    port map (
      CI => Maddsub_slv_reg3_mux0000_cy(24),
      DI => slv_reg1(6),
      S => Maddsub_slv_reg3_mux0000_lut(25),
      O => Maddsub_slv_reg3_mux0000_cy(25)
    );
  Maddsub_slv_reg3_mux0000_xor_25_Q : XORCY
    port map (
      CI => Maddsub_slv_reg3_mux0000_cy(24),
      LI => Maddsub_slv_reg3_mux0000_lut(25),
      O => slv_reg3_mux0000(25)
    );
  Maddsub_slv_reg3_mux0000_lut_26_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => slv_reg1(5),
      I1 => slv_reg2(5),
      I2 => slv_reg0(31),
      O => Maddsub_slv_reg3_mux0000_lut(26)
    );
  Maddsub_slv_reg3_mux0000_cy_26_Q : MUXCY
    port map (
      CI => Maddsub_slv_reg3_mux0000_cy(25),
      DI => slv_reg1(5),
      S => Maddsub_slv_reg3_mux0000_lut(26),
      O => Maddsub_slv_reg3_mux0000_cy(26)
    );
  Maddsub_slv_reg3_mux0000_xor_26_Q : XORCY
    port map (
      CI => Maddsub_slv_reg3_mux0000_cy(25),
      LI => Maddsub_slv_reg3_mux0000_lut(26),
      O => slv_reg3_mux0000(26)
    );
  Maddsub_slv_reg3_mux0000_lut_27_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => slv_reg1(4),
      I1 => slv_reg2(4),
      I2 => slv_reg0(31),
      O => Maddsub_slv_reg3_mux0000_lut(27)
    );
  Maddsub_slv_reg3_mux0000_cy_27_Q : MUXCY
    port map (
      CI => Maddsub_slv_reg3_mux0000_cy(26),
      DI => slv_reg1(4),
      S => Maddsub_slv_reg3_mux0000_lut(27),
      O => Maddsub_slv_reg3_mux0000_cy(27)
    );
  Maddsub_slv_reg3_mux0000_xor_27_Q : XORCY
    port map (
      CI => Maddsub_slv_reg3_mux0000_cy(26),
      LI => Maddsub_slv_reg3_mux0000_lut(27),
      O => slv_reg3_mux0000(27)
    );
  Maddsub_slv_reg3_mux0000_lut_28_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => slv_reg1(3),
      I1 => slv_reg2(3),
      I2 => slv_reg0(31),
      O => Maddsub_slv_reg3_mux0000_lut(28)
    );
  Maddsub_slv_reg3_mux0000_cy_28_Q : MUXCY
    port map (
      CI => Maddsub_slv_reg3_mux0000_cy(27),
      DI => slv_reg1(3),
      S => Maddsub_slv_reg3_mux0000_lut(28),
      O => Maddsub_slv_reg3_mux0000_cy(28)
    );
  Maddsub_slv_reg3_mux0000_xor_28_Q : XORCY
    port map (
      CI => Maddsub_slv_reg3_mux0000_cy(27),
      LI => Maddsub_slv_reg3_mux0000_lut(28),
      O => slv_reg3_mux0000(28)
    );
  Maddsub_slv_reg3_mux0000_lut_29_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => slv_reg1(2),
      I1 => slv_reg2(2),
      I2 => slv_reg0(31),
      O => Maddsub_slv_reg3_mux0000_lut(29)
    );
  Maddsub_slv_reg3_mux0000_cy_29_Q : MUXCY
    port map (
      CI => Maddsub_slv_reg3_mux0000_cy(28),
      DI => slv_reg1(2),
      S => Maddsub_slv_reg3_mux0000_lut(29),
      O => Maddsub_slv_reg3_mux0000_cy(29)
    );
  Maddsub_slv_reg3_mux0000_xor_29_Q : XORCY
    port map (
      CI => Maddsub_slv_reg3_mux0000_cy(28),
      LI => Maddsub_slv_reg3_mux0000_lut(29),
      O => slv_reg3_mux0000(29)
    );
  Maddsub_slv_reg3_mux0000_lut_30_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => slv_reg1(1),
      I1 => slv_reg2(1),
      I2 => slv_reg0(31),
      O => Maddsub_slv_reg3_mux0000_lut(30)
    );
  Maddsub_slv_reg3_mux0000_cy_30_Q : MUXCY
    port map (
      CI => Maddsub_slv_reg3_mux0000_cy(29),
      DI => slv_reg1(1),
      S => Maddsub_slv_reg3_mux0000_lut(30),
      O => Maddsub_slv_reg3_mux0000_cy(30)
    );
  Maddsub_slv_reg3_mux0000_xor_30_Q : XORCY
    port map (
      CI => Maddsub_slv_reg3_mux0000_cy(29),
      LI => Maddsub_slv_reg3_mux0000_lut(30),
      O => slv_reg3_mux0000(30)
    );
  Maddsub_slv_reg3_mux0000_lut_31_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => slv_reg1(0),
      I1 => slv_reg2(0),
      I2 => slv_reg0(31),
      O => Maddsub_slv_reg3_mux0000_lut(31)
    );
  Maddsub_slv_reg3_mux0000_xor_31_Q : XORCY
    port map (
      CI => Maddsub_slv_reg3_mux0000_cy(30),
      LI => Maddsub_slv_reg3_mux0000_lut(31),
      O => slv_reg3_mux0000(31)
    );
  Mcompar_my_counter_cmp_lt0000_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => slv_reg3(7),
      I1 => my_counter(0),
      O => Mcompar_my_counter_cmp_lt0000_lut(0)
    );
  Mcompar_my_counter_cmp_lt0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => my_counter(0),
      S => Mcompar_my_counter_cmp_lt0000_lut(0),
      O => Mcompar_my_counter_cmp_lt0000_cy(0)
    );
  Mcompar_my_counter_cmp_lt0000_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => slv_reg3(6),
      I1 => my_counter(1),
      O => Mcompar_my_counter_cmp_lt0000_lut(1)
    );
  Mcompar_my_counter_cmp_lt0000_cy_1_Q : MUXCY
    port map (
      CI => Mcompar_my_counter_cmp_lt0000_cy(0),
      DI => my_counter(1),
      S => Mcompar_my_counter_cmp_lt0000_lut(1),
      O => Mcompar_my_counter_cmp_lt0000_cy(1)
    );
  Mcompar_my_counter_cmp_lt0000_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => slv_reg3(5),
      I1 => my_counter(2),
      O => Mcompar_my_counter_cmp_lt0000_lut(2)
    );
  Mcompar_my_counter_cmp_lt0000_cy_2_Q : MUXCY
    port map (
      CI => Mcompar_my_counter_cmp_lt0000_cy(1),
      DI => my_counter(2),
      S => Mcompar_my_counter_cmp_lt0000_lut(2),
      O => Mcompar_my_counter_cmp_lt0000_cy(2)
    );
  Mcompar_my_counter_cmp_lt0000_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => slv_reg3(4),
      I1 => my_counter(3),
      O => Mcompar_my_counter_cmp_lt0000_lut(3)
    );
  Mcompar_my_counter_cmp_lt0000_cy_3_Q : MUXCY
    port map (
      CI => Mcompar_my_counter_cmp_lt0000_cy(2),
      DI => my_counter(3),
      S => Mcompar_my_counter_cmp_lt0000_lut(3),
      O => Mcompar_my_counter_cmp_lt0000_cy(3)
    );
  Mcompar_my_counter_cmp_lt0000_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => slv_reg3(3),
      I1 => my_counter(4),
      O => Mcompar_my_counter_cmp_lt0000_lut(4)
    );
  Mcompar_my_counter_cmp_lt0000_cy_4_Q : MUXCY
    port map (
      CI => Mcompar_my_counter_cmp_lt0000_cy(3),
      DI => my_counter(4),
      S => Mcompar_my_counter_cmp_lt0000_lut(4),
      O => Mcompar_my_counter_cmp_lt0000_cy(4)
    );
  Mcompar_my_counter_cmp_lt0000_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => slv_reg3(2),
      I1 => my_counter(5),
      O => Mcompar_my_counter_cmp_lt0000_lut(5)
    );
  Mcompar_my_counter_cmp_lt0000_cy_5_Q : MUXCY
    port map (
      CI => Mcompar_my_counter_cmp_lt0000_cy(4),
      DI => my_counter(5),
      S => Mcompar_my_counter_cmp_lt0000_lut(5),
      O => Mcompar_my_counter_cmp_lt0000_cy(5)
    );
  Mcompar_my_counter_cmp_lt0000_lut_6_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => slv_reg3(1),
      I1 => my_counter(6),
      O => Mcompar_my_counter_cmp_lt0000_lut(6)
    );
  Mcompar_my_counter_cmp_lt0000_cy_6_Q : MUXCY
    port map (
      CI => Mcompar_my_counter_cmp_lt0000_cy(5),
      DI => my_counter(6),
      S => Mcompar_my_counter_cmp_lt0000_lut(6),
      O => Mcompar_my_counter_cmp_lt0000_cy(6)
    );
  Mcompar_my_counter_cmp_lt0000_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => slv_reg3(0),
      I1 => my_counter(7),
      O => Mcompar_my_counter_cmp_lt0000_lut(7)
    );
  Mcompar_my_counter_cmp_lt0000_cy_7_Q : MUXCY
    port map (
      CI => Mcompar_my_counter_cmp_lt0000_cy(6),
      DI => my_counter(7),
      S => Mcompar_my_counter_cmp_lt0000_lut(7),
      O => Mcompar_my_counter_cmp_lt0000_cy(7)
    );
  mi_divisor_Mcount_cuenta_cy_0_Q : MUXCY
    port map (
      CI => IP2Bus_Error_OBUF_191,
      DI => N1,
      S => mi_divisor_Mcount_cuenta_lut(0),
      O => mi_divisor_Mcount_cuenta_cy(0)
    );
  mi_divisor_Mcount_cuenta_xor_0_Q : XORCY
    port map (
      CI => IP2Bus_Error_OBUF_191,
      LI => mi_divisor_Mcount_cuenta_lut(0),
      O => Result(0)
    );
  mi_divisor_Mcount_cuenta_cy_1_Q : MUXCY
    port map (
      CI => mi_divisor_Mcount_cuenta_cy(0),
      DI => IP2Bus_Error_OBUF_191,
      S => mi_divisor_Mcount_cuenta_cy_1_rt_439,
      O => mi_divisor_Mcount_cuenta_cy(1)
    );
  mi_divisor_Mcount_cuenta_xor_1_Q : XORCY
    port map (
      CI => mi_divisor_Mcount_cuenta_cy(0),
      LI => mi_divisor_Mcount_cuenta_cy_1_rt_439,
      O => Result(1)
    );
  mi_divisor_Mcount_cuenta_cy_2_Q : MUXCY
    port map (
      CI => mi_divisor_Mcount_cuenta_cy(1),
      DI => IP2Bus_Error_OBUF_191,
      S => mi_divisor_Mcount_cuenta_cy_2_rt_453,
      O => mi_divisor_Mcount_cuenta_cy(2)
    );
  mi_divisor_Mcount_cuenta_xor_2_Q : XORCY
    port map (
      CI => mi_divisor_Mcount_cuenta_cy(1),
      LI => mi_divisor_Mcount_cuenta_cy_2_rt_453,
      O => Result(2)
    );
  mi_divisor_Mcount_cuenta_cy_3_Q : MUXCY
    port map (
      CI => mi_divisor_Mcount_cuenta_cy(2),
      DI => IP2Bus_Error_OBUF_191,
      S => mi_divisor_Mcount_cuenta_cy_3_rt_455,
      O => mi_divisor_Mcount_cuenta_cy(3)
    );
  mi_divisor_Mcount_cuenta_xor_3_Q : XORCY
    port map (
      CI => mi_divisor_Mcount_cuenta_cy(2),
      LI => mi_divisor_Mcount_cuenta_cy_3_rt_455,
      O => Result(3)
    );
  mi_divisor_Mcount_cuenta_cy_4_Q : MUXCY
    port map (
      CI => mi_divisor_Mcount_cuenta_cy(3),
      DI => IP2Bus_Error_OBUF_191,
      S => mi_divisor_Mcount_cuenta_cy_4_rt_457,
      O => mi_divisor_Mcount_cuenta_cy(4)
    );
  mi_divisor_Mcount_cuenta_xor_4_Q : XORCY
    port map (
      CI => mi_divisor_Mcount_cuenta_cy(3),
      LI => mi_divisor_Mcount_cuenta_cy_4_rt_457,
      O => Result(4)
    );
  mi_divisor_Mcount_cuenta_cy_5_Q : MUXCY
    port map (
      CI => mi_divisor_Mcount_cuenta_cy(4),
      DI => IP2Bus_Error_OBUF_191,
      S => mi_divisor_Mcount_cuenta_cy_5_rt_459,
      O => mi_divisor_Mcount_cuenta_cy(5)
    );
  mi_divisor_Mcount_cuenta_xor_5_Q : XORCY
    port map (
      CI => mi_divisor_Mcount_cuenta_cy(4),
      LI => mi_divisor_Mcount_cuenta_cy_5_rt_459,
      O => Result(5)
    );
  mi_divisor_Mcount_cuenta_cy_6_Q : MUXCY
    port map (
      CI => mi_divisor_Mcount_cuenta_cy(5),
      DI => IP2Bus_Error_OBUF_191,
      S => mi_divisor_Mcount_cuenta_cy_6_rt_461,
      O => mi_divisor_Mcount_cuenta_cy(6)
    );
  mi_divisor_Mcount_cuenta_xor_6_Q : XORCY
    port map (
      CI => mi_divisor_Mcount_cuenta_cy(5),
      LI => mi_divisor_Mcount_cuenta_cy_6_rt_461,
      O => Result(6)
    );
  mi_divisor_Mcount_cuenta_cy_7_Q : MUXCY
    port map (
      CI => mi_divisor_Mcount_cuenta_cy(6),
      DI => IP2Bus_Error_OBUF_191,
      S => mi_divisor_Mcount_cuenta_cy_7_rt_463,
      O => mi_divisor_Mcount_cuenta_cy(7)
    );
  mi_divisor_Mcount_cuenta_xor_7_Q : XORCY
    port map (
      CI => mi_divisor_Mcount_cuenta_cy(6),
      LI => mi_divisor_Mcount_cuenta_cy_7_rt_463,
      O => Result(7)
    );
  mi_divisor_Mcount_cuenta_cy_8_Q : MUXCY
    port map (
      CI => mi_divisor_Mcount_cuenta_cy(7),
      DI => IP2Bus_Error_OBUF_191,
      S => mi_divisor_Mcount_cuenta_cy_8_rt_465,
      O => mi_divisor_Mcount_cuenta_cy(8)
    );
  mi_divisor_Mcount_cuenta_xor_8_Q : XORCY
    port map (
      CI => mi_divisor_Mcount_cuenta_cy(7),
      LI => mi_divisor_Mcount_cuenta_cy_8_rt_465,
      O => Result(8)
    );
  mi_divisor_Mcount_cuenta_cy_9_Q : MUXCY
    port map (
      CI => mi_divisor_Mcount_cuenta_cy(8),
      DI => IP2Bus_Error_OBUF_191,
      S => mi_divisor_Mcount_cuenta_cy_9_rt_467,
      O => mi_divisor_Mcount_cuenta_cy(9)
    );
  mi_divisor_Mcount_cuenta_xor_9_Q : XORCY
    port map (
      CI => mi_divisor_Mcount_cuenta_cy(8),
      LI => mi_divisor_Mcount_cuenta_cy_9_rt_467,
      O => Result(9)
    );
  mi_divisor_Mcount_cuenta_cy_10_Q : MUXCY
    port map (
      CI => mi_divisor_Mcount_cuenta_cy(9),
      DI => IP2Bus_Error_OBUF_191,
      S => mi_divisor_Mcount_cuenta_cy_10_rt_419,
      O => mi_divisor_Mcount_cuenta_cy(10)
    );
  mi_divisor_Mcount_cuenta_xor_10_Q : XORCY
    port map (
      CI => mi_divisor_Mcount_cuenta_cy(9),
      LI => mi_divisor_Mcount_cuenta_cy_10_rt_419,
      O => Result(10)
    );
  mi_divisor_Mcount_cuenta_cy_11_Q : MUXCY
    port map (
      CI => mi_divisor_Mcount_cuenta_cy(10),
      DI => IP2Bus_Error_OBUF_191,
      S => mi_divisor_Mcount_cuenta_cy_11_rt_421,
      O => mi_divisor_Mcount_cuenta_cy(11)
    );
  mi_divisor_Mcount_cuenta_xor_11_Q : XORCY
    port map (
      CI => mi_divisor_Mcount_cuenta_cy(10),
      LI => mi_divisor_Mcount_cuenta_cy_11_rt_421,
      O => Result(11)
    );
  mi_divisor_Mcount_cuenta_cy_12_Q : MUXCY
    port map (
      CI => mi_divisor_Mcount_cuenta_cy(11),
      DI => IP2Bus_Error_OBUF_191,
      S => mi_divisor_Mcount_cuenta_cy_12_rt_423,
      O => mi_divisor_Mcount_cuenta_cy(12)
    );
  mi_divisor_Mcount_cuenta_xor_12_Q : XORCY
    port map (
      CI => mi_divisor_Mcount_cuenta_cy(11),
      LI => mi_divisor_Mcount_cuenta_cy_12_rt_423,
      O => Result(12)
    );
  mi_divisor_Mcount_cuenta_cy_13_Q : MUXCY
    port map (
      CI => mi_divisor_Mcount_cuenta_cy(12),
      DI => IP2Bus_Error_OBUF_191,
      S => mi_divisor_Mcount_cuenta_cy_13_rt_425,
      O => mi_divisor_Mcount_cuenta_cy(13)
    );
  mi_divisor_Mcount_cuenta_xor_13_Q : XORCY
    port map (
      CI => mi_divisor_Mcount_cuenta_cy(12),
      LI => mi_divisor_Mcount_cuenta_cy_13_rt_425,
      O => Result(13)
    );
  mi_divisor_Mcount_cuenta_cy_14_Q : MUXCY
    port map (
      CI => mi_divisor_Mcount_cuenta_cy(13),
      DI => IP2Bus_Error_OBUF_191,
      S => mi_divisor_Mcount_cuenta_cy_14_rt_427,
      O => mi_divisor_Mcount_cuenta_cy(14)
    );
  mi_divisor_Mcount_cuenta_xor_14_Q : XORCY
    port map (
      CI => mi_divisor_Mcount_cuenta_cy(13),
      LI => mi_divisor_Mcount_cuenta_cy_14_rt_427,
      O => Result(14)
    );
  mi_divisor_Mcount_cuenta_cy_15_Q : MUXCY
    port map (
      CI => mi_divisor_Mcount_cuenta_cy(14),
      DI => IP2Bus_Error_OBUF_191,
      S => mi_divisor_Mcount_cuenta_cy_15_rt_429,
      O => mi_divisor_Mcount_cuenta_cy(15)
    );
  mi_divisor_Mcount_cuenta_xor_15_Q : XORCY
    port map (
      CI => mi_divisor_Mcount_cuenta_cy(14),
      LI => mi_divisor_Mcount_cuenta_cy_15_rt_429,
      O => Result(15)
    );
  mi_divisor_Mcount_cuenta_cy_16_Q : MUXCY
    port map (
      CI => mi_divisor_Mcount_cuenta_cy(15),
      DI => IP2Bus_Error_OBUF_191,
      S => mi_divisor_Mcount_cuenta_cy_16_rt_431,
      O => mi_divisor_Mcount_cuenta_cy(16)
    );
  mi_divisor_Mcount_cuenta_xor_16_Q : XORCY
    port map (
      CI => mi_divisor_Mcount_cuenta_cy(15),
      LI => mi_divisor_Mcount_cuenta_cy_16_rt_431,
      O => Result(16)
    );
  mi_divisor_Mcount_cuenta_cy_17_Q : MUXCY
    port map (
      CI => mi_divisor_Mcount_cuenta_cy(16),
      DI => IP2Bus_Error_OBUF_191,
      S => mi_divisor_Mcount_cuenta_cy_17_rt_433,
      O => mi_divisor_Mcount_cuenta_cy(17)
    );
  mi_divisor_Mcount_cuenta_xor_17_Q : XORCY
    port map (
      CI => mi_divisor_Mcount_cuenta_cy(16),
      LI => mi_divisor_Mcount_cuenta_cy_17_rt_433,
      O => Result(17)
    );
  mi_divisor_Mcount_cuenta_cy_18_Q : MUXCY
    port map (
      CI => mi_divisor_Mcount_cuenta_cy(17),
      DI => IP2Bus_Error_OBUF_191,
      S => mi_divisor_Mcount_cuenta_cy_18_rt_435,
      O => mi_divisor_Mcount_cuenta_cy(18)
    );
  mi_divisor_Mcount_cuenta_xor_18_Q : XORCY
    port map (
      CI => mi_divisor_Mcount_cuenta_cy(17),
      LI => mi_divisor_Mcount_cuenta_cy_18_rt_435,
      O => Result(18)
    );
  mi_divisor_Mcount_cuenta_cy_19_Q : MUXCY
    port map (
      CI => mi_divisor_Mcount_cuenta_cy(18),
      DI => IP2Bus_Error_OBUF_191,
      S => mi_divisor_Mcount_cuenta_cy_19_rt_437,
      O => mi_divisor_Mcount_cuenta_cy(19)
    );
  mi_divisor_Mcount_cuenta_xor_19_Q : XORCY
    port map (
      CI => mi_divisor_Mcount_cuenta_cy(18),
      LI => mi_divisor_Mcount_cuenta_cy_19_rt_437,
      O => Result(19)
    );
  mi_divisor_Mcount_cuenta_cy_20_Q : MUXCY
    port map (
      CI => mi_divisor_Mcount_cuenta_cy(19),
      DI => IP2Bus_Error_OBUF_191,
      S => mi_divisor_Mcount_cuenta_cy_20_rt_441,
      O => mi_divisor_Mcount_cuenta_cy(20)
    );
  mi_divisor_Mcount_cuenta_xor_20_Q : XORCY
    port map (
      CI => mi_divisor_Mcount_cuenta_cy(19),
      LI => mi_divisor_Mcount_cuenta_cy_20_rt_441,
      O => Result(20)
    );
  mi_divisor_Mcount_cuenta_cy_21_Q : MUXCY
    port map (
      CI => mi_divisor_Mcount_cuenta_cy(20),
      DI => IP2Bus_Error_OBUF_191,
      S => mi_divisor_Mcount_cuenta_cy_21_rt_443,
      O => mi_divisor_Mcount_cuenta_cy(21)
    );
  mi_divisor_Mcount_cuenta_xor_21_Q : XORCY
    port map (
      CI => mi_divisor_Mcount_cuenta_cy(20),
      LI => mi_divisor_Mcount_cuenta_cy_21_rt_443,
      O => Result(21)
    );
  mi_divisor_Mcount_cuenta_cy_22_Q : MUXCY
    port map (
      CI => mi_divisor_Mcount_cuenta_cy(21),
      DI => IP2Bus_Error_OBUF_191,
      S => mi_divisor_Mcount_cuenta_cy_22_rt_445,
      O => mi_divisor_Mcount_cuenta_cy(22)
    );
  mi_divisor_Mcount_cuenta_xor_22_Q : XORCY
    port map (
      CI => mi_divisor_Mcount_cuenta_cy(21),
      LI => mi_divisor_Mcount_cuenta_cy_22_rt_445,
      O => Result(22)
    );
  mi_divisor_Mcount_cuenta_cy_23_Q : MUXCY
    port map (
      CI => mi_divisor_Mcount_cuenta_cy(22),
      DI => IP2Bus_Error_OBUF_191,
      S => mi_divisor_Mcount_cuenta_cy_23_rt_447,
      O => mi_divisor_Mcount_cuenta_cy(23)
    );
  mi_divisor_Mcount_cuenta_xor_23_Q : XORCY
    port map (
      CI => mi_divisor_Mcount_cuenta_cy(22),
      LI => mi_divisor_Mcount_cuenta_cy_23_rt_447,
      O => Result(23)
    );
  mi_divisor_Mcount_cuenta_cy_24_Q : MUXCY
    port map (
      CI => mi_divisor_Mcount_cuenta_cy(23),
      DI => IP2Bus_Error_OBUF_191,
      S => mi_divisor_Mcount_cuenta_cy_24_rt_449,
      O => mi_divisor_Mcount_cuenta_cy(24)
    );
  mi_divisor_Mcount_cuenta_xor_24_Q : XORCY
    port map (
      CI => mi_divisor_Mcount_cuenta_cy(23),
      LI => mi_divisor_Mcount_cuenta_cy_24_rt_449,
      O => Result(24)
    );
  mi_divisor_Mcount_cuenta_cy_25_Q : MUXCY
    port map (
      CI => mi_divisor_Mcount_cuenta_cy(24),
      DI => IP2Bus_Error_OBUF_191,
      S => mi_divisor_Mcount_cuenta_cy_25_rt_451,
      O => mi_divisor_Mcount_cuenta_cy(25)
    );
  mi_divisor_Mcount_cuenta_xor_25_Q : XORCY
    port map (
      CI => mi_divisor_Mcount_cuenta_cy(24),
      LI => mi_divisor_Mcount_cuenta_cy_25_rt_451,
      O => Result(25)
    );
  mi_divisor_Mcount_cuenta_xor_26_Q : XORCY
    port map (
      CI => mi_divisor_Mcount_cuenta_cy(25),
      LI => mi_divisor_Mcount_cuenta_xor_26_rt_496,
      O => Result(26)
    );
  Mcount_my_counter_cy_0_Q : MUXCY
    port map (
      CI => IP2Bus_Error_OBUF_191,
      DI => N1,
      S => Mcount_my_counter_lut(0),
      O => Mcount_my_counter_cy(0)
    );
  Mcount_my_counter_xor_0_Q : XORCY
    port map (
      CI => IP2Bus_Error_OBUF_191,
      LI => Mcount_my_counter_lut(0),
      O => Result_0_1
    );
  Mcount_my_counter_cy_1_Q : MUXCY
    port map (
      CI => Mcount_my_counter_cy(0),
      DI => IP2Bus_Error_OBUF_191,
      S => Mcount_my_counter_cy_1_rt_277,
      O => Mcount_my_counter_cy(1)
    );
  Mcount_my_counter_xor_1_Q : XORCY
    port map (
      CI => Mcount_my_counter_cy(0),
      LI => Mcount_my_counter_cy_1_rt_277,
      O => Result_1_1
    );
  Mcount_my_counter_cy_2_Q : MUXCY
    port map (
      CI => Mcount_my_counter_cy(1),
      DI => IP2Bus_Error_OBUF_191,
      S => Mcount_my_counter_cy_2_rt_279,
      O => Mcount_my_counter_cy(2)
    );
  Mcount_my_counter_xor_2_Q : XORCY
    port map (
      CI => Mcount_my_counter_cy(1),
      LI => Mcount_my_counter_cy_2_rt_279,
      O => Result_2_1
    );
  Mcount_my_counter_cy_3_Q : MUXCY
    port map (
      CI => Mcount_my_counter_cy(2),
      DI => IP2Bus_Error_OBUF_191,
      S => Mcount_my_counter_cy_3_rt_281,
      O => Mcount_my_counter_cy(3)
    );
  Mcount_my_counter_xor_3_Q : XORCY
    port map (
      CI => Mcount_my_counter_cy(2),
      LI => Mcount_my_counter_cy_3_rt_281,
      O => Result_3_1
    );
  Mcount_my_counter_cy_4_Q : MUXCY
    port map (
      CI => Mcount_my_counter_cy(3),
      DI => IP2Bus_Error_OBUF_191,
      S => Mcount_my_counter_cy_4_rt_283,
      O => Mcount_my_counter_cy(4)
    );
  Mcount_my_counter_xor_4_Q : XORCY
    port map (
      CI => Mcount_my_counter_cy(3),
      LI => Mcount_my_counter_cy_4_rt_283,
      O => Result_4_1
    );
  Mcount_my_counter_cy_5_Q : MUXCY
    port map (
      CI => Mcount_my_counter_cy(4),
      DI => IP2Bus_Error_OBUF_191,
      S => Mcount_my_counter_cy_5_rt_285,
      O => Mcount_my_counter_cy(5)
    );
  Mcount_my_counter_xor_5_Q : XORCY
    port map (
      CI => Mcount_my_counter_cy(4),
      LI => Mcount_my_counter_cy_5_rt_285,
      O => Result_5_1
    );
  Mcount_my_counter_cy_6_Q : MUXCY
    port map (
      CI => Mcount_my_counter_cy(5),
      DI => IP2Bus_Error_OBUF_191,
      S => Mcount_my_counter_cy_6_rt_287,
      O => Mcount_my_counter_cy(6)
    );
  Mcount_my_counter_xor_6_Q : XORCY
    port map (
      CI => Mcount_my_counter_cy(5),
      LI => Mcount_my_counter_cy_6_rt_287,
      O => Result_6_1
    );
  Mcount_my_counter_xor_7_Q : XORCY
    port map (
      CI => Mcount_my_counter_cy(6),
      LI => Mcount_my_counter_xor_7_rt_289,
      O => Result_7_1
    );
  mi_divisor_cuenta_cmp_eq0000_wg_lut_0_Q : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => mi_divisor_cuenta(7),
      I1 => mi_divisor_cuenta(5),
      I2 => mi_divisor_cuenta(8),
      O => mi_divisor_cuenta_cmp_eq0000_wg_lut(0)
    );
  mi_divisor_cuenta_cmp_eq0000_wg_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => IP2Bus_Error_OBUF_191,
      S => mi_divisor_cuenta_cmp_eq0000_wg_lut(0),
      O => mi_divisor_cuenta_cmp_eq0000_wg_cy(0)
    );
  mi_divisor_cuenta_cmp_eq0000_wg_lut_1_Q : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => mi_divisor_cuenta(9),
      I1 => mi_divisor_cuenta(10),
      I2 => mi_divisor_cuenta(4),
      I3 => mi_divisor_cuenta(13),
      O => mi_divisor_cuenta_cmp_eq0000_wg_lut(1)
    );
  mi_divisor_cuenta_cmp_eq0000_wg_cy_1_Q : MUXCY
    port map (
      CI => mi_divisor_cuenta_cmp_eq0000_wg_cy(0),
      DI => IP2Bus_Error_OBUF_191,
      S => mi_divisor_cuenta_cmp_eq0000_wg_lut(1),
      O => mi_divisor_cuenta_cmp_eq0000_wg_cy(1)
    );
  mi_divisor_cuenta_cmp_eq0000_wg_lut_2_Q : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => mi_divisor_cuenta(11),
      I1 => mi_divisor_cuenta(12),
      I2 => mi_divisor_cuenta(6),
      I3 => mi_divisor_cuenta(14),
      O => mi_divisor_cuenta_cmp_eq0000_wg_lut(2)
    );
  mi_divisor_cuenta_cmp_eq0000_wg_cy_2_Q : MUXCY
    port map (
      CI => mi_divisor_cuenta_cmp_eq0000_wg_cy(1),
      DI => IP2Bus_Error_OBUF_191,
      S => mi_divisor_cuenta_cmp_eq0000_wg_lut(2),
      O => mi_divisor_cuenta_cmp_eq0000_wg_cy(2)
    );
  mi_divisor_cuenta_cmp_eq0000_wg_lut_3_Q : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => mi_divisor_cuenta(15),
      I1 => mi_divisor_cuenta(16),
      I2 => mi_divisor_cuenta(3),
      I3 => mi_divisor_cuenta(17),
      O => mi_divisor_cuenta_cmp_eq0000_wg_lut(3)
    );
  mi_divisor_cuenta_cmp_eq0000_wg_cy_3_Q : MUXCY
    port map (
      CI => mi_divisor_cuenta_cmp_eq0000_wg_cy(2),
      DI => IP2Bus_Error_OBUF_191,
      S => mi_divisor_cuenta_cmp_eq0000_wg_lut(3),
      O => mi_divisor_cuenta_cmp_eq0000_wg_cy(3)
    );
  mi_divisor_cuenta_cmp_eq0000_wg_lut_4_Q : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => mi_divisor_cuenta(20),
      I1 => mi_divisor_cuenta(18),
      I2 => mi_divisor_cuenta(2),
      I3 => mi_divisor_cuenta(19),
      O => mi_divisor_cuenta_cmp_eq0000_wg_lut(4)
    );
  mi_divisor_cuenta_cmp_eq0000_wg_cy_4_Q : MUXCY
    port map (
      CI => mi_divisor_cuenta_cmp_eq0000_wg_cy(3),
      DI => IP2Bus_Error_OBUF_191,
      S => mi_divisor_cuenta_cmp_eq0000_wg_lut(4),
      O => mi_divisor_cuenta_cmp_eq0000_wg_cy(4)
    );
  mi_divisor_cuenta_cmp_eq0000_wg_lut_5_Q : LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => mi_divisor_cuenta(23),
      I1 => mi_divisor_cuenta(21),
      I2 => mi_divisor_cuenta(1),
      I3 => mi_divisor_cuenta(22),
      O => mi_divisor_cuenta_cmp_eq0000_wg_lut(5)
    );
  mi_divisor_cuenta_cmp_eq0000_wg_cy_5_Q : MUXCY
    port map (
      CI => mi_divisor_cuenta_cmp_eq0000_wg_cy(4),
      DI => IP2Bus_Error_OBUF_191,
      S => mi_divisor_cuenta_cmp_eq0000_wg_lut(5),
      O => mi_divisor_cuenta_cmp_eq0000_wg_cy(5)
    );
  mi_divisor_cuenta_cmp_eq0000_wg_lut_6_Q : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => mi_divisor_cuenta(26),
      I1 => mi_divisor_cuenta(24),
      I2 => mi_divisor_cuenta(0),
      I3 => mi_divisor_cuenta(25),
      O => mi_divisor_cuenta_cmp_eq0000_wg_lut(6)
    );
  mi_divisor_cuenta_cmp_eq0000_wg_cy_6_Q : MUXCY
    port map (
      CI => mi_divisor_cuenta_cmp_eq0000_wg_cy(5),
      DI => IP2Bus_Error_OBUF_191,
      S => mi_divisor_cuenta_cmp_eq0000_wg_lut(6),
      O => mi_divisor_cuenta_cmp_eq0000
    );
  slv_write_ack1 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => Bus2IP_WrCE_3_IBUF_92,
      I1 => Bus2IP_WrCE_2_IBUF_91,
      I2 => Bus2IP_WrCE_1_IBUF_90,
      I3 => Bus2IP_WrCE_0_IBUF_89,
      O => IP2Bus_WrAck_OBUF_195
    );
  slv_read_ack1 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => Bus2IP_RdCE_3_IBUF_81,
      I1 => Bus2IP_RdCE_2_IBUF_80,
      I2 => Bus2IP_RdCE_1_IBUF_79,
      I3 => Bus2IP_RdCE_0_IBUF_78,
      O => IP2Bus_RdAck_OBUF_193
    );
  slv_reg3_cmp_eq00001 : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => Bus2IP_WrCE_2_IBUF_91,
      I1 => Bus2IP_WrCE_0_IBUF_89,
      I2 => Bus2IP_WrCE_1_IBUF_90,
      I3 => Bus2IP_WrCE_3_IBUF_92,
      O => slv_reg3_cmp_eq0000
    );
  slv_reg2_24_not00011 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Bus2IP_BE_3_IBUF_7,
      I1 => N3,
      O => slv_reg2_24_not0001
    );
  slv_reg2_20_not00011 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Bus2IP_BE_2_IBUF_6,
      I1 => N3,
      O => slv_reg2_20_not0001
    );
  slv_reg2_14_not00011 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Bus2IP_BE_1_IBUF_5,
      I1 => N3,
      O => slv_reg2_14_not0001
    );
  slv_reg2_0_not00012 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Bus2IP_BE_0_IBUF_4,
      I1 => N3,
      O => slv_reg2_0_not0001
    );
  slv_reg1_8_not00011 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Bus2IP_BE_1_IBUF_5,
      I1 => N4,
      O => slv_reg1_8_not0001
    );
  slv_reg1_28_not00011 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Bus2IP_BE_3_IBUF_7,
      I1 => N4,
      O => slv_reg1_28_not0001
    );
  slv_reg1_20_not00011 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Bus2IP_BE_2_IBUF_6,
      I1 => N4,
      O => slv_reg1_20_not0001
    );
  slv_reg1_0_not00012 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Bus2IP_BE_0_IBUF_4,
      I1 => N4,
      O => slv_reg1_0_not0001
    );
  slv_reg0_9_not00011 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Bus2IP_BE_1_IBUF_5,
      I1 => N2,
      O => slv_reg0_9_not0001
    );
  slv_reg0_24_not00011 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Bus2IP_BE_3_IBUF_7,
      I1 => N2,
      O => slv_reg0_24_not0001
    );
  slv_reg0_20_not00011 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Bus2IP_BE_2_IBUF_6,
      I1 => N2,
      O => slv_reg0_20_not0001
    );
  slv_reg0_0_not00012 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Bus2IP_BE_0_IBUF_4,
      I1 => N2,
      O => slv_reg0_0_not0001
    );
  slv_reg2_0_not000111 : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => Bus2IP_WrCE_0_IBUF_89,
      I1 => Bus2IP_WrCE_3_IBUF_92,
      I2 => Bus2IP_WrCE_1_IBUF_90,
      I3 => Bus2IP_WrCE_2_IBUF_91,
      O => N3
    );
  slv_reg1_0_not000111 : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => Bus2IP_WrCE_2_IBUF_91,
      I1 => Bus2IP_WrCE_0_IBUF_89,
      I2 => Bus2IP_WrCE_3_IBUF_92,
      I3 => Bus2IP_WrCE_1_IBUF_90,
      O => N4
    );
  slv_reg0_0_not000111 : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => Bus2IP_WrCE_2_IBUF_91,
      I1 => Bus2IP_WrCE_3_IBUF_92,
      I2 => Bus2IP_WrCE_1_IBUF_90,
      I3 => Bus2IP_WrCE_0_IBUF_89,
      O => N2
    );
  IP2Bus_Data_9_22 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => Bus2IP_RdCE_1_IBUF_79,
      I1 => Bus2IP_RdCE_0_IBUF_78,
      O => IP2Bus_Data_0_22
    );
  IP2Bus_Data_9_51 : LUT4
    generic map(
      INIT => X"6420"
    )
    port map (
      I0 => Bus2IP_RdCE_0_IBUF_78,
      I1 => Bus2IP_RdCE_1_IBUF_79,
      I2 => slv_reg0(9),
      I3 => slv_reg1(9),
      O => IP2Bus_Data_9_51_157
    );
  IP2Bus_Data_8_51 : LUT4
    generic map(
      INIT => X"6420"
    )
    port map (
      I0 => Bus2IP_RdCE_0_IBUF_78,
      I1 => Bus2IP_RdCE_1_IBUF_79,
      I2 => slv_reg0(8),
      I3 => slv_reg1(8),
      O => IP2Bus_Data_8_51_155
    );
  IP2Bus_Data_7_51 : LUT4
    generic map(
      INIT => X"6420"
    )
    port map (
      I0 => Bus2IP_RdCE_0_IBUF_78,
      I1 => Bus2IP_RdCE_1_IBUF_79,
      I2 => slv_reg0(7),
      I3 => slv_reg1(7),
      O => IP2Bus_Data_7_51_153
    );
  IP2Bus_Data_6_51 : LUT4
    generic map(
      INIT => X"6420"
    )
    port map (
      I0 => Bus2IP_RdCE_0_IBUF_78,
      I1 => Bus2IP_RdCE_1_IBUF_79,
      I2 => slv_reg0(6),
      I3 => slv_reg1(6),
      O => IP2Bus_Data_6_51_151
    );
  IP2Bus_Data_5_51 : LUT4
    generic map(
      INIT => X"6420"
    )
    port map (
      I0 => Bus2IP_RdCE_0_IBUF_78,
      I1 => Bus2IP_RdCE_1_IBUF_79,
      I2 => slv_reg0(5),
      I3 => slv_reg1(5),
      O => IP2Bus_Data_5_51_149
    );
  IP2Bus_Data_4_51 : LUT4
    generic map(
      INIT => X"6420"
    )
    port map (
      I0 => Bus2IP_RdCE_0_IBUF_78,
      I1 => Bus2IP_RdCE_1_IBUF_79,
      I2 => slv_reg0(4),
      I3 => slv_reg1(4),
      O => IP2Bus_Data_4_51_147
    );
  IP2Bus_Data_3_51 : LUT4
    generic map(
      INIT => X"6420"
    )
    port map (
      I0 => Bus2IP_RdCE_0_IBUF_78,
      I1 => Bus2IP_RdCE_1_IBUF_79,
      I2 => slv_reg0(3),
      I3 => slv_reg1(3),
      O => IP2Bus_Data_3_51_145
    );
  IP2Bus_Data_31_51 : LUT4
    generic map(
      INIT => X"6420"
    )
    port map (
      I0 => Bus2IP_RdCE_0_IBUF_78,
      I1 => Bus2IP_RdCE_1_IBUF_79,
      I2 => slv_reg0(31),
      I3 => slv_reg1(31),
      O => IP2Bus_Data_31_51_143
    );
  IP2Bus_Data_30_51 : LUT4
    generic map(
      INIT => X"6420"
    )
    port map (
      I0 => Bus2IP_RdCE_0_IBUF_78,
      I1 => Bus2IP_RdCE_1_IBUF_79,
      I2 => slv_reg0(30),
      I3 => slv_reg1(30),
      O => IP2Bus_Data_30_51_141
    );
  IP2Bus_Data_2_51 : LUT4
    generic map(
      INIT => X"6420"
    )
    port map (
      I0 => Bus2IP_RdCE_0_IBUF_78,
      I1 => Bus2IP_RdCE_1_IBUF_79,
      I2 => slv_reg0(2),
      I3 => slv_reg1(2),
      O => IP2Bus_Data_2_51_139
    );
  IP2Bus_Data_29_51 : LUT4
    generic map(
      INIT => X"6420"
    )
    port map (
      I0 => Bus2IP_RdCE_0_IBUF_78,
      I1 => Bus2IP_RdCE_1_IBUF_79,
      I2 => slv_reg0(29),
      I3 => slv_reg1(29),
      O => IP2Bus_Data_29_51_137
    );
  IP2Bus_Data_28_51 : LUT4
    generic map(
      INIT => X"6420"
    )
    port map (
      I0 => Bus2IP_RdCE_0_IBUF_78,
      I1 => Bus2IP_RdCE_1_IBUF_79,
      I2 => slv_reg0(28),
      I3 => slv_reg1(28),
      O => IP2Bus_Data_28_51_135
    );
  IP2Bus_Data_27_51 : LUT4
    generic map(
      INIT => X"6420"
    )
    port map (
      I0 => Bus2IP_RdCE_0_IBUF_78,
      I1 => Bus2IP_RdCE_1_IBUF_79,
      I2 => slv_reg0(27),
      I3 => slv_reg1(27),
      O => IP2Bus_Data_27_51_133
    );
  IP2Bus_Data_26_51 : LUT4
    generic map(
      INIT => X"6420"
    )
    port map (
      I0 => Bus2IP_RdCE_0_IBUF_78,
      I1 => Bus2IP_RdCE_1_IBUF_79,
      I2 => slv_reg0(26),
      I3 => slv_reg1(26),
      O => IP2Bus_Data_26_51_131
    );
  IP2Bus_Data_25_51 : LUT4
    generic map(
      INIT => X"6420"
    )
    port map (
      I0 => Bus2IP_RdCE_0_IBUF_78,
      I1 => Bus2IP_RdCE_1_IBUF_79,
      I2 => slv_reg0(25),
      I3 => slv_reg1(25),
      O => IP2Bus_Data_25_51_129
    );
  IP2Bus_Data_24_51 : LUT4
    generic map(
      INIT => X"6420"
    )
    port map (
      I0 => Bus2IP_RdCE_0_IBUF_78,
      I1 => Bus2IP_RdCE_1_IBUF_79,
      I2 => slv_reg0(24),
      I3 => slv_reg1(24),
      O => IP2Bus_Data_24_51_127
    );
  IP2Bus_Data_23_51 : LUT4
    generic map(
      INIT => X"6420"
    )
    port map (
      I0 => Bus2IP_RdCE_0_IBUF_78,
      I1 => Bus2IP_RdCE_1_IBUF_79,
      I2 => slv_reg0(23),
      I3 => slv_reg1(23),
      O => IP2Bus_Data_23_51_125
    );
  IP2Bus_Data_22_51 : LUT4
    generic map(
      INIT => X"6420"
    )
    port map (
      I0 => Bus2IP_RdCE_0_IBUF_78,
      I1 => Bus2IP_RdCE_1_IBUF_79,
      I2 => slv_reg0(22),
      I3 => slv_reg1(22),
      O => IP2Bus_Data_22_51_123
    );
  IP2Bus_Data_21_51 : LUT4
    generic map(
      INIT => X"6420"
    )
    port map (
      I0 => Bus2IP_RdCE_0_IBUF_78,
      I1 => Bus2IP_RdCE_1_IBUF_79,
      I2 => slv_reg0(21),
      I3 => slv_reg1(21),
      O => IP2Bus_Data_21_51_121
    );
  IP2Bus_Data_20_51 : LUT4
    generic map(
      INIT => X"6420"
    )
    port map (
      I0 => Bus2IP_RdCE_0_IBUF_78,
      I1 => Bus2IP_RdCE_1_IBUF_79,
      I2 => slv_reg0(20),
      I3 => slv_reg1(20),
      O => IP2Bus_Data_20_51_119
    );
  IP2Bus_Data_1_51 : LUT4
    generic map(
      INIT => X"6420"
    )
    port map (
      I0 => Bus2IP_RdCE_0_IBUF_78,
      I1 => Bus2IP_RdCE_1_IBUF_79,
      I2 => slv_reg0(1),
      I3 => slv_reg1(1),
      O => IP2Bus_Data_1_51_117
    );
  IP2Bus_Data_19_51 : LUT4
    generic map(
      INIT => X"6420"
    )
    port map (
      I0 => Bus2IP_RdCE_0_IBUF_78,
      I1 => Bus2IP_RdCE_1_IBUF_79,
      I2 => slv_reg0(19),
      I3 => slv_reg1(19),
      O => IP2Bus_Data_19_51_115
    );
  IP2Bus_Data_18_51 : LUT4
    generic map(
      INIT => X"6420"
    )
    port map (
      I0 => Bus2IP_RdCE_0_IBUF_78,
      I1 => Bus2IP_RdCE_1_IBUF_79,
      I2 => slv_reg0(18),
      I3 => slv_reg1(18),
      O => IP2Bus_Data_18_51_113
    );
  IP2Bus_Data_17_51 : LUT4
    generic map(
      INIT => X"6420"
    )
    port map (
      I0 => Bus2IP_RdCE_0_IBUF_78,
      I1 => Bus2IP_RdCE_1_IBUF_79,
      I2 => slv_reg0(17),
      I3 => slv_reg1(17),
      O => IP2Bus_Data_17_51_111
    );
  IP2Bus_Data_16_51 : LUT4
    generic map(
      INIT => X"6420"
    )
    port map (
      I0 => Bus2IP_RdCE_0_IBUF_78,
      I1 => Bus2IP_RdCE_1_IBUF_79,
      I2 => slv_reg0(16),
      I3 => slv_reg1(16),
      O => IP2Bus_Data_16_51_109
    );
  IP2Bus_Data_15_51 : LUT4
    generic map(
      INIT => X"6420"
    )
    port map (
      I0 => Bus2IP_RdCE_0_IBUF_78,
      I1 => Bus2IP_RdCE_1_IBUF_79,
      I2 => slv_reg0(15),
      I3 => slv_reg1(15),
      O => IP2Bus_Data_15_51_107
    );
  IP2Bus_Data_14_51 : LUT4
    generic map(
      INIT => X"6420"
    )
    port map (
      I0 => Bus2IP_RdCE_0_IBUF_78,
      I1 => Bus2IP_RdCE_1_IBUF_79,
      I2 => slv_reg0(14),
      I3 => slv_reg1(14),
      O => IP2Bus_Data_14_51_105
    );
  IP2Bus_Data_13_51 : LUT4
    generic map(
      INIT => X"6420"
    )
    port map (
      I0 => Bus2IP_RdCE_0_IBUF_78,
      I1 => Bus2IP_RdCE_1_IBUF_79,
      I2 => slv_reg0(13),
      I3 => slv_reg1(13),
      O => IP2Bus_Data_13_51_103
    );
  IP2Bus_Data_12_51 : LUT4
    generic map(
      INIT => X"6420"
    )
    port map (
      I0 => Bus2IP_RdCE_0_IBUF_78,
      I1 => Bus2IP_RdCE_1_IBUF_79,
      I2 => slv_reg0(12),
      I3 => slv_reg1(12),
      O => IP2Bus_Data_12_51_101
    );
  IP2Bus_Data_11_51 : LUT4
    generic map(
      INIT => X"6420"
    )
    port map (
      I0 => Bus2IP_RdCE_0_IBUF_78,
      I1 => Bus2IP_RdCE_1_IBUF_79,
      I2 => slv_reg0(11),
      I3 => slv_reg1(11),
      O => IP2Bus_Data_11_51_99
    );
  IP2Bus_Data_10_51 : LUT4
    generic map(
      INIT => X"6420"
    )
    port map (
      I0 => Bus2IP_RdCE_0_IBUF_78,
      I1 => Bus2IP_RdCE_1_IBUF_79,
      I2 => slv_reg0(10),
      I3 => slv_reg1(10),
      O => IP2Bus_Data_10_51_97
    );
  IP2Bus_Data_0_51 : LUT4
    generic map(
      INIT => X"6420"
    )
    port map (
      I0 => Bus2IP_RdCE_0_IBUF_78,
      I1 => Bus2IP_RdCE_1_IBUF_79,
      I2 => slv_reg0(0),
      I3 => slv_reg1(0),
      O => IP2Bus_Data_0_51_95
    );
  mi_divisor_Mcount_cuenta_eqn_01 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(0),
      I1 => mi_divisor_cuenta_cmp_eq0000,
      O => mi_divisor_Mcount_cuenta_eqn_0
    );
  my_leds_mux0002_7_0 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => my_counter(7),
      I1 => switches_3_IBUF_753,
      O => my_leds_mux0002_7_0_573
    );
  my_leds_mux0002_6_0 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => my_counter(6),
      I1 => switches_3_IBUF_753,
      O => my_leds_mux0002_6_0_571
    );
  my_leds_mux0002_5_0 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => my_counter(5),
      I1 => switches_3_IBUF_753,
      O => my_leds_mux0002_5_0_569
    );
  my_leds_mux0002_4_0 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => my_counter(4),
      I1 => switches_3_IBUF_753,
      O => my_leds_mux0002_4_0_567
    );
  my_leds_mux0002_3_0 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => my_counter(3),
      I1 => switches_3_IBUF_753,
      O => my_leds_mux0002_3_0_565
    );
  my_leds_mux0002_2_0 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => my_counter(2),
      I1 => switches_3_IBUF_753,
      O => my_leds_mux0002_2_0_563
    );
  my_leds_mux0002_1_0 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => my_counter(1),
      I1 => switches_3_IBUF_753,
      O => my_leds_mux0002_1_0_561
    );
  my_leds_mux0002_0_0 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => my_counter(0),
      I1 => switches_3_IBUF_753,
      O => my_leds_mux0002_0_0_559
    );
  mi_divisor_clk_aux_and00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Bus2IP_Reset_IBUF_83,
      I1 => mi_divisor_cuenta_cmp_eq0000,
      O => mi_divisor_clk_aux_and0000
    );
  mi_divisor_Mcount_cuenta_eqn_110 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(1),
      I1 => mi_divisor_cuenta_cmp_eq0000,
      O => mi_divisor_Mcount_cuenta_eqn_1
    );
  mi_divisor_Mcount_cuenta_eqn_27 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(2),
      I1 => mi_divisor_cuenta_cmp_eq0000,
      O => mi_divisor_Mcount_cuenta_eqn_2
    );
  mi_divisor_Mcount_cuenta_eqn_31 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(3),
      I1 => mi_divisor_cuenta_cmp_eq0000,
      O => mi_divisor_Mcount_cuenta_eqn_3
    );
  mi_divisor_Mcount_cuenta_eqn_41 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(4),
      I1 => mi_divisor_cuenta_cmp_eq0000,
      O => mi_divisor_Mcount_cuenta_eqn_4
    );
  mi_divisor_Mcount_cuenta_eqn_51 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(5),
      I1 => mi_divisor_cuenta_cmp_eq0000,
      O => mi_divisor_Mcount_cuenta_eqn_5
    );
  mi_divisor_Mcount_cuenta_eqn_61 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(6),
      I1 => mi_divisor_cuenta_cmp_eq0000,
      O => mi_divisor_Mcount_cuenta_eqn_6
    );
  mi_divisor_Mcount_cuenta_eqn_71 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(7),
      I1 => mi_divisor_cuenta_cmp_eq0000,
      O => mi_divisor_Mcount_cuenta_eqn_7
    );
  mi_divisor_Mcount_cuenta_eqn_81 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(8),
      I1 => mi_divisor_cuenta_cmp_eq0000,
      O => mi_divisor_Mcount_cuenta_eqn_8
    );
  mi_divisor_Mcount_cuenta_eqn_91 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => mi_divisor_cuenta_cmp_eq0000,
      I1 => Result(9),
      O => mi_divisor_Mcount_cuenta_eqn_9
    );
  mi_divisor_Mcount_cuenta_eqn_101 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => mi_divisor_cuenta_cmp_eq0000,
      I1 => Result(10),
      O => mi_divisor_Mcount_cuenta_eqn_10
    );
  mi_divisor_Mcount_cuenta_eqn_111 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => mi_divisor_cuenta_cmp_eq0000,
      I1 => Result(11),
      O => mi_divisor_Mcount_cuenta_eqn_11
    );
  mi_divisor_Mcount_cuenta_eqn_121 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => mi_divisor_cuenta_cmp_eq0000,
      I1 => Result(12),
      O => mi_divisor_Mcount_cuenta_eqn_12
    );
  mi_divisor_Mcount_cuenta_eqn_131 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => mi_divisor_cuenta_cmp_eq0000,
      I1 => Result(13),
      O => mi_divisor_Mcount_cuenta_eqn_13
    );
  mi_divisor_Mcount_cuenta_eqn_141 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => mi_divisor_cuenta_cmp_eq0000,
      I1 => Result(14),
      O => mi_divisor_Mcount_cuenta_eqn_14
    );
  mi_divisor_Mcount_cuenta_eqn_151 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => mi_divisor_cuenta_cmp_eq0000,
      I1 => Result(15),
      O => mi_divisor_Mcount_cuenta_eqn_15
    );
  mi_divisor_Mcount_cuenta_eqn_161 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => mi_divisor_cuenta_cmp_eq0000,
      I1 => Result(16),
      O => mi_divisor_Mcount_cuenta_eqn_16
    );
  mi_divisor_Mcount_cuenta_eqn_171 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => mi_divisor_cuenta_cmp_eq0000,
      I1 => Result(17),
      O => mi_divisor_Mcount_cuenta_eqn_17
    );
  mi_divisor_Mcount_cuenta_eqn_181 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => mi_divisor_cuenta_cmp_eq0000,
      I1 => Result(18),
      O => mi_divisor_Mcount_cuenta_eqn_18
    );
  mi_divisor_Mcount_cuenta_eqn_191 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => mi_divisor_cuenta_cmp_eq0000,
      I1 => Result(19),
      O => mi_divisor_Mcount_cuenta_eqn_19
    );
  mi_divisor_Mcount_cuenta_eqn_201 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => mi_divisor_cuenta_cmp_eq0000,
      I1 => Result(20),
      O => mi_divisor_Mcount_cuenta_eqn_20
    );
  mi_divisor_Mcount_cuenta_eqn_211 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => mi_divisor_cuenta_cmp_eq0000,
      I1 => Result(21),
      O => mi_divisor_Mcount_cuenta_eqn_21
    );
  mi_divisor_Mcount_cuenta_eqn_221 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => mi_divisor_cuenta_cmp_eq0000,
      I1 => Result(22),
      O => mi_divisor_Mcount_cuenta_eqn_22
    );
  mi_divisor_Mcount_cuenta_eqn_231 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => mi_divisor_cuenta_cmp_eq0000,
      I1 => Result(23),
      O => mi_divisor_Mcount_cuenta_eqn_23
    );
  mi_divisor_Mcount_cuenta_eqn_241 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => mi_divisor_cuenta_cmp_eq0000,
      I1 => Result(24),
      O => mi_divisor_Mcount_cuenta_eqn_24
    );
  mi_divisor_Mcount_cuenta_eqn_251 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => mi_divisor_cuenta_cmp_eq0000,
      I1 => Result(25),
      O => mi_divisor_Mcount_cuenta_eqn_25
    );
  mi_divisor_Mcount_cuenta_eqn_261 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => mi_divisor_cuenta_cmp_eq0000,
      I1 => Result(26),
      O => mi_divisor_Mcount_cuenta_eqn_26
    );
  Bus2IP_Reset_IBUF : IBUF
    port map (
      I => Bus2IP_Reset,
      O => Bus2IP_Reset_IBUF_83
    );
  switches_3_IBUF : IBUF
    port map (
      I => switches(3),
      O => switches_3_IBUF_753
    );
  switches_1_IBUF : IBUF
    port map (
      I => switches(1),
      O => switches_1_IBUF_752
    );
  switches_0_IBUF : IBUF
    port map (
      I => switches(0),
      O => switches_0_IBUF_751
    );
  Bus2IP_Data_0_IBUF : IBUF
    port map (
      I => Bus2IP_Data(0),
      O => Bus2IP_Data_0_IBUF_42
    );
  Bus2IP_Data_1_IBUF : IBUF
    port map (
      I => Bus2IP_Data(1),
      O => Bus2IP_Data_1_IBUF_53
    );
  Bus2IP_Data_2_IBUF : IBUF
    port map (
      I => Bus2IP_Data(2),
      O => Bus2IP_Data_2_IBUF_64
    );
  Bus2IP_Data_3_IBUF : IBUF
    port map (
      I => Bus2IP_Data(3),
      O => Bus2IP_Data_3_IBUF_67
    );
  Bus2IP_Data_4_IBUF : IBUF
    port map (
      I => Bus2IP_Data(4),
      O => Bus2IP_Data_4_IBUF_68
    );
  Bus2IP_Data_5_IBUF : IBUF
    port map (
      I => Bus2IP_Data(5),
      O => Bus2IP_Data_5_IBUF_69
    );
  Bus2IP_Data_6_IBUF : IBUF
    port map (
      I => Bus2IP_Data(6),
      O => Bus2IP_Data_6_IBUF_70
    );
  Bus2IP_Data_7_IBUF : IBUF
    port map (
      I => Bus2IP_Data(7),
      O => Bus2IP_Data_7_IBUF_71
    );
  Bus2IP_Data_8_IBUF : IBUF
    port map (
      I => Bus2IP_Data(8),
      O => Bus2IP_Data_8_IBUF_72
    );
  Bus2IP_Data_9_IBUF : IBUF
    port map (
      I => Bus2IP_Data(9),
      O => Bus2IP_Data_9_IBUF_73
    );
  Bus2IP_Data_10_IBUF : IBUF
    port map (
      I => Bus2IP_Data(10),
      O => Bus2IP_Data_10_IBUF_43
    );
  Bus2IP_Data_11_IBUF : IBUF
    port map (
      I => Bus2IP_Data(11),
      O => Bus2IP_Data_11_IBUF_44
    );
  Bus2IP_Data_12_IBUF : IBUF
    port map (
      I => Bus2IP_Data(12),
      O => Bus2IP_Data_12_IBUF_45
    );
  Bus2IP_Data_13_IBUF : IBUF
    port map (
      I => Bus2IP_Data(13),
      O => Bus2IP_Data_13_IBUF_46
    );
  Bus2IP_Data_14_IBUF : IBUF
    port map (
      I => Bus2IP_Data(14),
      O => Bus2IP_Data_14_IBUF_47
    );
  Bus2IP_Data_15_IBUF : IBUF
    port map (
      I => Bus2IP_Data(15),
      O => Bus2IP_Data_15_IBUF_48
    );
  Bus2IP_Data_16_IBUF : IBUF
    port map (
      I => Bus2IP_Data(16),
      O => Bus2IP_Data_16_IBUF_49
    );
  Bus2IP_Data_17_IBUF : IBUF
    port map (
      I => Bus2IP_Data(17),
      O => Bus2IP_Data_17_IBUF_50
    );
  Bus2IP_Data_18_IBUF : IBUF
    port map (
      I => Bus2IP_Data(18),
      O => Bus2IP_Data_18_IBUF_51
    );
  Bus2IP_Data_19_IBUF : IBUF
    port map (
      I => Bus2IP_Data(19),
      O => Bus2IP_Data_19_IBUF_52
    );
  Bus2IP_Data_20_IBUF : IBUF
    port map (
      I => Bus2IP_Data(20),
      O => Bus2IP_Data_20_IBUF_54
    );
  Bus2IP_Data_21_IBUF : IBUF
    port map (
      I => Bus2IP_Data(21),
      O => Bus2IP_Data_21_IBUF_55
    );
  Bus2IP_Data_22_IBUF : IBUF
    port map (
      I => Bus2IP_Data(22),
      O => Bus2IP_Data_22_IBUF_56
    );
  Bus2IP_Data_23_IBUF : IBUF
    port map (
      I => Bus2IP_Data(23),
      O => Bus2IP_Data_23_IBUF_57
    );
  Bus2IP_Data_24_IBUF : IBUF
    port map (
      I => Bus2IP_Data(24),
      O => Bus2IP_Data_24_IBUF_58
    );
  Bus2IP_Data_25_IBUF : IBUF
    port map (
      I => Bus2IP_Data(25),
      O => Bus2IP_Data_25_IBUF_59
    );
  Bus2IP_Data_26_IBUF : IBUF
    port map (
      I => Bus2IP_Data(26),
      O => Bus2IP_Data_26_IBUF_60
    );
  Bus2IP_Data_27_IBUF : IBUF
    port map (
      I => Bus2IP_Data(27),
      O => Bus2IP_Data_27_IBUF_61
    );
  Bus2IP_Data_28_IBUF : IBUF
    port map (
      I => Bus2IP_Data(28),
      O => Bus2IP_Data_28_IBUF_62
    );
  Bus2IP_Data_29_IBUF : IBUF
    port map (
      I => Bus2IP_Data(29),
      O => Bus2IP_Data_29_IBUF_63
    );
  Bus2IP_Data_30_IBUF : IBUF
    port map (
      I => Bus2IP_Data(30),
      O => Bus2IP_Data_30_IBUF_65
    );
  Bus2IP_Data_31_IBUF : IBUF
    port map (
      I => Bus2IP_Data(31),
      O => Bus2IP_Data_31_IBUF_66
    );
  Bus2IP_RdCE_0_IBUF : IBUF
    port map (
      I => Bus2IP_RdCE(0),
      O => Bus2IP_RdCE_0_IBUF_78
    );
  Bus2IP_RdCE_1_IBUF : IBUF
    port map (
      I => Bus2IP_RdCE(1),
      O => Bus2IP_RdCE_1_IBUF_79
    );
  Bus2IP_RdCE_2_IBUF : IBUF
    port map (
      I => Bus2IP_RdCE(2),
      O => Bus2IP_RdCE_2_IBUF_80
    );
  Bus2IP_RdCE_3_IBUF : IBUF
    port map (
      I => Bus2IP_RdCE(3),
      O => Bus2IP_RdCE_3_IBUF_81
    );
  Bus2IP_WrCE_0_IBUF : IBUF
    port map (
      I => Bus2IP_WrCE(0),
      O => Bus2IP_WrCE_0_IBUF_89
    );
  Bus2IP_WrCE_1_IBUF : IBUF
    port map (
      I => Bus2IP_WrCE(1),
      O => Bus2IP_WrCE_1_IBUF_90
    );
  Bus2IP_WrCE_2_IBUF : IBUF
    port map (
      I => Bus2IP_WrCE(2),
      O => Bus2IP_WrCE_2_IBUF_91
    );
  Bus2IP_WrCE_3_IBUF : IBUF
    port map (
      I => Bus2IP_WrCE(3),
      O => Bus2IP_WrCE_3_IBUF_92
    );
  Bus2IP_BE_0_IBUF : IBUF
    port map (
      I => Bus2IP_BE(0),
      O => Bus2IP_BE_0_IBUF_4
    );
  Bus2IP_BE_1_IBUF : IBUF
    port map (
      I => Bus2IP_BE(1),
      O => Bus2IP_BE_1_IBUF_5
    );
  Bus2IP_BE_2_IBUF : IBUF
    port map (
      I => Bus2IP_BE(2),
      O => Bus2IP_BE_2_IBUF_6
    );
  Bus2IP_BE_3_IBUF : IBUF
    port map (
      I => Bus2IP_BE(3),
      O => Bus2IP_BE_3_IBUF_7
    );
  IP2Bus_WrAck_OBUF : OBUF
    port map (
      I => IP2Bus_WrAck_OBUF_195,
      O => IP2Bus_WrAck
    );
  IP2Bus_Error_OBUF : OBUF
    port map (
      I => IP2Bus_Error_OBUF_191,
      O => IP2Bus_Error
    );
  IP2Bus_RdAck_OBUF : OBUF
    port map (
      I => IP2Bus_RdAck_OBUF_193,
      O => IP2Bus_RdAck
    );
  leds_7_OBUF : OBUF
    port map (
      I => my_leds(7),
      O => leds(7)
    );
  leds_6_OBUF : OBUF
    port map (
      I => my_leds(6),
      O => leds(6)
    );
  leds_5_OBUF : OBUF
    port map (
      I => my_leds(5),
      O => leds(5)
    );
  leds_4_OBUF : OBUF
    port map (
      I => my_leds(4),
      O => leds(4)
    );
  leds_3_OBUF : OBUF
    port map (
      I => my_leds(3),
      O => leds(3)
    );
  leds_2_OBUF : OBUF
    port map (
      I => my_leds(2),
      O => leds(2)
    );
  leds_1_OBUF : OBUF
    port map (
      I => my_leds(1),
      O => leds(1)
    );
  leds_0_OBUF : OBUF
    port map (
      I => my_leds(0),
      O => leds(0)
    );
  IP2Bus_Data_0_OBUF : OBUF
    port map (
      I => IP2Bus_Data_0_OBUF_158,
      O => IP2Bus_Data(0)
    );
  IP2Bus_Data_1_OBUF : OBUF
    port map (
      I => IP2Bus_Data_1_OBUF_169,
      O => IP2Bus_Data(1)
    );
  IP2Bus_Data_2_OBUF : OBUF
    port map (
      I => IP2Bus_Data_2_OBUF_180,
      O => IP2Bus_Data(2)
    );
  IP2Bus_Data_3_OBUF : OBUF
    port map (
      I => IP2Bus_Data_3_OBUF_183,
      O => IP2Bus_Data(3)
    );
  IP2Bus_Data_4_OBUF : OBUF
    port map (
      I => IP2Bus_Data_4_OBUF_184,
      O => IP2Bus_Data(4)
    );
  IP2Bus_Data_5_OBUF : OBUF
    port map (
      I => IP2Bus_Data_5_OBUF_185,
      O => IP2Bus_Data(5)
    );
  IP2Bus_Data_6_OBUF : OBUF
    port map (
      I => IP2Bus_Data_6_OBUF_186,
      O => IP2Bus_Data(6)
    );
  IP2Bus_Data_7_OBUF : OBUF
    port map (
      I => IP2Bus_Data_7_OBUF_187,
      O => IP2Bus_Data(7)
    );
  IP2Bus_Data_8_OBUF : OBUF
    port map (
      I => IP2Bus_Data_8_OBUF_188,
      O => IP2Bus_Data(8)
    );
  IP2Bus_Data_9_OBUF : OBUF
    port map (
      I => IP2Bus_Data_9_OBUF_189,
      O => IP2Bus_Data(9)
    );
  IP2Bus_Data_10_OBUF : OBUF
    port map (
      I => IP2Bus_Data_10_OBUF_159,
      O => IP2Bus_Data(10)
    );
  IP2Bus_Data_11_OBUF : OBUF
    port map (
      I => IP2Bus_Data_11_OBUF_160,
      O => IP2Bus_Data(11)
    );
  IP2Bus_Data_12_OBUF : OBUF
    port map (
      I => IP2Bus_Data_12_OBUF_161,
      O => IP2Bus_Data(12)
    );
  IP2Bus_Data_13_OBUF : OBUF
    port map (
      I => IP2Bus_Data_13_OBUF_162,
      O => IP2Bus_Data(13)
    );
  IP2Bus_Data_14_OBUF : OBUF
    port map (
      I => IP2Bus_Data_14_OBUF_163,
      O => IP2Bus_Data(14)
    );
  IP2Bus_Data_15_OBUF : OBUF
    port map (
      I => IP2Bus_Data_15_OBUF_164,
      O => IP2Bus_Data(15)
    );
  IP2Bus_Data_16_OBUF : OBUF
    port map (
      I => IP2Bus_Data_16_OBUF_165,
      O => IP2Bus_Data(16)
    );
  IP2Bus_Data_17_OBUF : OBUF
    port map (
      I => IP2Bus_Data_17_OBUF_166,
      O => IP2Bus_Data(17)
    );
  IP2Bus_Data_18_OBUF : OBUF
    port map (
      I => IP2Bus_Data_18_OBUF_167,
      O => IP2Bus_Data(18)
    );
  IP2Bus_Data_19_OBUF : OBUF
    port map (
      I => IP2Bus_Data_19_OBUF_168,
      O => IP2Bus_Data(19)
    );
  IP2Bus_Data_20_OBUF : OBUF
    port map (
      I => IP2Bus_Data_20_OBUF_170,
      O => IP2Bus_Data(20)
    );
  IP2Bus_Data_21_OBUF : OBUF
    port map (
      I => IP2Bus_Data_21_OBUF_171,
      O => IP2Bus_Data(21)
    );
  IP2Bus_Data_22_OBUF : OBUF
    port map (
      I => IP2Bus_Data_22_OBUF_172,
      O => IP2Bus_Data(22)
    );
  IP2Bus_Data_23_OBUF : OBUF
    port map (
      I => IP2Bus_Data_23_OBUF_173,
      O => IP2Bus_Data(23)
    );
  IP2Bus_Data_24_OBUF : OBUF
    port map (
      I => IP2Bus_Data_24_OBUF_174,
      O => IP2Bus_Data(24)
    );
  IP2Bus_Data_25_OBUF : OBUF
    port map (
      I => IP2Bus_Data_25_OBUF_175,
      O => IP2Bus_Data(25)
    );
  IP2Bus_Data_26_OBUF : OBUF
    port map (
      I => IP2Bus_Data_26_OBUF_176,
      O => IP2Bus_Data(26)
    );
  IP2Bus_Data_27_OBUF : OBUF
    port map (
      I => IP2Bus_Data_27_OBUF_177,
      O => IP2Bus_Data(27)
    );
  IP2Bus_Data_28_OBUF : OBUF
    port map (
      I => IP2Bus_Data_28_OBUF_178,
      O => IP2Bus_Data(28)
    );
  IP2Bus_Data_29_OBUF : OBUF
    port map (
      I => IP2Bus_Data_29_OBUF_179,
      O => IP2Bus_Data(29)
    );
  IP2Bus_Data_30_OBUF : OBUF
    port map (
      I => IP2Bus_Data_30_OBUF_181,
      O => IP2Bus_Data(30)
    );
  IP2Bus_Data_31_OBUF : OBUF
    port map (
      I => IP2Bus_Data_31_OBUF_182,
      O => IP2Bus_Data(31)
    );
  my_leds_0 : FDS
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      D => my_leds_mux0002_0_59,
      S => my_leds_mux0002_0_0_559,
      Q => my_leds(0)
    );
  my_leds_1 : FDS
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      D => my_leds_mux0002_1_59,
      S => my_leds_mux0002_1_0_561,
      Q => my_leds(1)
    );
  my_leds_2 : FDS
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      D => my_leds_mux0002_2_59,
      S => my_leds_mux0002_2_0_563,
      Q => my_leds(2)
    );
  my_leds_3 : FDS
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      D => my_leds_mux0002_3_59,
      S => my_leds_mux0002_3_0_565,
      Q => my_leds(3)
    );
  my_leds_4 : FDS
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      D => my_leds_mux0002_4_59,
      S => my_leds_mux0002_4_0_567,
      Q => my_leds(4)
    );
  my_leds_5 : FDS
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      D => my_leds_mux0002_5_59,
      S => my_leds_mux0002_5_0_569,
      Q => my_leds(5)
    );
  my_leds_6 : FDS
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      D => my_leds_mux0002_6_59,
      S => my_leds_mux0002_6_0_571,
      Q => my_leds(6)
    );
  my_leds_7 : FDS
    port map (
      C => Bus2IP_Clk_BUFGP_9,
      D => my_leds_mux0002_7_59,
      S => my_leds_mux0002_7_0_573,
      Q => my_leds(7)
    );
  mi_divisor_Mcount_cuenta_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => mi_divisor_cuenta(1),
      O => mi_divisor_Mcount_cuenta_cy_1_rt_439
    );
  mi_divisor_Mcount_cuenta_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => mi_divisor_cuenta(2),
      O => mi_divisor_Mcount_cuenta_cy_2_rt_453
    );
  mi_divisor_Mcount_cuenta_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => mi_divisor_cuenta(3),
      O => mi_divisor_Mcount_cuenta_cy_3_rt_455
    );
  mi_divisor_Mcount_cuenta_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => mi_divisor_cuenta(4),
      O => mi_divisor_Mcount_cuenta_cy_4_rt_457
    );
  mi_divisor_Mcount_cuenta_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => mi_divisor_cuenta(5),
      O => mi_divisor_Mcount_cuenta_cy_5_rt_459
    );
  mi_divisor_Mcount_cuenta_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => mi_divisor_cuenta(6),
      O => mi_divisor_Mcount_cuenta_cy_6_rt_461
    );
  mi_divisor_Mcount_cuenta_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => mi_divisor_cuenta(7),
      O => mi_divisor_Mcount_cuenta_cy_7_rt_463
    );
  mi_divisor_Mcount_cuenta_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => mi_divisor_cuenta(8),
      O => mi_divisor_Mcount_cuenta_cy_8_rt_465
    );
  mi_divisor_Mcount_cuenta_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => mi_divisor_cuenta(9),
      O => mi_divisor_Mcount_cuenta_cy_9_rt_467
    );
  mi_divisor_Mcount_cuenta_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => mi_divisor_cuenta(10),
      O => mi_divisor_Mcount_cuenta_cy_10_rt_419
    );
  mi_divisor_Mcount_cuenta_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => mi_divisor_cuenta(11),
      O => mi_divisor_Mcount_cuenta_cy_11_rt_421
    );
  mi_divisor_Mcount_cuenta_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => mi_divisor_cuenta(12),
      O => mi_divisor_Mcount_cuenta_cy_12_rt_423
    );
  mi_divisor_Mcount_cuenta_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => mi_divisor_cuenta(13),
      O => mi_divisor_Mcount_cuenta_cy_13_rt_425
    );
  mi_divisor_Mcount_cuenta_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => mi_divisor_cuenta(14),
      O => mi_divisor_Mcount_cuenta_cy_14_rt_427
    );
  mi_divisor_Mcount_cuenta_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => mi_divisor_cuenta(15),
      O => mi_divisor_Mcount_cuenta_cy_15_rt_429
    );
  mi_divisor_Mcount_cuenta_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => mi_divisor_cuenta(16),
      O => mi_divisor_Mcount_cuenta_cy_16_rt_431
    );
  mi_divisor_Mcount_cuenta_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => mi_divisor_cuenta(17),
      O => mi_divisor_Mcount_cuenta_cy_17_rt_433
    );
  mi_divisor_Mcount_cuenta_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => mi_divisor_cuenta(18),
      O => mi_divisor_Mcount_cuenta_cy_18_rt_435
    );
  mi_divisor_Mcount_cuenta_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => mi_divisor_cuenta(19),
      O => mi_divisor_Mcount_cuenta_cy_19_rt_437
    );
  mi_divisor_Mcount_cuenta_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => mi_divisor_cuenta(20),
      O => mi_divisor_Mcount_cuenta_cy_20_rt_441
    );
  mi_divisor_Mcount_cuenta_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => mi_divisor_cuenta(21),
      O => mi_divisor_Mcount_cuenta_cy_21_rt_443
    );
  mi_divisor_Mcount_cuenta_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => mi_divisor_cuenta(22),
      O => mi_divisor_Mcount_cuenta_cy_22_rt_445
    );
  mi_divisor_Mcount_cuenta_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => mi_divisor_cuenta(23),
      O => mi_divisor_Mcount_cuenta_cy_23_rt_447
    );
  mi_divisor_Mcount_cuenta_cy_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => mi_divisor_cuenta(24),
      O => mi_divisor_Mcount_cuenta_cy_24_rt_449
    );
  mi_divisor_Mcount_cuenta_cy_25_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => mi_divisor_cuenta(25),
      O => mi_divisor_Mcount_cuenta_cy_25_rt_451
    );
  Mcount_my_counter_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => my_counter(1),
      O => Mcount_my_counter_cy_1_rt_277
    );
  Mcount_my_counter_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => my_counter(2),
      O => Mcount_my_counter_cy_2_rt_279
    );
  Mcount_my_counter_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => my_counter(3),
      O => Mcount_my_counter_cy_3_rt_281
    );
  Mcount_my_counter_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => my_counter(4),
      O => Mcount_my_counter_cy_4_rt_283
    );
  Mcount_my_counter_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => my_counter(5),
      O => Mcount_my_counter_cy_5_rt_285
    );
  Mcount_my_counter_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => my_counter(6),
      O => Mcount_my_counter_cy_6_rt_287
    );
  mi_divisor_Mcount_cuenta_xor_26_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => mi_divisor_cuenta(26),
      O => mi_divisor_Mcount_cuenta_xor_26_rt_496
    );
  Mcount_my_counter_xor_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => my_counter(7),
      O => Mcount_my_counter_xor_7_rt_289
    );
  my_leds_mux0002_0_591 : MUXF5
    port map (
      I0 => N0,
      I1 => N11,
      S => switches_1_IBUF_752,
      O => my_leds_mux0002_0_59
    );
  my_leds_mux0002_0_591_F : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => switches_0_IBUF_751,
      I1 => slv_reg0(7),
      I2 => switches_3_IBUF_753,
      I3 => slv_reg1(7),
      O => N0
    );
  my_leds_mux0002_0_591_G : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => switches_0_IBUF_751,
      I1 => slv_reg2(7),
      I2 => switches_3_IBUF_753,
      I3 => slv_reg3(7),
      O => N11
    );
  my_leds_mux0002_1_591 : MUXF5
    port map (
      I0 => N21,
      I1 => N31,
      S => switches_1_IBUF_752,
      O => my_leds_mux0002_1_59
    );
  my_leds_mux0002_1_591_F : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => switches_0_IBUF_751,
      I1 => slv_reg0(6),
      I2 => switches_3_IBUF_753,
      I3 => slv_reg1(6),
      O => N21
    );
  my_leds_mux0002_1_591_G : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => switches_0_IBUF_751,
      I1 => slv_reg2(6),
      I2 => switches_3_IBUF_753,
      I3 => slv_reg3(6),
      O => N31
    );
  my_leds_mux0002_2_591 : MUXF5
    port map (
      I0 => N41,
      I1 => N5,
      S => switches_1_IBUF_752,
      O => my_leds_mux0002_2_59
    );
  my_leds_mux0002_2_591_F : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => switches_0_IBUF_751,
      I1 => slv_reg0(5),
      I2 => switches_3_IBUF_753,
      I3 => slv_reg1(5),
      O => N41
    );
  my_leds_mux0002_2_591_G : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => switches_0_IBUF_751,
      I1 => slv_reg2(5),
      I2 => switches_3_IBUF_753,
      I3 => slv_reg3(5),
      O => N5
    );
  my_leds_mux0002_3_591 : MUXF5
    port map (
      I0 => N6,
      I1 => N7,
      S => switches_1_IBUF_752,
      O => my_leds_mux0002_3_59
    );
  my_leds_mux0002_3_591_F : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => switches_0_IBUF_751,
      I1 => slv_reg0(4),
      I2 => switches_3_IBUF_753,
      I3 => slv_reg1(4),
      O => N6
    );
  my_leds_mux0002_3_591_G : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => switches_0_IBUF_751,
      I1 => slv_reg2(4),
      I2 => switches_3_IBUF_753,
      I3 => slv_reg3(4),
      O => N7
    );
  my_leds_mux0002_4_591 : MUXF5
    port map (
      I0 => N8,
      I1 => N9,
      S => switches_1_IBUF_752,
      O => my_leds_mux0002_4_59
    );
  my_leds_mux0002_4_591_F : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => switches_0_IBUF_751,
      I1 => slv_reg0(3),
      I2 => switches_3_IBUF_753,
      I3 => slv_reg1(3),
      O => N8
    );
  my_leds_mux0002_4_591_G : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => switches_0_IBUF_751,
      I1 => slv_reg2(3),
      I2 => switches_3_IBUF_753,
      I3 => slv_reg3(3),
      O => N9
    );
  my_leds_mux0002_5_591 : MUXF5
    port map (
      I0 => N10,
      I1 => N111,
      S => switches_1_IBUF_752,
      O => my_leds_mux0002_5_59
    );
  my_leds_mux0002_5_591_F : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => switches_0_IBUF_751,
      I1 => slv_reg0(2),
      I2 => switches_3_IBUF_753,
      I3 => slv_reg1(2),
      O => N10
    );
  my_leds_mux0002_5_591_G : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => switches_0_IBUF_751,
      I1 => slv_reg2(2),
      I2 => switches_3_IBUF_753,
      I3 => slv_reg3(2),
      O => N111
    );
  my_leds_mux0002_6_591 : MUXF5
    port map (
      I0 => N12,
      I1 => N13,
      S => switches_1_IBUF_752,
      O => my_leds_mux0002_6_59
    );
  my_leds_mux0002_6_591_F : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => switches_0_IBUF_751,
      I1 => slv_reg0(1),
      I2 => switches_3_IBUF_753,
      I3 => slv_reg1(1),
      O => N12
    );
  my_leds_mux0002_6_591_G : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => switches_0_IBUF_751,
      I1 => slv_reg2(1),
      I2 => switches_3_IBUF_753,
      I3 => slv_reg3(1),
      O => N13
    );
  my_leds_mux0002_7_591 : MUXF5
    port map (
      I0 => N14,
      I1 => N15,
      S => switches_1_IBUF_752,
      O => my_leds_mux0002_7_59
    );
  my_leds_mux0002_7_591_F : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => switches_0_IBUF_751,
      I1 => slv_reg0(0),
      I2 => switches_3_IBUF_753,
      I3 => slv_reg1(0),
      O => N14
    );
  my_leds_mux0002_7_591_G : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => switches_0_IBUF_751,
      I1 => slv_reg2(0),
      I2 => switches_3_IBUF_753,
      I3 => slv_reg3(0),
      O => N15
    );
  IP2Bus_Data_9_68 : MUXF5
    port map (
      I0 => N16,
      I1 => N17,
      S => Bus2IP_RdCE_2_IBUF_80,
      O => IP2Bus_Data_9_OBUF_189
    );
  IP2Bus_Data_9_68_F : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => Bus2IP_RdCE_3_IBUF_81,
      I1 => IP2Bus_Data_9_51_157,
      I2 => slv_reg3(9),
      I3 => IP2Bus_Data_0_22,
      O => N16
    );
  IP2Bus_Data_9_68_G : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => slv_reg2(9),
      I1 => Bus2IP_RdCE_3_IBUF_81,
      I2 => IP2Bus_Data_0_22,
      O => N17
    );
  IP2Bus_Data_8_68 : MUXF5
    port map (
      I0 => N18,
      I1 => N19,
      S => Bus2IP_RdCE_2_IBUF_80,
      O => IP2Bus_Data_8_OBUF_188
    );
  IP2Bus_Data_8_68_F : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => Bus2IP_RdCE_3_IBUF_81,
      I1 => IP2Bus_Data_8_51_155,
      I2 => slv_reg3(8),
      I3 => IP2Bus_Data_0_22,
      O => N18
    );
  IP2Bus_Data_8_68_G : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => slv_reg2(8),
      I1 => Bus2IP_RdCE_3_IBUF_81,
      I2 => IP2Bus_Data_0_22,
      O => N19
    );
  IP2Bus_Data_7_68 : MUXF5
    port map (
      I0 => N20,
      I1 => N211,
      S => Bus2IP_RdCE_2_IBUF_80,
      O => IP2Bus_Data_7_OBUF_187
    );
  IP2Bus_Data_7_68_F : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => Bus2IP_RdCE_3_IBUF_81,
      I1 => IP2Bus_Data_7_51_153,
      I2 => slv_reg3(7),
      I3 => IP2Bus_Data_0_22,
      O => N20
    );
  IP2Bus_Data_7_68_G : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => slv_reg2(7),
      I1 => Bus2IP_RdCE_3_IBUF_81,
      I2 => IP2Bus_Data_0_22,
      O => N211
    );
  IP2Bus_Data_6_68 : MUXF5
    port map (
      I0 => N22,
      I1 => N23,
      S => Bus2IP_RdCE_2_IBUF_80,
      O => IP2Bus_Data_6_OBUF_186
    );
  IP2Bus_Data_6_68_F : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => Bus2IP_RdCE_3_IBUF_81,
      I1 => IP2Bus_Data_6_51_151,
      I2 => slv_reg3(6),
      I3 => IP2Bus_Data_0_22,
      O => N22
    );
  IP2Bus_Data_6_68_G : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => slv_reg2(6),
      I1 => Bus2IP_RdCE_3_IBUF_81,
      I2 => IP2Bus_Data_0_22,
      O => N23
    );
  IP2Bus_Data_5_68 : MUXF5
    port map (
      I0 => N24,
      I1 => N25,
      S => Bus2IP_RdCE_2_IBUF_80,
      O => IP2Bus_Data_5_OBUF_185
    );
  IP2Bus_Data_5_68_F : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => Bus2IP_RdCE_3_IBUF_81,
      I1 => IP2Bus_Data_5_51_149,
      I2 => slv_reg3(5),
      I3 => IP2Bus_Data_0_22,
      O => N24
    );
  IP2Bus_Data_5_68_G : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => slv_reg2(5),
      I1 => Bus2IP_RdCE_3_IBUF_81,
      I2 => IP2Bus_Data_0_22,
      O => N25
    );
  IP2Bus_Data_4_68 : MUXF5
    port map (
      I0 => N26,
      I1 => N27,
      S => Bus2IP_RdCE_2_IBUF_80,
      O => IP2Bus_Data_4_OBUF_184
    );
  IP2Bus_Data_4_68_F : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => Bus2IP_RdCE_3_IBUF_81,
      I1 => IP2Bus_Data_4_51_147,
      I2 => slv_reg3(4),
      I3 => IP2Bus_Data_0_22,
      O => N26
    );
  IP2Bus_Data_4_68_G : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => slv_reg2(4),
      I1 => Bus2IP_RdCE_3_IBUF_81,
      I2 => IP2Bus_Data_0_22,
      O => N27
    );
  IP2Bus_Data_3_68 : MUXF5
    port map (
      I0 => N28,
      I1 => N29,
      S => Bus2IP_RdCE_2_IBUF_80,
      O => IP2Bus_Data_3_OBUF_183
    );
  IP2Bus_Data_3_68_F : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => Bus2IP_RdCE_3_IBUF_81,
      I1 => IP2Bus_Data_3_51_145,
      I2 => slv_reg3(3),
      I3 => IP2Bus_Data_0_22,
      O => N28
    );
  IP2Bus_Data_3_68_G : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => slv_reg2(3),
      I1 => Bus2IP_RdCE_3_IBUF_81,
      I2 => IP2Bus_Data_0_22,
      O => N29
    );
  IP2Bus_Data_31_68 : MUXF5
    port map (
      I0 => N30,
      I1 => N311,
      S => Bus2IP_RdCE_2_IBUF_80,
      O => IP2Bus_Data_31_OBUF_182
    );
  IP2Bus_Data_31_68_F : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => Bus2IP_RdCE_3_IBUF_81,
      I1 => IP2Bus_Data_31_51_143,
      I2 => slv_reg3(31),
      I3 => IP2Bus_Data_0_22,
      O => N30
    );
  IP2Bus_Data_31_68_G : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => slv_reg2(31),
      I1 => Bus2IP_RdCE_3_IBUF_81,
      I2 => IP2Bus_Data_0_22,
      O => N311
    );
  IP2Bus_Data_30_68 : MUXF5
    port map (
      I0 => N32,
      I1 => N33,
      S => Bus2IP_RdCE_2_IBUF_80,
      O => IP2Bus_Data_30_OBUF_181
    );
  IP2Bus_Data_30_68_F : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => Bus2IP_RdCE_3_IBUF_81,
      I1 => IP2Bus_Data_30_51_141,
      I2 => slv_reg3(30),
      I3 => IP2Bus_Data_0_22,
      O => N32
    );
  IP2Bus_Data_30_68_G : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => slv_reg2(30),
      I1 => Bus2IP_RdCE_3_IBUF_81,
      I2 => IP2Bus_Data_0_22,
      O => N33
    );
  IP2Bus_Data_2_68 : MUXF5
    port map (
      I0 => N34,
      I1 => N35,
      S => Bus2IP_RdCE_2_IBUF_80,
      O => IP2Bus_Data_2_OBUF_180
    );
  IP2Bus_Data_2_68_F : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => Bus2IP_RdCE_3_IBUF_81,
      I1 => IP2Bus_Data_2_51_139,
      I2 => slv_reg3(2),
      I3 => IP2Bus_Data_0_22,
      O => N34
    );
  IP2Bus_Data_2_68_G : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => slv_reg2(2),
      I1 => Bus2IP_RdCE_3_IBUF_81,
      I2 => IP2Bus_Data_0_22,
      O => N35
    );
  IP2Bus_Data_29_68 : MUXF5
    port map (
      I0 => N36,
      I1 => N37,
      S => Bus2IP_RdCE_2_IBUF_80,
      O => IP2Bus_Data_29_OBUF_179
    );
  IP2Bus_Data_29_68_F : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => Bus2IP_RdCE_3_IBUF_81,
      I1 => IP2Bus_Data_29_51_137,
      I2 => slv_reg3(29),
      I3 => IP2Bus_Data_0_22,
      O => N36
    );
  IP2Bus_Data_29_68_G : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => slv_reg2(29),
      I1 => Bus2IP_RdCE_3_IBUF_81,
      I2 => IP2Bus_Data_0_22,
      O => N37
    );
  IP2Bus_Data_28_68 : MUXF5
    port map (
      I0 => N38,
      I1 => N39,
      S => Bus2IP_RdCE_2_IBUF_80,
      O => IP2Bus_Data_28_OBUF_178
    );
  IP2Bus_Data_28_68_F : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => Bus2IP_RdCE_3_IBUF_81,
      I1 => IP2Bus_Data_28_51_135,
      I2 => slv_reg3(28),
      I3 => IP2Bus_Data_0_22,
      O => N38
    );
  IP2Bus_Data_28_68_G : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => slv_reg2(28),
      I1 => Bus2IP_RdCE_3_IBUF_81,
      I2 => IP2Bus_Data_0_22,
      O => N39
    );
  IP2Bus_Data_27_68 : MUXF5
    port map (
      I0 => N40,
      I1 => N411,
      S => Bus2IP_RdCE_2_IBUF_80,
      O => IP2Bus_Data_27_OBUF_177
    );
  IP2Bus_Data_27_68_F : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => Bus2IP_RdCE_3_IBUF_81,
      I1 => IP2Bus_Data_27_51_133,
      I2 => slv_reg3(27),
      I3 => IP2Bus_Data_0_22,
      O => N40
    );
  IP2Bus_Data_27_68_G : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => slv_reg2(27),
      I1 => Bus2IP_RdCE_3_IBUF_81,
      I2 => IP2Bus_Data_0_22,
      O => N411
    );
  IP2Bus_Data_26_68 : MUXF5
    port map (
      I0 => N42,
      I1 => N43,
      S => Bus2IP_RdCE_2_IBUF_80,
      O => IP2Bus_Data_26_OBUF_176
    );
  IP2Bus_Data_26_68_F : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => Bus2IP_RdCE_3_IBUF_81,
      I1 => IP2Bus_Data_26_51_131,
      I2 => slv_reg3(26),
      I3 => IP2Bus_Data_0_22,
      O => N42
    );
  IP2Bus_Data_26_68_G : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => slv_reg2(26),
      I1 => Bus2IP_RdCE_3_IBUF_81,
      I2 => IP2Bus_Data_0_22,
      O => N43
    );
  IP2Bus_Data_25_68 : MUXF5
    port map (
      I0 => N44,
      I1 => N45,
      S => Bus2IP_RdCE_2_IBUF_80,
      O => IP2Bus_Data_25_OBUF_175
    );
  IP2Bus_Data_25_68_F : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => Bus2IP_RdCE_3_IBUF_81,
      I1 => IP2Bus_Data_25_51_129,
      I2 => slv_reg3(25),
      I3 => IP2Bus_Data_0_22,
      O => N44
    );
  IP2Bus_Data_25_68_G : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => slv_reg2(25),
      I1 => Bus2IP_RdCE_3_IBUF_81,
      I2 => IP2Bus_Data_0_22,
      O => N45
    );
  IP2Bus_Data_24_68 : MUXF5
    port map (
      I0 => N46,
      I1 => N47,
      S => Bus2IP_RdCE_2_IBUF_80,
      O => IP2Bus_Data_24_OBUF_174
    );
  IP2Bus_Data_24_68_F : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => Bus2IP_RdCE_3_IBUF_81,
      I1 => IP2Bus_Data_24_51_127,
      I2 => slv_reg3(24),
      I3 => IP2Bus_Data_0_22,
      O => N46
    );
  IP2Bus_Data_24_68_G : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => slv_reg2(24),
      I1 => Bus2IP_RdCE_3_IBUF_81,
      I2 => IP2Bus_Data_0_22,
      O => N47
    );
  IP2Bus_Data_23_68 : MUXF5
    port map (
      I0 => N48,
      I1 => N49,
      S => Bus2IP_RdCE_2_IBUF_80,
      O => IP2Bus_Data_23_OBUF_173
    );
  IP2Bus_Data_23_68_F : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => Bus2IP_RdCE_3_IBUF_81,
      I1 => IP2Bus_Data_23_51_125,
      I2 => slv_reg3(23),
      I3 => IP2Bus_Data_0_22,
      O => N48
    );
  IP2Bus_Data_23_68_G : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => slv_reg2(23),
      I1 => Bus2IP_RdCE_3_IBUF_81,
      I2 => IP2Bus_Data_0_22,
      O => N49
    );
  IP2Bus_Data_22_68 : MUXF5
    port map (
      I0 => N50,
      I1 => N51,
      S => Bus2IP_RdCE_2_IBUF_80,
      O => IP2Bus_Data_22_OBUF_172
    );
  IP2Bus_Data_22_68_F : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => Bus2IP_RdCE_3_IBUF_81,
      I1 => IP2Bus_Data_22_51_123,
      I2 => slv_reg3(22),
      I3 => IP2Bus_Data_0_22,
      O => N50
    );
  IP2Bus_Data_22_68_G : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => slv_reg2(22),
      I1 => Bus2IP_RdCE_3_IBUF_81,
      I2 => IP2Bus_Data_0_22,
      O => N51
    );
  IP2Bus_Data_21_68 : MUXF5
    port map (
      I0 => N52,
      I1 => N53,
      S => Bus2IP_RdCE_2_IBUF_80,
      O => IP2Bus_Data_21_OBUF_171
    );
  IP2Bus_Data_21_68_F : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => Bus2IP_RdCE_3_IBUF_81,
      I1 => IP2Bus_Data_21_51_121,
      I2 => slv_reg3(21),
      I3 => IP2Bus_Data_0_22,
      O => N52
    );
  IP2Bus_Data_21_68_G : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => slv_reg2(21),
      I1 => Bus2IP_RdCE_3_IBUF_81,
      I2 => IP2Bus_Data_0_22,
      O => N53
    );
  IP2Bus_Data_20_68 : MUXF5
    port map (
      I0 => N54,
      I1 => N55,
      S => Bus2IP_RdCE_2_IBUF_80,
      O => IP2Bus_Data_20_OBUF_170
    );
  IP2Bus_Data_20_68_F : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => Bus2IP_RdCE_3_IBUF_81,
      I1 => IP2Bus_Data_20_51_119,
      I2 => slv_reg3(20),
      I3 => IP2Bus_Data_0_22,
      O => N54
    );
  IP2Bus_Data_20_68_G : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => slv_reg2(20),
      I1 => Bus2IP_RdCE_3_IBUF_81,
      I2 => IP2Bus_Data_0_22,
      O => N55
    );
  IP2Bus_Data_1_68 : MUXF5
    port map (
      I0 => N56,
      I1 => N57,
      S => Bus2IP_RdCE_2_IBUF_80,
      O => IP2Bus_Data_1_OBUF_169
    );
  IP2Bus_Data_1_68_F : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => Bus2IP_RdCE_3_IBUF_81,
      I1 => IP2Bus_Data_1_51_117,
      I2 => slv_reg3(1),
      I3 => IP2Bus_Data_0_22,
      O => N56
    );
  IP2Bus_Data_1_68_G : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => slv_reg2(1),
      I1 => Bus2IP_RdCE_3_IBUF_81,
      I2 => IP2Bus_Data_0_22,
      O => N57
    );
  IP2Bus_Data_19_68 : MUXF5
    port map (
      I0 => N58,
      I1 => N59,
      S => Bus2IP_RdCE_2_IBUF_80,
      O => IP2Bus_Data_19_OBUF_168
    );
  IP2Bus_Data_19_68_F : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => Bus2IP_RdCE_3_IBUF_81,
      I1 => IP2Bus_Data_19_51_115,
      I2 => slv_reg3(19),
      I3 => IP2Bus_Data_0_22,
      O => N58
    );
  IP2Bus_Data_19_68_G : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => slv_reg2(19),
      I1 => Bus2IP_RdCE_3_IBUF_81,
      I2 => IP2Bus_Data_0_22,
      O => N59
    );
  IP2Bus_Data_18_68 : MUXF5
    port map (
      I0 => N60,
      I1 => N61,
      S => Bus2IP_RdCE_2_IBUF_80,
      O => IP2Bus_Data_18_OBUF_167
    );
  IP2Bus_Data_18_68_F : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => Bus2IP_RdCE_3_IBUF_81,
      I1 => IP2Bus_Data_18_51_113,
      I2 => slv_reg3(18),
      I3 => IP2Bus_Data_0_22,
      O => N60
    );
  IP2Bus_Data_18_68_G : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => slv_reg2(18),
      I1 => Bus2IP_RdCE_3_IBUF_81,
      I2 => IP2Bus_Data_0_22,
      O => N61
    );
  IP2Bus_Data_17_68 : MUXF5
    port map (
      I0 => N62,
      I1 => N63,
      S => Bus2IP_RdCE_2_IBUF_80,
      O => IP2Bus_Data_17_OBUF_166
    );
  IP2Bus_Data_17_68_F : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => Bus2IP_RdCE_3_IBUF_81,
      I1 => IP2Bus_Data_17_51_111,
      I2 => slv_reg3(17),
      I3 => IP2Bus_Data_0_22,
      O => N62
    );
  IP2Bus_Data_17_68_G : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => slv_reg2(17),
      I1 => Bus2IP_RdCE_3_IBUF_81,
      I2 => IP2Bus_Data_0_22,
      O => N63
    );
  IP2Bus_Data_16_68 : MUXF5
    port map (
      I0 => N64,
      I1 => N65,
      S => Bus2IP_RdCE_2_IBUF_80,
      O => IP2Bus_Data_16_OBUF_165
    );
  IP2Bus_Data_16_68_F : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => Bus2IP_RdCE_3_IBUF_81,
      I1 => IP2Bus_Data_16_51_109,
      I2 => slv_reg3(16),
      I3 => IP2Bus_Data_0_22,
      O => N64
    );
  IP2Bus_Data_16_68_G : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => slv_reg2(16),
      I1 => Bus2IP_RdCE_3_IBUF_81,
      I2 => IP2Bus_Data_0_22,
      O => N65
    );
  IP2Bus_Data_15_68 : MUXF5
    port map (
      I0 => N66,
      I1 => N67,
      S => Bus2IP_RdCE_2_IBUF_80,
      O => IP2Bus_Data_15_OBUF_164
    );
  IP2Bus_Data_15_68_F : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => Bus2IP_RdCE_3_IBUF_81,
      I1 => IP2Bus_Data_15_51_107,
      I2 => slv_reg3(15),
      I3 => IP2Bus_Data_0_22,
      O => N66
    );
  IP2Bus_Data_15_68_G : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => slv_reg2(15),
      I1 => Bus2IP_RdCE_3_IBUF_81,
      I2 => IP2Bus_Data_0_22,
      O => N67
    );
  IP2Bus_Data_14_68 : MUXF5
    port map (
      I0 => N68,
      I1 => N69,
      S => Bus2IP_RdCE_2_IBUF_80,
      O => IP2Bus_Data_14_OBUF_163
    );
  IP2Bus_Data_14_68_F : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => Bus2IP_RdCE_3_IBUF_81,
      I1 => IP2Bus_Data_14_51_105,
      I2 => slv_reg3(14),
      I3 => IP2Bus_Data_0_22,
      O => N68
    );
  IP2Bus_Data_14_68_G : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => slv_reg2(14),
      I1 => Bus2IP_RdCE_3_IBUF_81,
      I2 => IP2Bus_Data_0_22,
      O => N69
    );
  IP2Bus_Data_13_68 : MUXF5
    port map (
      I0 => N70,
      I1 => N71,
      S => Bus2IP_RdCE_2_IBUF_80,
      O => IP2Bus_Data_13_OBUF_162
    );
  IP2Bus_Data_13_68_F : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => Bus2IP_RdCE_3_IBUF_81,
      I1 => IP2Bus_Data_13_51_103,
      I2 => slv_reg3(13),
      I3 => IP2Bus_Data_0_22,
      O => N70
    );
  IP2Bus_Data_13_68_G : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => slv_reg2(13),
      I1 => Bus2IP_RdCE_3_IBUF_81,
      I2 => IP2Bus_Data_0_22,
      O => N71
    );
  IP2Bus_Data_12_68 : MUXF5
    port map (
      I0 => N72,
      I1 => N73,
      S => Bus2IP_RdCE_2_IBUF_80,
      O => IP2Bus_Data_12_OBUF_161
    );
  IP2Bus_Data_12_68_F : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => Bus2IP_RdCE_3_IBUF_81,
      I1 => IP2Bus_Data_12_51_101,
      I2 => slv_reg3(12),
      I3 => IP2Bus_Data_0_22,
      O => N72
    );
  IP2Bus_Data_12_68_G : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => slv_reg2(12),
      I1 => Bus2IP_RdCE_3_IBUF_81,
      I2 => IP2Bus_Data_0_22,
      O => N73
    );
  IP2Bus_Data_11_68 : MUXF5
    port map (
      I0 => N74,
      I1 => N75,
      S => Bus2IP_RdCE_2_IBUF_80,
      O => IP2Bus_Data_11_OBUF_160
    );
  IP2Bus_Data_11_68_F : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => Bus2IP_RdCE_3_IBUF_81,
      I1 => IP2Bus_Data_11_51_99,
      I2 => slv_reg3(11),
      I3 => IP2Bus_Data_0_22,
      O => N74
    );
  IP2Bus_Data_11_68_G : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => slv_reg2(11),
      I1 => Bus2IP_RdCE_3_IBUF_81,
      I2 => IP2Bus_Data_0_22,
      O => N75
    );
  IP2Bus_Data_10_68 : MUXF5
    port map (
      I0 => N76,
      I1 => N77,
      S => Bus2IP_RdCE_2_IBUF_80,
      O => IP2Bus_Data_10_OBUF_159
    );
  IP2Bus_Data_10_68_F : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => Bus2IP_RdCE_3_IBUF_81,
      I1 => IP2Bus_Data_10_51_97,
      I2 => slv_reg3(10),
      I3 => IP2Bus_Data_0_22,
      O => N76
    );
  IP2Bus_Data_10_68_G : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => slv_reg2(10),
      I1 => Bus2IP_RdCE_3_IBUF_81,
      I2 => IP2Bus_Data_0_22,
      O => N77
    );
  IP2Bus_Data_0_68 : MUXF5
    port map (
      I0 => N78,
      I1 => N79,
      S => Bus2IP_RdCE_2_IBUF_80,
      O => IP2Bus_Data_0_OBUF_158
    );
  IP2Bus_Data_0_68_F : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => Bus2IP_RdCE_3_IBUF_81,
      I1 => IP2Bus_Data_0_51_95,
      I2 => slv_reg3(0),
      I3 => IP2Bus_Data_0_22,
      O => N78
    );
  IP2Bus_Data_0_68_G : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => slv_reg2(0),
      I1 => Bus2IP_RdCE_3_IBUF_81,
      I2 => IP2Bus_Data_0_22,
      O => N79
    );
  Bus2IP_Clk_BUFGP : BUFGP
    port map (
      I => Bus2IP_Clk,
      O => Bus2IP_Clk_BUFGP_9
    );
  Mcompar_my_counter_cmp_lt0000_cy_7_inv_INV_0 : INV
    port map (
      I => Mcompar_my_counter_cmp_lt0000_cy(7),
      O => my_counter_cmp_lt0000
    );
  mi_divisor_Mcount_cuenta_lut_0_INV_0 : INV
    port map (
      I => mi_divisor_cuenta(0),
      O => mi_divisor_Mcount_cuenta_lut(0)
    );
  Mcount_my_counter_lut_0_INV_0 : INV
    port map (
      I => my_counter(0),
      O => Mcount_my_counter_lut(0)
    );
  Bus2IP_Reset_inv1_INV_0 : INV
    port map (
      I => Bus2IP_Reset_IBUF_83,
      O => Bus2IP_Reset_inv
    );
  mi_divisor_clk_aux_not00011_INV_0 : INV
    port map (
      I => mi_divisor_clk_aux_497,
      O => mi_divisor_clk_aux_not0001
    );

end Structure;

