library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity audio_codec is
    port (
        -- WM8731 pins
        AUD_BCLK: out std_logic;  -- Codec bitstream clock
        AUD_XCK: out std_logic;   -- Codec chip clock
        AUD_ADCLRCK: out std_logic; -- Codec ADC LR Clock
        AUD_ADCDAT: in std_logic; -- Codec ADC Data
        AUD_DACLRCK: out std_logic; -- Codec DAC LR Clock
        AUD_DACDAT: out std_logic; -- Codec DAC Data

        -- FPGA pins
        clock_50: in std_logic; -- FPGA clock
        FPGA_I2C_SCLK: out std_logic; -- I2C clock
        FPGA_I2C_SDAT: inout std_logic -- I2C data
    );
end audio_codec;

architecture main of audio_codec is
    signal clock_12: std_logic;
    -- signal internal_ADCLRCK: std_logic;
    -- signal internal_DACLRCK: std_logic;
	 signal internal_LRCK: std_logic;
    signal aud_data: std_logic_vector(31 downto 0);

    -- I2C control signals
    signal i2c_busy: std_logic;
    signal i2c_done: std_logic;
    signal i2c_send_flag: std_logic := '0';
    signal i2c_addr: std_logic_vector(7 downto 0);
    signal i2c_data: std_logic_vector(15 downto 0);

    -- I2C Initialization control
    signal i2c_init_done: std_logic := '0';

    component clock_divider is
        port (
            clk_in  : in  std_logic;
            clk_out : out std_logic
        );
    end component clock_divider;

    component i2c is
        port(
            i2c_busy: out std_logic;
            i2c_scl: out std_logic;
            i2c_send_flag: in std_logic;
            i2c_sda: inout std_logic;
            i2c_addr: in std_logic_vector(7 downto 0);
            i2c_done: out std_logic;
            i2c_data: in std_logic_vector(15 downto 0);
            i2c_clock_50: in std_logic
        );
    end component i2c;

    component i2c_initializer is
        port (
            clk          : in std_logic;  -- System clock
            start        : in std_logic;  -- Signal to start initialization
            i2c_busy     : in std_logic;  -- I2C busy signal
            i2c_done     : in std_logic;  -- I2C transaction done signal
            i2c_send_flag: out std_logic; -- Flag to initiate I2C send
            i2c_addr     : out std_logic_vector(7 downto 0); -- I2C address
            i2c_data     : out std_logic_vector(15 downto 0); -- I2C data
            init_done    : out std_logic  -- Initialization done signal
        );
    end component i2c_initializer;

begin
    -- Instantiate clock divider to generate 12 MHz clock from 50 MHz input clock
    u0: clock_divider
        port map (
            clk_in  => clock_50,
            clk_out => clock_12
        );

    -- Instantiate I2C component to communicate with the WM8731 codec
    WM8731: i2c
        port map(
            i2c_busy      => i2c_busy,
            i2c_scl       => FPGA_I2C_SCLK,
            i2c_send_flag => i2c_send_flag,
            i2c_sda       => FPGA_I2C_SDAT,
            i2c_addr      => i2c_addr,
            i2c_done      => i2c_done,
            i2c_data      => i2c_data,
            i2c_clock_50  => clock_50
        );

    -- Instantiate I2C initializer component
    I2C_INIT: i2c_initializer
        port map(
            clk          => clock_50,
            start        => '1',  -- Always start initialization (could be controlled by a signal)
            i2c_busy     => i2c_busy,
            i2c_done     => i2c_done,
            i2c_send_flag=> i2c_send_flag,
            i2c_addr     => i2c_addr,
            i2c_data     => i2c_data,
            init_done    => i2c_init_done
        );

    -- Assign clocks to the WM8731 codec
    AUD_XCK <= clock_12;
    AUD_BCLK <= clock_12;  
    AUD_ADCLRCK <= internal_LRCK;
    AUD_DACLRCK <= internal_LRCK;

    -- Generate internal audio clocks
    process (clock_12)
    begin
        if rising_edge(clock_12) then
		      internal_LRCK <= not internal_LRCK;
            -- internal_DACLRCK <= not internal_DACLRCK;
            -- internal_ADCLRCK <= not internal_ADCLRCK;
        end if;
    end process;

    -- Process audio data
--    process (internal_ADCLRCK, internal_DACLRCK)
--    begin
--        if rising_edge(internal_ADCLRCK) then
--            aud_data(31 downto 16) <= (others => AUD_ADCDAT); -- Capture audio input
--            aud_data(15 downto 0) <= (others => AUD_ADCDAT);
--        end if;
--        if rising_edge(internal_DACLRCK) then
--            AUD_DACDAT <= aud_data(15); -- Output audio data
--        end if;
--    end process;
      AUD_DACDAT <= AUD_ADCDAT;

end main;
