------------------------------------------------------------------------------
-- user_logic.vhd - entity/architecture pair
------------------------------------------------------------------------------
--
-- ***************************************************************************
-- ** Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.            **
-- **                                                                       **
-- ** Xilinx, Inc.                                                          **
-- ** XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"         **
-- ** AS A COURTESY TO YOU, SOLELY FOR USE IN DEVELOPING PROGRAMS AND       **
-- ** SOLUTIONS FOR XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE,        **
-- ** OR INFORMATION AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE,        **
-- ** APPLICATION OR STANDARD, XILINX IS MAKING NO REPRESENTATION           **
-- ** THAT THIS IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,     **
-- ** AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE      **
-- ** FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY              **
-- ** WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE               **
-- ** IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR        **
-- ** REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF       **
-- ** INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS       **
-- ** FOR A PARTICULAR PURPOSE.                                             **
-- **                                                                       **
-- ***************************************************************************
--
------------------------------------------------------------------------------
-- Filename:          user_logic.vhd
-- Version:           1.00.a
-- Description:       User logic.
-- Date:              Thu Jan 26 22:38:24 2023 (by Create and Import Peripheral Wizard)
-- VHDL Standard:     VHDL'93
------------------------------------------------------------------------------
-- Naming Conventions:
--   active low signals:                    "*_n"
--   clock signals:                         "clk", "clk_div#", "clk_#x"
--   reset signals:                         "rst", "rst_n"
--   generics:                              "C_*"
--   user defined types:                    "*_TYPE"
--   state machine next state:              "*_ns"
--   state machine current state:           "*_cs"
--   combinatorial signals:                 "*_com"
--   pipelined or register delay signals:   "*_d#"
--   counter signals:                       "*cnt*"
--   clock enable signals:                  "*_ce"
--   internal version of output port:       "*_i"
--   device pins:                           "*_pin"
--   ports:                                 "- Names begin with Uppercase"
--   processes:                             "*_PROCESS"
--   component instantiations:              "<ENTITY_>I_<#|FUNC>"
------------------------------------------------------------------------------

-- DO NOT EDIT BELOW THIS LINE --------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

library proc_common_v3_00_a;
use proc_common_v3_00_a.proc_common_pkg.all;

-- DO NOT EDIT ABOVE THIS LINE --------------------

--USER libraries added here

------------------------------------------------------------------------------
-- Entity section
------------------------------------------------------------------------------
-- Definition of Generics:
--   C_SLV_DWIDTH                 -- Slave interface data bus width
--   C_NUM_REG                    -- Number of software accessible registers
--
-- Definition of Ports:
--   Bus2IP_Clk                   -- Bus to IP clock
--   Bus2IP_Reset                 -- Bus to IP reset
--   Bus2IP_Data                  -- Bus to IP data bus
--   Bus2IP_BE                    -- Bus to IP byte enables
--   Bus2IP_RdCE                  -- Bus to IP read chip enable
--   Bus2IP_WrCE                  -- Bus to IP write chip enable
--   IP2Bus_Data                  -- IP to Bus data bus
--   IP2Bus_RdAck                 -- IP to Bus read transfer acknowledgement
--   IP2Bus_WrAck                 -- IP to Bus write transfer acknowledgement
--   IP2Bus_Error                 -- IP to Bus error response
--   IP2WFIFO_RdReq               -- IP to WFIFO : IP read request
--   WFIFO2IP_Data                -- WFIFO to IP : WFIFO read data
--   WFIFO2IP_RdAck               -- WFIFO to IP : WFIFO read acknowledge
--   WFIFO2IP_AlmostEmpty         -- WFIFO to IP : WFIFO almost empty
--   WFIFO2IP_Empty               -- WFIFO to IP : WFIFO empty
------------------------------------------------------------------------------

