-------------------------------------------------------------------------------
-- practica5_stub.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

entity practica5_stub is
  port (
    Rst_pin : in std_logic;
    RX_pin : in std_logic;
    TX_pin : out std_logic;
    Clk_pin : in std_logic;
    lcd_rw : out std_logic;
    lcd_rs : out std_logic;
    lcd_e : out std_logic;
    lcd_data : out std_logic_vector(7 downto 0);
    keypad_0_S_pin : out std_logic_vector(3 downto 0);
    keypad_0_R_pin : in std_logic_vector(3 downto 0)
  );
end practica5_stub;

architecture STRUCTURE of practica5_stub is

  component practica5 is
    port (
      Rst_pin : in std_logic;
      RX_pin : in std_logic;
      TX_pin : out std_logic;
      Clk_pin : in std_logic;
      lcd_rw : out std_logic;
      lcd_rs : out std_logic;
      lcd_e : out std_logic;
      lcd_data : out std_logic_vector(7 downto 0);
      keypad_0_S_pin : out std_logic_vector(3 downto 0);
      keypad_0_R_pin : in std_logic_vector(3 downto 0)
    );
  end component;

  attribute BOX_TYPE : STRING;
  attribute BOX_TYPE of practica5 : component is "user_black_box";

begin

  practica5_i : practica5
    port map (
      Rst_pin => Rst_pin,
      RX_pin => RX_pin,
      TX_pin => TX_pin,
      Clk_pin => Clk_pin,
      lcd_rw => lcd_rw,
      lcd_rs => lcd_rs,
      lcd_e => lcd_e,
      lcd_data => lcd_data,
      keypad_0_S_pin => keypad_0_S_pin,
      keypad_0_R_pin => keypad_0_R_pin
    );

end architecture STRUCTURE;

