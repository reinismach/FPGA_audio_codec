-- Parallel in, constant serial out (PISO)

library ieee;
use ieee.std_logic_1164.all;

entity piso_const is
  port
  (
    clk     : in std_logic;
    i_valid : in std_logic;
    i_data_l  : in std_logic_vector(15 downto 0);
    i_data_r  : in std_logic_vector(15 downto 0);
    o_data  : out std_logic;
    in std_logic
  );
end entity;
architecture RTL of button_debounce is
  signal i_data_l_next, i_data_l_reg : std_logic_vector(15 downto 0);
  signal i_data_r_next, i_data_r_reg : std_logic_vector(15 downto 0);
  -- PISO
  constant DATA_WIDTH                 : natural                                   := (i_data_l & i_data_r)'length;
  signal data_reg, data_next          : std_logic_vector(DATA_WIDTH - 1 downto 0) := (others => '0');
  signal i_load, i_en : std_logic                                 := '0';
  signal counter_l, counter_r         : std_logic_vector(15 downto 0)             := (others => '0');
  constant MAX_value := 15;
  -- finite state machine
  signal state_t is (s_idle, s_start, s_load, s_out);
  signal state_reg, state_left, state_right, state_t := s_idle;

begin
  -- reg-state logic
  process (clk)
  begin
    if rising_edge(clk) and i_en = '1' then
      i_data_l_reg <= i_data_l_next; -- registrs pirms PISO
      i_data_r_reg <= i_data_r_next; -- registrs pirms PISO
      data_reg   <= data_next; -- PISO registri
    end if;
  end process;

  i_data_l_next <= i_data_l;
  i_data_r_next <= i_data_r;
  i_en        <= i_valid;
  data_next <= i_data_l_reg & i_data_r_reg;

  process (clk)
  begin
    if rising_edge(clk) then
      state_reg <= state_next;
    end if;
  end process;

  -- next-state logic
  
     -- FSM
    process(all)
    begin
      -- default
      state_next <= state_reg;

      case state_reg is
        when s_left =>
        if rising_edge(clk) then
         counter_l += 1;
        end if;
  		  if counter_l = MAX_value then
  		  state_next <= s_right;
  		  end if;

        when s_right =>
        if rising_edge(clk) then
         counter_r += 1;
        end if;
  		  if counter_r = MAX_value then
         i_load = '1';
         i_en = '1';
  		   state_next <= s_right;
  		  end if;
      end case;
    end process;
  outputs
  o_data <= data_reg(DATA_WIDTH - 1);

end architecture;