/*
 * Name:	gates.vhd
 * Disc:	combination logic 
 * Author:	dnereutskii
 * Date:	04.2020
 *
 */
library IEEE; use IEEE.STD_LOGIC_1164.all;

entity gates is
	port
	(
		a, b:	in STD_LOGIC_VECTOR(3 downto 0);
		y1:		out STD_LOGIC_VECTOR(3 downto 0);		
		y2:		out STD_LOGIC_VECTOR(3 downto 0);	
		y3:		out STD_LOGIC_VECTOR(3 downto 0);	
		y4:		out STD_LOGIC_VECTOR(3 downto 0);	
		y5:		out STD_LOGIC_VECTOR(3 downto 0)
	);	
end;

architecture synch of gates is 
begin
	y1 <= a and b;
	y2 <= a or b;
	y3 <= a xor b;
	y4 <= a nand b;
	y5 <= a nor b;
end;

