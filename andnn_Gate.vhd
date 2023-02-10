

library IEEE;
use IEEE.std_logic_1164.all;
entity andnn_Gate is
	port(A: in std_logic;
		B: in std_logic;
		Y: out std_logic);
end andnn_Gate;
architecture andnnLogic of andnn_Gate is
begin
	Y <= B AND (NOT A);
end andnnLogic;



