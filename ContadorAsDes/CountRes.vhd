library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_Std.all;
use ieee.std_logic_unsigned.all;

entity CountRes is
	port(CLK : in std_logic;
		 Sal : inout std_logic_vector(3 downto 0));
end entity CountRes;

architecture behav of CountRes is
begin 

	process(CLK)
	begin
		if rising_edge(CLK) then
			Sal <= Sal - '1';
		end if;
	end process;
end architecture behav;