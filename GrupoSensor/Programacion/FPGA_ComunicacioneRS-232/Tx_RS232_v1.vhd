-- TRASMISOR RS_232.
--Cáracteristicas del monitor serie:
--    Baudios= 115200
--    Puerto= COM5

--Carácteristicas del protocolo de comunicacion
--    Número de data bits = 8
--    Número de Stop bits = 1
--    Número de Start bits= 1
--    Bit de paridad      = Sin paridad


library ieee;   
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all;

 
 -----------------------------------------------------------------------------------
--Este codigo solo sirve para enviar los data bits, que envia y cuando debe hacerse fuera. 
 -----------------------------------------------------------------------------------
entity Tx_RS232_v1 is
  generic(BITS       : positive := 8);
  port   (clk_i      : in  std_logic;
          rst_i      : in  std_logic; 
          dat_i      : in  std_logic_vector(BITS-1 downto 0);
          enviando_i : in  std_logic;
          dat_o      : out std_logic);   
end entity Tx_RS232_v1;
---------------------------------------------------------------------------------
architecture Arq of Tx_RS232_v1 is
  type     estado is (idle, start, enviando_datos, stop);
  signal   proximo   : estado;
  signal   pulso     : std_logic;
  signal   registro  : std_logic_vector(BITS-1 downto 0);
  signal   contador  : unsigned(3 downto 0); 
  
begin                                                                                                       
  tx: 
  process (pulso) begin
    if rising_edge(pulso) then
      if rst_i='1' then
        proximo  <= idle;
        contador <= (others => '0');
        registro <= (others => '0');
        dat_o    <= '1';
      else  
        case proximo is
          when idle =>      							--Estado: Espera
            if enviando_i='1' then					
              registro <= dat_i;
              dat_o    <= '1';						--Tx=1
              proximo  <= start;
            end if;
            
          when start =>									--bit de start Tx=0
              dat_o    <= '0';						--data bit="0000000"
              contador <= (others => '0');
              proximo  <= enviando_datos;       -- ir a siguiente estado
            
          when enviando_datos =>						--Enviando data bits
              contador <= contador + 1;
              dat_o    <= registro(0);
              registro <= registro(0) & registro(BITS-1 downto 1);
              if contador=BITS-1 then				--Ultimo bit para enviar	
                proximo <= stop;						--Estado parar
              end if;  
            
          when stop =>									--Bit de stop Tx=1
              dat_o   <= '1';            
              proximo <= idle; 						--Estado espera
    
        end case;    
      end if;
    end if;
  end process tx; 

end architecture Arq;
---------------------------------------------------------------------------------
