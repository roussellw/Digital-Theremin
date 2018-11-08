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
-- Dependencies: mux7seg.vhd
-- 
-- Revision: 0.02 - Drastically changed sensitivity and counter settings
-- Revision: 0.01 - File Created
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
end instrument_shell;

architecture Behavioral of instrument_shell is

--7 segment display component
component mux7seg is
Port ( clk : in  STD_LOGIC;									-- runs on a fast (1 MHz or so) clock
           y0, y1, y2, y3 : in  STD_LOGIC_VECTOR (3 downto 0);	-- digits
           dp_set : in std_logic_vector(3 downto 0);            -- decimal points
           seg : out  STD_LOGIC_VECTOR(0 to 6);				    -- segments (a...g)
           dp : out std_logic;
           an : out  STD_LOGIC_VECTOR (3 downto 0);
           flat: in std_logic );	      -- anodes
end component mux7seg;

--DDS Core
COMPONENT dds_instrument
  PORT (
    aclk : IN STD_LOGIC;
    s_axis_phase_tvalid : IN STD_LOGIC;
    s_axis_phase_tdata : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    m_axis_data_tvalid : OUT STD_LOGIC;
    m_axis_data_tdata : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
  );
END COMPONENT;

--pmod_da2
COMPONENT pmod_da2
    PORT (
        aclk: in std_logic;
        take_sample: in std_logic;
        da_data: in std_logic_vector(15 downto 0);
        spi_sclk: out std_logic;
        spi_cs: out std_logic;
        spi_sdata: out std_logic);
END COMPONENT;


-------------------------------------------------
-- SIGNAL DECLARATIONS 

constant ACLK_DIVIDER_VALUE: integer := 50; --100;
constant ACOUNT_LEN: integer := integer(ceil( log2( real(ACLK_DIVIDER_VALUE) ) ));
signal aclkdiv: unsigned(ACOUNT_LEN-1 downto 0) := (others => '0');  -- clock divider counter
signal aclk_unbuf: std_logic := '0';    -- unbuffered serial clock 
signal aclk: std_logic := '0';          -- internal serial clock

constant sensitivity: integer := 147; -- 37;
signal distance: unsigned(11  downto 0) := (others => '0'); --(9 downto 0) := (others => '0');
signal x: unsigned(7 downto 0) := (others => '0'); --(5 downto 0) := (others => '0');

--FSM Signals
type state_type is (idle, counting, update, reset);
signal curr_state, next_state: state_type;
signal ctr_en, ctr_clear, write_en, count_en: std_logic:= '0';

--Lookup table counter
signal i: unsigned(11 downto 0):= (others => '0');
--signal i_updated: unsigned(11 downto 0):= (others => '0');
constant max_addra: integer := 255;
signal M: unsigned(11 downto 0):= (others => '0');

--DDS Core signals and DA2
signal m_axis_data_tdata: std_logic_vector(15 downto 0) := (others => '0');
signal take_sample: std_logic := '0';
signal sample_len: integer := 50;
signal phi: unsigned(11 downto 0) := (others => '0');
signal padded_phi: unsigned(15 downto 0) := (others => '0');
signal sample_ctr: unsigned(15 downto 0) := (others => '0');
signal data_out: std_logic_vector(15 downto 0) := (others => '0');

--metronome
signal count: unsigned(11 downto 0) := (others => '0');
constant count_max: integer := 4096;

--Display signals
signal note: std_logic_vector(3 downto 0) := (others => '0');
signal key: std_logic_vector(3 downto 0) := (others => '0');
signal flat: std_logic := '0';
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

    if rising_edge(aclk) then                      --Do this on the falling edge to increment each microsecond
        if ctr_en = '1' then
            if x = "10010010" then                 --Introduced on revision #2, NEW FILE CREATED
                x <= "00000000";                   --if counter reaches 147 (1 in) then increment distance
                distance <= distance + 1;
            elsif x < "10010010" then
                x <= x + 1;
            end if;
        elsif write_en = '1' then
                i <= distance;
        elsif ctr_clear = '1' then
                x <= (others => '0');
                distance <= (others => '0');
        end if;
    end if;
end process counter;

