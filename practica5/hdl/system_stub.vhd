-------------------------------------------------------------------------------
-- system_stub.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

entity system_stub is
  port (
    Rst_pin : in std_logic;
    switches : inout std_logic_vector(0 to 7);
    leds : inout std_logic_vector(0 to 7);
    RX_pin : in std_logic;
    TX_pin : out std_logic;
    S_pin : out std_logic_vector(0 to 3);
    R_pin : in std_logic_vector(0 to 3);
    lcd_0_rw_pin : out std_logic;
    lcd_0_rs_pin : out std_logic;
    lcd_0_e_pin : out std_logic;
    lcd_0_lcd_data_pin : out std_logic_vector(7 downto 0);
    Clk_pin : in std_logic;
    motor_hw_0_control_motor_pin : out std_logic_vector(0 to 3);
    ledrgb_0_red_pin : out std_logic;
    ledrgb_0_green_pin : out std_logic;
    ledrgb_0_blue_pin : out std_logic;
    ledrgb_0_switches_pin : in std_logic_vector(0 to 3);
    motor_hw_0_boton_pin : in std_logic
  );
end system_stub;

architecture STRUCTURE of system_stub is

  component system is
    port (
      Rst_pin : in std_logic;
      switches : inout std_logic_vector(0 to 7);
      leds : inout std_logic_vector(0 to 7);
      RX_pin : in std_logic;
      TX_pin : out std_logic;
      S_pin : out std_logic_vector(0 to 3);
      R_pin : in std_logic_vector(0 to 3);
      lcd_0_rw_pin : out std_logic;
      lcd_0_rs_pin : out std_logic;
      lcd_0_e_pin : out std_logic;
      lcd_0_lcd_data_pin : out std_logic_vector(7 downto 0);
      Clk_pin : in std_logic;
      motor_hw_0_control_motor_pin : out std_logic_vector(0 to 3);
      ledrgb_0_red_pin : out std_logic;
      ledrgb_0_green_pin : out std_logic;
      ledrgb_0_blue_pin : out std_logic;
      ledrgb_0_switches_pin : in std_logic_vector(0 to 3);
      motor_hw_0_boton_pin : in std_logic
    );
  end component;

  attribute BOX_TYPE : STRING;
  attribute BOX_TYPE of system : component is "user_black_box";

begin

  system_i : system
    port map (
      Rst_pin => Rst_pin,
      switches => switches,
      leds => leds,
      RX_pin => RX_pin,
      TX_pin => TX_pin,
      S_pin => S_pin,
      R_pin => R_pin,
      lcd_0_rw_pin => lcd_0_rw_pin,
      lcd_0_rs_pin => lcd_0_rs_pin,
      lcd_0_e_pin => lcd_0_e_pin,
      lcd_0_lcd_data_pin => lcd_0_lcd_data_pin,
      Clk_pin => Clk_pin,
      motor_hw_0_control_motor_pin => motor_hw_0_control_motor_pin,
      ledrgb_0_red_pin => ledrgb_0_red_pin,
      ledrgb_0_green_pin => ledrgb_0_green_pin,
      ledrgb_0_blue_pin => ledrgb_0_blue_pin,
      ledrgb_0_switches_pin => ledrgb_0_switches_pin,
      motor_hw_0_boton_pin => motor_hw_0_boton_pin
    );

end architecture STRUCTURE;

