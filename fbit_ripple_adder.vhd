

library IEEE;
use IEEE.std_logic_1164.all;
entity fbitadder is
	port(A,B: in std_logic_vector(3 downto 0);
		Cin: in std_logic;
		S: out std_logic_vector(4 downto 0));
end fbitadder;
architecture fbitadderlogic of fbitadder is
	
component fulladder
	port(A,B,C: in std_logic;
		S,Cout: out std_logic);
end component;

signal C: std_logic_vector(3 downto 0);
begin
	C(0)<=Cin;
	FA0: fulladder port map(A(0),B(0),C(0),S(0),C(1));
	FA1: fulladder port map(A(1),B(1),C(1),S(1),C(2));
	FA2: fulladder port map(A(2),B(2),C(2),S(2),C(3));
	FA3: fulladder port map(A(3),B(3),C(3),S(3),S(4));
end fbitadderlogic;