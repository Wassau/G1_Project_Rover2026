-- CONVERSOR DE GRADOS A DUTY (servomotor)

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
-------------------------------------------------------------------------------------------------------------------
entity Grados_a_duty is
  port   (grados_i   : in  std_logic_vector(7 downto 0);         -- angulo (0 A 180)
          duty_o     : out std_logic_vector(7 downto 0)); -- EQUIVALENTE DE 0 A 255
end entity Grados_a_duty;
-------------------------------------------------------------------------------------------------------------------
architecture Arq of Grados_a_duty is

	signal grados : unsigned(9 downto 0);
	signal duty: unsigned(19 downto 0);
begin
-- Limitar a 180 grados
  grados <= resize(unsigned(grados_i), 10) when unsigned(grados_i) <= 180 else to_unsigned(180, 10);
  duty   <= (grados * 255+90 ) / 180;
  duty_o <= std_logic_vector(duty(7 downto 0));


end architecture Arq;
