

library IEEE;
use IEEE.std_logic_1164.all;
entity fullsubtractor is
	port(A: in std_logic;
		B: in std_logic;
		Bin: in std_logic;
		D: out std_logic;
		Bout: out std_logic);
end fullsubtractor;
architecture fullsubtractorlogic of fullsubtractor is

component halfsubtractor
	port(A,B : in std_logic;
		D,Bout : out std_logic);
end component;

component or_Gate
	port(A,B : in std_logic;
		Y : out std_logic);
end component;

signal s1, s2, s3 : std_logic;
begin
	V1 : halfsubtractor port map(A=>A,B=>B,D=>s1,Bout=>s2);
	V2 : halfsubtractor port map(A=>s1,B=>Bin,D=>D,Bout=>s3);
	V3 : or_Gate port map(A=>s3,B=>s2,Y=>Bout);
end fullsubtractorlogic;

