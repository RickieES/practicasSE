-------------------------------------------------------------------------------
-- practica3_stub.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

entity practica3_stub is
  port (
    Rst_pin : in std_logic;
    RX_pin : in std_logic;
    TX_pin : out std_logic;
    Clk_pin : in std_logic;
    switches : in std_logic_vector(3 downto 0);
    leds : out std_logic_vector(7 downto 0)
  );
end practica3_stub;

architecture STRUCTURE of practica3_stub is

  component practica3 is
    port (
      Rst_pin : in std_logic;
      RX_pin : in std_logic;
      TX_pin : out std_logic;
      Clk_pin : in std_logic;
      switches : in std_logic_vector(3 downto 0);
      leds : out std_logic_vector(7 downto 0)
    );
  end component;

  attribute BOX_TYPE : STRING;
  attribute BOX_TYPE of practica3 : component is "user_black_box";

begin

  practica3_i : practica3
    port map (
      Rst_pin => Rst_pin,
      RX_pin => RX_pin,
      TX_pin => TX_pin,
      Clk_pin => Clk_pin,
      switches => switches,
      leds => leds
    );

end architecture STRUCTURE;

