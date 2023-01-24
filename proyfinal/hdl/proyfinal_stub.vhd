-------------------------------------------------------------------------------
-- proyfinal_stub.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

entity proyfinal_stub is
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
    keypad_0_R_pin : in std_logic_vector(3 downto 0);
    top_banner_0_col_serial_out_pin : out std_logic;
    top_banner_0_col_clk_pin : out std_logic;
    top_banner_0_row_serial_out_pin : out std_logic;
    top_banner_0_row_clk_pin : out std_logic;
    top_banner_0_reset_out_pin : out std_logic;
    top_banner_0_reset2_out_pin : out std_logic;
    top_leds_0_red_pin : out std_logic;
    top_leds_0_green_pin : out std_logic;
    top_leds_0_blue_pin : out std_logic;
    top_motor_0_control_motor_pin : out std_logic_vector(3 downto 0);
    top_altavoz_0_sonido_pin : out std_logic
  );
end proyfinal_stub;

architecture STRUCTURE of proyfinal_stub is

  component proyfinal is
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
      keypad_0_R_pin : in std_logic_vector(3 downto 0);
      top_banner_0_col_serial_out_pin : out std_logic;
      top_banner_0_col_clk_pin : out std_logic;
      top_banner_0_row_serial_out_pin : out std_logic;
      top_banner_0_row_clk_pin : out std_logic;
      top_banner_0_reset_out_pin : out std_logic;
      top_banner_0_reset2_out_pin : out std_logic;
      top_leds_0_red_pin : out std_logic;
      top_leds_0_green_pin : out std_logic;
      top_leds_0_blue_pin : out std_logic;
      top_motor_0_control_motor_pin : out std_logic_vector(3 downto 0);
      top_altavoz_0_sonido_pin : out std_logic
    );
  end component;

  attribute BOX_TYPE : STRING;
  attribute BOX_TYPE of proyfinal : component is "user_black_box";

begin

  proyfinal_i : proyfinal
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
      keypad_0_R_pin => keypad_0_R_pin,
      top_banner_0_col_serial_out_pin => top_banner_0_col_serial_out_pin,
      top_banner_0_col_clk_pin => top_banner_0_col_clk_pin,
      top_banner_0_row_serial_out_pin => top_banner_0_row_serial_out_pin,
      top_banner_0_row_clk_pin => top_banner_0_row_clk_pin,
      top_banner_0_reset_out_pin => top_banner_0_reset_out_pin,
      top_banner_0_reset2_out_pin => top_banner_0_reset2_out_pin,
      top_leds_0_red_pin => top_leds_0_red_pin,
      top_leds_0_green_pin => top_leds_0_green_pin,
      top_leds_0_blue_pin => top_leds_0_blue_pin,
      top_motor_0_control_motor_pin => top_motor_0_control_motor_pin,
      top_altavoz_0_sonido_pin => top_altavoz_0_sonido_pin
    );

end architecture STRUCTURE;

