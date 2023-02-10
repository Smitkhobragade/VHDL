
library IEEE;
use IEEE.std_logic_1164.all;
entity xor_Gate is
	port(A: in std_logic;
		B: in std_logic;
		Y: out std_logic);
end xor_Gate;
architecture xorLogic of xor_Gate is
begin
	Y <= A XOR B;
end xorLogic;