entity user_logic is
  generic
  (
    -- ADD USER GENERICS BELOW THIS LINE ---------------
    --USER generics added here
    -- ADD USER GENERICS ABOVE THIS LINE ---------------

    -- DO NOT EDIT BELOW THIS LINE ---------------------
    -- Bus protocol parameters, do not add to or delete
    C_SLV_DWIDTH                   : integer              := 32;
    C_NUM_REG                      : integer              := 1
    -- DO NOT EDIT ABOVE THIS LINE ---------------------
  );
  port
  (
    -- ADD USER PORTS BELOW THIS LINE ------------------

    -- lb_rs_cso_pin es Reset para LCD, Column Serial Out para Banner
    lb_rs_cso                      : out std_logic;

    -- lb_rw_cc_pin es Read/Write para LCD (no se usa en la placa nueva, porque siempre se escribe, no se lee), Column Clock para Banner
    lb_rw_cc                       : out std_logic;

    -- lb_e_ro_pin es Enable para LCD, Reset Out para Banner
    lb_e_ro                        : out std_logic;

    -- lb_data_pin<0> es data<0> para LCD, Row Serial Out para Banner
    -- lb_data_pin<1> es data<1> para LCD, Row Clk para Banner
    -- lb_data_pin<2> es data<2> para LCD, Reset2 Out para Banner
    -- lb_data_pin<3> a lb_data_pin<7> son data<3> a data<7> para LCD, sin uso para Banner
    lb_data                        : out std_logic_vector(7 downto 0);

    -- ADD USER PORTS ABOVE THIS LINE ------------------

    -- DO NOT EDIT BELOW THIS LINE ---------------------
    -- Bus protocol ports, do not add to or delete
    Bus2IP_Clk                     : in  std_logic;
    Bus2IP_Reset                   : in  std_logic;
    Bus2IP_Data                    : in  std_logic_vector(0 to C_SLV_DWIDTH-1);
    Bus2IP_BE                      : in  std_logic_vector(0 to C_SLV_DWIDTH/8-1);
    Bus2IP_RdCE                    : in  std_logic_vector(0 to C_NUM_REG-1);
    Bus2IP_WrCE                    : in  std_logic_vector(0 to C_NUM_REG-1);
    IP2Bus_Data                    : out std_logic_vector(0 to C_SLV_DWIDTH-1);
    IP2Bus_RdAck                   : out std_logic;
    IP2Bus_WrAck                   : out std_logic;
    IP2Bus_Error                   : out std_logic;
    IP2WFIFO_RdReq                 : out std_logic;
    WFIFO2IP_Data                  : in  std_logic_vector(0 to C_SLV_DWIDTH-1);
    WFIFO2IP_RdAck                 : in  std_logic;
    WFIFO2IP_AlmostEmpty           : in  std_logic;
    WFIFO2IP_Empty                 : in  std_logic
    -- DO NOT EDIT ABOVE THIS LINE ---------------------
  );

  attribute MAX_FANOUT : string;
  attribute SIGIS : string;

  attribute SIGIS of Bus2IP_Clk    : signal is "CLK";
  attribute SIGIS of Bus2IP_Reset  : signal is "RST";

end entity user_logic;

------------------------------------------------------------------------------
-- Architecture section
------------------------------------------------------------------------------

architecture IMP of user_logic is

  --USER signal declarations added here, as needed for user logic
  component  bannerDesp is
    port (
		reset_in       : in  std_logic;
		clock          : in  std_logic;
		col_serial_out : out std_logic;	
		col_clk        : out std_logic;
		row_serial_out : out std_logic; 
		row_clk        : out std_logic; 
		reset_out      : out std_logic;
		reset2_out     : out std_logic;
		fila           : in  std_logic_vector(2 downto 0);
		columna        : in  std_logic_vector(2 downto 0);
		dato           : in  std_logic_vector(4 downto 0);
		load           : in  std_logic
	);
  end component;

  component lcd_controller
    port (
		clk            : in  std_logic;  --system clock
		reset          : in  std_logic;  --active high reinitializes lcd
		lcd_enable     : in  std_logic;  --latches data into lcd controller
		lcd_bus        : in  std_logic_vector(9 downto 0);  --data and control signals
		busy           : out std_logic := '1';  --lcd controller busy/idle feedback
		rw, rs, e      : out std_logic;  --read/write, setup/data, and enable for lcd
		lcd_data       : out std_logic_vector(7 downto 0) --data signals for lcd
    );
  end component;

  type statesLectura is (estadoEsperaLectura, estadoEnviarDato);
  signal currentStateLectura, nextStateLectura : statesLectura;

  signal load          : std_logic;
  signal fifo_rdreq_cmb: std_logic;

  signal lcd_bus       : std_logic_vector(9 downto 0);
  signal busy          : std_logic;

  signal fila          : std_logic_vector(2 downto 0);
  signal columna       : std_logic_vector(2 downto 0);
  signal dato          : std_logic_vector(4 downto 0);

begin

  lcd_controller_i : lcd_controller
    port map (
      clk        => Bus2IP_Clk,
      reset      => Bus2IP_Reset,
      lcd_enable => load,
      lcd_bus    => lcd_bus,
      busy       => busy,
      rw         => lb_rw_cc,
      rs         => lb_rs_cso,
      e          => lb_e_ro,
      lcd_data   => lb_data
    );

  mybanner: bannerDesp
    port map (
      reset_in       => Bus2IP_Reset,
      clock          => Bus2IP_Clk,
      col_serial_out => lb_rs_cso,
      col_clk        => lb_rw_cc,
      row_serial_out => lb_data(0),
      row_clk        => lb_data(1),
      reset_out      => lb_e_ro,
      reset2_out     => lb_data(2),
      fila           => fila,
      columna        => columna,
      dato           => dato,
      load           => load
    );

  --USER logic implementation added here
  -- TODO: trasladar y ajustar resto de lógica de user_logic_banner y user_logic_lcd

  ------------------------------------------
  -- Example code to drive IP to Bus signals
  ------------------------------------------
  IP2Bus_Data  <= (others => '0');

  IP2Bus_WrAck <= '0';
  IP2Bus_RdAck <= '0';
  IP2Bus_Error <= '0';

end IMP;
