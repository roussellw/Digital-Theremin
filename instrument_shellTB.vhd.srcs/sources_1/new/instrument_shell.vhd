----------------------------------------------------------------------------------
-- Company: ENGS 31 / COSC 56
-- Engineer: Connor Haines & Levi Roussell
-- 
-- Create Date: 08/11/2018 12:01:30 PM
-- Design Name: Touchelss Musical Instrument
-- Module Name: instrument_shell - Behavioral
-- Project Name: Engs 31 Final Project
-- Target Devices: Basys 3 
-- Tool Versions: Vivado 2016.4 
-- Description: Shell file for touchless musicall instrument.
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
use ieee.math_real.all;				-- needed for automatic register sizing
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity instrument_shell is
  Port (mclk:       in std_logic;       --100Mhz internal clock in Basys3 board
        pwm:        in std_logic;
        speaker_en: in std_logic;       -- resets the counter to stop any sound output
        rx:         out std_logic;      -- enable for rangefinder
        
        -- multiplexed seven segment display
        seg    : out std_logic_vector(0 to 6);
        dp    : out std_logic;
        an     : out std_logic_vector(3 downto 0)
         );
end instrument_shell;

architecture Behavioral of instrument_shell is

--7 segment display component
component mux7seg is
Port ( clk : in  STD_LOGIC;									-- runs on a fast (1 MHz or so) clock
           y0, y1, y2, y3 : in  STD_LOGIC_VECTOR (3 downto 0);	-- digits
           dp_set : in std_logic_vector(3 downto 0);            -- decimal points
           seg : out  STD_LOGIC_VECTOR(0 to 6);				    -- segments (a...g)
           dp : out std_logic;
           an : out  STD_LOGIC_VECTOR (3 downto 0) );	      -- anodes
end component mux7seg;


-------------------------------------------------
-- SIGNAL DECLARATIONS 

constant ACLK_DIVIDER_VALUE: integer := 100;
constant ACOUNT_LEN: integer := integer(ceil( log2( real(ACLK_DIVIDER_VALUE) ) ));
signal aclkdiv: unsigned(ACOUNT_LEN-1 downto 0) := (others => '0');  -- clock divider counter
signal aclk_unbuf: std_logic := '0';    -- unbuffered serial clock 
signal aclk: std_logic := '0';          -- internal serial clock

constant sensitivity: integer := 1;
signal distance: unsigned(9 downto 0) := (others => '0');
signal x: unsigned(5 downto 0) := (others => '0');

--FSM Signals
type state_type is (idle, counting, update, reset);
signal curr_state, next_state: state_type;
signal ctr_en, ctr_clear, write_en: std_logic:= '0';

--Lookup table counter
signal i: unsigned(15 downto 0):= (others => '0');
-------------------------------------------------
begin

-- The BUFG component puts the signal onto the FPGA clocking network
A_clock_buffer: BUFG
	port map (I => aclk_unbuf,
		      O => aclk );
    
-- Divide the 100 MHz clock down to 2 MHz, then toggling a flip flop gives the final 
-- 1 MHz system clock
A_clock_divider: process(mclk)
begin
	if rising_edge(mclk) then
	   	if aclkdiv = ACLK_DIVIDER_VALUE-1 then 
			aclkdiv <= (others => '0');
			aclk_unbuf <= NOT(aclk_unbuf);
		else
			aclkdiv <= aclkdiv + 1;
		end if;
	end if;
end process A_clock_divider;

--Tie rx pin high
rx <= '1';

counter: process(aclk, write_en, ctr_clear, ctr_en)      --calculating distance at 1/4 inch
begin
    if ctr_en = '1' then
        if rising_edge(aclk) then
            x <= x + 1;
            if x = sensitivity - 1 then                 --if counter reaches 37 (1/4in) then increment distance
                distance <= distance + 1;
            end if;
        end if;
    elsif write_en = '1' then
        if distance < "00001" then--"11001" then                  -- min distance is 6 inches = 24 quarter inches
             i <= (others => '0');
        elsif distance > "10010001" then            --max distance is 36 inches = 144 quarter inches
             i <= (others => '1');
        else                                        -- if between 6 inches and 36 inches, output normal distance
             i <= "000000" & distance;
        end if;
    elsif ctr_clear = '1' then
        x <= (others => '0');
        distance <= (others => '0');
    end if;

end process counter;

StateUpdate: process(mclk)
begin
    if rising_edge(mclk) then
        curr_state <= next_state;
    end if;
end process StateUpdate;

StateMemory: process(curr_state, pwm)
begin
    next_state <= curr_state;
    ctr_en <= '0';
    ctr_clear <= '0';
    write_en <= '0';
    
    case(curr_state) is
        when idle =>
            if pwm = '1' then                       --if rangefinder goes high, go to counting state
                next_state <= counting;
            end if;
        when counting => ctr_en <= '1';
            if pwm = '0' then                       --if rangefinder goes low, then we need to send the distance to a register...go to update state
                next_state <= update;
            end if;
        when update => write_en <= '1';
            next_state <= reset;
        when reset => ctr_clear <= '1';
            next_state <= idle;
     end case;
end process StateMemory;

--MUX7SEG port map
-- Instantiate the multiplexed seven segment display
display: mux7seg port map( 
            clk => aclk,				-- runs on the 1 MHz clock
           	y3 => std_logic_vector(i(15 downto 12)), 		        
           	y2 => std_logic_vector(i(11 downto 8)), -- A/D converter output  	
           	y1 => std_logic_vector(i(7 downto 4)), 		
           	y0 => std_logic_vector(i(3 downto 0)),		
           	dp_set => "0000",           -- decimal points off
          	seg => seg,
          	dp => dp,
           	an => an );	
    
end Behavioral;
