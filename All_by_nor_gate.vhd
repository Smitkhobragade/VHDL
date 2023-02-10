
library IEEE;
use IEEE.std_logic_1164.all;
entity Boolean12 is 
	port(A: in std_logic;
		B: in std_logic;
		ANDGATE: out std_logic;
		ORGATE: out std_logic;
		NOTGATE: out std_logic;
		NANDGATE: out std_logic;
		XORGATE: out std_logic;
		XNORGATE: out std_logic);
end Boolean12;
architecture Bool of Boolean12 is
begin 
	NOTGATE <= (A NOR A);
	ANDGATE <= (A NOR A) NOR (B NOR B);
	ORGATE <= (A NOR B)NOR(A NOR B);
	NANDGATE <= ((A NOR A) NOR (B NOR B))NOR((A NOR A) NOR (B NOR B));
	XORGATE <= ((A NOR (B NOR B)) NOR (B NOR (A NOR A)))NOR((A NOR (B NOR B)) NOR (B NOR (A NOR A)));
	XNORGATE <= (((A NOR A) NOR (B NOR B)) NOR (A NOR B))NOR(((A NOR A) NOR (B NOR B)) NOR (A NOR B));
end Bool;
