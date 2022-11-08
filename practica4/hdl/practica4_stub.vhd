-------------------------------------------------------------------------------
-- practica4_stub.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

entity practica4_stub is
  port (
    Clk_pin : in std_logic;
    Rst_pin : in std_logic;
    switches : inout std_logic_vector(0 to 7);
    leds : inout std_logic_vector(0 to 7);
    RX_pin : in std_logic;
    TX_pin : out std_logic;
    hsyncb_pin : out std_logic;
    vsyncb_pin : out std_logic;
    rgb_pin : out std_logic_vector(8 downto 0)
  );
end practica4_stub;

architecture STRUCTURE of practica4_stub is

  component practica4 is
    port (
      Clk_pin : in std_logic;
      Rst_pin : in std_logic;
      switches : inout std_logic_vector(0 to 7);
      leds : inout std_logic_vector(0 to 7);
      RX_pin : in std_logic;
      TX_pin : out std_logic;
      hsyncb_pin : out std_logic;
      vsyncb_pin : out std_logic;
      rgb_pin : out std_logic_vector(8 downto 0)
    );
  end component;

  attribute BOX_TYPE : STRING;
  attribute BOX_TYPE of practica4 : component is "user_black_box";

begin

  practica4_i : practica4
    port map (
      Clk_pin => Clk_pin,
      Rst_pin => Rst_pin,
      switches => switches,
      leds => leds,
      RX_pin => RX_pin,
      TX_pin => TX_pin,
      hsyncb_pin => hsyncb_pin,
      vsyncb_pin => vsyncb_pin,
      rgb_pin => rgb_pin
    );

end architecture STRUCTURE;

