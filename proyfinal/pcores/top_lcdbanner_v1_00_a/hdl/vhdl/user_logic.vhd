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
		load           : in  std_logic;
		scroll         : in  std_logic
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

  signal command4lcd   : std_logic; -- recibido en WFIFO2IP_Data(0), vale 1 si la orden es para LCD
  signal scrollbanner  : std_logic; -- recibido en WFIFO2IP_Data(1), vale 1 si el banner desplaza
  signal fifo_rdreq_cmb: std_logic;

  signal lcd_rw        : std_logic;
  signal lcd_rs        : std_logic;
  signal lcd_e         : std_logic;
  signal lcd_bus       : std_logic_vector(9 downto 0);
  signal lcd_busy      : std_logic;
  signal lcd_enable    : std_logic;
  signal lcd_data      : std_logic_vector(7 downto 0);
  signal lcd_load      : std_logic;

  signal banner_fila   : std_logic_vector(2 downto 0);
  signal banner_columna: std_logic_vector(2 downto 0);
  signal banner_dato   : std_logic_vector(4 downto 0);
  signal banner_row_s_o: std_logic;
  signal banner_row_clk: std_logic;
  signal banner_col_s_o: std_logic;
  signal banner_col_clk: std_logic;
  signal banner_rs1_out: std_logic;
  signal banner_rs2_out: std_logic;
  signal banner_load   : std_logic;

begin

  --USER logic implementation added here
	lcd_bus(0) <= WFIFO2IP_Data(31);
	lcd_bus(1) <= WFIFO2IP_Data(30);
	lcd_bus(2) <= WFIFO2IP_Data(29);
	lcd_bus(3) <= WFIFO2IP_Data(28);
	lcd_bus(4) <= WFIFO2IP_Data(27);
	lcd_bus(5) <= WFIFO2IP_Data(26);
	lcd_bus(6) <= WFIFO2IP_Data(25);
	lcd_bus(7) <= WFIFO2IP_Data(24);
	lcd_bus(8) <= WFIFO2IP_Data(23);
	lcd_bus(9) <= WFIFO2IP_Data(22);

    banner_fila(2 downto 0)    <= WFIFO2IP_Data(5 to 7);
    banner_columna(2 downto 0) <= WFIFO2IP_Data(13 to 15);
    banner_dato(4 downto 0)    <= WFIFO2IP_Data(19 to 23);

	command4lcd  <= WFIFO2IP_Data(0);
	scrollbanner <= WFIFO2IP_Data(1);

  mybanner: bannerDesp
    port map (
      reset_in       => Bus2IP_Reset,
      clock          => Bus2IP_Clk,
      col_serial_out => banner_col_s_o,
      col_clk        => banner_col_clk,
      row_serial_out => banner_row_s_o,
      row_clk        => banner_row_clk,
      reset_out      => banner_rs1_out,
      reset2_out     => banner_rs2_out,
      fila           => banner_fila,
      columna        => banner_columna,
      dato           => banner_dato,
      load           => banner_load,
		scroll         => scrollbanner
    );

  lcd_controller_i : lcd_controller
    port map (
      clk        => Bus2IP_Clk,
      reset      => Bus2IP_Reset,
      lcd_enable => lcd_load,
      lcd_bus    => lcd_bus,
      busy       => lcd_busy,
      rw         => lcd_rw,
      rs         => lcd_rs,
      e          => lcd_e,
      lcd_data   => lcd_data
    );


  --USER logic implementation added here

-- Maquinas de estados
  unidadDeControl: process(currentStateLectura, WFIFO2IP_empty, WFIFO2IP_RdAck, lcd_busy, command4lcd)
    begin
      nextStateLectura <= currentStateLectura;
      lcd_load <= '0';
      banner_load <= '0';
      fifo_rdreq_cmb <= '0';

      case currentStateLectura is
        when estadoEsperaLectura =>
          if (WFIFO2IP_empty = '0' and (lcd_busy = '0' or command4lcd = '0')) then
            fifo_rdreq_cmb   <= '1';
            nextStateLectura <= estadoEnviarDato;
          end if;

        when estadoEnviarDato =>
          if (WFIFO2IP_RdAck = '1') then
            lcd_load <= '1';
            banner_load <= '1';
            nextStateLectura   <= estadoEsperaLectura;
          end if;
      end case;
	end process unidadDeControl;

  state: process (Bus2IP_Clk)
    begin
      if Bus2IP_Clk'EVENT and Bus2IP_Clk='1' then
        if Bus2IP_Reset = '1' then
          currentStateLectura <= estadoEsperaLectura;
          IP2WFIFO_RdReq <= '0';
        else
          currentStateLectura <= nextStateLectura;
          IP2WFIFO_RdReq <= fifo_rdreq_cmb;
        end if;
      end if;
    end process state;

  choose_output: process
    begin
      lb_data <= (others => '0');

      -- se envi­a señal Busy a LCD, por lo que está recibiendo comandos
		-- y tiene preferencia
      if (lcd_busy = '1') then
        lb_rs_cso           <= lcd_rs;
        lb_rw_cc            <= lcd_rw;
        lb_e_ro             <= lcd_e;
        lb_data(7 downto 0) <= lcd_data(7 downto 0);
      elsif (scrollbanner = '1') then
        lb_rs_cso           <= banner_col_s_o;
        lb_rw_cc            <= banner_col_clk;
        lb_e_ro             <= banner_rs1_out;
        lb_data(0)          <= banner_row_s_o;
        lb_data(1)          <= banner_row_clk;
        lb_data(2)          <= banner_rs2_out;
      end if;
    end process choose_output;

  ------------------------------------------
  -- Example code to drive IP to Bus signals
  ------------------------------------------
  IP2Bus_Data  <= (others => '0');

  IP2Bus_WrAck <= '0';
  IP2Bus_RdAck <= '0';
  IP2Bus_Error <= '0';

end IMP;
