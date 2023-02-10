
Library IEEE;
use IEEE.std_logic_1164.all;
entity Booleann2 is
	port(A : in std_logic;
		B : in std_logic;
		C : in std_logic;
		lhs : out std_logic;
		rhs : out std_logic;
		bnand : out std_logic;
		bnor : out std_logic);
end Booleann2;
architecture BOOLn21 of Booleann2 is
begin
	lhs <= ((A AND B) AND C) OR (NOT A) OR ((A AND (NOT B)) AND C);
	rhs <= (NOT A) OR C;
	bnand <= (C NAND C) NAND A;
	bnor <= ((A NOR A) NOR C) NOR ((A NOR A) NOR C);
	
end BOOLn21;



