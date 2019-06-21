library ieee;
    use ieee.std_logic_1164.all;
    entity fulladder is
    port(a,b,cin: in std_logic;
          sout, cout: out std_logic);
    end fulladder;
    
    architecture behave of fulladder is
        component halfadder is
            port( a,b : in std_logic;
            sum, carry: out std_logic);
        end component;
     
     
     signal x,y,z: std_logic;
     
     begin
     
     MODULE_1: halfadder port map(a,b,x,y);
     MODULE_2: halfadder port map(cin,x,sout,z);
     
     cout <= z or y;
     
 end behave;
