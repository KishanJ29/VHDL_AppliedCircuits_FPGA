library ieee;
    use ieee.std_logic_1164.all;
    entity mux is
        port(s:in std_logic_vector(1 downto 0);
            i:in std_logic_vector(3 downto 0);
            y : out std_logic);
        end mux;
        architecture behav of mux is
            begin
                
               process(s)
               begin 
                  case s is
                  when "00" => y <= i(0);
                  when "01" => y <= i(1);
                  when "10" => y <= i(2);
                  when others => y <= i(3);
              end case;
          end process; 
          
            end behav;

