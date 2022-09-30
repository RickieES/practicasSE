-------------------------------------------------------------------------------
-- practica2_stub.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

entity practica2_stub is
  port (
    RX_pin : in std_logic;
    TX_pin : out std_logic;
    Clk_pin : in std_logic;
    Rst_pin : in std_logic;
    switches : inout std_logic_vector(0 to 7);
    leds : inout std_logic_vector(0 to 7)
  );
end practica2_stub;

architecture STRUCTURE of practica2_stub is

  component practica2 is
    port (
      RX_pin : in std_logic;
      TX_pin : out std_logic;
      Clk_pin : in std_logic;
      Rst_pin : in std_logic;
      switches : inout std_logic_vector(0 to 7);
      leds : inout std_logic_vector(0 to 7)
    );
  end component;

  attribute BOX_TYPE : STRING;
  attribute BOX_TYPE of practica2 : component is "user_black_box";

begin

  practica2_i : practica2
    port map (
      RX_pin => RX_pin,
      TX_pin => TX_pin,
      Clk_pin => Clk_pin,
      Rst_pin => Rst_pin,
      switches => switches,
      leds => leds
    );

end architecture STRUCTURE;

