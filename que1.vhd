
Library IEEE;
use IEEE.std_logic_1164.all;
entity Booleann1 is
	port(A : in std_logic;
		B : in std_logic;
		C : in std_logic;
		lhs : out std_logic;
		rhs : out std_logic;
		bnand : out std_logic;
		bnor : out std_logic);
end Booleann1;
architecture BOOLn1 of Booleann1 is
begin
	lhs <= (A AND B) OR (A AND (NOT(B)) AND C) OR (B AND (NOT(C)));
	rhs <= (A AND C) OR (B AND (NOT(C)));
	bnand <= (A NAND C) NAND (B NAND (C NAND C));
	bnor <= (((A NOR A) NOR (C NOR C)) NOR (C NOR(B NOR B))) NOR (((A NOR A) NOR (C NOR C)) NOR (C NOR(B NOR B)));
	
end BOOLn1;

