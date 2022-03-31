library ieee;
 use ieee.std_logic_1164.all;
 USE ieee.numeric_std.ALL;  
 use ieee.std_logic_unsigned.all;
 
 entity converter_BCD is 
port(
number : in unsigned(7 downto 0 );
nbr0 : out unsigned(3 downto 0 );
nbr1 : out unsigned(3 downto 0 )
 );
end entity ;


architecture SIM of converter_BCD is
	begin 
	process (number)
	variable int: integer ;
	variable res: integer ;
	
	begin
int := to_integer(unsigned(number) );
	if int > 9 then
res := int/10;
nbr1 <= to_unsigned( res , 4);
nbr0 <= to_unsigned( int - res*10 , 4);
	else
nbr1 <= number(7 downto 4);
nbr0 <= number(3 downto 0);
	end if;
	end process;
end SIM;