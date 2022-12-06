-------------------------------------------------------------------------------
-- practica5_stub.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

entity practica5_stub is
  port (
    Clk_pin : in std_logic;
    Rst_pin : in std_logic;
    switches : inout std_logic_vector(0 to 7);
    leds : inout std_logic_vector(0 to 7);
    RX_pin : in std_logic;
    TX_pin : out std_logic
  );
end practica5_stub;

architecture STRUCTURE of practica5_stub is

  component practica5 is
    port (
      Clk_pin : in std_logic;
      Rst_pin : in std_logic;
      switches : inout std_logic_vector(0 to 7);
      leds : inout std_logic_vector(0 to 7);
      RX_pin : in std_logic;
      TX_pin : out std_logic
    );
  end component;

  attribute BOX_TYPE : STRING;
  attribute BOX_TYPE of practica5 : component is "user_black_box";

begin

  practica5_i : practica5
    port map (
      Clk_pin => Clk_pin,
      Rst_pin => Rst_pin,
      switches => switches,
      leds => leds,
      RX_pin => RX_pin,
      TX_pin => TX_pin
    );

end architecture STRUCTURE;

