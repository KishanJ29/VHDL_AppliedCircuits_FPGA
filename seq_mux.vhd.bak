library ieee;
    use ieee.std_logic_1164.all;
    entity seq_mux is
        port(clk, clr, d:in std_logic;
            i:in std_logic_vector(3 downto 0);
            y : out std_logic);
        end seq_mux;
        architecture behav of seq_mux is
            signal s: std_logic_vector(1 downto 0);
            signal u : std_logic;
            signal ubar : std_logic;
            begin
                process(clk, clr)
                begin
                   if clr = '1' then
                       u <= '0';
                       ubar <= '0';
                       elsif rising_edge(clk) then
                           u <= d;
                           ubar <= not d;
                           s(0) <= u;
                       end if;
                       
                end process;
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
