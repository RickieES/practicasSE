library IEEE;
use IEEE.std_logic_1164.all;
USE IEEE.std_logic_unsigned.ALL;

entity divisor1 is
    port (
        rst: in STD_LOGIC;
        clk_in: in STD_LOGIC;
        clk_out: out STD_LOGIC
    );
end divisor1;

architecture divisor1_arch of divisor1 is
	CONSTANT MAX_COUNT: std_logic_vector(26 downto 0) := "101111101011110000100000000";
	-- CONSTANT MAX_COUNT: std_logic_vector(26 downto 0) := "000000000000000000000000010";
	SIGNAL cuenta: std_logic_vector(26 downto 0) := (others => '0');
	SIGNAL clk, clk_aux: std_logic := '0';

begin
	clk     <= clk_in;
	clk_out <= clk_aux;

contador: process(rst, clk)
begin
	if (rst = '0') then
		cuenta <= (others => '0');
	elsif (clk'event and clk = '1') then
		if (cuenta = MAX_COUNT) then
			clk_aux <= not clk_aux;
			cuenta <= (others => '0');
		else
			cuenta <= cuenta + '1';
		end if;
	end if;
end process contador;

end divisor1_arch;
