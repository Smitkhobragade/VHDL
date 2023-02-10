library IEEE;
use IEEE.std_logic_1164.all;
entity grey_to_bin is
	port(G0: in std_logic;
		G1: in std_logic;
		G2: in std_logic;
		G3: in std_logic;
		B0: out std_logic;
		B1: out std_logic;
		B2: out std_logic;
		B3: out std_logic);
end grey_to_bin;
architecture Logic1 of grey_to_bin is
	begin
		B0 <= G3 xor G2 xor G1 xor G0;
		B1 <= G3 xor G2 xor G1;
		B2 <= G3 xor G2;
		B3 <= G3;
end Logic1;