step_size: process(aclk)
begin
key <= "1011";
flat <= '0';
    if rising_edge(aclk) then
        case (i) is
            when "000000000110" => M <= "000001011111"; note <= "1011"; flat <= '1';    --note is B flat (hexidecimal 11)
            when "000000000111" => M <= "000001100101"; note <= "1011"; key <= "1011";      --note is B 
            when "000000001000" => M <= "000001101011"; note <= "1100"; key <= "1011";      --note is C
            when "000000001001" => M <= "000001110001"; note <= "1101"; flat <= '1';    --D flat
            when "000000001010" => M <= "000001111000"; note <= "1101"; key <= "1011";      --D
            when "000000001011" => M <= "000001111111"; note <= "1110"; flat <= '1';    --E flat
            when "000000001100" => M <= "000010000111"; note <= "1110"; key <= "1011";      --E
            when "000000001101" => M <= "000010001111"; note <= "1111"; key <= "1011";      --F
            when "000000001110" => M <= "000010011000"; note <= "0110"; flat <= '1';    --G flat
            when "000000001111" => M <= "000010100000"; note <= "0110"; key <= "1011";      --G  
            when "000000010000" => M <= "000010101010"; note <= "1010"; flat <= '1';    --A flat
            when "000000010001" => M <= "000010110100"; note <= "1010"; key <= "1011";      --A
            when "000000010010" => M <= "000010111111"; note <= "1011"; flat <= '1';    --B flat
            when "000000010011" => M <= "000011001010"; note <= "1011"; key <= "1011";      --B
            when "000000010100" => M <= "000011010110"; note <= "1100"; key <= "1011";      --C
            when "000000010101" => M <= "000011100011"; note <= "1101"; flat <= '1';    --D flat
            when "000000010110" => M <= "000011110000"; note <= "1101"; key <= "1011";      --D
            when "000000010111" => M <= "000011111111"; note <= "1110"; flat <= '1';    --E flat
            when "000000011000" => M <= "000100001110"; note <= "1110"; key <= "1011";      --E
            when others => M <= (others => '0'); note <= "0000"; flat <= '1';               --No Note
         end case;
    end if;
end process step_size;

--Process to index phi for the DDS Core
index: process(aclk)
begin
    if rising_edge(aclk) then
        if (stop_note = '0') then
            if take_sample = '1' then
                phi <= phi + M;
            end if;
        end if;
    end if;
end process index;

padded_phi <= "0000" & phi; --Pad phi so its 16 bits

StateUpdate: process(aclk)
begin
    if rising_edge(aclk) then
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
        when update => write_en <= '1'; count_en <= '1';
            next_state <= reset;
        when reset => ctr_clear <= '1';
            next_state <= idle;
     end case;
end process StateMemory;

DA_sample: process(aclk)
begin
    if rising_edge(aclk) then
        if sample_ctr = sample_len-1 then
            sample_ctr <= (others => '0');
            take_sample <= '1';
        else
            sample_ctr <= sample_ctr + 1;
            take_sample <= '0';
        end if;
    end if;
end process DA_sample;
        
metronome: process(aclk)
begin
    if rising_edge(aclk) then
        if take_sample = '1' then
            if (count < count_max) then
                count <= count + 1;
            else
                count <= (others => '0');
        end if;
    end if;
  end if;
end process; 

sound: process(mclk, stop_note, m_axis_data_tdata, count, metro_on)
begin    
    if (stop_note = '0') then
        data_out <= "0000" & NOT(m_axis_data_tdata(11)) & m_axis_data_tdata(10 downto 0);
    elsif (metro_on = '1') then
        data_out <= "0000" & std_logic_vector(count);
    else
        data_out <= (others => '0');
    end if;
end process sound;

--MUX7SEG port map
-- Instantiate the multiplexed seven segment display
display: mux7seg port map( 
            clk => aclk,				-- runs on the 1 MHz clock
           	y3 => std_logic_vector(i(7 downto 4)), 		        
           	y2 => std_logic_vector(i(3 downto 0)),       -- counter output  	
           	y1 => note, 		
           	y0 => key,		
           	dp_set => "0000",           -- decimal points off
          	seg => seg,
          	dp => dp,
           	an => an,
           	flat => flat );	

--DDS Core port map
--Instantiate the DDS Core
your_instance_name : dds_instrument
  PORT MAP (
    aclk => aclk,
    s_axis_phase_tvalid => '1',
    s_axis_phase_tdata => std_logic_vector(padded_phi),
    m_axis_data_tvalid => open,
    m_axis_data_tdata => m_axis_data_tdata
    
  );

--pmod_da2 port map
--Instantiate the pmod_da2
DA: pmod_da2
Port map (
        aclk => aclk,       
        take_sample => take_sample,
	 	da_data => data_out,
	 	spi_sclk => spi_sclk,
	 	spi_cs => spi_cs,
	 	spi_sdata => spi_sdata );

end Behavioral;
