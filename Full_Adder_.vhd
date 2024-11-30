library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Full_Adder is
Port ( A : in STD_LOGIC;
B : in STD_LOGIC;
Cin : in STD_LOGIC;
Sum : out STD_LOGIC;
Cout : out STD_LOGIC);
end Full_Adder;
 
architecture Behavioral  of Full_Adder is
 
begin
 
Sum <= A XOR B XOR Cin ;
Cout <= (A AND B) OR (Cin AND A) OR (Cin AND B) ;
 
end Behavioral ;

