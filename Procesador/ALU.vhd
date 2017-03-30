library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ALU is
    Port ( CRs1 : in  STD_LOGIC_VECTOR (31 downto 0);
           CRs2 : in  STD_LOGIC_VECTOR (31 downto 0);
           ALUOp : in  STD_LOGIC_VECTOR (5 downto 0);
           ALUResult : out  STD_LOGIC_VECTOR (31 downto 0));
end ALU;

architecture arq_ALU of ALU is
signal i : std_logic := '0';
begin
	process(CRs1, CRs2) begin
		case(ALUOp) is
			when "000000" =>--AND
				ALUResult <= CRs1 and CRs2;
			when "000001" =>--OR
				ALUResult <= CRs1 or CRs2;
			when "000010" =>
				ALUResult <= CRs1 xor CRs2;
			when "000011" =>
				ALUResult <= CRs1 xnor CRs2;
			when "000100" =>
				ALUResult <= CRs1 sll CRs2;
			when "000101" =>
				ALUResult <= CRs1 srl CRs2;
			when "000110" =>
				ALUResult <= CRs1 sra CRs2;
			when others => null;
		end case;
	end process;


end arq_ALU;

