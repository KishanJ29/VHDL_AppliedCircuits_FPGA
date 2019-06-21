library ieee;
    use ieee.std_logic_1164.all;
entity halfadder is
    port( a,b : in std_logic;
         sum, carry: out std_logic);
     end halfadder;
     architecture behave of halfadder is 
      begin
          sum <= a xor b;
          carry <= a and b;
      end behave;
