LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Laboratorio1_4 IS
PORT (u,v,w : IN STD_LOGIC;
		s : in std_logic_vector(1 downto 0);
		m : OUT STD_LOGIC);
END Laboratorio1_4;

ARCHITECTURE Behavior OF Laboratorio1_4 IS

component mux2to1
	port(s,x,y : IN STD_LOGIC;
			m : OUT STD_LOGIC);
end component;

	signal mux1_to_mux2 : std_logic;
	
BEGIN
	
	mux2_1_X2Y2 : mux2to1
	port map(
		s =>s(0),
		x =>u,
		y =>v,
		m =>mux1_to_mux2
		);
		
	mux2_1_X1Y1 : mux2to1
	port map(
		s =>s(1),
		x =>mux1_to_mux2,
		y =>w,
		m =>m
		);
		

END Behavior;