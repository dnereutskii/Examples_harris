/*
 * Name:	and8.vhd
 * Disc:	combination logic 
 * Author:	dnereutskii
 * Date:	04.2020
 *
 */
library IEEE; use IEEE.STD_LOGIC_1164.all;

entity and_eight is
	port
	(
		a:	in STD_LOGIC_VECTOR(7 downto 0);
		y:	out STD_LOGIC		
	);	
end;

architecture synch of and_eight is 
begin
	-- y <= and a;
	y <= a(7) and a(6) and a(5) and a(4) and a(3) and a(2) and a(1) and a(0);
end;

