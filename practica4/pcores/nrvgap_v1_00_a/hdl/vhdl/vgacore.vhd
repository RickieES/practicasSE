----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:57:05 11/17/2008 
-- Design Name: 
-- Module Name:    vga - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity vgacore is
	port
	(
		reset: in std_logic;	-- reset
		clock: in std_logic; -- 12,5 MHz
		hsyncb: out std_logic;	-- horizontal (line) sync
		load: in std_logic;
		color: in std_logic_vector(8 downto 0); -- color
		rectangulo: in std_logic_vector(6 downto 0); -- rectangulo a borrar
		vsyncb: out std_logic;	-- vertical (frame) sync
		rgb: out std_logic_vector(8 downto 0);	-- red,green,blue colors
		mover_derecha_pin: in std_logic; --para mover derecha
    	mover_izquierda_pin: in std_logic; --para mover izquierda
		mover_arriba_pin: in std_logic; --para mover derecha
    	mover_abajo_pin: in std_logic --para mover izquierda
	);
end vgacore;

architecture vgacore_arch of vgacore is

component debouncer
	port 
	(
	rst: in std_logic;
	clk: in std_logic;
	x: in std_logic;
	xDeb: out std_logic;
	xDebFallingEdge: out std_logic;
	xDebRisingEdge: out std_logic
	);
end component;

signal hcnt: std_logic_vector(8 downto 0);	-- horizontal pixel counter
signal vcnt: std_logic_vector(9 downto 0);	-- vertical line counter
signal hoffset: std_logic_vector(2 downto 0) := "000"; -- desplazamiento horizontal
signal voffset: std_logic_vector(1 downto 0) := "00"; -- desplzamiento vertical

type ram_type is array (0 to 224) of std_logic_vector(8 downto 0);
signal RAM : ram_type :=
(
"000000001", "000000010", "000000011", "000000100", "000000101", "000000110","000000111",
"000001001", "000001010", "000001011", "000001100", "000001101", "000001110","000001111",
"000010001", "000010010", "000010011", "000010100", "000010101", "000010110","000010111",
"000100001", "000100010", "000100011", "000100100", "000100101", "000100110","000100111",
"001000001", "001000010", "001000011", "001000100", "001000101", "001000110","001000111",
"010000001", "010000010", "010000011", "010000100", "010000101", "010000110","010000111",
"100000001", "100000010", "100000011", "100000100", "100000101", "100000110","100000111",
"110000001", "110000010", "110000011", "110000100", "110000101", "110000110","110000111",
"110001001", "110001010", "110001011", "110001100", "110001101", "110001110","110001111",
"110010001", "110010010", "110010011", "110010100", "110010101", "110010110","110010111",
"110100001", "110100010", "110100011", "110100100", "110100101", "110010110","110100111",
"111000001", "111000010", "111000011", "111000100", "111000101", "111000110","111000111",
"110000001", "110010010", "110010011", "110000100", "111010101", "110000110","011100111",
"110010001", "110000010", "110000011", "110000100", "110000101", "110010110","100011111",
"000010001", "000000010", "000000011", "000000100", "000000101", "000000110","000000111",
"000001001", "000111010", "000001011", "000001100", "000001101", "000001110","000001111",
"000010001", "000010010", "111010011", "000010100", "000010101", "000010110","000010111",
"001111111", "000100010", "000100011", "000100100", "011100101", "000100110","000100111",
"111111010", "111111111",
"111111111", "111111111", "111111111", "111111111", "111111111", "111111111","111111111",
"111111111", "111111111", "111111111", "111111111", "111111111", "111111111","111111111",
"111111111", "111111111", "111111111", "111111111", "111111111", "111111111","111111111",
"111111111", "111111111", "111111111", "111111111", "111111111", "111111111","111111111",
"111111111", "111111111", "111111111", "111111111", "111111111", "111111111","111111111",
"111111111", "111111111", "111111111", "111111111", "111111111", "111111111","111111111",
"111111111", "111111111", "111111111", "111111111", "111111111", "111111111","111111111",
"111111111", "111111111", "111111111", "111111111", "111111111", "111111111","111111111",
"111111111", "111111111", "111111111", "111111111", "111111111", "111111111","111111111",
"111111111", "111111111", "111111111", "111111111", "111111111", "111111111","111111111",
"111111111", "111111111", "111111111", "111111111", "111111111", "111111111","111111111",
"111111111", "111111111", "111111111", "111111111", "111111111", "111111111","111111111",
"111111111", "111111111", "111111111", "111111111", "111111111", "111111111","111111111",
"111111111", "111111111", "111111111", "111111111", --"111111111", "111111111","111111111",
--"111111111", "111111111", "111111111", "111111111", "111111111", "111111111","111111111",
--"111111111", "111111111", "111111111", "111111111", "111111111", "111111111","111111111",
--"111111111", "111111111", "111111111", "111111111", "111111111", "111111111","111111111",
--"111111111", "111111111", "111111111", "111111111", "111111111", "111111111","111111111",
"111111111", "111111111");


