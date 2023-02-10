
library IEEE;
use IEEE.std_logic_1164.all;

entity demux16 is
	port(X: in std_logic;
		S : in std_logic_vector(3 downto 0);
		D : out std_logic_vector(15 downto 0));
end demux16;
architecture Behavioural of demux16 is

component demux4
port(X,S0,S1 : in std_logic;
	D0,D1,D2,D3 : out std_logic);
end component;
signal temp : std_logic_vector(3 downto 0);

begin
	dm1 : demux4 port map(X=>X, S0=>S(3),S1=>S(2),D0=>temp(0),D1=>temp(1),D2=>temp(2),D3=>temp(3));
	dm2 : demux4 port map(X=>temp(0),S0=>S(1),S1=>S(0),D0=>D(0),D1=>D(1),D2=>D(2),D3=>D(3));
	dm3 : demux4 port map(X=>temp(1),S0=>S(1),S1=>S(0),D0=>D(4),D1=>D(5),D2=>D(6),D3=>D(7));
	dm4 : demux4 port map(X=>temp(2),S0=>S(1),S1=>S(0),D0=>D(8),D1=>D(9),D2=>D(10),D3=>D(11));
	dm5 : demux4 port map(X=>temp(3),S0=>S(1),S1=>S(0),D0=>D(12),D1=>D(13),D2=>D(14),D3=>D(15));
end Behavioural;