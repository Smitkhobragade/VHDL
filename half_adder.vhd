
library IEEE;
use IEEE.std_logic_1164.all;
entity halfadder is
	port(A: in std_logic;
		B: in std_logic;
		S: out std_logic;
		C: out std_logic);
end halfadder;
architecture halfadderlogic of halfadder is

component xor_Gate
	port(A,B : in std_logic;
		Y : out std_logic);
end component;

component and_Gate
	port(A,B : in std_logic;
		Y : out std_logic);
end component;

begin
	V1 : xor_Gate port map(A,B,S);
	V2 : and_Gate port map(A,B,C);
end halfadderlogic;

