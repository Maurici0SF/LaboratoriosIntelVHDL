library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_Std.all;

entity ContadorSumRes is
	port(D : inout std_logic_vector(3 downto 0);
		  CLK,load_D,SelOp : in std_logic;
		  Sal7Seg : out std_logic_vector(6 downto 0));
end entity;

architecture behav of ContadorSumRes is

	component divisor 
	port (clk50mhz: 	in STD_LOGIC;
			clk:		out STD_LOGIC);
	end component;
	
	component SUmadorRestador
	port(CLK,Sel,load : in std_logic;
		  Dato : inout std_logic_Vector(3 downto 0);
		 Sal : out std_logic_vector(3 downto 0));
	end component;

	component Decoder
	port(bcd : in std_logic_vector(3 downto 0);
		  Sal7seg : out std_logic_vector(6 downto 0));
	end component;
	
	
	--signals
	signal CLOCK : std_logic;	
	signal SalF : std_logic_vector(3 downto 0);

	
begin

	Div: Divisor port map(CLK,CLOCK);
	Operador: SumadorRestador port map(CLOCK,SelOp,load_D,D,SalF);
	Dec: Decoder port map(SalF,Sal7Seg);
	
end behav;