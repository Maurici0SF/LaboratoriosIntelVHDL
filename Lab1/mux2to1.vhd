LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY mux2to1 IS
PORT (s,x,y : IN STD_LOGIC;
		m : OUT STD_LOGIC);
END mux2to1;

ARCHITECTURE Behavior OF mux2to1 IS

BEGIN

m <= (not(s) and x)or(s and y);

END Behavior;