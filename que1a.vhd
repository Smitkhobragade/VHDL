
Library IEEE;
use IEEE.std_logic_1164.all;
entity Booleann is
	port(A : in std_logic;
		B : in std_logic;
		C : in std_logic;
		lhs : out std_logic;
		rhs : out std_logic;
		bynand : out std_logic;
		bynor : out std_logic);
end Booleann;
architecture BOOLn of Booleann is
begin
	lhs <= (A AND B) OR (A AND (NOT(B)) AND C) OR (B AND (NOT(C)));
	rhs <= (A AND C) OR (B AND (NOT(C)));
	bynand <= (A NAND C) NAND (B NAND (C NAND C));
	
end BOOLn;