signal hsyncbAux : std_logic;
signal debouncer_d : std_logic;
signal debouncer_i : std_logic;
signal debouncer_a : std_logic;
signal debouncer_b : std_logic;
signal deb_rising_d : std_logic;
signal deb_rising_i : std_logic;
signal deb_rising_a : std_logic;
signal deb_rising_b : std_logic;
signal der : std_logic;
signal izq : std_logic;
signal arr : std_logic;
signal aba : std_logic;

begin

hsyncb <= hsyncbAux;

debouncer_izquierdo: debouncer port map(
	rst =>not reset,
	clk => clock,
	x => mover_izquierda_pin,
	xDeb => debouncer_i,
	xDebFallingEdge => izq,
	xDebRisingEdge => deb_rising_i
);

debouncer_derecho: debouncer port map(
	rst =>not reset,
	clk => clock,
	x => mover_derecha_pin,
	xDeb => debouncer_d,				 
	xDebFallingEdge => der,
	xDebRisingEdge => deb_rising_d
);

debouncer_superior: debouncer port map(
	rst => not reset,
	clk => clock,
	x => mover_arriba_pin,
	xDeb => debouncer_a,
	xDebFallingEdge => arr,
	xDebRisingEdge => deb_rising_a
);

debouncer_inferior: debouncer port map(
	rst => not reset,
	clk => clock,
	x => mover_abajo_pin,
	xDeb => debouncer_b,
	xDebFallingEdge => aba,
	xDebRisingEdge => deb_rising_b
);

HORIZONTAL:
process(clock, reset, der, izq)
begin
  if reset = '1' then
    hoffset <= "000";
  elsif (clock'event and clock = '1') then
    if (der='1' and hoffset < 4) then
		hoffset <= hoffset + '1';
    elsif (izq ='1' and hoffset > 0) then
      hoffset <= hoffset - '1';
    end if;
  end if;
end process;

VERTICAL:
process(clock, reset, arr, aba)
begin
  if reset = '1' then
    voffset <= "00";
  elsif (clock'event and clock = '1') then
    if (aba = '1' and voffset < 2) then
		voffset <= voffset + 1;
    elsif (arr ='1' and voffset > 0) then
      voffset <= voffset - 1;
    end if;
  end if;
end process;

A: process(clock,reset)
begin
	-- reset asynchronously clears pixel counter
	if reset='1' then
		hcnt <= "000000000";
	-- horiz. pixel counter increments on rising edge of dot clock
	elsif (clock'event and clock='1') then
		-- horiz. pixel counter rolls-over after 381 pixels
		if hcnt<380 then
			hcnt <= hcnt + 1;
		else
			hcnt <= "000000000";
		end if;
	end if;
end process;

B: process(hsyncbAux,reset)
begin
	-- reset asynchronously clears line counter
	if reset='1' then
		vcnt <= "0000000000";
	-- vert. line counter increments after every horiz. line
	elsif (hsyncbAux'event and hsyncbAux='1') then
		-- vert. line counter rolls-over after 528 lines
		if vcnt<527 then
			vcnt <= vcnt + 1;
		else
			vcnt <= "0000000000";
		end if;
	end if;
end process;

C: process(clock,reset)
begin
	-- reset asynchronously sets horizontal sync to inactive
	if reset='1' then
		hsyncbAux <= '1';
	-- horizontal sync is recomputed on the rising edge of every dot clock
	elsif (clock'event and clock='1') then
		-- horiz. sync is low in this interval to signal start of a new line
		if (hcnt>=291 and hcnt<337) then
			hsyncbAux <= '0';
		else
			hsyncbAux <= '1';
		end if;
	end if;
end process;

D: process(hsyncbAux,reset)
begin
	-- reset asynchronously sets vertical sync to inactive
	if reset='1' then
		vsyncb <= '1';
	-- vertical sync is recomputed at the end of every line of pixels
	elsif (hsyncbAux'event and hsyncbAux='1') then
		-- vert. sync is low in this interval to signal start of a new frame
		if (vcnt>=490 and vcnt<492) then
			vsyncb <= '0';
		else
			vsyncb <= '1';
		end if;
	end if;
end process;

-- A partir de aqui escribir la parte de dibujar en la pantalla

-- Dibujamos rectangulos de 16x8
-- vcnt(8 downto 4)x hcnt(5 downto 3)
process(clock, load, rectangulo)
begin
	if clock'event and clock='1' then
		if load='1' then 
			RAM(conv_integer(rectangulo)) <= color;
		end if;
	end if;
end process;

process(vcnt, hcnt, RAM)
begin
	--if vcnt(9 downto 8)="00" and hcnt(8 downto 6)="000" then
	if vcnt(9 downto 8)=voffset and hcnt(8 downto 6)=hoffset then
		rgb <= RAM(conv_integer(hcnt(5 downto 3) & vcnt(7 downto 4)));
	else
		rgb <= "000000000";
	end if;
end process;

---------------------------------------------------------------------
end vgacore_arch;
