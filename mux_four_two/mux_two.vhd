/*
 * Name:	mux_two.vhd
 * Disc:	combination logic 
 * Author:	dnereutskii
 * Date:	04.2020
 *
 */
library IEEE; use IEEE.STD_LOGIC_1164.all;

entity mux_two is
	port
	(
		d0, d1:		in STD_LOGIC_VECTOR(3 downto 0);
		s:			in STD_LOGIC;
		y:			out STD_LOGIC_VECTOR(3 downto 0)		
	);	
end;

architecture synch of mux_two is 
begin
	y <= d1 when s else d0;
end;

