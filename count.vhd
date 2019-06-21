library ieee;
    use ieee.std_logic_1164.all;
    use ieee.std_logic_arith.all;
        use ieee.std_logic_unsigned.all;
entity count is 
 port(clk, clr  : in std_logic;
      op : out std_logic_vector(1 downto 0));
  end count;
  
  architecture behave of count is
       -- a <=== counter variable 
      signal a: std_logic_vector(1 downto 0);
      begin
          process(clk, clr)
              begin
                  if clr = '1' then 
                     a <= "00";
                   elsif rising_edge(clk) then
                       a <= a + 1;
                   end if;
               end process;
               op <= a;
           end behave;
               
                  
