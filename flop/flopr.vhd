/*
 * Name:	flopr.vhd
 * Disc:	sequence logic 
 * Author:	dnereutskii
 * Date:	04.2020
 *
 */
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity flopr is
	port
	(
		d:		in STD_LOGIC_VECTOR(3 downto 0);
		clk,
		reset:	in STD_LOGIC;
		q:		out STD_LOGIC_VECTOR(3 downto 0)		
	);	
end;

architecture synchronous of flopr is 
begin
	process(clk)
	begin
		if rising_edge(clk) then
			if reset then q <= "0000";
			else q <= d;
			end if;
			
		end if;
	end process;
end;

/*architecture asynchronous of flopr is 
begin
	process(clk, reset)
	begin
		if reset then
			q <= "0000";
		elsif rising_edge(clk) then
			q <= d;
		end if;
	end process;
end;*/

