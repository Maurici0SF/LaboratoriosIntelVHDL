library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Contador0to9 is
    Port ( CLK : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (3 downto 0));
end Contador0to9;

architecture Behavioral of Contador0to9 is

type estados is (s0,s1,s2,s3,s4,s5,s6,s7,s8,s9);
signal D_bus, Q_bus: estados;

begin

    process (CLK)
    begin
    if clk'event and CLK= '1' then
            Q_bus <= D_bus;
    end if;
    end process;
    
    process (Q_bus)
    begin
        case (Q_bus) is
        when s0 =>
                D_bus <= s1;
        when s1 =>
                D_bus <= s2;
        when s2 =>
                D_bus <= s3;
        when s3 =>
                D_bus <= s4;
        when s4 =>
                D_bus <= s5;
        when s5 =>
                D_bus <= s6;
		  when s6 =>
                D_bus <= s7;
		  when s7 =>
                D_bus <= s8;
		  when s8 =>
                D_bus <= s9;
        when s9 =>
                D_bus <= s0;
	end case;
	end process;
    
    with Q_bus select
    Q <= "0000" when s0,
         "0001" when s1,
         "0010" when s2,
         "0011" when s3,
         "0100" when s4,
			"0101" when s5,
			"0110" when s6,
			"0111" when s7,
			"1000" when s8,
			"1001" when others;


end Behavioral;

