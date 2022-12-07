library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_Std.all;
use ieee.std_logic_unsigned.all;

entity Count is

	port(CLK,flag,load,Sum,Res : in std_logic;
		 Data : in std_logic_vector(3 downto 0);
		 Sal : out std_logic_vector(3 downto 0));
		 
end entity Count;

architecture behav of Count is

signal D : std_logic_vector(3 downto 0) := "0000";

begin 	
	

	
	process(CLK)
	begin
		if rising_edge(CLK) then
		if load = '1' then
			D <= Data;
			elsif flag = '1' then					
					if Sum = '1' then
						if D = "1001" then 
							D <= "0000";
						else
							D <= D + '1';
						end if;
					elsif Res = '1' then
						if D = "0000" then 
							D <= "1001";
						else
							D <= D - '1';
						end if;
					end if;
				end if;
		end if;
	end process;
	
	Sal <= D;

end architecture behav;