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
    keypad_0_S_pin : out std_logic_vector(3 downto 0);
    keypad_0_R_pin : in std_logic_vector(3 downto 0);
    top_motor_0_control_motor_pin : out std_logic_vector(3 downto 0);
    top_altavoz_0_sonido_pin : out std_logic;
    Clk_pin : in std_logic;
    lb_rw_cc_pin : out std_logic;
    lb_rs_cso_pin : out std_logic;
    lb_e_ro_pin : out std_logic;
    lb_data_pin : out std_logic_vector(7 downto 0);
    USER1_RED_pin : out std_logic;
    USER1_GREEN_pin : out std_logic;
    USER1_BLUE_pin : out std_logic
  );
end proyfinal_stub;

architecture STRUCTURE of proyfinal_stub is

  component proyfinal is
    port (
      Rst_pin : in std_logic;
      RX_pin : in std_logic;
      TX_pin : out std_logic;
      keypad_0_S_pin : out std_logic_vector(3 downto 0);
      keypad_0_R_pin : in std_logic_vector(3 downto 0);
      top_motor_0_control_motor_pin : out std_logic_vector(3 downto 0);
      top_altavoz_0_sonido_pin : out std_logic;
      Clk_pin : in std_logic;
      lb_rw_cc_pin : out std_logic;
      lb_rs_cso_pin : out std_logic;
      lb_e_ro_pin : out std_logic;
      lb_data_pin : out std_logic_vector(7 downto 0);
      USER1_RED_pin : out std_logic;
      USER1_GREEN_pin : out std_logic;
      USER1_BLUE_pin : out std_logic
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
      keypad_0_S_pin => keypad_0_S_pin,
      keypad_0_R_pin => keypad_0_R_pin,
      top_motor_0_control_motor_pin => top_motor_0_control_motor_pin,
      top_altavoz_0_sonido_pin => top_altavoz_0_sonido_pin,
      Clk_pin => Clk_pin,
      lb_rw_cc_pin => lb_rw_cc_pin,
      lb_rs_cso_pin => lb_rs_cso_pin,
      lb_e_ro_pin => lb_e_ro_pin,
      lb_data_pin => lb_data_pin,
      USER1_RED_pin => USER1_RED_pin,
      USER1_GREEN_pin => USER1_GREEN_pin,
      USER1_BLUE_pin => USER1_BLUE_pin
    );

end architecture STRUCTURE;

