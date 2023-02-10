
library IEEE;
use IEEE.std_logic_1164.all;
entity Boolean11 is 
	port(X: in std_logic;
		Y: in std_logic;
		A: out std_logic;
		O: out std_logic;
		N: out std_logic;
		NOR1: out std_logic;
		EO: out std_logic;
		EN: out std_logic);
end Boolean11;
architecture Bool of Boolean11 is
begin 
	N <= (X NAND X);
	A <= (X NAND Y) NAND (X NAND Y);
	O <= (X NAND X) NAND (Y NAND Y);
	NOR1 <= ((X NAND X) NAND (Y NAND Y)) NAND ((X NAND X) NAND (Y NAND Y));
	EO <= ((X NAND X) NAND Y) NAND (X NAND (Y NAND Y));
	EN <= ((X NAND X) NAND (Y NAND Y)) NAND (X NAND Y);
end Bool;