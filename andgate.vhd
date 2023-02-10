
library IEEE;
use IEEE.std_logic_1164.all;
entity and_Gate is
	port(A: in std_logic;
		B: in std_logic;
		Y: out std_logic);
end and_Gate;
architecture andLogic of and_Gate is
begin
	Y <= A AND B;
end andLogic;


