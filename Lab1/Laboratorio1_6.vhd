library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Laboratorio1_6 is
    Port ( C : in  STD_LOGIC_VECTOR(1 downto 0);
           seg7 : out  STD_LOGIC_VECTOR(6 downto 0));
end Laboratorio1_6;

architecture Behavioral of Laboratorio1_6 is

begin
	with C SELect
   seg7 <= "1111001" when "01",   --1 
         "0100100" when "10",   --2 
         "0110000" when "11",   --3 
         "1000000" when others;   --0 

end Behavioral;
