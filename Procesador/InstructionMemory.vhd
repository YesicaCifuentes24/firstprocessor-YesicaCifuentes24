library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity InstructionMemory is
    Port ( Address : in  STD_LOGIC_VECTOR (31 downto 0);
           rst : in  STD_LOGIC;
           Instruction : out  STD_LOGIC_VECTOR (31 downto 0));
end InstructionMemory;

architecture arq_InstructionMemory of InstructionMemory is

type instructions is array (0 to 63) of std_logic_vector (31 downto 0);

signal myInstructions : instructions := (others => x"00000000");

begin

Instruction <=myInstructions(conv_integer(Address));


end arq_InstructionMemory;

