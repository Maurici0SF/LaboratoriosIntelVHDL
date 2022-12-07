library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity Count9To7Seg is
	port(CLK,rst : in std_logic;
		  D : in std_logic_vector(3 downto 0);
		  Sal : out std_logic_vector(6 downto 0));
end entity Count9To7Seg;

architecture behav of Count9To7Seg is
	
	component Decoder
	port(bcd : in std_logic_vector(3 downto 0);
		  Sal7seg : out std_logic_vector(6 downto 0));
	end component;
	
	component Count
	port(CLK,flag,rst : in std_logic;
		 Data : in std_logic_vector(3 downto 0);
		 Sal : out std_logic_vector(3 downto 0));
	end  component;
	
	component divisor
	port (clk50mhz: 	in STD_LOGIC;
			flag:		out STD_LOGIC);
	end component; 
	
	--signals
	signal SalCont : std_logic_vector(3 downto 0);
	signal flag : std_logic;
begin
	cO: Count port map(CLK,flag,rst,D,SalCont);
	
	D1: Decoder port map(SalCont,Sal);
	
	D2: Divisor port map(CLK,flag);
	
end architecture behav;