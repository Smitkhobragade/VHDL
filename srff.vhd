library IEEE;
use IEEE.std_logic_1164.all;
entity SRFF is
	port(s,r,clk,rst: in std_logic;
		q,qb: out std_logic);
end SRFF;
architecture behavioural of SRFF is
begin
	process(s,r,clk,rst)
	begin
		if(rst = '1') then
			q<='0';
			qb<='0';
		elsif(clk = '1' and clk'event) then
			if(s /= r) then
				q <= s;
				qb <= r;
			elsif(s = '1' and r='1') then
				q<='Z';
				qb<='Z';
			end if;
		end if;
	end process;
end behavioural;