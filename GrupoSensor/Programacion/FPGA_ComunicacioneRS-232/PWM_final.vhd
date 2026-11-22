library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity PWM_final is
  generic (
    periodo : integer := 2000   -- 20 ms con reloj de 100 kHz
  );
  port (
    clk      : in  std_logic;
    reinicio : in  std_logic;
    posicion : in  std_logic_vector(7 downto 0);  -- 0 = 0 grados, 255 = 180 grados
    salida   : out std_logic
  );
end PWM_final;

architecture arq1 of PWM_final is
  signal cnt   : integer range 0 to periodo - 1 := 0;
  signal ancho : integer range 75 to 225:=150;
  signal pos_deseada : unsigned (7 downto 0); --almacena la posicion objetivo
  signal pos_actual  : unsigned(7 downto 0) := to_unsigned(128, 8); --almacena pos actual, por defecto empieza en 90º
begin
	pos_deseada <= unsigned(posicion); --asignamos valor la primera vez

  process(clk) --se actualiza con cada flanco de reloj
  begin
    if rising_edge(clk) then --flanco de subida
      if reinicio = '1' then
        cnt <= 0;
		  pos_actual <= to_unsigned(128, 8); --90º
      elsif cnt = periodo - 1 then
        cnt <= 0;
		  if pos_actual<pos_deseada then  --incrmentar posicion
			pos_actual<=pos_actual +1;
		  elsif pos_actual>pos_deseada then --decrementar posicion
			pos_actual<=pos_actual -1;
		  end if;
		-- Pulso entre 100 ciclos (1 ms) y 200 ciclos (2 ms)
		--ancho <= 100 + (to_integer(pos_actual) * 100) / 255; --actualizar con cada flanco de subida
		--Pulso para SERVO PARALLAX 75 ciclos (0.75ms) y 225 ciclos (2,25ms)
		ancho <= 75 + (to_integer(pos_actual) * 150) / 255; --actualizar con cada flanco de subida
		else 
			cnt <= cnt +1; --incrementar ancho
		end if;
	
  
      if cnt < ancho then --generando señal para cada valor de pos_actual
        salida <= '1';
      else
        salida <= '0';
      end if;
    end if;
  end process;

end arq1;