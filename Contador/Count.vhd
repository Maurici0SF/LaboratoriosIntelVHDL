library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_Std.all;
use ieee.std_logic_unsigned.all;

entity Count is

	port(CLK,flag,rst : in std_logic;
		 Data : in std_logic_vector(3 downto 0);
		 Sal : out std_logic_vector(3 downto 0));
		 
end entity Count;

architecture behav of Count is

signal D : std_logic_vector(3 downto 0) := "0000";

begin 	
	
	--D <= Data;
	
	process(CLK)
	begin
		if rising_edge(CLK) then
			if flag = '1' then
			   if D = "1001" then 
				   D <= "0000";
			   else
				   D <= D + '1';
			   end if;
			end if;
		end if;
	end process;
	
	Sal <= D;

end architecture behav;