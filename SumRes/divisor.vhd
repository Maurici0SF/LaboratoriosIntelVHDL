library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
entity divisor is
	port (clk50mhz: 	in STD_LOGIC;
			clk:		out STD_LOGIC);
end divisor;

architecture behav of divisor is
	constant max_count: INTEGER := 50000000;
	signal count: INTEGER range 0 to max_count;
	signal clk_state: STD_LOGIC := '0';
	
begin
	process(clk50mhz)
	begin
		if clk50mhz'event and clk50mhz='1' then
			if count < max_count then 
				count <= count+1;
			else
				clk_state <= not clk_state;
				count <= 0;
			end if;
		end if;
		clk <= clk_state
	end process;
	
end behav;