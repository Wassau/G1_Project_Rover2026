-- RECEPTOR RS_232.
--Cáracteristicas del monitor serie:
--    Baudios= 115200
--    Puerto= COM5

--Carácteristicas del protocolo de comunicacion
--   Número de data bits = 8
--    Número de Stop bits = 1
--    Número de Start bits= 1
--    Bit de paridad      = Sin paridad

library ieee;   
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all;
-------------------------------------------------------------------------------------------------------------------
entity Rx_RS232_v2 is
  generic(BITS          : positive := 8);
  port   (clk_i         : in  std_logic;
          rst_i         : in  std_logic;         
          rxd_i         : in  std_logic;  
			 
          caracter_o    : out std_logic_vector(BITS-1 downto 0);
			 dato_listo_o  : out std_logic); 		 
end entity Rx_RS232_v2;
-------------------------------------------------------------------------------------------------------------------
architecture Arq of Rx_RS232_v2 is
  type     estado is (idle, validando_start, recibiendo_bit, recibiendo_stop);--Se define nuevo tipo de dato con cuatro posibles valores
  signal   proximoRx         : estado;											 -- Señal tipo estado
  signal   registroRx        : std_logic_vector(BITS-1 downto 0);
  signal   bufferRx          : std_logic_vector(BITS-1 downto 0);  
  signal   contadorBits      : unsigned(3 downto 0);                  -- dimension para 8 bits (3 downto 0), es necesario contar hasta 8
  constant BAUD_RATE         : integer := 115200;
  constant CANTIDAD_PULSOS   : integer := (50000000/BAUD_RATE) - 1;   -- para posicionarse en la mitad del bit
  signal   contadorPulsos    : unsigned(8 downto 0);                  -- dimension necesaria para contar 50e6/115200 =434-1=433 pulsos
  signal   dato_listo        : std_logic := '0';
begin                                                                                                         
  rx: 
  process (clk_i) begin   
    if rising_edge(clk_i) then      --flanco de subida, cada 20ns 
		dato_listo <= '0'; 
      if rst_i='1' then
       proximoRx  <= idle;
		 
      else
              
        case proximoRx is --Maquina de estados
        
          when idle =>  														--Estado 1: 	Espera
             contadorBits    <= (others => '0');						--Poner a 0 bits contador de bitS
             contadorPulsos  <= (others => '0');           			--Poner a 0 bits contador de ciclos 
             if rxd_i='0' then            								-- Si la linea TX se pone a 0, pasar al siguiente estado
                proximoRx <= validando_start;            
             end if;                                    	

          when validando_start => 											--Estado 2: analizar bit de Start. 
             if contadorPulsos<(CANTIDAD_PULSOS/2) then          
                contadorPulsos <= contadorPulsos + 1; 
             else																	 -- se posiciona en la mitad del bit, para hacer lectura
                contadorPulsos <= (others => '0');
                if rxd_i='0' then            							--Si Tx=0, se pasa al siguiente estado
                   proximoRx <= recibiendo_bit;   		 
                else
                   proximoRx <= idle;										--Si Tx=1, Se vuelve a espera
                end if; 
             end if;                                      

          when recibiendo_bit =>   											--Estado 3: recibiendo datos
             if contadorPulsos<CANTIDAD_PULSOS then  
                contadorPulsos <= contadorPulsos + 1; 
             else																	--Se posiciona en la mitad del bit para hacer lectura
                contadorPulsos <= (others => '0');						--Reiniciar contador
					 registroRx     <= rxd_i & registroRx(BITS-1 downto 1);        --Guardar bit leido  
               if contadorBits = BITS-1 then								--Ultimo bit por leer
						contadorBits <= (others => '0');						--Guardar bit
						proximoRx    <= recibiendo_stop;						--Pasar a siguiente estado
					else
						contadorBits <= contadorBits + 1;
					end if;
              end if; 
            	  
          when recibiendo_stop => 											--Estado 4: parar
             if contadorPulsos<CANTIDAD_PULSOS then 					--Se posiciona en la mitad del bit para hacer lectura
                contadorPulsos <= contadorPulsos + 1;                        
             else
                contadorPulsos <= (others => '0');                                                                               
                bufferRx       <= registroRx;  							--Volcar datos en buffer
					 dato_listo     <= '1'; 
                proximoRx      <= idle; 									--Volver a estado espera. 
             end if;
              
        end case;    
      end if;
    end if;
  end process rx; 
  
  caracter_o <= bufferRx; 														--salida
  dato_listo_o <= dato_listo;

end architecture Arq;
-------------------------------------------------------------------------------------------------------------------
