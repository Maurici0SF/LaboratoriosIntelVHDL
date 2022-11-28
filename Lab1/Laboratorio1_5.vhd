LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Laboratorio1_5 IS
PORT (s,u,v,w : in STD_LOGIC_VECTOR(1 downto 0);
		m : OUT STD_LOGIC_VECTOR(1 DOWNTO 0));
END Laboratorio1_5;

ARCHITECTURE Behavior OF Laboratorio1_5 IS
	
BEGIN
	
	process (s,u,v,w )
    begin
       case S is
          when "00" => m <= u;
          when "01" => m <= v;
          when "10" => m <= w;
          when OTHERS => m <= "XX";
       end case;
    end process;

END Behavior;