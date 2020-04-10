/*
 * Name:	mux_four_two.vhd
 * Disc:	combination logic 
 * Author:	dnereutskii
 * Date:	04.2020
 *
 */
library IEEE; use IEEE.STD_LOGIC_1164.all;

entity mux_four_two is
	port
	(
		d0, d1,
		d2, d3:		in STD_LOGIC_VECTOR(3 downto 0);
		s:			in STD_LOGIC_VECTOR(1 downto 0);
		y:			out STD_LOGIC_VECTOR(3 downto 0)		
	);	
end;

architecture struct of mux_four_two is

component mux_two
	port
	(
		d0, d1:	in STD_LOGIC_VECTOR(3 downto 0);
		s:		in STD_LOGIC;
		y:		out STD_LOGIC_VECTOR(3 downto 0)
	);
end component;

signal low, high: STD_LOGIC_VECTOR(3 downto 0);
	
begin
	lowmux:		mux_two port map(d0, d1, s(0), low);
	highmux:	mux_two port map(d2, d3, s(0), high);
	finalmux:	mux_two port map(low, high, s(1), y);
end;

