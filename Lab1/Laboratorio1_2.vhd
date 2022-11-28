LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY Laboratorio1_2 IS
PORT (s,x,y : IN STD_LOGIC;
		m : OUT STD_LOGIC);
END Laboratorio1_2;

ARCHITECTURE Behavior OF Laboratorio1_2 IS

BEGIN

m <= (not(s) and x)or(s and y);

END Behavior;