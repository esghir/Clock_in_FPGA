library ieee;
 use ieee.std_logic_1164.all;
 use ieee.std_logic_unsigned.all;
  USE ieee.numeric_std.ALL;  
 entity decoder_BCD is 
port(
SW : in unsigned(3 downto 0);
HEX: out std_logic_vector(6 downto 0) );
end entity ;

architecture SIM of decoder_BCD   is 
begin 
HEX      <= "1111110" when SW = "0000"   --0
    else    "0110000" when SW = "0001"   --1
	else    "1101101" when SW = "0010"   --2
	else    "1111001" when SW = "0011"   --3
	else    "0110011" when SW = "0100"   --4
	else    "1011011" when SW = "0101"   --5
	else    "1011111" when SW = "0110"   --6
	else    "1110000" when SW = "0111"   --7
	else    "1111111" when SW = "1000"   --8
	else    "1111011" when SW = "1001";   --9
end SIM ;