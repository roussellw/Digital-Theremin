----------------------------------------------------------------------------------
-- Company: ENGS 31 / COSC 56
-- Engineer: Connor S. Haines & William L. Roussell
-- 
-- Create Date: 08/13/2018 07:53:43 PM
-- Design Name: Digital Theremin
-- Module Name: instrument_shellTB - Behavioral
-- Project Name: ENGS 31 final project
-- Target Devices: Basys 3
-- Tool Versions: Vivado 2017.3
-- Description: Tests all functonality of the top level shell file which interfaces
--              with the MAXSONAR, DDS core component, and D/A 2 component.
-- 
-- Dependencies: instrument_shell_version_2.vhd
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
library UNISIM;
use UNISIM.VComponents.all;

entity instrument_shellTB is
end instrument_shellTB;

architecture Behavioral of instrument_shellTB is

component instrument_shell
  Port (mclk:       in std_logic;       --100Mhz internal clock in Basys3 board
      pwm:        in std_logic;
      rx:         out std_logic;      -- enable for rangefinder
      
--        -- multiplexed seven segment display
      seg    : out std_logic_vector(0 to 6);
      dp    : out std_logic;
      an     : out std_logic_vector(3 downto 0);
      
      --Digital Sound Out
      spi_cs: out std_logic;
      spi_sdata: out std_logic;
      spi_sclk: out std_logic;
      
      --Functionality Switches
      stop_note: in std_logic;
      metro_on: in std_logic
       );
end component;

--inputs
signal clk: std_logic := '0';
signal pwm: std_logic:= '0';
signal rx : std_logic := '1';
signal stop_note: std_logic := '0';
signal metro_on: std_logic := '0';

constant clk_period: time := 10ns;

begin

uut: instrument_shell port map(
    mclk => clk,
    pwm => pwm,
    rx => rx,
    seg => open,
    dp => open,
    an => open,
    spi_cs => open,
    spi_sdata => open,
    spi_sclk => open,
    stop_note => stop_note,
    metro_on => metro_on);

clk_process: process
begin
    clk <= '0';
    wait for clk_period/2;
    clk <= '1';
    wait for clk_period/2;
    end process;
    
stim_proc: process
begin
    wait for clk_period; --Process tests the maximum and minimum ranges of our instrument
    pwm <= '1';          --as well as the stop note and metronome functionality.
    wait for 37.5ms;
    pwm <= '0';
    wait for 11.5ms;
    pwm <= '1';
    wait for 10ms;
    pwm <= '0';
    wait for 39ms;
    pwm <= '1';
    wait for 894us;
    pwm <= '0';
    wait for 48.106ms;
    stop_note <= '1';
    pwm <= '1';
    wait for 150us;
    pwm <= '0';
    wait for 150us;
    metro_on <= '1';
    wait for 150us;
    metro_on <= '0';
    wait for 150us;
end process stim_proc;

end Behavioral;
