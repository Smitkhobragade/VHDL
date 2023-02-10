

library IEEE;
use IEEE.std_logic_1164.all;
entity halfsubtractor is
	port(A: in std_logic;
		B: in std_logic;
		D: out std_logic;
		Bout: out std_logic);
end halfsubtractor;
architecture halfsuntractorlogic of halfsubtractor is

component xor_Gate
	port(A,B : in std_logic;
		Y : out std_logic);
end component;

component andnn_Gate
	port(A,B : in std_logic;
		Y : out std_logic);
end component;

begin
	V1 : xor_Gate port map(A,B,D);
	V2 : andnn_Gate port map(A,B,Bout);
end halfsuntractorlogic;


