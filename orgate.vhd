
library IEEE;
use IEEE.std_logic_1164.all;
entity or_Gate is
	port(A: in std_logic;
		B: in std_logic;
		Y: out std_logic);
end or_Gate;
architecture orLogic of or_Gate is
begin
	Y <= A OR B;
end orLogic;

