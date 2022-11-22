-------------------------------------------------------------------------------
-- practica4_stub.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

entity practica4_stub is
  port (
    Rst_pin : in std_logic;
    RX_pin : in std_logic;
    TX_pin : out std_logic;
    hsyncb_pin : out std_logic;
    vsyncb_pin : out std_logic;
    rgb_pin : out std_logic_vector(0 to 8);
    mover_izquierda_pin : in std_logic;
    mover_derecha_pin : in std_logic;
    Clk_pin : in std_logic
  );
end practica4_stub;

architecture STRUCTURE of practica4_stub is

  component practica4 is
    port (
      Rst_pin : in std_logic;
      RX_pin : in std_logic;
      TX_pin : out std_logic;
      hsyncb_pin : out std_logic;
      vsyncb_pin : out std_logic;
      rgb_pin : out std_logic_vector(0 to 8);
      mover_izquierda_pin : in std_logic;
      mover_derecha_pin : in std_logic;
      Clk_pin : in std_logic
    );
  end component;

  attribute BOX_TYPE : STRING;
  attribute BOX_TYPE of practica4 : component is "user_black_box";

begin

  practica4_i : practica4
    port map (
      Rst_pin => Rst_pin,
      RX_pin => RX_pin,
      TX_pin => TX_pin,
      hsyncb_pin => hsyncb_pin,
      vsyncb_pin => vsyncb_pin,
      rgb_pin => rgb_pin,
      mover_izquierda_pin => mover_izquierda_pin,
      mover_derecha_pin => mover_derecha_pin,
      Clk_pin => Clk_pin
    );

end architecture STRUCTURE;

