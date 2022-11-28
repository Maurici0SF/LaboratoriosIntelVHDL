LIBRARY ieee;
USE ieee.std_logic_1164.all;
-- Simple module that connects the SW switches to the LEDG lights
ENTITY Laboratorio1 IS
PORT ( SW : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
LEDG : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)); -- green LEDs
END Laboratorio1;

ARCHITECTURE Behavior OF Laboratorio1 IS

BEGIN

LEDG <= SW;

END Behavior;