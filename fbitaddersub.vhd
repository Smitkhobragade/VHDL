

library IEEE;
use IEEE.std_logic_1164.all;
entity fbitaddersub is
	port(K:in std_logic;
		A,B: in std_logic_vector(3 downto 0);
		S: out std_logic_vector(4 downto 0));
end fbitaddersub;
architecture fbitaddersublogic of fbitaddersub is

component xor_Gate
	port(A,B : in std_logic;
		Y : out std_logic);
end component;
	
component fulladder
	port(A,B,C: in std_logic;
		S,Cout: out std_logic);
end component;

signal C: std_logic_vector(4 downto 0);
signal T: std_logic_vector(3 downto 0);
begin
	C(0)<=K;
	X1: xor_gate port map(B(0),K,T(0));
	X2: xor_gate port map(B(1),K,T(1));
	X3: xor_gate port map(B(2),K,T(2));
	X4: xor_gate port map(B(3),K,T(3));
	FA0: fulladder port map(A(0),T(0),C(0),S(0),C(1));
	FA1: fulladder port map(A(1),T(1),C(1),S(1),C(2));
	FA2: fulladder port map(A(2),T(2),C(2),S(2),C(3));
	FA3: fulladder port map(A(3),T(3),C(3),S(3),C(4));
	process(C(4),K)
		begin
		if(K = '0') then
			S(4)<=C(4);
		else
			S(4)<='0';
		end if;
	end process;
end fbitaddersublogic;

