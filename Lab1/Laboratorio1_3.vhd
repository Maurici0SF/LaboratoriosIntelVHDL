LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Laboratorio1_3 IS
PORT (s : IN STD_LOGIC;
		X,Y : in std_logic_vector(2 downto 0);
		m : OUT STD_LOGIC_vector(2 downto 0));
END Laboratorio1_3;

ARCHITECTURE Behavior OF Laboratorio1_3 IS

component mux2to1
	port(s,x,y : IN STD_LOGIC;
			m : OUT STD_LOGIC);
end component;

BEGIN
	
	mux2_1_X2Y2 : mux2to1
	port map(
		s =>s,
		x =>X(2),
		y =>Y(2),
		m =>m(2)
		);
		
	mux2_1_X1Y1 : mux2to1
	port map(
		s =>s,
		x =>X(1),
		y =>Y(1),
		m =>m(1)
		);
	
	mux2_1_X0Y0 : mux2to1
	port map(
		s =>s,
		x =>X(0),
		y =>Y(0),
		m =>m(0)
		);	

END Behavior;