library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity clock_divider is
    port (
        clk_in    : in  std_logic;
        clk_out   : out std_logic
    );
end clock_divider;

architecture Behavioral of clock_divider is
    signal counter : unsigned(3 downto 0) := (others => '0');
    signal clk_reg : std_logic := '0';
begin
    process(clk_in)
    begin
        if rising_edge(clk_in) then
            if counter = 4 then
                counter <= (others => '0');
                clk_reg <= not clk_reg;
            else
                counter <= counter + 1;
            end if;
        end if;
    end process;
    clk_out <= clk_reg;
end Behavioral;
