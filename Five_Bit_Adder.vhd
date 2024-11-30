library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Five_Bit_Adder is
Port(
A: in  STD_LOGIC_VECTOR(4 downto 0); 
B: in  STD_LOGIC_VECTOR(4 downto 0); 
Cin: in  STD_LOGIC;                   
Sum: out STD_LOGIC_VECTOR(4 downto 0);
Cout: out STD_LOGIC);
end Five_Bit_Adder;

architecture Behavioral of Five_Bit_Adder is
signal carry : STD_LOGIC_VECTOR(4 downto 0);

begin
   
    FA0: entity work.Full_Adder port map (
        A => A(0), B => B(0), Cin => Cin, Sum => Sum(0), Cout => carry(0));

    FA1: entity work.Full_Adder port map (
        A => A(1), B => B(1), Cin => carry(0), Sum => Sum(1), Cout => carry(1));

    FA2: entity work.Full_Adder port map (
        A => A(2), B => B(2), Cin => carry(1), Sum => Sum(2), Cout => carry(2));

    FA3: entity work.Full_Adder port map (
        A => A(3), B => B(3), Cin => carry(2), Sum => Sum(3), Cout => carry(3));

    FA4: entity work.Full_Adder port map (
        A => A(4), B => B(4), Cin => carry(3), Sum => Sum(4), Cout => Cout);

end Behavioral;
