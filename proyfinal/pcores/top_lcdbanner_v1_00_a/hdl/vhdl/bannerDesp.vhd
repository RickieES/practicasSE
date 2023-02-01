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

entity bannerDesp is
  port (
    reset_in      : in  std_logic; -- reset
    clock         : in  std_logic; -- 
    col_serial_out: out std_logic;	
    col_clk       : out std_logic;
    row_serial_out: out std_logic; 
    row_clk       : out std_logic; 
    reset_out     : out std_logic;
    reset2_out    : out std_logic;
    fila          : in  std_logic_vector(2 downto 0);
    columna       : in  std_logic_vector(2 downto 0);
    dato          : in  std_logic_vector(4 downto 0);
    load          : in  std_logic;
	 scroll        : in  std_logic
  );
end bannerDesp;

architecture banner_arch of bannerDesp is
  type ram_type is array(0 to 55) of std_logic_vector(4 downto 0);
  signal RAM : ram_type := (
    "01110", "11110", "00100", "01110", "11111", "00100", "01110", "00000",
    "10001", "10001", "01010", "10001", "00100", "01010", "10001", "00000",
    "10000", "10001", "11011", "10000", "00100", "11011", "10000", "00000",
    "10011", "11110", "10001", "10000", "00100", "10001", "01110", "00000",
    "10001", "10100", "11111", "10000", "00100", "11111", "00001", "00000",
    "10001", "10010", "10001", "10001", "00100", "10001", "10001", "00000",
    "01110", "10001", "10001", "01110", "11111", "10001", "01110", "00000"
  );

  signal row_number                    : std_logic_vector(2 downto 0);
  signal miregistro                    : std_logic_vector(39 downto 0);
  signal mask                          : std_logic_vector(39 downto 0);
  signal desplazamiento                : std_logic_vector(5 downto 0);
  signal fin_per, reset, reloj12       : std_logic;
  signal pixel_count                   : std_logic_vector(5 downto 0);
  signal ce_row_clk, fin_pixel_cont    : std_logic; -- reset asynchronously clears line counter
  signal posicion                      : std_logic_vector(5 downto 0);

  begin
    reset                <= reset_in;
    reset_out            <= not reset_in;
    reset2_out           <= not reset_in;
    posicion(5 downto 3) <= fila;
    posicion(2 downto 0) <= columna;
	 
	 mask <= (others => '1') when (scroll = '1') else
	         (others => '0');

