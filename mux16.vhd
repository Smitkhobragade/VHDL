
library IEEE;
use IEEE.std_logic_1164.all;

entity mux16 is
	port(A : in std_logic_vector(15 downto 0);
		S : in std_logic_vector(3 downto 0);
		Z : out std_logic);
end mux16;

architecture Behavioural of mux16 is

component mux2
port(A,B : in std_logic;
	S : in std_logic;
	Z : out std_logic);
end component;
signal temp: std_logic_vector(13 downto 0);

begin
	m1: mux2 port map(A(0),A(1),S(0),temp(0));
	m2: mux2 port map(A(2),A(3),S(0),temp(1));
	m3: mux2 port map(A(4),A(5),S(0),temp(2));
	m4: mux2 port map(A(6),A(7),S(0),temp(3));
	m5: mux2 port map(A(8),A(9),S(0),temp(4));
	m6: mux2 port map(A(10),A(11),S(0),temp(5));
	m7: mux2 port map(A(12),A(13),S(0),temp(6));
	m8: mux2 port map(A(14),A(15),S(0),temp(7));
	m9: mux2 port map(temp(0),temp(1),S(1),temp(8));
	m10: mux2 port map(temp(2),temp(3),S(1),temp(9));
	m11: mux2 port map(temp(4),temp(5),S(1),temp(10));
	m12: mux2 port map(temp(6),temp(7),S(1),temp(11));
	m13: mux2 port map(temp(8),temp(9),S(2),temp(12));
	m14: mux2 port map(temp(10),temp(11),S(2),temp(13));
	m15: mux2 port map(temp(12),temp(13),S(3),Z);
end Behavioural;
	