
library IEEE;
use IEEE.std_logic_1164.all;
entity fbitsub is
	port(A,B: in std_logic_vector(3 downto 0);
		Bin: in std_logic;
		D: out std_logic_vector(4 downto 0));
end fbitsub;
architecture fbitsublogic of fbitsub is
	
component fullsubtractor
	port(A,B,Bin: in std_logic;
		D,Bout: out std_logic);
end component;

signal BR: std_logic_vector(3 downto 0);
begin
	BR(0)<=Bin;
	FS0: fullsubtractor port map(A(0),B(0),BR(0),D(0),BR(1));
	FS1: fullsubtractor port map(A(1),B(1),BR(1),D(1),BR(2));
	FS2: fullsubtractor port map(A(2),B(2),BR(2),D(2),BR(3));
	FS3: fullsubtractor port map(A(3),B(3),BR(3),D(3),D(4));
end fbitsublogic;