-- Si se recibe orden de cargar un dato (load = 1)
-- carga en la posición de RAM el mapa de bits que se quiere mostrar en esa fila y bloque del panel LED
-- El mapa de bits, por tanto, se debe generar y enviar desde el código C si se quiere que cambie
cargar: process (clock, load, fila, columna, dato)
  begin
    if (clock'EVENT AND clock = '1') then
      if (load = '1') then
        RAM(conv_integer(posicion)) <= dato;
      end if;
    end if;
  end process;	

-- divide entre ¿4? (más bien entre 2) la frecuencia de reloj
divisor: process (reset, clock)
  CONSTANT num  : std_logic_vector(3 DOWNTO 0) := "0010";
  VARIABLE count: std_logic_vector(3 DOWNTO 0);
  BEGIN
    IF (reset = '1') THEN
      count := (OTHERS => '0');
      reloj12 <= '0';
    ELSIF (clock'EVENT AND clock = '1') THEN
      row_clk <= not(reloj12 and ce_row_clk);
      IF (count = num) THEN
        reloj12 <= not reloj12;
        count := (OTHERS => '0');
      ELSE
        count := count + 1;
      END IF;
    END IF;
  END PROCESS divisor;			

-- Produce una velocidad de 3 desplazamientos por segundo
-- Cada vez que count2 alcanza el tope del contador ("desplaza"),
-- se avanza desplazamiento para pintar el siguiente píxel de la fila
-- de 40 (5 x 8)
pdesplazamiento: PROCESS (reset, clock)
  CONSTANT desplaza: std_logic_vector (26 DOWNTO 0) :=	"000111101011110000100000000";
  VARIABLE count2: std_logic_vector (26 DOWNTO 0);
  BEGIN
    IF (reset = '1') THEN
      count2 := (OTHERS => '0');
      desplazamiento <= (OTHERS => '0');
    ELSIF (clock'EVENT AND clock = '1') THEN
      IF (count2 = desplaza) THEN
        count2 := (OTHERS => '0');
        if (desplazamiento = 40) then
          desplazamiento <= (OTHERS => '0');
        else
          desplazamiento <= desplazamiento + 1;
        end if;
      ELSE
        count2 := count2 + 1;
      END IF;
    END IF;
  END PROCESS pdesplazamiento;			

-- Cte de persistencia = 70us para un reloj de 12.5MHz (70000/80=875 ciclos)
persistenciap: process(reloj12, reset)
  constant persistencia: std_logic_vector (12 DOWNTO 0) := "0001101101011";
  -- Valor para simulación
  --constant persistencia: std_logic_vector (12 DOWNTO 0) := "0000011000000";
  variable t_persistencia: std_logic_vector(12 downto 0);
  begin
    -- reset asynchronously clears pixel counter
    if (reset = '1') then
      t_persistencia := (OTHERS => '0');
      fin_per <= '1';
    elsif (reloj12'event and reloj12 = '1') then
      if (t_persistencia < persistencia) then
        t_persistencia := t_persistencia + 1;
        fin_per <= '0';
      else
        t_persistencia := (OTHERS => '0');
        fin_per <= '1';
      end if;
    end if;
  end process;

pixel_countp: process(reloj12, reset, fin_per)
  begin
    if (reset = '1') then
      pixel_count <= (OTHERS => '0');
      ce_row_clk <= '1';
      fin_pixel_cont <= '0';
    elsif (reloj12'event and reloj12 = '1') then
      -- si la cuenta de píxel es menor que 41
      if (pixel_count < "101001") then
        pixel_count <= pixel_count + '1';
        ce_row_clk <= '1';
        fin_pixel_cont <= '0';
      elsif (pixel_count = "101001") then
        pixel_count <= pixel_count + '1';
        ce_row_clk <= '0';
        fin_pixel_cont <= '1';
      else
        ce_row_clk <= '0';
        fin_pixel_cont <= '0';
        if (fin_per = '1') then
          pixel_count <= (OTHERS => '0');
        end if;
      end if;
    end if;
  end process;

row_cont: process(reloj12, reset, fin_pixel_cont)
  begin
    -- reset asynchronously 
    if (reset = '1') then
      row_number <= (OTHERS => '0');
    elsif (reloj12'event and reloj12 = '1') then
      if (fin_pixel_cont = '1') then
        if (row_number = "110") then
          row_number <= (OTHERS => '0');
        else
          row_number <= row_number + '1';
        end if;      
      end if;
    end if;
  end process;

reg_col: process(reloj12, reset, fin_pixel_cont)
  begin
    -- reset asynchronously
    if (reset = '1') then
      col_serial_out <= '1';
      col_clk <= '0';
    elsif (reloj12'event and reloj12 = '1') then
      if (row_number = "110") then
        col_serial_out <= '1';
      else
        col_serial_out <= '0';
      end if;
      if (fin_pixel_cont = '1') then
        col_clk <= '1';
      else
        col_clk <= '0';
      end if;
    end if;
  end process;

--row_clk <= not (reloj12 and ce_row_clk);

reg_fila: process(reset, reloj12, fin_per, row_number)
  variable fila: std_logic_vector(5 downto 0);
  variable tempr: std_logic_vector(39 downto 0);
  begin
    fila := row_number & "000";
    if (reset = '1') then
      tempr := (OTHERS =>'0');
    elsif (reloj12'event and reloj12 = '1') then
      if (fin_per = '1') then
        tempr(39 downto 35) := RAM(conv_integer(fila));
        tempr(34 downto 30) := RAM(conv_integer(fila + 1));
        tempr(29 downto 25) := RAM(conv_integer(fila + 2));
        tempr(24 downto 20) := RAM(conv_integer(fila + 3));
        tempr(19 downto 15) := RAM(conv_integer(fila + 4));
        tempr(14 downto 10) := RAM(conv_integer(fila + 5));
        tempr(9  downto 5)  := RAM(conv_integer(fila + 6));
        tempr(4  downto 0)  := RAM(conv_integer(fila + 7));
      elsif (ce_row_clk = '1') then
        tempr(39 downto 0) := miregistro(38 downto 0) & miregistro(39);
      end if;
    end if;
	 tempr := mask and tempr;
	 miregistro <= tempr;
  end process;

-- row_serial_out <= miregistro(39);
-- row_serial_out <= miregistro(conv_integer(desplazamiento));
row_serial_out <= miregistro(conv_integer(39 - desplazamiento));

end banner_arch;
