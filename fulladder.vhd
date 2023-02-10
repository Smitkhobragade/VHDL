
library IEEE;
use IEEE.std_logic_1164.all;
entity fulladder is
	port(A: in std_logic;
		B: in std_logic;
		C: in std_logic;
		S: out std_logic;
		Cout: out std_logic);
end fulladder;
architecture fulladderlogic of fulladder is

component halfadder
	port(A,B : in std_logic;
		S,C : out std_logic);
end component;

component or_Gate
	port(A,B : in std_logic;
		Y : out std_logic);
end component;

signal s1, s2, s3 : std_logic;
begin
	V1 : halfadder port map(A=>A,B=>B,S=>s1,C=>s2);
	V2 : halfadder port map(A=>s1,B=>C,S=>S,C=>s3);
	V3 : or_Gate port map(A=>s3,B=>s2,Y=>Cout);
end fulladderlogic;


