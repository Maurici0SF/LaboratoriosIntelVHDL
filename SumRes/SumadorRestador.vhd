library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_Std.all;
use ieee.std_logic_unsigned.all;

entity SUmadorRestador is
	port(CLK,Sel,load : in std_logic;
		  Dato : inout std_logic_Vector(3 downto 0);
		 Sal : out std_logic_vector(3 downto 0));
end entity SUmadorRestador;

architecture behav of SUmadorRestador is
signal D : std_logic_vector(3 downto 0);
begin 
	D <= Dato;
	process(CLK)
	begin
		if rising_edge(CLK) then
			if load = '1' then
				case Sel is
					when '0' =>
						Sal <= D - '1';
					when others =>
						Sal <= D + '1';
				end case;
			end if;
		end if;
		
	end process;
end architecture behav;