----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/13/2018 07:53:43 PM
-- Design Name: 
-- Module Name: instrument_shellTB - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
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
      speaker_en: in std_logic;       -- resets the counter to stop any sound output
      rx:         out std_logic;      -- enable for rangefinder
      
      -- multiplexed seven segment display
      seg    : out std_logic_vector(0 to 6);
      dp    : out std_logic;
      an     : out std_logic_vector(3 downto 0)
       );
end component;

--inputs
signal clk: std_logic := '0';
signal pwm: std_logic:= '0';
signal speaker_en : std_logic := '0';
signal rx : std_logic := '1';

constant clk_period: time := 10ns;

begin

uut: instrument_shell port map(
    mclk => clk,
    pwm => pwm,
    speaker_en => speaker_en,
    rx => rx,
    seg => open,
    dp => open,
    an => open );

clk_process: process
begin
    clk <= '0';
    wait for clk_period/2;
    clk <= '1';
    wait for clk_period/2;
    end process;
    
stim_proc: process
begin
    wait for clk_period;
    pwm <= '1';
    wait for 37.5ms;
    pwm <= '0';
    wait for 11.5ms;
    pwm <= '1';
    wait for 10ms;
    pwm <= '0';
    wait for 39ms;
end process stim_proc;

end Behavioral;
