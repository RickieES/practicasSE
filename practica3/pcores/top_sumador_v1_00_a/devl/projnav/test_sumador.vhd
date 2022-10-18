-- TestBench Template 

  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;

  ENTITY testbench IS
  generic
  (
    -- ADD USER GENERICS BELOW THIS LINE ---------------
    --USER generics added here
    -- ADD USER GENERICS ABOVE THIS LINE ---------------

    -- DO NOT EDIT BELOW THIS LINE ---------------------
    -- Bus protocol parameters, do not add to or delete
    C_SLV_DWIDTH                   : integer              := 32;
    C_NUM_REG                      : integer              := 4
    -- DO NOT EDIT ABOVE THIS LINE ---------------------
  );
  END testbench;

  ARCHITECTURE behavior OF testbench IS 

  -- Component Declaration
          COMPONENT user_logic
          PORT(
    switches                       : in  std_logic_vector(3 downto 0);
	 leds                           : out std_logic_vector(7 downto 0);
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
    IP2Bus_Error                   : out std_logic
    -- DO NOT EDIT ABOVE THIS LINE ---------------------
  );
          END COMPONENT;

          SIGNAL switches :  std_logic_vector(3 downto 0);
          SIGNAL leds     :  std_logic_vector(7 downto 0);
			 SIGNAL rst      :  std_logic := '0';
			 SIGNAL clk      :  std_logic := '0';
			 SIGNAL WrCE     :  std_logic_vector(0 to C_NUM_REG-1);
			 SIGNAL RdCE     :  std_logic_vector(0 to C_NUM_REG-1);
			 SIGNAL BE       :  std_logic_vector(0 to C_NUM_REG-1);
			 SIGNAL DataIn   :  std_logic_vector(0 to C_SLV_DWIDTH-1);
			 SIGNAL DataOut  :  std_logic_vector(0 to C_SLV_DWIDTH-1);

   -- Clock period definitions
   constant clk_period : time := 2 ns;

  BEGIN

  -- Component Instantiation
          uut: user_logic PORT MAP(
                  switches     => switches,
                  leds         => leds,
						Bus2IP_Clk   => clk,
						Bus2IP_Reset => rst,
						Bus2IP_Data  => DataIn,
						Bus2IP_BE    => BE,
						Bus2IP_RdCE  => RdCE,
						Bus2IP_WrCE  => WrCE,
						IP2Bus_Data  => DataOut
          );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 
  --  Test Bench Statements
     tb : PROCESS
     BEGIN
        wait for 100 ns; -- wait until global set/reset completes

        -- Add user defined stimulus here
		  
		  -- Load register 0
		  WrCE <= "1000";
		  DataIn <= "00000001100000000000000110101010";
		  BE <= "1111";
		  wait for clk_period*10; -- 120 ns
		  
		  -- Check that register 0 equals DataIn
		  WrCE <= "0000";
		  RdCE <= "1000";
		  BE <= "1111";
		  wait for clk_period*10; -- 140 ns
		  
		  -- Load register 1
		  RdCE <= "0000";
		  WrCE <= "0100";
		  DataIn <= "00000001100000000000000110000000";
		  BE <= "1111";
		  wait for clk_period*10; -- 160 ns
		  
		  -- Load register 2
		  WrCE <= "0010";
		  DataIn <= "10000000100000001000000010000001";
		  BE <= "1111";
		  wait for clk_period*10; -- 180 ns
		  
		  -- Get register 3
		  WrCE <= "0001";
		  BE <= "1111";
		  wait for clk_period*10; -- 200 ns
		  RdCE <= "0001";
		  BE <= "1111";
		  wait for clk_period*10; -- 220 ns
		  
		  -- Test switches and leds
		  switches <= "0000";
		  wait for clk_period*10; -- 240 ns
		  switches <= "0001";
		  wait for clk_period*10; -- 260 ns
		  switches <= "0010";
		  wait for clk_period*10; -- 280 ns
		  switches <= "0011";
		  wait for clk_period*10; -- 300 ns

		  -- Test counter during 20 cycles
		  switches <= "1000";
		  wait for clk_period*10; -- 320 ns

		  wait for clk_period*10; -- 340 ns
		  wait for clk_period*5; -- 350 ns
		  wait for clk_period*5; -- 360 ns
		  wait for clk_period*4; -- 368 ns
		  wait for clk_period*3; -- 374 ns
		  wait for clk_period*6; -- 386 ns
		  wait for clk_period*10; -- 406 ns
        wait; -- will wait forever
     END PROCESS tb;
  --  End Test Bench 

  END;
