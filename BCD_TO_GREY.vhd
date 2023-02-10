library IEEE;
use IEEE.std_logic_1164.all;
entity Bin_to_grey is
	port(B0: in std_logic;
		B1: in std_logic;
		B2: in std_logic;
		B3: in std_logic;
		G0: out std_logic;
		G1: out std_logic;
		G2: out std_logic;
		G3: out std_logic);
end Bin_to_grey;
architecture Logic of Bin_to_grey is
	begin
		G0 <= B0 xor B1;
		G1 <= B1 xor B2;
		G2 <= B2 xor B3;
		G3 <= B3;
end Logic;
