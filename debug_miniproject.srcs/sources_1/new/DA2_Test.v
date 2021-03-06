----------------------------------------------------------------------------------
-- Company: ENGS 31 / COSC 56
-- Engineer: William L. Roussell & Connor S. Haines
-- 
-- Create Date: 08/17/2018 09:59:44 AM
-- Design Name: Digital Theremin
-- Module Name: pmod_da2 - Behavioral
-- Project Name: ENGS 31 Final Project
-- Target Devices: Basys 3
-- Tool Versions: Vivado 2016.4
-- Description: Design file to interface with the pmod_da2
-- 
-- Dependencies: None
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity pmod_da2 is
port(	sclk: in std_logic;
	 	--take_sample: in std_logic;
	 	da_data: in std_logic_vector(15 downto 0);
	 	spi_sclk: out std_logic;
	 	spi_cs: out std_logic;
	 	spi_sdata: out std_logic);
end pmod_da2;

architecture behavioral of pmod_da2 is

--Signal Declarations
signal shift_en, load_en, tc: std_logic;
signal ser_data_reg: unsigned(15 downto 0):= (others => '0');
type state_type is (shift, load);
signal curr_state, next_state: state_type;
signal data_ctr: unsigned(3 downto 0):= (others => '0');

begin

datapath: process(sclk)
begin
	if rising_edge(sclk) then
		if shift_en = '1' then                                --Execute shift process
			ser_data_reg <= ser_data_reg(14 downto 0) & ser_data_reg(15);  --shift all the bits over in ser_data_reg and lsb gets "0"
			data_ctr <= data_ctr + 1;                         --the bit count gets incremented
			if data_ctr = "1111" then                         --when the bit count = 15, 16 bits have been shifted into the DA2
				tc <= '1';                                    --On this condition tc goes high to change states
			else
				tc <= '0';
			end if;
		elsif load_en = '1' then                              --Execute load state
			ser_data_reg <= unsigned(da_data);                --Take the parallel data and shift it into temporary register
			data_ctr <= (others => '0');                      --Reset the bit count for the shift process
			tc <= '0';                                        --Reset the tc for the shift process
		else
		end if;
    end if;
end process datapath;

			         spi_sdata <= ser_data_reg(15);                    --spi_sdata gets the msb of the ser_data_reg

StateMemoryLogic: process(sclk)
begin
	if rising_edge(sclk) then
		curr_state <= next_state;
	end if;
end process StateMemoryLogic;

--StateUpdateLogic: process(curr_state, take_sample, tc)
--begin
--	next_state <= curr_state;
--	shift_en <= '0';
--	load_en <= '0';
--	spi_cs <= '1';
	
--	case(curr_state) is
--		when idle =>                                      --The idle state waits for the take sample signal to go high
--			if take_sample = '1' then                     --Take sample signal goes high in the shell file when I gets updataed
--				next_state <= load;                       --When take sample goes high go into the load state
--			else
--				next_state <= idle;
--			end if;
--		when shift => spi_cs <= '0'; shift_en <= '1';     --When in the shift state, CS signal gets low voltage and execute shift process
--			if tc = '1' then                              --When Sixteen bits have been shifted in, leave the shift state
--				next_state <= idle;
--			else
--				next_state <= shift;
--			end if;
--		when load => load_en <= '1';                      --When in the load state execute the load process
--			next_state <= shift;
--	end case;
--end process StateUpdateLogic;

--Debug Copy: idle state is removed
StateUpdateLogic: process(curr_state, tc, da_data)
begin
	next_state <= curr_state;
	shift_en <= '0';
	load_en <= '0';
	spi_cs <= '1';
	
	case(curr_state) is
		when shift => spi_cs <= '0'; shift_en <= '1';     --When in the shift state, CS signal gets low voltage and execute shift process
		    if tc = '1' then                     --Take sample signal goes high in the shell file when I gets updataed
                next_state <= load;                       --When take sample goes high go into the load state
			end if;
		when load => load_en <= '1';                      --When in the load state execute the load process
			next_state <= shift;
	end case;
end process StateUpdateLogic;

end behavioral;