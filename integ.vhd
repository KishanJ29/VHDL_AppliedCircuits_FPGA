library ieee;
    use ieee.std_logic_1164.all;
    
entity integ is
   port(clk, clr: in std_logic;
       i: in std_logic_vector(3 downto 0);
       finSum, finCarry : out std_logic);
end integ;

architecture behave of integ is 

component fulladder is
   port(a,b,cin: in std_logic;
        sout, cout: out std_logic);
end component;

component count is
   port(clk, clr  : in std_logic;
      op : out std_logic_vector(1 downto 0));
end component;

component mux is
   port(s:in std_logic_vector(1 downto 0);
        i:in std_logic_vector(3 downto 0);
        y : out std_logic);
end component;
    
    --counter output
    signal counterOut : std_logic_vector(1 downto 0);
    --Seq Mux output
    signal muxOut : std_logic;

    
    begin
    
    Module_1: count port map(clk, clr, counterOut);
    Module_2: mux port map(counterOut, i, muxOut);
    Module_3: fulladder port map(counterOut(1), counterOut(0), muxOut, finSum, finCarry);
       
    end behave;