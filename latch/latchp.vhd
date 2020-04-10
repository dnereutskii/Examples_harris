/*
 * Name:	latch.vhd
 * Disc:	sequence logic 
 * Author:	dnereutskii
 * Date:	04.2020
 *
 */
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity latchp is
	port
	(
		d:		in STD_LOGIC_VECTOR(3 downto 0);
		clk:	in STD_LOGIC;
		q:		out STD_LOGIC_VECTOR(3 downto 0)		
	);	
end;

architecture synch of latchp is 
begin
	process(clk, d)
	begin
		if clk = '1' then
			q <= d;
		end if;
	end process;
end;

