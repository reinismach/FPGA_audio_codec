-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "06/06/2024 14:56:01"

-- 
-- Device: Altera 5CSXFC6D6F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	audio_codec IS
    PORT (
	AUD_BCLK : BUFFER std_logic;
	AUD_XCK : BUFFER std_logic;
	AUD_ADCLRCK : BUFFER std_logic;
	AUD_ADCDAT : IN std_logic;
	AUD_DACLRCK : BUFFER std_logic;
	AUD_DACDAT : BUFFER std_logic;
	clock_50 : IN std_logic;
	key : IN std_logic_vector(3 DOWNTO 0);
	ledr : BUFFER std_logic_vector(9 DOWNTO 0);
	sw : IN std_logic_vector(9 DOWNTO 0);
	FPGA_I2C_SCLK : BUFFER std_logic;
	FPGA_I2C_SDAT : BUFFER std_logic
	);
END audio_codec;

-- Design Ports Information
-- AUD_BCLK	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUD_XCK	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUD_ADCLRCK	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUD_DACLRCK	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUD_DACDAT	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[0]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[1]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[2]	=>  Location: PIN_AC23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[3]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[4]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[5]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[6]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[7]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[8]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[9]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[5]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[6]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[7]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[8]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[9]	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FPGA_I2C_SCLK	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FPGA_I2C_SDAT	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock_50	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUD_ADCDAT	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[2]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[3]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[0]	=>  Location: PIN_AJ4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[1]	=>  Location: PIN_AK4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF audio_codec IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_AUD_BCLK : std_logic;
SIGNAL ww_AUD_XCK : std_logic;
SIGNAL ww_AUD_ADCLRCK : std_logic;
SIGNAL ww_AUD_ADCDAT : std_logic;
SIGNAL ww_AUD_DACLRCK : std_logic;
SIGNAL ww_AUD_DACDAT : std_logic;
SIGNAL ww_clock_50 : std_logic;
SIGNAL ww_key : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ledr : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_sw : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_FPGA_I2C_SCLK : std_logic;
SIGNAL ww_FPGA_I2C_SDAT : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \sw[8]~input_o\ : std_logic;
SIGNAL \sw[9]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock_50~input_o\ : std_logic;
SIGNAL \clock_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \WM8731|Add0~6\ : std_logic;
SIGNAL \WM8731|Add0~9_sumout\ : std_logic;
SIGNAL \WM8731|Add0~10\ : std_logic;
SIGNAL \WM8731|Add0~1_sumout\ : std_logic;
SIGNAL \WM8731|clk_prs[2]~DUPLICATE_q\ : std_logic;
SIGNAL \WM8731|Add0~2\ : std_logic;
SIGNAL \WM8731|Add0~21_sumout\ : std_logic;
SIGNAL \WM8731|Add0~22\ : std_logic;
SIGNAL \WM8731|Add0~17_sumout\ : std_logic;
SIGNAL \WM8731|Add0~18\ : std_logic;
SIGNAL \WM8731|Add0~25_sumout\ : std_logic;
SIGNAL \WM8731|Add0~26\ : std_logic;
SIGNAL \WM8731|Add0~13_sumout\ : std_logic;
SIGNAL \WM8731|Add0~14\ : std_logic;
SIGNAL \WM8731|Add0~33_sumout\ : std_logic;
SIGNAL \WM8731|Add0~34\ : std_logic;
SIGNAL \WM8731|Add0~29_sumout\ : std_logic;
SIGNAL \WM8731|clk_prs[4]~DUPLICATE_q\ : std_logic;
SIGNAL \WM8731|LessThan1~0_combout\ : std_logic;
SIGNAL \WM8731|LessThan0~0_combout\ : std_logic;
SIGNAL \WM8731|Add0~5_sumout\ : std_logic;
SIGNAL \WM8731|clk_prs[0]~DUPLICATE_q\ : std_logic;
SIGNAL \WM8731|Equal0~0_combout\ : std_logic;
SIGNAL \WM8731|Equal0~1_combout\ : std_logic;
SIGNAL \WM8731|ack_en~DUPLICATE_q\ : std_logic;
SIGNAL \WM8731|clk_prs[7]~DUPLICATE_q\ : std_logic;
SIGNAL \WM8731|Equal1~0_combout\ : std_logic;
SIGNAL \WM8731|clk_en~DUPLICATE_q\ : std_logic;
SIGNAL \FPGA_I2C_SDAT~input_o\ : std_logic;
SIGNAL \WM8731|clk_en~q\ : std_logic;
SIGNAL \WM8731|ack_en~q\ : std_logic;
SIGNAL \WM8731|i2c_fsm.st7~q\ : std_logic;
SIGNAL \WM8731|i2c_fsm.st3~DUPLICATE_q\ : std_logic;
SIGNAL \WM8731|i2c_fsm.st5~q\ : std_logic;
SIGNAL \WM8731|i2c_fsm~17_combout\ : std_logic;
SIGNAL \WM8731|i2c_fsm.st5~DUPLICATE_q\ : std_logic;
SIGNAL \WM8731|i2c_fsm~14_combout\ : std_logic;
SIGNAL \key[2]~input_o\ : std_logic;
SIGNAL \WM8731|i2c_fsm~25_combout\ : std_logic;
SIGNAL \WM8731|i2c_fsm.st8~q\ : std_logic;
SIGNAL \WM8731|i2c_fsm~22_combout\ : std_logic;
SIGNAL \WM8731|WideNor0~combout\ : std_logic;
SIGNAL \WM8731|i2c_fsm~23_combout\ : std_logic;
SIGNAL \WM8731|i2c_fsm.st0~q\ : std_logic;
SIGNAL \WM8731|i2c_busy~0_combout\ : std_logic;
SIGNAL \WM8731|i2c_busy~q\ : std_logic;
SIGNAL \key[1]~input_o\ : std_logic;
SIGNAL \key[3]~input_o\ : std_logic;
SIGNAL \key[0]~input_o\ : std_logic;
SIGNAL \WM_i2c_send_flag~0_combout\ : std_logic;
SIGNAL \WM_i2c_send_flag~q\ : std_logic;
SIGNAL \WM8731|i2c_fsm~19_combout\ : std_logic;
SIGNAL \WM8731|i2c_fsm.st1~q\ : std_logic;
SIGNAL \WM8731|i2c_fsm.st2~q\ : std_logic;
SIGNAL \WM8731|i2c_fsm~15_combout\ : std_logic;
SIGNAL \WM8731|i2c_fsm.st2~DUPLICATE_q\ : std_logic;
SIGNAL \WM8731|i2c_fsm~16_combout\ : std_logic;
SIGNAL \WM8731|i2c_fsm.st3~q\ : std_logic;
SIGNAL \WM8731|WideOr2~0_combout\ : std_logic;
SIGNAL \WM8731|i2c_fsm.st1~DUPLICATE_q\ : std_logic;
SIGNAL \WM8731|data_index[2]~3_combout\ : std_logic;
SIGNAL \WM8731|data_index[2]~1_combout\ : std_logic;
SIGNAL \WM8731|Add1~0_combout\ : std_logic;
SIGNAL \WM8731|data_index~6_combout\ : std_logic;
SIGNAL \WM8731|data_index[2]~9_combout\ : std_logic;
SIGNAL \WM8731|data_index[2]~5_combout\ : std_logic;
SIGNAL \WM8731|data_index[2]~2_combout\ : std_logic;
SIGNAL \WM8731|Add1~1_combout\ : std_logic;
SIGNAL \WM8731|data_index~7_combout\ : std_logic;
SIGNAL \WM8731|data_index[2]~0_combout\ : std_logic;
SIGNAL \WM8731|data_index~4_combout\ : std_logic;
SIGNAL \WM8731|data_index~10_combout\ : std_logic;
SIGNAL \WM8731|data_index~11_combout\ : std_logic;
SIGNAL \WM8731|data_index~12_combout\ : std_logic;
SIGNAL \WM8731|data_index~8_combout\ : std_logic;
SIGNAL \WM8731|get_ack~1_combout\ : std_logic;
SIGNAL \WM8731|get_ack~0_combout\ : std_logic;
SIGNAL \WM8731|get_ack~2_combout\ : std_logic;
SIGNAL \WM8731|get_ack~q\ : std_logic;
SIGNAL \WM8731|i2c_fsm~20_combout\ : std_logic;
SIGNAL \WM8731|i2c_fsm~21_combout\ : std_logic;
SIGNAL \WM8731|i2c_fsm.st6~q\ : std_logic;
SIGNAL \WM8731|i2c_fsm~18_combout\ : std_logic;
SIGNAL \WM8731|i2c_fsm.st7~DUPLICATE_q\ : std_logic;
SIGNAL \WM8731|i2c_sda~1_combout\ : std_logic;
SIGNAL \WM8731|i2c_fsm~24_combout\ : std_logic;
SIGNAL \WM8731|i2c_fsm.st4~q\ : std_logic;
SIGNAL \WM8731|Selector25~0_combout\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \WM_i2c_data~8_combout\ : std_logic;
SIGNAL \WM_i2c_data[12]~1_combout\ : std_logic;
SIGNAL \WM_i2c_data~7_combout\ : std_logic;
SIGNAL \WM_i2c_data~6_combout\ : std_logic;
SIGNAL \WM_i2c_data~4_combout\ : std_logic;
SIGNAL \WM8731|Mux1~2_combout\ : std_logic;
SIGNAL \WM_i2c_data~9_combout\ : std_logic;
SIGNAL \WM8731|Mux1~3_combout\ : std_logic;
SIGNAL \WM_i2c_data~5_combout\ : std_logic;
SIGNAL \WM8731|Mux1~1_combout\ : std_logic;
SIGNAL \WM_i2c_data~3_combout\ : std_logic;
SIGNAL \WM_i2c_data~0_combout\ : std_logic;
SIGNAL \WM_i2c_data~2_combout\ : std_logic;
SIGNAL \WM8731|Mux1~0_combout\ : std_logic;
SIGNAL \WM8731|Mux1~4_combout\ : std_logic;
SIGNAL \WM8731|Selector25~1_combout\ : std_logic;
SIGNAL \WM8731|i2c_sda~reg0_q\ : std_logic;
SIGNAL \WM8731|Selector26~0_combout\ : std_logic;
SIGNAL \WM8731|i2c_sda~en_q\ : std_logic;
SIGNAL \u0|counter[1]~1_combout\ : std_logic;
SIGNAL \u0|counter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \u0|counter[2]~DUPLICATE_q\ : std_logic;
SIGNAL \u0|counter[3]~3_combout\ : std_logic;
SIGNAL \u0|counter[3]~DUPLICATE_q\ : std_logic;
SIGNAL \u0|counter~0_combout\ : std_logic;
SIGNAL \u0|counter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \u0|counter~2_combout\ : std_logic;
SIGNAL \u0|clk_reg~0_combout\ : std_logic;
SIGNAL \u0|clk_reg~feeder_combout\ : std_logic;
SIGNAL \u0|clk_reg~q\ : std_logic;
SIGNAL \internal_ADCLRCK~0_combout\ : std_logic;
SIGNAL \internal_ADCLRCK~q\ : std_logic;
SIGNAL \internal_DACLRCK~0_combout\ : std_logic;
SIGNAL \internal_DACLRCK~feeder_combout\ : std_logic;
SIGNAL \internal_DACLRCK~q\ : std_logic;
SIGNAL \AUD_ADCDAT~input_o\ : std_logic;
SIGNAL \AUD_DACDAT~reg0_q\ : std_logic;
SIGNAL \WM8731|LessThan1~1_combout\ : std_logic;
SIGNAL \WM8731|clk_i2c~q\ : std_logic;
SIGNAL \WM8731|i2c_clk_en~0_combout\ : std_logic;
SIGNAL \WM8731|i2c_clk_en~1_combout\ : std_logic;
SIGNAL \WM8731|i2c_clk_en~q\ : std_logic;
SIGNAL \WM8731|i2c_scl~0_combout\ : std_logic;
SIGNAL \WM8731|i2c_scl~q\ : std_logic;
SIGNAL \WM8731|clk_prs\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u0|counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL aud_data : std_logic_vector(31 DOWNTO 0);
SIGNAL WM_i2c_data : std_logic_vector(15 DOWNTO 0);
SIGNAL \WM8731|data_index\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \WM8731|ALT_INV_i2c_fsm.st1~DUPLICATE_q\ : std_logic;
SIGNAL \WM8731|ALT_INV_i2c_fsm.st7~DUPLICATE_q\ : std_logic;
SIGNAL \WM8731|ALT_INV_i2c_fsm.st5~DUPLICATE_q\ : std_logic;
SIGNAL \WM8731|ALT_INV_i2c_fsm.st3~DUPLICATE_q\ : std_logic;
SIGNAL \WM8731|ALT_INV_ack_en~DUPLICATE_q\ : std_logic;
SIGNAL \WM8731|ALT_INV_i2c_fsm.st2~DUPLICATE_q\ : std_logic;
SIGNAL \WM8731|ALT_INV_clk_en~DUPLICATE_q\ : std_logic;
SIGNAL \u0|ALT_INV_counter[3]~DUPLICATE_q\ : std_logic;
SIGNAL \u0|ALT_INV_counter[2]~DUPLICATE_q\ : std_logic;
SIGNAL \u0|ALT_INV_counter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \u0|ALT_INV_counter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \WM8731|ALT_INV_clk_prs[7]~DUPLICATE_q\ : std_logic;
SIGNAL \WM8731|ALT_INV_clk_prs[4]~DUPLICATE_q\ : std_logic;
SIGNAL \WM8731|ALT_INV_clk_prs[0]~DUPLICATE_q\ : std_logic;
SIGNAL \WM8731|ALT_INV_clk_prs[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_sw[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_FPGA_I2C_SDAT~input_o\ : std_logic;
SIGNAL \ALT_INV_internal_DACLRCK~0_combout\ : std_logic;
SIGNAL \WM8731|ALT_INV_data_index~12_combout\ : std_logic;
SIGNAL \WM8731|ALT_INV_data_index~11_combout\ : std_logic;
SIGNAL \WM8731|ALT_INV_data_index~10_combout\ : std_logic;
SIGNAL \WM8731|ALT_INV_data_index[2]~9_combout\ : std_logic;
SIGNAL \WM8731|ALT_INV_Add1~1_combout\ : std_logic;
SIGNAL \WM8731|ALT_INV_Add1~0_combout\ : std_logic;
SIGNAL \WM8731|ALT_INV_data_index[2]~3_combout\ : std_logic;
SIGNAL \WM8731|ALT_INV_WideOr2~0_combout\ : std_logic;
SIGNAL \WM8731|ALT_INV_data_index[2]~2_combout\ : std_logic;
SIGNAL \WM8731|ALT_INV_i2c_busy~q\ : std_logic;
SIGNAL \WM8731|ALT_INV_data_index[2]~1_combout\ : std_logic;
SIGNAL \WM8731|ALT_INV_get_ack~1_combout\ : std_logic;
SIGNAL \WM8731|ALT_INV_get_ack~0_combout\ : std_logic;
SIGNAL \WM8731|ALT_INV_data_index[2]~0_combout\ : std_logic;
SIGNAL \WM8731|ALT_INV_Selector25~0_combout\ : std_logic;
SIGNAL \WM8731|ALT_INV_Mux1~4_combout\ : std_logic;
SIGNAL \WM8731|ALT_INV_data_index\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \WM8731|ALT_INV_Mux1~3_combout\ : std_logic;
SIGNAL ALT_INV_WM_i2c_data : std_logic_vector(12 DOWNTO 0);
SIGNAL \WM8731|ALT_INV_Mux1~2_combout\ : std_logic;
SIGNAL \WM8731|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \WM8731|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \WM8731|ALT_INV_i2c_fsm~22_combout\ : std_logic;
SIGNAL \WM8731|ALT_INV_i2c_fsm.st8~q\ : std_logic;
SIGNAL \WM8731|ALT_INV_i2c_fsm~20_combout\ : std_logic;
SIGNAL \WM8731|ALT_INV_i2c_sda~1_combout\ : std_logic;
SIGNAL \ALT_INV_WM_i2c_send_flag~q\ : std_logic;
SIGNAL \WM8731|ALT_INV_get_ack~q\ : std_logic;
SIGNAL \WM8731|ALT_INV_i2c_fsm~14_combout\ : std_logic;
SIGNAL \WM8731|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \WM8731|ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \WM8731|ALT_INV_i2c_clk_en~0_combout\ : std_logic;
SIGNAL \WM8731|ALT_INV_i2c_fsm.st4~q\ : std_logic;
SIGNAL \WM8731|ALT_INV_i2c_fsm.st0~q\ : std_logic;
SIGNAL \WM8731|ALT_INV_i2c_fsm.st6~q\ : std_logic;
SIGNAL \WM8731|ALT_INV_i2c_fsm.st1~q\ : std_logic;
SIGNAL \WM8731|ALT_INV_WideNor0~combout\ : std_logic;
SIGNAL \WM8731|ALT_INV_i2c_fsm.st7~q\ : std_logic;
SIGNAL \WM8731|ALT_INV_i2c_fsm.st5~q\ : std_logic;
SIGNAL \WM8731|ALT_INV_i2c_fsm.st3~q\ : std_logic;
SIGNAL \WM8731|ALT_INV_ack_en~q\ : std_logic;
SIGNAL \WM8731|ALT_INV_i2c_fsm.st2~q\ : std_logic;
SIGNAL \WM8731|ALT_INV_clk_en~q\ : std_logic;
SIGNAL \WM8731|ALT_INV_clk_i2c~q\ : std_logic;
SIGNAL \WM8731|ALT_INV_i2c_clk_en~q\ : std_logic;
SIGNAL \u0|ALT_INV_clk_reg~0_combout\ : std_logic;
SIGNAL \u0|ALT_INV_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_internal_DACLRCK~q\ : std_logic;
SIGNAL \ALT_INV_internal_ADCLRCK~q\ : std_logic;
SIGNAL \u0|ALT_INV_clk_reg~q\ : std_logic;
SIGNAL \WM8731|ALT_INV_clk_prs\ : std_logic_vector(8 DOWNTO 0);

BEGIN

AUD_BCLK <= ww_AUD_BCLK;
AUD_XCK <= ww_AUD_XCK;
AUD_ADCLRCK <= ww_AUD_ADCLRCK;
ww_AUD_ADCDAT <= AUD_ADCDAT;
AUD_DACLRCK <= ww_AUD_DACLRCK;
AUD_DACDAT <= ww_AUD_DACDAT;
ww_clock_50 <= clock_50;
ww_key <= key;
ledr <= ww_ledr;
ww_sw <= sw;
FPGA_I2C_SCLK <= ww_FPGA_I2C_SCLK;
FPGA_I2C_SDAT <= ww_FPGA_I2C_SDAT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\WM8731|ALT_INV_i2c_fsm.st1~DUPLICATE_q\ <= NOT \WM8731|i2c_fsm.st1~DUPLICATE_q\;
\WM8731|ALT_INV_i2c_fsm.st7~DUPLICATE_q\ <= NOT \WM8731|i2c_fsm.st7~DUPLICATE_q\;
\WM8731|ALT_INV_i2c_fsm.st5~DUPLICATE_q\ <= NOT \WM8731|i2c_fsm.st5~DUPLICATE_q\;
\WM8731|ALT_INV_i2c_fsm.st3~DUPLICATE_q\ <= NOT \WM8731|i2c_fsm.st3~DUPLICATE_q\;
\WM8731|ALT_INV_ack_en~DUPLICATE_q\ <= NOT \WM8731|ack_en~DUPLICATE_q\;
\WM8731|ALT_INV_i2c_fsm.st2~DUPLICATE_q\ <= NOT \WM8731|i2c_fsm.st2~DUPLICATE_q\;
\WM8731|ALT_INV_clk_en~DUPLICATE_q\ <= NOT \WM8731|clk_en~DUPLICATE_q\;
\u0|ALT_INV_counter[3]~DUPLICATE_q\ <= NOT \u0|counter[3]~DUPLICATE_q\;
\u0|ALT_INV_counter[2]~DUPLICATE_q\ <= NOT \u0|counter[2]~DUPLICATE_q\;
\u0|ALT_INV_counter[1]~DUPLICATE_q\ <= NOT \u0|counter[1]~DUPLICATE_q\;
\u0|ALT_INV_counter[0]~DUPLICATE_q\ <= NOT \u0|counter[0]~DUPLICATE_q\;
\WM8731|ALT_INV_clk_prs[7]~DUPLICATE_q\ <= NOT \WM8731|clk_prs[7]~DUPLICATE_q\;
\WM8731|ALT_INV_clk_prs[4]~DUPLICATE_q\ <= NOT \WM8731|clk_prs[4]~DUPLICATE_q\;
\WM8731|ALT_INV_clk_prs[0]~DUPLICATE_q\ <= NOT \WM8731|clk_prs[0]~DUPLICATE_q\;
\WM8731|ALT_INV_clk_prs[2]~DUPLICATE_q\ <= NOT \WM8731|clk_prs[2]~DUPLICATE_q\;
\ALT_INV_sw[0]~input_o\ <= NOT \sw[0]~input_o\;
\ALT_INV_key[1]~input_o\ <= NOT \key[1]~input_o\;
\ALT_INV_key[0]~input_o\ <= NOT \key[0]~input_o\;
\ALT_INV_key[3]~input_o\ <= NOT \key[3]~input_o\;
\ALT_INV_key[2]~input_o\ <= NOT \key[2]~input_o\;
\ALT_INV_FPGA_I2C_SDAT~input_o\ <= NOT \FPGA_I2C_SDAT~input_o\;
\ALT_INV_internal_DACLRCK~0_combout\ <= NOT \internal_DACLRCK~0_combout\;
\WM8731|ALT_INV_data_index~12_combout\ <= NOT \WM8731|data_index~12_combout\;
\WM8731|ALT_INV_data_index~11_combout\ <= NOT \WM8731|data_index~11_combout\;
\WM8731|ALT_INV_data_index~10_combout\ <= NOT \WM8731|data_index~10_combout\;
\WM8731|ALT_INV_data_index[2]~9_combout\ <= NOT \WM8731|data_index[2]~9_combout\;
\WM8731|ALT_INV_Add1~1_combout\ <= NOT \WM8731|Add1~1_combout\;
\WM8731|ALT_INV_Add1~0_combout\ <= NOT \WM8731|Add1~0_combout\;
\WM8731|ALT_INV_data_index[2]~3_combout\ <= NOT \WM8731|data_index[2]~3_combout\;
\WM8731|ALT_INV_WideOr2~0_combout\ <= NOT \WM8731|WideOr2~0_combout\;
\WM8731|ALT_INV_data_index[2]~2_combout\ <= NOT \WM8731|data_index[2]~2_combout\;
\WM8731|ALT_INV_i2c_busy~q\ <= NOT \WM8731|i2c_busy~q\;
\WM8731|ALT_INV_data_index[2]~1_combout\ <= NOT \WM8731|data_index[2]~1_combout\;
\WM8731|ALT_INV_get_ack~1_combout\ <= NOT \WM8731|get_ack~1_combout\;
\WM8731|ALT_INV_get_ack~0_combout\ <= NOT \WM8731|get_ack~0_combout\;
\WM8731|ALT_INV_data_index[2]~0_combout\ <= NOT \WM8731|data_index[2]~0_combout\;
\WM8731|ALT_INV_Selector25~0_combout\ <= NOT \WM8731|Selector25~0_combout\;
\WM8731|ALT_INV_Mux1~4_combout\ <= NOT \WM8731|Mux1~4_combout\;
\WM8731|ALT_INV_data_index\(3) <= NOT \WM8731|data_index\(3);
\WM8731|ALT_INV_data_index\(2) <= NOT \WM8731|data_index\(2);
\WM8731|ALT_INV_Mux1~3_combout\ <= NOT \WM8731|Mux1~3_combout\;
ALT_INV_WM_i2c_data(12) <= NOT WM_i2c_data(12);
\WM8731|ALT_INV_Mux1~2_combout\ <= NOT \WM8731|Mux1~2_combout\;
ALT_INV_WM_i2c_data(11) <= NOT WM_i2c_data(11);
ALT_INV_WM_i2c_data(10) <= NOT WM_i2c_data(10);
ALT_INV_WM_i2c_data(9) <= NOT WM_i2c_data(9);
\WM8731|ALT_INV_Mux1~1_combout\ <= NOT \WM8731|Mux1~1_combout\;
ALT_INV_WM_i2c_data(4) <= NOT WM_i2c_data(4);
\WM8731|ALT_INV_Mux1~0_combout\ <= NOT \WM8731|Mux1~0_combout\;
\WM8731|ALT_INV_data_index\(1) <= NOT \WM8731|data_index\(1);
\WM8731|ALT_INV_data_index\(0) <= NOT \WM8731|data_index\(0);
ALT_INV_WM_i2c_data(3) <= NOT WM_i2c_data(3);
ALT_INV_WM_i2c_data(2) <= NOT WM_i2c_data(2);
ALT_INV_WM_i2c_data(1) <= NOT WM_i2c_data(1);
ALT_INV_WM_i2c_data(0) <= NOT WM_i2c_data(0);
\WM8731|ALT_INV_i2c_fsm~22_combout\ <= NOT \WM8731|i2c_fsm~22_combout\;
\WM8731|ALT_INV_i2c_fsm.st8~q\ <= NOT \WM8731|i2c_fsm.st8~q\;
\WM8731|ALT_INV_i2c_fsm~20_combout\ <= NOT \WM8731|i2c_fsm~20_combout\;
\WM8731|ALT_INV_i2c_sda~1_combout\ <= NOT \WM8731|i2c_sda~1_combout\;
\ALT_INV_WM_i2c_send_flag~q\ <= NOT \WM_i2c_send_flag~q\;
\WM8731|ALT_INV_get_ack~q\ <= NOT \WM8731|get_ack~q\;
\WM8731|ALT_INV_i2c_fsm~14_combout\ <= NOT \WM8731|i2c_fsm~14_combout\;
\WM8731|ALT_INV_Equal0~0_combout\ <= NOT \WM8731|Equal0~0_combout\;
\WM8731|ALT_INV_LessThan1~0_combout\ <= NOT \WM8731|LessThan1~0_combout\;
\WM8731|ALT_INV_i2c_clk_en~0_combout\ <= NOT \WM8731|i2c_clk_en~0_combout\;
\WM8731|ALT_INV_i2c_fsm.st4~q\ <= NOT \WM8731|i2c_fsm.st4~q\;
\WM8731|ALT_INV_i2c_fsm.st0~q\ <= NOT \WM8731|i2c_fsm.st0~q\;
\WM8731|ALT_INV_i2c_fsm.st6~q\ <= NOT \WM8731|i2c_fsm.st6~q\;
\WM8731|ALT_INV_i2c_fsm.st1~q\ <= NOT \WM8731|i2c_fsm.st1~q\;
\WM8731|ALT_INV_WideNor0~combout\ <= NOT \WM8731|WideNor0~combout\;
\WM8731|ALT_INV_i2c_fsm.st7~q\ <= NOT \WM8731|i2c_fsm.st7~q\;
\WM8731|ALT_INV_i2c_fsm.st5~q\ <= NOT \WM8731|i2c_fsm.st5~q\;
\WM8731|ALT_INV_i2c_fsm.st3~q\ <= NOT \WM8731|i2c_fsm.st3~q\;
\WM8731|ALT_INV_ack_en~q\ <= NOT \WM8731|ack_en~q\;
\WM8731|ALT_INV_i2c_fsm.st2~q\ <= NOT \WM8731|i2c_fsm.st2~q\;
\WM8731|ALT_INV_clk_en~q\ <= NOT \WM8731|clk_en~q\;
\WM8731|ALT_INV_clk_i2c~q\ <= NOT \WM8731|clk_i2c~q\;
\WM8731|ALT_INV_i2c_clk_en~q\ <= NOT \WM8731|i2c_clk_en~q\;
\u0|ALT_INV_clk_reg~0_combout\ <= NOT \u0|clk_reg~0_combout\;
\u0|ALT_INV_counter\(3) <= NOT \u0|counter\(3);
\u0|ALT_INV_counter\(2) <= NOT \u0|counter\(2);
\u0|ALT_INV_counter\(1) <= NOT \u0|counter\(1);
\u0|ALT_INV_counter\(0) <= NOT \u0|counter\(0);
\ALT_INV_internal_DACLRCK~q\ <= NOT \internal_DACLRCK~q\;
\ALT_INV_internal_ADCLRCK~q\ <= NOT \internal_ADCLRCK~q\;
\u0|ALT_INV_clk_reg~q\ <= NOT \u0|clk_reg~q\;
\WM8731|ALT_INV_clk_prs\(7) <= NOT \WM8731|clk_prs\(7);
\WM8731|ALT_INV_clk_prs\(8) <= NOT \WM8731|clk_prs\(8);
\WM8731|ALT_INV_clk_prs\(5) <= NOT \WM8731|clk_prs\(5);
\WM8731|ALT_INV_clk_prs\(3) <= NOT \WM8731|clk_prs\(3);
\WM8731|ALT_INV_clk_prs\(4) <= NOT \WM8731|clk_prs\(4);
\WM8731|ALT_INV_clk_prs\(6) <= NOT \WM8731|clk_prs\(6);
\WM8731|ALT_INV_clk_prs\(1) <= NOT \WM8731|clk_prs\(1);
\WM8731|ALT_INV_clk_prs\(0) <= NOT \WM8731|clk_prs\(0);
\WM8731|ALT_INV_clk_prs\(2) <= NOT \WM8731|clk_prs\(2);

-- Location: IOOBUF_X89_Y15_N56
\AUD_BCLK~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|clk_reg~q\,
	devoe => ww_devoe,
	o => ww_AUD_BCLK);

-- Location: IOOBUF_X89_Y16_N39
\AUD_XCK~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|clk_reg~q\,
	devoe => ww_devoe,
	o => ww_AUD_XCK);

-- Location: IOOBUF_X89_Y6_N56
\AUD_ADCLRCK~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \internal_ADCLRCK~q\,
	devoe => ww_devoe,
	o => ww_AUD_ADCLRCK);

-- Location: IOOBUF_X89_Y16_N56
\AUD_DACLRCK~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \internal_DACLRCK~q\,
	devoe => ww_devoe,
	o => ww_AUD_DACLRCK);

-- Location: IOOBUF_X89_Y15_N39
\AUD_DACDAT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \AUD_DACDAT~reg0_q\,
	devoe => ww_devoe,
	o => ww_AUD_DACDAT);

-- Location: IOOBUF_X89_Y11_N45
\ledr[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ledr(0));

-- Location: IOOBUF_X89_Y9_N22
\ledr[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ledr(1));

-- Location: IOOBUF_X86_Y0_N19
\ledr[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ledr(2));

-- Location: IOOBUF_X88_Y0_N37
\ledr[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ledr(3));

-- Location: IOOBUF_X78_Y0_N36
\ledr[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ledr(4));

-- Location: IOOBUF_X86_Y0_N36
\ledr[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ledr(5));

-- Location: IOOBUF_X88_Y0_N54
\ledr[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ledr(6));

-- Location: IOOBUF_X74_Y0_N59
\ledr[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ledr(7));

-- Location: IOOBUF_X89_Y9_N5
\ledr[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ledr(8));

-- Location: IOOBUF_X86_Y0_N2
\ledr[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ledr(9));

-- Location: IOOBUF_X89_Y13_N22
\FPGA_I2C_SCLK~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \WM8731|i2c_scl~q\,
	devoe => ww_devoe,
	o => ww_FPGA_I2C_SCLK);

-- Location: IOOBUF_X89_Y13_N5
\FPGA_I2C_SDAT~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \WM8731|i2c_sda~reg0_q\,
	oe => \WM8731|i2c_sda~en_q\,
	devoe => ww_devoe,
	o => ww_FPGA_I2C_SDAT);

-- Location: IOIBUF_X32_Y0_N1
\clock_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock_50,
	o => \clock_50~input_o\);

-- Location: CLKCTRL_G6
\clock_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clock_50~input_o\,
	outclk => \clock_50~inputCLKENA0_outclk\);

-- Location: FF_X81_Y12_N7
\WM8731|clk_prs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \WM8731|Add0~1_sumout\,
	sclr => \WM8731|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WM8731|clk_prs\(2));

-- Location: LABCELL_X81_Y12_N0
\WM8731|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \WM8731|Add0~5_sumout\ = SUM(( \WM8731|clk_prs\(0) ) + ( VCC ) + ( !VCC ))
-- \WM8731|Add0~6\ = CARRY(( \WM8731|clk_prs\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \WM8731|ALT_INV_clk_prs\(0),
	cin => GND,
	sumout => \WM8731|Add0~5_sumout\,
	cout => \WM8731|Add0~6\);

-- Location: LABCELL_X81_Y12_N3
\WM8731|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \WM8731|Add0~9_sumout\ = SUM(( \WM8731|clk_prs\(1) ) + ( GND ) + ( \WM8731|Add0~6\ ))
-- \WM8731|Add0~10\ = CARRY(( \WM8731|clk_prs\(1) ) + ( GND ) + ( \WM8731|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \WM8731|ALT_INV_clk_prs\(1),
	cin => \WM8731|Add0~6\,
	sumout => \WM8731|Add0~9_sumout\,
	cout => \WM8731|Add0~10\);

-- Location: FF_X81_Y12_N5
\WM8731|clk_prs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \WM8731|Add0~9_sumout\,
	sclr => \WM8731|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WM8731|clk_prs\(1));

-- Location: LABCELL_X81_Y12_N6
\WM8731|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \WM8731|Add0~1_sumout\ = SUM(( \WM8731|clk_prs\(2) ) + ( GND ) + ( \WM8731|Add0~10\ ))
-- \WM8731|Add0~2\ = CARRY(( \WM8731|clk_prs\(2) ) + ( GND ) + ( \WM8731|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \WM8731|ALT_INV_clk_prs\(2),
	cin => \WM8731|Add0~10\,
	sumout => \WM8731|Add0~1_sumout\,
	cout => \WM8731|Add0~2\);

-- Location: FF_X81_Y12_N8
\WM8731|clk_prs[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \WM8731|Add0~1_sumout\,
	sclr => \WM8731|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WM8731|clk_prs[2]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y12_N9
\WM8731|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \WM8731|Add0~21_sumout\ = SUM(( \WM8731|clk_prs\(3) ) + ( GND ) + ( \WM8731|Add0~2\ ))
-- \WM8731|Add0~22\ = CARRY(( \WM8731|clk_prs\(3) ) + ( GND ) + ( \WM8731|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \WM8731|ALT_INV_clk_prs\(3),
	cin => \WM8731|Add0~2\,
	sumout => \WM8731|Add0~21_sumout\,
	cout => \WM8731|Add0~22\);

-- Location: FF_X81_Y12_N10
\WM8731|clk_prs[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \WM8731|Add0~21_sumout\,
	sclr => \WM8731|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WM8731|clk_prs\(3));

-- Location: LABCELL_X81_Y12_N12
\WM8731|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \WM8731|Add0~17_sumout\ = SUM(( \WM8731|clk_prs\(4) ) + ( GND ) + ( \WM8731|Add0~22\ ))
-- \WM8731|Add0~18\ = CARRY(( \WM8731|clk_prs\(4) ) + ( GND ) + ( \WM8731|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \WM8731|ALT_INV_clk_prs\(4),
	cin => \WM8731|Add0~22\,
	sumout => \WM8731|Add0~17_sumout\,
	cout => \WM8731|Add0~18\);

-- Location: FF_X81_Y12_N13
\WM8731|clk_prs[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \WM8731|Add0~17_sumout\,
	sclr => \WM8731|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WM8731|clk_prs\(4));

-- Location: LABCELL_X81_Y12_N15
\WM8731|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \WM8731|Add0~25_sumout\ = SUM(( \WM8731|clk_prs\(5) ) + ( GND ) + ( \WM8731|Add0~18\ ))
-- \WM8731|Add0~26\ = CARRY(( \WM8731|clk_prs\(5) ) + ( GND ) + ( \WM8731|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \WM8731|ALT_INV_clk_prs\(5),
	cin => \WM8731|Add0~18\,
	sumout => \WM8731|Add0~25_sumout\,
	cout => \WM8731|Add0~26\);

-- Location: FF_X81_Y12_N17
\WM8731|clk_prs[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \WM8731|Add0~25_sumout\,
	sclr => \WM8731|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WM8731|clk_prs\(5));

-- Location: LABCELL_X81_Y12_N18
\WM8731|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \WM8731|Add0~13_sumout\ = SUM(( \WM8731|clk_prs\(6) ) + ( GND ) + ( \WM8731|Add0~26\ ))
-- \WM8731|Add0~14\ = CARRY(( \WM8731|clk_prs\(6) ) + ( GND ) + ( \WM8731|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \WM8731|ALT_INV_clk_prs\(6),
	cin => \WM8731|Add0~26\,
	sumout => \WM8731|Add0~13_sumout\,
	cout => \WM8731|Add0~14\);

-- Location: FF_X81_Y12_N20
\WM8731|clk_prs[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \WM8731|Add0~13_sumout\,
	sclr => \WM8731|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WM8731|clk_prs\(6));

-- Location: LABCELL_X81_Y12_N21
\WM8731|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \WM8731|Add0~33_sumout\ = SUM(( \WM8731|clk_prs\(7) ) + ( GND ) + ( \WM8731|Add0~14\ ))
-- \WM8731|Add0~34\ = CARRY(( \WM8731|clk_prs\(7) ) + ( GND ) + ( \WM8731|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \WM8731|ALT_INV_clk_prs\(7),
	cin => \WM8731|Add0~14\,
	sumout => \WM8731|Add0~33_sumout\,
	cout => \WM8731|Add0~34\);

-- Location: FF_X81_Y12_N23
\WM8731|clk_prs[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \WM8731|Add0~33_sumout\,
	sclr => \WM8731|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WM8731|clk_prs\(7));

-- Location: LABCELL_X81_Y12_N24
\WM8731|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \WM8731|Add0~29_sumout\ = SUM(( \WM8731|clk_prs\(8) ) + ( GND ) + ( \WM8731|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \WM8731|ALT_INV_clk_prs\(8),
	cin => \WM8731|Add0~34\,
	sumout => \WM8731|Add0~29_sumout\);

-- Location: FF_X81_Y12_N25
\WM8731|clk_prs[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \WM8731|Add0~29_sumout\,
	sclr => \WM8731|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WM8731|clk_prs\(8));

-- Location: FF_X81_Y12_N14
\WM8731|clk_prs[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \WM8731|Add0~17_sumout\,
	sclr => \WM8731|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WM8731|clk_prs[4]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y12_N42
\WM8731|LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WM8731|LessThan1~0_combout\ = ( \WM8731|clk_prs\(3) & ( \WM8731|clk_prs[4]~DUPLICATE_q\ & ( (\WM8731|clk_prs\(6) & \WM8731|clk_prs\(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \WM8731|ALT_INV_clk_prs\(6),
	datad => \WM8731|ALT_INV_clk_prs\(5),
	datae => \WM8731|ALT_INV_clk_prs\(3),
	dataf => \WM8731|ALT_INV_clk_prs[4]~DUPLICATE_q\,
	combout => \WM8731|LessThan1~0_combout\);

-- Location: LABCELL_X81_Y12_N57
\WM8731|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WM8731|LessThan0~0_combout\ = ( \WM8731|clk_prs\(1) & ( \WM8731|LessThan1~0_combout\ & ( (\WM8731|clk_prs\(7)) # (\WM8731|clk_prs\(8)) ) ) ) # ( !\WM8731|clk_prs\(1) & ( \WM8731|LessThan1~0_combout\ & ( ((\WM8731|clk_prs[2]~DUPLICATE_q\ & 
-- \WM8731|clk_prs\(7))) # (\WM8731|clk_prs\(8)) ) ) ) # ( \WM8731|clk_prs\(1) & ( !\WM8731|LessThan1~0_combout\ & ( \WM8731|clk_prs\(8) ) ) ) # ( !\WM8731|clk_prs\(1) & ( !\WM8731|LessThan1~0_combout\ & ( \WM8731|clk_prs\(8) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111001111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \WM8731|ALT_INV_clk_prs[2]~DUPLICATE_q\,
	datac => \WM8731|ALT_INV_clk_prs\(8),
	datad => \WM8731|ALT_INV_clk_prs\(7),
	datae => \WM8731|ALT_INV_clk_prs\(1),
	dataf => \WM8731|ALT_INV_LessThan1~0_combout\,
	combout => \WM8731|LessThan0~0_combout\);

-- Location: FF_X81_Y12_N1
\WM8731|clk_prs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \WM8731|Add0~5_sumout\,
	sclr => \WM8731|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WM8731|clk_prs\(0));

-- Location: FF_X81_Y12_N2
\WM8731|clk_prs[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \WM8731|Add0~5_sumout\,
	sclr => \WM8731|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WM8731|clk_prs[0]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y12_N48
\WM8731|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WM8731|Equal0~0_combout\ = ( \WM8731|clk_prs\(3) & ( \WM8731|clk_prs\(4) & ( (\WM8731|clk_prs\(1) & (\WM8731|clk_prs\(5) & (!\WM8731|clk_prs\(6) & !\WM8731|clk_prs\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WM8731|ALT_INV_clk_prs\(1),
	datab => \WM8731|ALT_INV_clk_prs\(5),
	datac => \WM8731|ALT_INV_clk_prs\(6),
	datad => \WM8731|ALT_INV_clk_prs\(8),
	datae => \WM8731|ALT_INV_clk_prs\(3),
	dataf => \WM8731|ALT_INV_clk_prs\(4),
	combout => \WM8731|Equal0~0_combout\);

-- Location: LABCELL_X81_Y12_N39
\WM8731|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \WM8731|Equal0~1_combout\ = ( \WM8731|Equal0~0_combout\ & ( (!\WM8731|clk_prs[0]~DUPLICATE_q\ & (\WM8731|clk_prs[2]~DUPLICATE_q\ & !\WM8731|clk_prs\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100010000000000010001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WM8731|ALT_INV_clk_prs[0]~DUPLICATE_q\,
	datab => \WM8731|ALT_INV_clk_prs[2]~DUPLICATE_q\,
	datad => \WM8731|ALT_INV_clk_prs\(7),
	dataf => \WM8731|ALT_INV_Equal0~0_combout\,
	combout => \WM8731|Equal0~1_combout\);

-- Location: FF_X81_Y12_N40
\WM8731|ack_en~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \WM8731|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WM8731|ack_en~DUPLICATE_q\);

-- Location: FF_X81_Y12_N22
\WM8731|clk_prs[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \WM8731|Add0~33_sumout\,
	sclr => \WM8731|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WM8731|clk_prs[7]~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y12_N21
\WM8731|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WM8731|Equal1~0_combout\ = ( \WM8731|clk_prs[7]~DUPLICATE_q\ & ( (!\WM8731|clk_prs\(2) & (\WM8731|clk_prs\(0) & \WM8731|Equal0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WM8731|ALT_INV_clk_prs\(2),
	datac => \WM8731|ALT_INV_clk_prs\(0),
	datad => \WM8731|ALT_INV_Equal0~0_combout\,
	dataf => \WM8731|ALT_INV_clk_prs[7]~DUPLICATE_q\,
	combout => \WM8731|Equal1~0_combout\);

-- Location: FF_X82_Y12_N23
\WM8731|clk_en~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \WM8731|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WM8731|clk_en~DUPLICATE_q\);

-- Location: IOIBUF_X89_Y13_N4
\FPGA_I2C_SDAT~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_I2C_SDAT,
	o => \FPGA_I2C_SDAT~input_o\);

-- Location: FF_X82_Y12_N22
\WM8731|clk_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \WM8731|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WM8731|clk_en~q\);

-- Location: FF_X81_Y12_N41
\WM8731|ack_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \WM8731|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WM8731|ack_en~q\);

-- Location: FF_X82_Y12_N25
\WM8731|i2c_fsm.st7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \WM8731|i2c_fsm~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WM8731|i2c_fsm.st7~q\);

-- Location: FF_X82_Y12_N5
\WM8731|i2c_fsm.st3~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \WM8731|i2c_fsm~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WM8731|i2c_fsm.st3~DUPLICATE_q\);

-- Location: FF_X82_Y12_N32
\WM8731|i2c_fsm.st5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \WM8731|i2c_fsm~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WM8731|i2c_fsm.st5~q\);

-- Location: MLABCELL_X82_Y12_N30
\WM8731|i2c_fsm~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \WM8731|i2c_fsm~17_combout\ = ( \WM8731|ack_en~DUPLICATE_q\ & ( (\WM8731|clk_en~DUPLICATE_q\ & (\WM8731|get_ack~q\ & \WM8731|i2c_fsm.st4~q\)) ) ) # ( !\WM8731|ack_en~DUPLICATE_q\ & ( ((\WM8731|clk_en~DUPLICATE_q\ & (\WM8731|get_ack~q\ & 
-- \WM8731|i2c_fsm.st4~q\))) # (\WM8731|i2c_fsm.st5~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111111111000000011111111100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WM8731|ALT_INV_clk_en~DUPLICATE_q\,
	datab => \WM8731|ALT_INV_get_ack~q\,
	datac => \WM8731|ALT_INV_i2c_fsm.st4~q\,
	datad => \WM8731|ALT_INV_i2c_fsm.st5~q\,
	dataf => \WM8731|ALT_INV_ack_en~DUPLICATE_q\,
	combout => \WM8731|i2c_fsm~17_combout\);

-- Location: FF_X82_Y12_N31
\WM8731|i2c_fsm.st5~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \WM8731|i2c_fsm~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WM8731|i2c_fsm.st5~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y12_N27
\WM8731|i2c_fsm~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \WM8731|i2c_fsm~14_combout\ = ( \WM8731|i2c_fsm.st5~DUPLICATE_q\ & ( !\WM8731|ack_en~DUPLICATE_q\ ) ) # ( !\WM8731|i2c_fsm.st5~DUPLICATE_q\ & ( (!\WM8731|i2c_fsm.st7~q\ & ((!\WM8731|i2c_fsm.st3~DUPLICATE_q\ & ((!\WM8731|clk_en~DUPLICATE_q\))) # 
-- (\WM8731|i2c_fsm.st3~DUPLICATE_q\ & (!\WM8731|ack_en~DUPLICATE_q\)))) # (\WM8731|i2c_fsm.st7~q\ & (!\WM8731|ack_en~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100101010101010110010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WM8731|ALT_INV_ack_en~DUPLICATE_q\,
	datab => \WM8731|ALT_INV_clk_en~DUPLICATE_q\,
	datac => \WM8731|ALT_INV_i2c_fsm.st7~q\,
	datad => \WM8731|ALT_INV_i2c_fsm.st3~DUPLICATE_q\,
	dataf => \WM8731|ALT_INV_i2c_fsm.st5~DUPLICATE_q\,
	combout => \WM8731|i2c_fsm~14_combout\);

-- Location: IOIBUF_X36_Y0_N1
\key[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(2),
	o => \key[2]~input_o\);

-- Location: MLABCELL_X82_Y12_N54
\WM8731|i2c_fsm~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \WM8731|i2c_fsm~25_combout\ = ( \WM8731|i2c_fsm.st8~q\ & ( \WM8731|i2c_sda~1_combout\ & ( \WM8731|i2c_fsm~20_combout\ ) ) ) # ( !\WM8731|i2c_fsm.st8~q\ & ( \WM8731|i2c_sda~1_combout\ & ( (\WM8731|i2c_fsm.st7~DUPLICATE_q\ & (!\FPGA_I2C_SDAT~input_o\ & 
-- (\WM8731|ack_en~DUPLICATE_q\ & \WM8731|i2c_fsm~20_combout\))) ) ) ) # ( \WM8731|i2c_fsm.st8~q\ & ( !\WM8731|i2c_sda~1_combout\ ) ) # ( !\WM8731|i2c_fsm.st8~q\ & ( !\WM8731|i2c_sda~1_combout\ & ( (\WM8731|i2c_fsm.st7~DUPLICATE_q\ & 
-- (!\FPGA_I2C_SDAT~input_o\ & \WM8731|ack_en~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100111111111111111100000000000001000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WM8731|ALT_INV_i2c_fsm.st7~DUPLICATE_q\,
	datab => \ALT_INV_FPGA_I2C_SDAT~input_o\,
	datac => \WM8731|ALT_INV_ack_en~DUPLICATE_q\,
	datad => \WM8731|ALT_INV_i2c_fsm~20_combout\,
	datae => \WM8731|ALT_INV_i2c_fsm.st8~q\,
	dataf => \WM8731|ALT_INV_i2c_sda~1_combout\,
	combout => \WM8731|i2c_fsm~25_combout\);

-- Location: FF_X82_Y12_N56
\WM8731|i2c_fsm.st8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \WM8731|i2c_fsm~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WM8731|i2c_fsm.st8~q\);

-- Location: MLABCELL_X82_Y12_N0
\WM8731|i2c_fsm~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \WM8731|i2c_fsm~22_combout\ = ( !\WM8731|i2c_fsm.st8~q\ & ( (\WM8731|i2c_fsm.st0~q\) # (\WM_i2c_send_flag~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_WM_i2c_send_flag~q\,
	datad => \WM8731|ALT_INV_i2c_fsm.st0~q\,
	dataf => \WM8731|ALT_INV_i2c_fsm.st8~q\,
	combout => \WM8731|i2c_fsm~22_combout\);

-- Location: MLABCELL_X82_Y12_N18
\WM8731|WideNor0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WM8731|WideNor0~combout\ = ( \WM8731|i2c_fsm.st5~q\ ) # ( !\WM8731|i2c_fsm.st5~q\ & ( (\WM8731|i2c_fsm.st3~DUPLICATE_q\) # (\WM8731|i2c_fsm.st7~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \WM8731|ALT_INV_i2c_fsm.st7~DUPLICATE_q\,
	datad => \WM8731|ALT_INV_i2c_fsm.st3~DUPLICATE_q\,
	dataf => \WM8731|ALT_INV_i2c_fsm.st5~q\,
	combout => \WM8731|WideNor0~combout\);

-- Location: MLABCELL_X82_Y12_N36
\WM8731|i2c_fsm~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \WM8731|i2c_fsm~23_combout\ = ( \WM8731|i2c_fsm.st0~q\ & ( \WM8731|WideNor0~combout\ & ( (!\WM8731|clk_en~DUPLICATE_q\ & (((!\FPGA_I2C_SDAT~input_o\) # (!\WM8731|ack_en~q\)))) # (\WM8731|clk_en~DUPLICATE_q\ & (\WM8731|i2c_fsm~22_combout\ & 
-- ((!\FPGA_I2C_SDAT~input_o\) # (!\WM8731|ack_en~q\)))) ) ) ) # ( !\WM8731|i2c_fsm.st0~q\ & ( \WM8731|WideNor0~combout\ & ( (!\FPGA_I2C_SDAT~input_o\ & (\WM8731|ack_en~q\ & ((!\WM8731|clk_en~DUPLICATE_q\) # (\WM8731|i2c_fsm~22_combout\)))) ) ) ) # ( 
-- \WM8731|i2c_fsm.st0~q\ & ( !\WM8731|WideNor0~combout\ & ( (!\WM8731|clk_en~DUPLICATE_q\) # (\WM8731|i2c_fsm~22_combout\) ) ) ) # ( !\WM8731|i2c_fsm.st0~q\ & ( !\WM8731|WideNor0~combout\ & ( (\WM8731|clk_en~DUPLICATE_q\ & \WM8731|i2c_fsm~22_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001101110111011101100000000101100001011101110110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WM8731|ALT_INV_clk_en~DUPLICATE_q\,
	datab => \WM8731|ALT_INV_i2c_fsm~22_combout\,
	datac => \ALT_INV_FPGA_I2C_SDAT~input_o\,
	datad => \WM8731|ALT_INV_ack_en~q\,
	datae => \WM8731|ALT_INV_i2c_fsm.st0~q\,
	dataf => \WM8731|ALT_INV_WideNor0~combout\,
	combout => \WM8731|i2c_fsm~23_combout\);

-- Location: FF_X82_Y12_N38
\WM8731|i2c_fsm.st0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \WM8731|i2c_fsm~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WM8731|i2c_fsm.st0~q\);

-- Location: LABCELL_X85_Y12_N6
\WM8731|i2c_busy~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WM8731|i2c_busy~0_combout\ = ( \WM_i2c_send_flag~q\ & ( ((!\WM8731|i2c_fsm.st0~q\ & \WM8731|clk_en~DUPLICATE_q\)) # (\WM8731|i2c_busy~q\) ) ) # ( !\WM_i2c_send_flag~q\ & ( (\WM8731|i2c_busy~q\ & ((!\WM8731|clk_en~DUPLICATE_q\) # 
-- (\WM8731|i2c_fsm.st0~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110011000000001111001100001100111111110000110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \WM8731|ALT_INV_i2c_fsm.st0~q\,
	datac => \WM8731|ALT_INV_clk_en~DUPLICATE_q\,
	datad => \WM8731|ALT_INV_i2c_busy~q\,
	dataf => \ALT_INV_WM_i2c_send_flag~q\,
	combout => \WM8731|i2c_busy~0_combout\);

-- Location: FF_X85_Y12_N8
\WM8731|i2c_busy\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \WM8731|i2c_busy~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WM8731|i2c_busy~q\);

-- Location: IOIBUF_X22_Y0_N52
\key[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(1),
	o => \key[1]~input_o\);

-- Location: IOIBUF_X36_Y0_N18
\key[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(3),
	o => \key[3]~input_o\);

-- Location: IOIBUF_X22_Y0_N35
\key[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(0),
	o => \key[0]~input_o\);

-- Location: LABCELL_X85_Y12_N18
\WM_i2c_send_flag~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WM_i2c_send_flag~0_combout\ = ( \WM_i2c_send_flag~q\ & ( \key[0]~input_o\ & ( (!\key[2]~input_o\) # ((!\key[1]~input_o\) # (!\key[3]~input_o\)) ) ) ) # ( !\WM_i2c_send_flag~q\ & ( \key[0]~input_o\ & ( (!\WM8731|i2c_busy~q\ & ((!\key[2]~input_o\) # 
-- ((!\key[1]~input_o\) # (!\key[3]~input_o\)))) ) ) ) # ( \WM_i2c_send_flag~q\ & ( !\key[0]~input_o\ ) ) # ( !\WM_i2c_send_flag~q\ & ( !\key[0]~input_o\ & ( !\WM8731|i2c_busy~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100111111111111111111001100110010001111111111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_key[2]~input_o\,
	datab => \WM8731|ALT_INV_i2c_busy~q\,
	datac => \ALT_INV_key[1]~input_o\,
	datad => \ALT_INV_key[3]~input_o\,
	datae => \ALT_INV_WM_i2c_send_flag~q\,
	dataf => \ALT_INV_key[0]~input_o\,
	combout => \WM_i2c_send_flag~0_combout\);

-- Location: FF_X85_Y12_N20
WM_i2c_send_flag : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \WM_i2c_send_flag~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WM_i2c_send_flag~q\);

-- Location: MLABCELL_X82_Y12_N51
\WM8731|i2c_fsm~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \WM8731|i2c_fsm~19_combout\ = ( \WM8731|i2c_fsm.st0~q\ & ( (\WM8731|i2c_fsm~14_combout\ & \WM8731|i2c_fsm.st1~q\) ) ) # ( !\WM8731|i2c_fsm.st0~q\ & ( (!\WM8731|clk_en~DUPLICATE_q\ & (\WM8731|i2c_fsm~14_combout\ & ((\WM8731|i2c_fsm.st1~q\)))) # 
-- (\WM8731|clk_en~DUPLICATE_q\ & (((\WM8731|i2c_fsm~14_combout\ & \WM8731|i2c_fsm.st1~q\)) # (\WM_i2c_send_flag~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111000001010011011100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WM8731|ALT_INV_clk_en~DUPLICATE_q\,
	datab => \WM8731|ALT_INV_i2c_fsm~14_combout\,
	datac => \ALT_INV_WM_i2c_send_flag~q\,
	datad => \WM8731|ALT_INV_i2c_fsm.st1~q\,
	dataf => \WM8731|ALT_INV_i2c_fsm.st0~q\,
	combout => \WM8731|i2c_fsm~19_combout\);

-- Location: FF_X82_Y12_N52
\WM8731|i2c_fsm.st1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \WM8731|i2c_fsm~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WM8731|i2c_fsm.st1~q\);

-- Location: FF_X83_Y12_N25
\WM8731|i2c_fsm.st2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \WM8731|i2c_fsm~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WM8731|i2c_fsm.st2~q\);

-- Location: LABCELL_X83_Y12_N24
\WM8731|i2c_fsm~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \WM8731|i2c_fsm~15_combout\ = ( \WM8731|i2c_fsm~14_combout\ & ( ((\WM8731|i2c_fsm.st1~q\ & \WM8731|clk_en~DUPLICATE_q\)) # (\WM8731|i2c_fsm.st2~q\) ) ) # ( !\WM8731|i2c_fsm~14_combout\ & ( (\WM8731|clk_en~DUPLICATE_q\ & (((!\WM8731|get_ack~q\ & 
-- \WM8731|i2c_fsm.st2~q\)) # (\WM8731|i2c_fsm.st1~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100110001000100010011000100010001111111110001000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WM8731|ALT_INV_i2c_fsm.st1~q\,
	datab => \WM8731|ALT_INV_clk_en~DUPLICATE_q\,
	datac => \WM8731|ALT_INV_get_ack~q\,
	datad => \WM8731|ALT_INV_i2c_fsm.st2~q\,
	dataf => \WM8731|ALT_INV_i2c_fsm~14_combout\,
	combout => \WM8731|i2c_fsm~15_combout\);

-- Location: FF_X83_Y12_N26
\WM8731|i2c_fsm.st2~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \WM8731|i2c_fsm~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WM8731|i2c_fsm.st2~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y12_N3
\WM8731|i2c_fsm~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \WM8731|i2c_fsm~16_combout\ = ( \WM8731|i2c_fsm.st2~DUPLICATE_q\ & ( (!\WM8731|clk_en~DUPLICATE_q\ & (!\WM8731|ack_en~q\ & ((\WM8731|i2c_fsm.st3~q\)))) # (\WM8731|clk_en~DUPLICATE_q\ & (((!\WM8731|ack_en~q\ & \WM8731|i2c_fsm.st3~q\)) # 
-- (\WM8731|get_ack~q\))) ) ) # ( !\WM8731|i2c_fsm.st2~DUPLICATE_q\ & ( (!\WM8731|ack_en~q\ & \WM8731|i2c_fsm.st3~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000101110011010000010111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WM8731|ALT_INV_clk_en~DUPLICATE_q\,
	datab => \WM8731|ALT_INV_ack_en~q\,
	datac => \WM8731|ALT_INV_get_ack~q\,
	datad => \WM8731|ALT_INV_i2c_fsm.st3~q\,
	dataf => \WM8731|ALT_INV_i2c_fsm.st2~DUPLICATE_q\,
	combout => \WM8731|i2c_fsm~16_combout\);

-- Location: FF_X82_Y12_N4
\WM8731|i2c_fsm.st3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \WM8731|i2c_fsm~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WM8731|i2c_fsm.st3~q\);

-- Location: MLABCELL_X82_Y12_N42
\WM8731|WideOr2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WM8731|WideOr2~0_combout\ = ( !\WM8731|i2c_fsm.st5~q\ & ( (\WM8731|i2c_fsm.st0~q\ & (!\WM8731|i2c_fsm.st7~q\ & (!\WM8731|i2c_fsm.st8~q\ & !\WM8731|i2c_fsm.st3~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WM8731|ALT_INV_i2c_fsm.st0~q\,
	datab => \WM8731|ALT_INV_i2c_fsm.st7~q\,
	datac => \WM8731|ALT_INV_i2c_fsm.st8~q\,
	datad => \WM8731|ALT_INV_i2c_fsm.st3~DUPLICATE_q\,
	dataf => \WM8731|ALT_INV_i2c_fsm.st5~q\,
	combout => \WM8731|WideOr2~0_combout\);

-- Location: FF_X82_Y12_N53
\WM8731|i2c_fsm.st1~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \WM8731|i2c_fsm~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WM8731|i2c_fsm.st1~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y12_N45
\WM8731|data_index[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \WM8731|data_index[2]~3_combout\ = ( !\WM8731|i2c_fsm.st1~DUPLICATE_q\ & ( \WM8731|clk_en~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \WM8731|ALT_INV_clk_en~DUPLICATE_q\,
	dataf => \WM8731|ALT_INV_i2c_fsm.st1~DUPLICATE_q\,
	combout => \WM8731|data_index[2]~3_combout\);

-- Location: LABCELL_X83_Y12_N54
\WM8731|data_index[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \WM8731|data_index[2]~1_combout\ = ( !\WM8731|i2c_fsm.st2~DUPLICATE_q\ & ( !\WM8731|i2c_fsm.st6~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \WM8731|ALT_INV_i2c_fsm.st6~q\,
	dataf => \WM8731|ALT_INV_i2c_fsm.st2~DUPLICATE_q\,
	combout => \WM8731|data_index[2]~1_combout\);

-- Location: MLABCELL_X84_Y12_N57
\WM8731|Add1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WM8731|Add1~0_combout\ = ( \WM8731|data_index\(1) & ( !\WM8731|data_index\(0) ) ) # ( !\WM8731|data_index\(1) & ( \WM8731|data_index\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \WM8731|ALT_INV_data_index\(0),
	dataf => \WM8731|ALT_INV_data_index\(1),
	combout => \WM8731|Add1~0_combout\);

-- Location: LABCELL_X83_Y12_N45
\WM8731|data_index~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \WM8731|data_index~6_combout\ = ( \WM8731|data_index[2]~3_combout\ & ( \WM8731|Add1~0_combout\ & ( ((!\WM8731|WideOr2~0_combout\) # ((\WM8731|data_index[2]~2_combout\ & !\WM8731|data_index[2]~1_combout\))) # (\WM8731|data_index[2]~0_combout\) ) ) ) # ( 
-- !\WM8731|data_index[2]~3_combout\ & ( \WM8731|Add1~0_combout\ ) ) # ( \WM8731|data_index[2]~3_combout\ & ( !\WM8731|Add1~0_combout\ ) ) # ( !\WM8731|data_index[2]~3_combout\ & ( !\WM8731|Add1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111101111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WM8731|ALT_INV_data_index[2]~0_combout\,
	datab => \WM8731|ALT_INV_WideOr2~0_combout\,
	datac => \WM8731|ALT_INV_data_index[2]~2_combout\,
	datad => \WM8731|ALT_INV_data_index[2]~1_combout\,
	datae => \WM8731|ALT_INV_data_index[2]~3_combout\,
	dataf => \WM8731|ALT_INV_Add1~0_combout\,
	combout => \WM8731|data_index~6_combout\);

-- Location: LABCELL_X83_Y12_N12
\WM8731|data_index[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \WM8731|data_index[2]~9_combout\ = ( \WM8731|WideOr2~0_combout\ & ( \WM8731|data_index[2]~2_combout\ & ( (\WM8731|clk_en~q\ & (!\WM8731|i2c_fsm.st2~q\ & (!\WM8731|i2c_fsm.st6~q\ & !\WM8731|i2c_fsm.st4~q\))) ) ) ) # ( \WM8731|WideOr2~0_combout\ & ( 
-- !\WM8731|data_index[2]~2_combout\ & ( \WM8731|clk_en~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WM8731|ALT_INV_clk_en~q\,
	datab => \WM8731|ALT_INV_i2c_fsm.st2~q\,
	datac => \WM8731|ALT_INV_i2c_fsm.st6~q\,
	datad => \WM8731|ALT_INV_i2c_fsm.st4~q\,
	datae => \WM8731|ALT_INV_WideOr2~0_combout\,
	dataf => \WM8731|ALT_INV_data_index[2]~2_combout\,
	combout => \WM8731|data_index[2]~9_combout\);

-- Location: LABCELL_X83_Y12_N6
\WM8731|data_index[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \WM8731|data_index[2]~5_combout\ = ( \WM8731|ack_en~DUPLICATE_q\ & ( \WM8731|data_index[2]~9_combout\ ) ) # ( !\WM8731|ack_en~DUPLICATE_q\ & ( \WM8731|data_index[2]~9_combout\ ) ) # ( \WM8731|ack_en~DUPLICATE_q\ & ( !\WM8731|data_index[2]~9_combout\ & ( 
-- (!\FPGA_I2C_SDAT~input_o\ & (!\WM8731|i2c_fsm.st7~q\ & ((\WM8731|i2c_fsm.st3~q\) # (\WM8731|i2c_fsm.st5~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010011000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WM8731|ALT_INV_i2c_fsm.st5~DUPLICATE_q\,
	datab => \ALT_INV_FPGA_I2C_SDAT~input_o\,
	datac => \WM8731|ALT_INV_i2c_fsm.st3~q\,
	datad => \WM8731|ALT_INV_i2c_fsm.st7~q\,
	datae => \WM8731|ALT_INV_ack_en~DUPLICATE_q\,
	dataf => \WM8731|ALT_INV_data_index[2]~9_combout\,
	combout => \WM8731|data_index[2]~5_combout\);

-- Location: FF_X83_Y12_N47
\WM8731|data_index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \WM8731|data_index~6_combout\,
	ena => \WM8731|data_index[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WM8731|data_index\(1));

-- Location: LABCELL_X83_Y12_N57
\WM8731|data_index[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \WM8731|data_index[2]~2_combout\ = ( \WM8731|i2c_fsm.st4~q\ & ( (!\WM8731|data_index\(3)) # ((!\WM8731|data_index\(0) & (!\WM8731|data_index\(1) & !\WM8731|data_index\(2)))) ) ) # ( !\WM8731|i2c_fsm.st4~q\ & ( (!\WM8731|data_index\(0) & 
-- (!\WM8731|data_index\(1) & (!\WM8731|data_index\(2) & !\WM8731|data_index\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000011111111100000001111111110000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WM8731|ALT_INV_data_index\(0),
	datab => \WM8731|ALT_INV_data_index\(1),
	datac => \WM8731|ALT_INV_data_index\(2),
	datad => \WM8731|ALT_INV_data_index\(3),
	dataf => \WM8731|ALT_INV_i2c_fsm.st4~q\,
	combout => \WM8731|data_index[2]~2_combout\);

-- Location: MLABCELL_X82_Y12_N33
\WM8731|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \WM8731|Add1~1_combout\ = ( \WM8731|data_index\(1) & ( !\WM8731|data_index\(2) ) ) # ( !\WM8731|data_index\(1) & ( !\WM8731|data_index\(0) $ (!\WM8731|data_index\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \WM8731|ALT_INV_data_index\(0),
	datad => \WM8731|ALT_INV_data_index\(2),
	dataf => \WM8731|ALT_INV_data_index\(1),
	combout => \WM8731|Add1~1_combout\);

-- Location: LABCELL_X83_Y12_N42
\WM8731|data_index~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \WM8731|data_index~7_combout\ = ( \WM8731|Add1~1_combout\ & ( \WM8731|data_index[2]~3_combout\ & ( ((!\WM8731|WideOr2~0_combout\) # ((!\WM8731|data_index[2]~1_combout\ & \WM8731|data_index[2]~2_combout\))) # (\WM8731|data_index[2]~0_combout\) ) ) ) # ( 
-- !\WM8731|Add1~1_combout\ & ( \WM8731|data_index[2]~3_combout\ ) ) # ( \WM8731|Add1~1_combout\ & ( !\WM8731|data_index[2]~3_combout\ ) ) # ( !\WM8731|Add1~1_combout\ & ( !\WM8731|data_index[2]~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111101110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WM8731|ALT_INV_data_index[2]~0_combout\,
	datab => \WM8731|ALT_INV_WideOr2~0_combout\,
	datac => \WM8731|ALT_INV_data_index[2]~1_combout\,
	datad => \WM8731|ALT_INV_data_index[2]~2_combout\,
	datae => \WM8731|ALT_INV_Add1~1_combout\,
	dataf => \WM8731|ALT_INV_data_index[2]~3_combout\,
	combout => \WM8731|data_index~7_combout\);

-- Location: FF_X83_Y12_N44
\WM8731|data_index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \WM8731|data_index~7_combout\,
	ena => \WM8731|data_index[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WM8731|data_index\(2));

-- Location: LABCELL_X83_Y12_N0
\WM8731|data_index[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WM8731|data_index[2]~0_combout\ = ( \WM8731|data_index\(0) & ( (\WM8731|i2c_fsm.st4~q\ & !\WM8731|data_index\(3)) ) ) # ( !\WM8731|data_index\(0) & ( (\WM8731|i2c_fsm.st4~q\ & ((!\WM8731|data_index\(3)) # ((!\WM8731|data_index\(2) & 
-- !\WM8731|data_index\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000110000001100100011000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WM8731|ALT_INV_data_index\(2),
	datab => \WM8731|ALT_INV_i2c_fsm.st4~q\,
	datac => \WM8731|ALT_INV_data_index\(3),
	datad => \WM8731|ALT_INV_data_index\(1),
	dataf => \WM8731|ALT_INV_data_index\(0),
	combout => \WM8731|data_index[2]~0_combout\);

-- Location: LABCELL_X83_Y12_N18
\WM8731|data_index~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \WM8731|data_index~4_combout\ = ( \WM8731|data_index\(0) & ( \WM8731|data_index[2]~1_combout\ & ( (!\WM8731|WideOr2~0_combout\) # ((!\WM8731|data_index[2]~3_combout\) # (\WM8731|data_index[2]~0_combout\)) ) ) ) # ( !\WM8731|data_index\(0) & ( 
-- \WM8731|data_index[2]~1_combout\ ) ) # ( \WM8731|data_index\(0) & ( !\WM8731|data_index[2]~1_combout\ & ( (!\WM8731|WideOr2~0_combout\) # ((!\WM8731|data_index[2]~3_combout\) # ((\WM8731|data_index[2]~2_combout\) # (\WM8731|data_index[2]~0_combout\))) ) ) 
-- ) # ( !\WM8731|data_index\(0) & ( !\WM8731|data_index[2]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111011111111111111111111111111111110111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WM8731|ALT_INV_WideOr2~0_combout\,
	datab => \WM8731|ALT_INV_data_index[2]~3_combout\,
	datac => \WM8731|ALT_INV_data_index[2]~0_combout\,
	datad => \WM8731|ALT_INV_data_index[2]~2_combout\,
	datae => \WM8731|ALT_INV_data_index\(0),
	dataf => \WM8731|ALT_INV_data_index[2]~1_combout\,
	combout => \WM8731|data_index~4_combout\);

-- Location: FF_X83_Y12_N20
\WM8731|data_index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \WM8731|data_index~4_combout\,
	ena => \WM8731|data_index[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WM8731|data_index\(0));

-- Location: MLABCELL_X84_Y12_N48
\WM8731|data_index~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \WM8731|data_index~10_combout\ = ( \WM8731|data_index\(2) & ( \WM8731|data_index\(1) & ( (!\WM8731|i2c_fsm.st2~q\ & (!\WM8731|i2c_fsm.st4~q\ & !\WM8731|i2c_fsm.st6~q\)) ) ) ) # ( !\WM8731|data_index\(2) & ( \WM8731|data_index\(1) & ( 
-- (!\WM8731|i2c_fsm.st2~q\ & (!\WM8731|i2c_fsm.st4~q\ & !\WM8731|i2c_fsm.st6~q\)) ) ) ) # ( \WM8731|data_index\(2) & ( !\WM8731|data_index\(1) & ( (!\WM8731|i2c_fsm.st2~q\ & (!\WM8731|i2c_fsm.st4~q\ & !\WM8731|i2c_fsm.st6~q\)) ) ) ) # ( 
-- !\WM8731|data_index\(2) & ( !\WM8731|data_index\(1) & ( (!\WM8731|data_index\(0)) # ((!\WM8731|i2c_fsm.st2~q\ & (!\WM8731|i2c_fsm.st4~q\ & !\WM8731|i2c_fsm.st6~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101010101010110000000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WM8731|ALT_INV_data_index\(0),
	datab => \WM8731|ALT_INV_i2c_fsm.st2~q\,
	datac => \WM8731|ALT_INV_i2c_fsm.st4~q\,
	datad => \WM8731|ALT_INV_i2c_fsm.st6~q\,
	datae => \WM8731|ALT_INV_data_index\(2),
	dataf => \WM8731|ALT_INV_data_index\(1),
	combout => \WM8731|data_index~10_combout\);

-- Location: MLABCELL_X84_Y12_N21
\WM8731|data_index~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \WM8731|data_index~11_combout\ = ( \WM8731|i2c_fsm.st0~q\ & ( \WM8731|data_index~10_combout\ & ( (!\WM8731|i2c_fsm.st4~q\ & (!\WM8731|i2c_fsm.st7~q\ & (!\WM8731|i2c_fsm.st8~q\ & \WM8731|clk_en~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WM8731|ALT_INV_i2c_fsm.st4~q\,
	datab => \WM8731|ALT_INV_i2c_fsm.st7~q\,
	datac => \WM8731|ALT_INV_i2c_fsm.st8~q\,
	datad => \WM8731|ALT_INV_clk_en~q\,
	datae => \WM8731|ALT_INV_i2c_fsm.st0~q\,
	dataf => \WM8731|ALT_INV_data_index~10_combout\,
	combout => \WM8731|data_index~11_combout\);

-- Location: LABCELL_X83_Y12_N3
\WM8731|data_index~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \WM8731|data_index~12_combout\ = ( \WM8731|data_index~10_combout\ & ( \WM8731|i2c_fsm.st5~q\ ) ) # ( !\WM8731|data_index~10_combout\ & ( (\WM8731|i2c_fsm.st5~q\ & !\WM8731|clk_en~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \WM8731|ALT_INV_i2c_fsm.st5~q\,
	datad => \WM8731|ALT_INV_clk_en~q\,
	dataf => \WM8731|ALT_INV_data_index~10_combout\,
	combout => \WM8731|data_index~12_combout\);

-- Location: LABCELL_X83_Y12_N36
\WM8731|data_index~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \WM8731|data_index~8_combout\ = ( \WM8731|data_index\(3) & ( \WM8731|data_index~12_combout\ & ( ((!\WM8731|ack_en~DUPLICATE_q\) # (\FPGA_I2C_SDAT~input_o\)) # (\WM8731|i2c_fsm.st3~q\) ) ) ) # ( !\WM8731|data_index\(3) & ( \WM8731|data_index~12_combout\ & 
-- ( (\WM8731|i2c_fsm.st3~q\ & (!\FPGA_I2C_SDAT~input_o\ & \WM8731|ack_en~DUPLICATE_q\)) ) ) ) # ( \WM8731|data_index\(3) & ( !\WM8731|data_index~12_combout\ & ( (!\WM8731|data_index~11_combout\) # (\WM8731|i2c_fsm.st3~q\) ) ) ) # ( !\WM8731|data_index\(3) & 
-- ( !\WM8731|data_index~12_combout\ & ( (\WM8731|i2c_fsm.st3~q\ & (!\FPGA_I2C_SDAT~input_o\ & \WM8731|ack_en~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100111101011111010100000000010001001111111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WM8731|ALT_INV_i2c_fsm.st3~q\,
	datab => \ALT_INV_FPGA_I2C_SDAT~input_o\,
	datac => \WM8731|ALT_INV_data_index~11_combout\,
	datad => \WM8731|ALT_INV_ack_en~DUPLICATE_q\,
	datae => \WM8731|ALT_INV_data_index\(3),
	dataf => \WM8731|ALT_INV_data_index~12_combout\,
	combout => \WM8731|data_index~8_combout\);

-- Location: FF_X83_Y12_N38
\WM8731|data_index[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \WM8731|data_index~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WM8731|data_index\(3));

-- Location: MLABCELL_X84_Y12_N30
\WM8731|get_ack~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \WM8731|get_ack~1_combout\ = ( !\WM8731|data_index\(2) & ( (!\WM8731|data_index\(3) & (!\WM8731|data_index\(1) & !\WM8731|data_index\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \WM8731|ALT_INV_data_index\(3),
	datac => \WM8731|ALT_INV_data_index\(1),
	datad => \WM8731|ALT_INV_data_index\(0),
	dataf => \WM8731|ALT_INV_data_index\(2),
	combout => \WM8731|get_ack~1_combout\);

-- Location: MLABCELL_X82_Y12_N9
\WM8731|get_ack~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WM8731|get_ack~0_combout\ = ( !\WM8731|i2c_fsm.st1~DUPLICATE_q\ & ( (\WM8731|i2c_sda~1_combout\ & (!\WM8731|i2c_fsm.st8~q\ & \WM8731|i2c_fsm.st0~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WM8731|ALT_INV_i2c_sda~1_combout\,
	datac => \WM8731|ALT_INV_i2c_fsm.st8~q\,
	datad => \WM8731|ALT_INV_i2c_fsm.st0~q\,
	dataf => \WM8731|ALT_INV_i2c_fsm.st1~DUPLICATE_q\,
	combout => \WM8731|get_ack~0_combout\);

-- Location: MLABCELL_X84_Y12_N42
\WM8731|get_ack~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \WM8731|get_ack~2_combout\ = ( \WM8731|get_ack~q\ & ( \WM8731|data_index[2]~0_combout\ & ( !\WM8731|get_ack~0_combout\ ) ) ) # ( !\WM8731|get_ack~q\ & ( \WM8731|data_index[2]~0_combout\ & ( \WM8731|clk_en~q\ ) ) ) # ( \WM8731|get_ack~q\ & ( 
-- !\WM8731|data_index[2]~0_combout\ & ( !\WM8731|get_ack~0_combout\ ) ) ) # ( !\WM8731|get_ack~q\ & ( !\WM8731|data_index[2]~0_combout\ & ( (\WM8731|clk_en~q\ & (\WM8731|get_ack~1_combout\ & !\WM8731|data_index[2]~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000111111110000000001010101010101011111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WM8731|ALT_INV_clk_en~q\,
	datab => \WM8731|ALT_INV_get_ack~1_combout\,
	datac => \WM8731|ALT_INV_data_index[2]~1_combout\,
	datad => \WM8731|ALT_INV_get_ack~0_combout\,
	datae => \WM8731|ALT_INV_get_ack~q\,
	dataf => \WM8731|ALT_INV_data_index[2]~0_combout\,
	combout => \WM8731|get_ack~2_combout\);

-- Location: FF_X84_Y12_N44
\WM8731|get_ack\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \WM8731|get_ack~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WM8731|get_ack~q\);

-- Location: LABCELL_X83_Y12_N48
\WM8731|i2c_fsm~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \WM8731|i2c_fsm~20_combout\ = ( \WM_i2c_send_flag~q\ & ( \WM8731|i2c_fsm.st2~DUPLICATE_q\ & ( (!\WM8731|get_ack~q\ & \WM8731|i2c_fsm.st0~q\) ) ) ) # ( !\WM_i2c_send_flag~q\ & ( \WM8731|i2c_fsm.st2~DUPLICATE_q\ & ( (!\WM8731|get_ack~q\) # 
-- (!\WM8731|i2c_fsm.st0~q\) ) ) ) # ( \WM_i2c_send_flag~q\ & ( !\WM8731|i2c_fsm.st2~DUPLICATE_q\ & ( (!\WM8731|get_ack~q\ & (\WM8731|i2c_fsm.st0~q\ & ((\WM8731|i2c_fsm.st6~q\) # (\WM8731|i2c_fsm.st4~q\)))) ) ) ) # ( !\WM_i2c_send_flag~q\ & ( 
-- !\WM8731|i2c_fsm.st2~DUPLICATE_q\ & ( (!\WM8731|i2c_fsm.st0~q\) # ((!\WM8731|get_ack~q\ & ((\WM8731|i2c_fsm.st6~q\) # (\WM8731|i2c_fsm.st4~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100101010000000000010101011111111101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WM8731|ALT_INV_get_ack~q\,
	datab => \WM8731|ALT_INV_i2c_fsm.st4~q\,
	datac => \WM8731|ALT_INV_i2c_fsm.st6~q\,
	datad => \WM8731|ALT_INV_i2c_fsm.st0~q\,
	datae => \ALT_INV_WM_i2c_send_flag~q\,
	dataf => \WM8731|ALT_INV_i2c_fsm.st2~DUPLICATE_q\,
	combout => \WM8731|i2c_fsm~20_combout\);

-- Location: LABCELL_X83_Y12_N33
\WM8731|i2c_fsm~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \WM8731|i2c_fsm~21_combout\ = ( \WM8731|i2c_fsm.st6~q\ & ( \WM8731|i2c_fsm.st5~q\ & ( (!\WM8731|i2c_sda~1_combout\) # (\WM8731|i2c_fsm~20_combout\) ) ) ) # ( !\WM8731|i2c_fsm.st6~q\ & ( \WM8731|i2c_fsm.st5~q\ & ( (\WM8731|ack_en~DUPLICATE_q\ & 
-- (!\FPGA_I2C_SDAT~input_o\ & ((!\WM8731|i2c_sda~1_combout\) # (\WM8731|i2c_fsm~20_combout\)))) ) ) ) # ( \WM8731|i2c_fsm.st6~q\ & ( !\WM8731|i2c_fsm.st5~q\ & ( (!\WM8731|i2c_sda~1_combout\) # (\WM8731|i2c_fsm~20_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001111111101000000010100001100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WM8731|ALT_INV_ack_en~DUPLICATE_q\,
	datab => \WM8731|ALT_INV_i2c_sda~1_combout\,
	datac => \ALT_INV_FPGA_I2C_SDAT~input_o\,
	datad => \WM8731|ALT_INV_i2c_fsm~20_combout\,
	datae => \WM8731|ALT_INV_i2c_fsm.st6~q\,
	dataf => \WM8731|ALT_INV_i2c_fsm.st5~q\,
	combout => \WM8731|i2c_fsm~21_combout\);

-- Location: FF_X83_Y12_N35
\WM8731|i2c_fsm.st6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \WM8731|i2c_fsm~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WM8731|i2c_fsm.st6~q\);

-- Location: MLABCELL_X82_Y12_N24
\WM8731|i2c_fsm~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \WM8731|i2c_fsm~18_combout\ = ( \WM8731|get_ack~q\ & ( (!\WM8731|ack_en~DUPLICATE_q\ & (((\WM8731|clk_en~DUPLICATE_q\ & \WM8731|i2c_fsm.st6~q\)) # (\WM8731|i2c_fsm.st7~q\))) # (\WM8731|ack_en~DUPLICATE_q\ & (\WM8731|clk_en~DUPLICATE_q\ & 
-- (\WM8731|i2c_fsm.st6~q\))) ) ) # ( !\WM8731|get_ack~q\ & ( (!\WM8731|ack_en~DUPLICATE_q\ & \WM8731|i2c_fsm.st7~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000011101010110000001110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WM8731|ALT_INV_ack_en~DUPLICATE_q\,
	datab => \WM8731|ALT_INV_clk_en~DUPLICATE_q\,
	datac => \WM8731|ALT_INV_i2c_fsm.st6~q\,
	datad => \WM8731|ALT_INV_i2c_fsm.st7~q\,
	dataf => \WM8731|ALT_INV_get_ack~q\,
	combout => \WM8731|i2c_fsm~18_combout\);

-- Location: FF_X82_Y12_N26
\WM8731|i2c_fsm.st7~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \WM8731|i2c_fsm~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WM8731|i2c_fsm.st7~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y12_N48
\WM8731|i2c_sda~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \WM8731|i2c_sda~1_combout\ = ( !\WM8731|i2c_fsm.st5~q\ & ( (\WM8731|clk_en~DUPLICATE_q\ & (!\WM8731|i2c_fsm.st7~DUPLICATE_q\ & !\WM8731|i2c_fsm.st3~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WM8731|ALT_INV_clk_en~DUPLICATE_q\,
	datac => \WM8731|ALT_INV_i2c_fsm.st7~DUPLICATE_q\,
	datad => \WM8731|ALT_INV_i2c_fsm.st3~DUPLICATE_q\,
	dataf => \WM8731|ALT_INV_i2c_fsm.st5~q\,
	combout => \WM8731|i2c_sda~1_combout\);

-- Location: LABCELL_X83_Y12_N30
\WM8731|i2c_fsm~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \WM8731|i2c_fsm~24_combout\ = ( \WM8731|i2c_fsm.st4~q\ & ( \WM8731|i2c_fsm.st3~q\ & ( (!\WM8731|i2c_sda~1_combout\) # (\WM8731|i2c_fsm~20_combout\) ) ) ) # ( !\WM8731|i2c_fsm.st4~q\ & ( \WM8731|i2c_fsm.st3~q\ & ( (\WM8731|ack_en~DUPLICATE_q\ & 
-- (!\FPGA_I2C_SDAT~input_o\ & ((!\WM8731|i2c_sda~1_combout\) # (\WM8731|i2c_fsm~20_combout\)))) ) ) ) # ( \WM8731|i2c_fsm.st4~q\ & ( !\WM8731|i2c_fsm.st3~q\ & ( (!\WM8731|i2c_sda~1_combout\) # (\WM8731|i2c_fsm~20_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011111100111101000101000000001100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WM8731|ALT_INV_ack_en~DUPLICATE_q\,
	datab => \WM8731|ALT_INV_i2c_sda~1_combout\,
	datac => \WM8731|ALT_INV_i2c_fsm~20_combout\,
	datad => \ALT_INV_FPGA_I2C_SDAT~input_o\,
	datae => \WM8731|ALT_INV_i2c_fsm.st4~q\,
	dataf => \WM8731|ALT_INV_i2c_fsm.st3~q\,
	combout => \WM8731|i2c_fsm~24_combout\);

-- Location: FF_X83_Y12_N32
\WM8731|i2c_fsm.st4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \WM8731|i2c_fsm~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WM8731|i2c_fsm.st4~q\);

-- Location: MLABCELL_X84_Y12_N54
\WM8731|Selector25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WM8731|Selector25~0_combout\ = ( \WM8731|i2c_fsm.st2~q\ & ( (!\WM8731|data_index\(1) & (\WM8731|data_index\(2))) # (\WM8731|data_index\(1) & (!\WM8731|data_index\(2) & !\WM8731|data_index\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011010000010100101101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WM8731|ALT_INV_data_index\(1),
	datac => \WM8731|ALT_INV_data_index\(2),
	datad => \WM8731|ALT_INV_data_index\(0),
	dataf => \WM8731|ALT_INV_i2c_fsm.st2~q\,
	combout => \WM8731|Selector25~0_combout\);

-- Location: IOIBUF_X89_Y21_N4
\sw[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => \sw[0]~input_o\);

-- Location: LABCELL_X85_Y12_N30
\WM_i2c_data~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \WM_i2c_data~8_combout\ = ( \key[1]~input_o\ & ( \sw[0]~input_o\ ) ) # ( !\key[1]~input_o\ & ( \sw[0]~input_o\ & ( !\key[0]~input_o\ ) ) ) # ( \key[1]~input_o\ & ( !\sw[0]~input_o\ & ( (!\key[0]~input_o\) # (\key[2]~input_o\) ) ) ) # ( !\key[1]~input_o\ & 
-- ( !\sw[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111110011111100111111001100110011001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_key[0]~input_o\,
	datac => \ALT_INV_key[2]~input_o\,
	datae => \ALT_INV_key[1]~input_o\,
	dataf => \ALT_INV_sw[0]~input_o\,
	combout => \WM_i2c_data~8_combout\);

-- Location: LABCELL_X85_Y12_N27
\WM_i2c_data[12]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \WM_i2c_data[12]~1_combout\ = ( \key[2]~input_o\ & ( !\WM8731|i2c_busy~q\ & ( (!\key[3]~input_o\) # ((!\key[0]~input_o\) # (!\key[1]~input_o\)) ) ) ) # ( !\key[2]~input_o\ & ( !\WM8731|i2c_busy~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_key[3]~input_o\,
	datac => \ALT_INV_key[0]~input_o\,
	datad => \ALT_INV_key[1]~input_o\,
	datae => \ALT_INV_key[2]~input_o\,
	dataf => \WM8731|ALT_INV_i2c_busy~q\,
	combout => \WM_i2c_data[12]~1_combout\);

-- Location: FF_X85_Y12_N32
\WM_i2c_data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \WM_i2c_data~8_combout\,
	ena => \WM_i2c_data[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => WM_i2c_data(11));

-- Location: LABCELL_X85_Y12_N12
\WM_i2c_data~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \WM_i2c_data~7_combout\ = ( \key[3]~input_o\ & ( (!\key[0]~input_o\) # ((!\key[1]~input_o\ & ((!\sw[0]~input_o\))) # (\key[1]~input_o\ & (\key[2]~input_o\))) ) ) # ( !\key[3]~input_o\ & ( (!\key[0]~input_o\) # ((!\key[1]~input_o\ & ((!\sw[0]~input_o\))) # 
-- (\key[1]~input_o\ & (\key[2]~input_o\ & \sw[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011001101111111001100110111111101110011011111110111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_key[2]~input_o\,
	datab => \ALT_INV_key[0]~input_o\,
	datac => \ALT_INV_key[1]~input_o\,
	datad => \ALT_INV_sw[0]~input_o\,
	dataf => \ALT_INV_key[3]~input_o\,
	combout => \WM_i2c_data~7_combout\);

-- Location: FF_X85_Y12_N14
\WM_i2c_data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \WM_i2c_data~7_combout\,
	ena => \WM_i2c_data[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => WM_i2c_data(10));

-- Location: LABCELL_X85_Y12_N15
\WM_i2c_data~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \WM_i2c_data~6_combout\ = ( \key[0]~input_o\ & ( (\key[1]~input_o\ & ((!\sw[0]~input_o\) # (\key[2]~input_o\))) ) ) # ( !\key[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000111101010000000011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_key[2]~input_o\,
	datac => \ALT_INV_sw[0]~input_o\,
	datad => \ALT_INV_key[1]~input_o\,
	dataf => \ALT_INV_key[0]~input_o\,
	combout => \WM_i2c_data~6_combout\);

-- Location: FF_X85_Y12_N17
\WM_i2c_data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \WM_i2c_data~6_combout\,
	ena => \WM_i2c_data[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => WM_i2c_data(9));

-- Location: LABCELL_X85_Y12_N48
\WM_i2c_data~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \WM_i2c_data~4_combout\ = ( \key[1]~input_o\ & ( !\sw[0]~input_o\ & ( (\key[0]~input_o\ & !\key[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_key[0]~input_o\,
	datac => \ALT_INV_key[2]~input_o\,
	datae => \ALT_INV_key[1]~input_o\,
	dataf => \ALT_INV_sw[0]~input_o\,
	combout => \WM_i2c_data~4_combout\);

-- Location: FF_X84_Y12_N35
\WM_i2c_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	asdata => \WM_i2c_data~4_combout\,
	sload => VCC,
	ena => \WM_i2c_data[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => WM_i2c_data(3));

-- Location: MLABCELL_X84_Y12_N6
\WM8731|Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \WM8731|Mux1~2_combout\ = ( WM_i2c_data(9) & ( WM_i2c_data(3) & ( (!\WM8731|data_index\(1)) # ((!\WM8731|data_index\(0) & ((WM_i2c_data(10)))) # (\WM8731|data_index\(0) & (WM_i2c_data(11)))) ) ) ) # ( !WM_i2c_data(9) & ( WM_i2c_data(3) & ( 
-- (!\WM8731|data_index\(1) & (((!\WM8731|data_index\(0))))) # (\WM8731|data_index\(1) & ((!\WM8731|data_index\(0) & ((WM_i2c_data(10)))) # (\WM8731|data_index\(0) & (WM_i2c_data(11))))) ) ) ) # ( WM_i2c_data(9) & ( !WM_i2c_data(3) & ( 
-- (!\WM8731|data_index\(1) & (((\WM8731|data_index\(0))))) # (\WM8731|data_index\(1) & ((!\WM8731|data_index\(0) & ((WM_i2c_data(10)))) # (\WM8731|data_index\(0) & (WM_i2c_data(11))))) ) ) ) # ( !WM_i2c_data(9) & ( !WM_i2c_data(3) & ( 
-- (\WM8731|data_index\(1) & ((!\WM8731|data_index\(0) & ((WM_i2c_data(10)))) # (\WM8731|data_index\(0) & (WM_i2c_data(11))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000101000000111111010111110011000001011111001111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_WM_i2c_data(11),
	datab => ALT_INV_WM_i2c_data(10),
	datac => \WM8731|ALT_INV_data_index\(1),
	datad => \WM8731|ALT_INV_data_index\(0),
	datae => ALT_INV_WM_i2c_data(9),
	dataf => ALT_INV_WM_i2c_data(3),
	combout => \WM8731|Mux1~2_combout\);

-- Location: LABCELL_X85_Y12_N3
\WM_i2c_data~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \WM_i2c_data~9_combout\ = ( \sw[0]~input_o\ & ( (\key[0]~input_o\ & ((!\key[1]~input_o\) # (\key[2]~input_o\))) ) ) # ( !\sw[0]~input_o\ & ( (\key[0]~input_o\ & (\key[1]~input_o\ & ((!\key[2]~input_o\) # (\key[3]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001011000000000000101100001111000001010000111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_key[2]~input_o\,
	datab => \ALT_INV_key[3]~input_o\,
	datac => \ALT_INV_key[0]~input_o\,
	datad => \ALT_INV_key[1]~input_o\,
	dataf => \ALT_INV_sw[0]~input_o\,
	combout => \WM_i2c_data~9_combout\);

-- Location: FF_X85_Y12_N5
\WM_i2c_data[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \WM_i2c_data~9_combout\,
	ena => \WM_i2c_data[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => WM_i2c_data(12));

-- Location: MLABCELL_X84_Y12_N36
\WM8731|Mux1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \WM8731|Mux1~3_combout\ = ( !\WM8731|data_index\(0) & ( (!\WM8731|data_index\(1) & WM_i2c_data(12)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \WM8731|ALT_INV_data_index\(1),
	datad => ALT_INV_WM_i2c_data(12),
	dataf => \WM8731|ALT_INV_data_index\(0),
	combout => \WM8731|Mux1~3_combout\);

-- Location: MLABCELL_X84_Y12_N33
\WM_i2c_data~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \WM_i2c_data~5_combout\ = ( \key[2]~input_o\ & ( !\key[0]~input_o\ ) ) # ( !\key[2]~input_o\ & ( (!\key[0]~input_o\) # (\key[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101111101011111010111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_key[1]~input_o\,
	datac => \ALT_INV_key[0]~input_o\,
	dataf => \ALT_INV_key[2]~input_o\,
	combout => \WM_i2c_data~5_combout\);

-- Location: FF_X84_Y12_N59
\WM_i2c_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	asdata => \WM_i2c_data~5_combout\,
	sload => VCC,
	ena => \WM_i2c_data[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => WM_i2c_data(4));

-- Location: MLABCELL_X84_Y12_N3
\WM8731|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \WM8731|Mux1~1_combout\ = ( WM_i2c_data(3) & ( ((\WM8731|data_index\(1)) # (\WM8731|data_index\(0))) # (WM_i2c_data(4)) ) ) # ( !WM_i2c_data(3) & ( (WM_i2c_data(4) & (!\WM8731|data_index\(0) & !\WM8731|data_index\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000111111111111110011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_WM_i2c_data(4),
	datac => \WM8731|ALT_INV_data_index\(0),
	datad => \WM8731|ALT_INV_data_index\(1),
	dataf => ALT_INV_WM_i2c_data(3),
	combout => \WM8731|Mux1~1_combout\);

-- Location: LABCELL_X85_Y12_N9
\WM_i2c_data~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \WM_i2c_data~3_combout\ = ( !\sw[0]~input_o\ & ( (\key[0]~input_o\ & ((!\key[1]~input_o\) # (!\key[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001010000011110000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_key[1]~input_o\,
	datac => \ALT_INV_key[0]~input_o\,
	datad => \ALT_INV_key[2]~input_o\,
	dataf => \ALT_INV_sw[0]~input_o\,
	combout => \WM_i2c_data~3_combout\);

-- Location: FF_X84_Y12_N14
\WM_i2c_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	asdata => \WM_i2c_data~3_combout\,
	sload => VCC,
	ena => \WM_i2c_data[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => WM_i2c_data(2));

-- Location: MLABCELL_X84_Y12_N0
\WM_i2c_data~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WM_i2c_data~0_combout\ = ( \key[2]~input_o\ & ( (!\key[0]~input_o\) # (!\key[1]~input_o\) ) ) # ( !\key[2]~input_o\ & ( (!\key[0]~input_o\) # ((!\key[1]~input_o\) # (!\sw[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111010111111111111101011111010111110101111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_key[0]~input_o\,
	datac => \ALT_INV_key[1]~input_o\,
	datad => \ALT_INV_sw[0]~input_o\,
	dataf => \ALT_INV_key[2]~input_o\,
	combout => \WM_i2c_data~0_combout\);

-- Location: FF_X84_Y12_N2
\WM_i2c_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \WM_i2c_data~0_combout\,
	ena => \WM_i2c_data[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => WM_i2c_data(0));

-- Location: LABCELL_X85_Y12_N54
\WM_i2c_data~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \WM_i2c_data~2_combout\ = ( \key[1]~input_o\ & ( \sw[0]~input_o\ & ( (!\key[0]~input_o\) # (!\key[2]~input_o\) ) ) ) # ( !\key[1]~input_o\ & ( \sw[0]~input_o\ & ( !\key[0]~input_o\ ) ) ) # ( \key[1]~input_o\ & ( !\sw[0]~input_o\ & ( (!\key[0]~input_o\) # 
-- (!\key[2]~input_o\) ) ) ) # ( !\key[1]~input_o\ & ( !\sw[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111001111110011001100110011001111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_key[0]~input_o\,
	datac => \ALT_INV_key[2]~input_o\,
	datae => \ALT_INV_key[1]~input_o\,
	dataf => \ALT_INV_sw[0]~input_o\,
	combout => \WM_i2c_data~2_combout\);

-- Location: FF_X84_Y12_N11
\WM_i2c_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	asdata => \WM_i2c_data~2_combout\,
	sload => VCC,
	ena => \WM_i2c_data[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => WM_i2c_data(1));

-- Location: MLABCELL_X84_Y12_N24
\WM8731|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WM8731|Mux1~0_combout\ = ( WM_i2c_data(0) & ( WM_i2c_data(1) & ( (!\WM8731|data_index\(1)) # ((!\WM8731|data_index\(0) & ((WM_i2c_data(2)))) # (\WM8731|data_index\(0) & (WM_i2c_data(3)))) ) ) ) # ( !WM_i2c_data(0) & ( WM_i2c_data(1) & ( 
-- (!\WM8731|data_index\(1) & (\WM8731|data_index\(0))) # (\WM8731|data_index\(1) & ((!\WM8731|data_index\(0) & ((WM_i2c_data(2)))) # (\WM8731|data_index\(0) & (WM_i2c_data(3))))) ) ) ) # ( WM_i2c_data(0) & ( !WM_i2c_data(1) & ( (!\WM8731|data_index\(1) & 
-- (!\WM8731|data_index\(0))) # (\WM8731|data_index\(1) & ((!\WM8731|data_index\(0) & ((WM_i2c_data(2)))) # (\WM8731|data_index\(0) & (WM_i2c_data(3))))) ) ) ) # ( !WM_i2c_data(0) & ( !WM_i2c_data(1) & ( (\WM8731|data_index\(1) & ((!\WM8731|data_index\(0) & 
-- ((WM_i2c_data(2)))) # (\WM8731|data_index\(0) & (WM_i2c_data(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101100010011100110100100011011001111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WM8731|ALT_INV_data_index\(1),
	datab => \WM8731|ALT_INV_data_index\(0),
	datac => ALT_INV_WM_i2c_data(3),
	datad => ALT_INV_WM_i2c_data(2),
	datae => ALT_INV_WM_i2c_data(0),
	dataf => ALT_INV_WM_i2c_data(1),
	combout => \WM8731|Mux1~0_combout\);

-- Location: MLABCELL_X84_Y12_N15
\WM8731|Mux1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \WM8731|Mux1~4_combout\ = ( \WM8731|Mux1~1_combout\ & ( \WM8731|Mux1~0_combout\ & ( (!\WM8731|data_index\(3)) # ((!\WM8731|data_index\(2) & (\WM8731|Mux1~2_combout\)) # (\WM8731|data_index\(2) & ((\WM8731|Mux1~3_combout\)))) ) ) ) # ( 
-- !\WM8731|Mux1~1_combout\ & ( \WM8731|Mux1~0_combout\ & ( (!\WM8731|data_index\(2) & ((!\WM8731|data_index\(3)) # ((\WM8731|Mux1~2_combout\)))) # (\WM8731|data_index\(2) & (\WM8731|data_index\(3) & ((\WM8731|Mux1~3_combout\)))) ) ) ) # ( 
-- \WM8731|Mux1~1_combout\ & ( !\WM8731|Mux1~0_combout\ & ( (!\WM8731|data_index\(2) & (\WM8731|data_index\(3) & (\WM8731|Mux1~2_combout\))) # (\WM8731|data_index\(2) & ((!\WM8731|data_index\(3)) # ((\WM8731|Mux1~3_combout\)))) ) ) ) # ( 
-- !\WM8731|Mux1~1_combout\ & ( !\WM8731|Mux1~0_combout\ & ( (\WM8731|data_index\(3) & ((!\WM8731|data_index\(2) & (\WM8731|Mux1~2_combout\)) # (\WM8731|data_index\(2) & ((\WM8731|Mux1~3_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011010001100101011110001010100110111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WM8731|ALT_INV_data_index\(2),
	datab => \WM8731|ALT_INV_data_index\(3),
	datac => \WM8731|ALT_INV_Mux1~2_combout\,
	datad => \WM8731|ALT_INV_Mux1~3_combout\,
	datae => \WM8731|ALT_INV_Mux1~1_combout\,
	dataf => \WM8731|ALT_INV_Mux1~0_combout\,
	combout => \WM8731|Mux1~4_combout\);

-- Location: MLABCELL_X84_Y12_N39
\WM8731|Selector25~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \WM8731|Selector25~1_combout\ = ( \WM8731|Mux1~4_combout\ & ( ((!\WM8731|i2c_fsm.st0~q\) # ((\WM8731|Selector25~0_combout\) # (\WM8731|i2c_fsm.st6~q\))) # (\WM8731|i2c_fsm.st4~q\) ) ) # ( !\WM8731|Mux1~4_combout\ & ( (!\WM8731|i2c_fsm.st0~q\) # 
-- (\WM8731|Selector25~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011111111110011001111111111011111111111111101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WM8731|ALT_INV_i2c_fsm.st4~q\,
	datab => \WM8731|ALT_INV_i2c_fsm.st0~q\,
	datac => \WM8731|ALT_INV_i2c_fsm.st6~q\,
	datad => \WM8731|ALT_INV_Selector25~0_combout\,
	dataf => \WM8731|ALT_INV_Mux1~4_combout\,
	combout => \WM8731|Selector25~1_combout\);

-- Location: FF_X84_Y12_N40
\WM8731|i2c_sda~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \WM8731|Selector25~1_combout\,
	ena => \WM8731|i2c_sda~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WM8731|i2c_sda~reg0_q\);

-- Location: MLABCELL_X82_Y12_N6
\WM8731|Selector26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WM8731|Selector26~0_combout\ = ( \WM8731|i2c_fsm.st4~q\ & ( !\WM8731|get_ack~q\ ) ) # ( !\WM8731|i2c_fsm.st4~q\ & ( (!\WM8731|get_ack~q\) # ((!\WM8731|i2c_fsm.st2~DUPLICATE_q\ & !\WM8731|i2c_fsm.st6~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111000000111111111100000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \WM8731|ALT_INV_i2c_fsm.st2~DUPLICATE_q\,
	datac => \WM8731|ALT_INV_i2c_fsm.st6~q\,
	datad => \WM8731|ALT_INV_get_ack~q\,
	dataf => \WM8731|ALT_INV_i2c_fsm.st4~q\,
	combout => \WM8731|Selector26~0_combout\);

-- Location: FF_X82_Y12_N7
\WM8731|i2c_sda~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \WM8731|Selector26~0_combout\,
	ena => \WM8731|i2c_sda~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WM8731|i2c_sda~en_q\);

-- Location: FF_X66_Y7_N7
\u0|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \u0|counter[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|counter\(1));

-- Location: FF_X66_Y7_N49
\u0|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \u0|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|counter\(0));

-- Location: LABCELL_X66_Y7_N6
\u0|counter[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|counter[1]~1_combout\ = ( !\u0|counter\(1) & ( \u0|counter\(0) ) ) # ( \u0|counter\(1) & ( !\u0|counter\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \u0|ALT_INV_counter\(1),
	dataf => \u0|ALT_INV_counter\(0),
	combout => \u0|counter[1]~1_combout\);

-- Location: FF_X66_Y7_N8
\u0|counter[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \u0|counter[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|counter[1]~DUPLICATE_q\);

-- Location: FF_X66_Y7_N22
\u0|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \u0|counter[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|counter\(3));

-- Location: FF_X66_Y7_N40
\u0|counter[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \u0|counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|counter[2]~DUPLICATE_q\);

-- Location: LABCELL_X66_Y7_N21
\u0|counter[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|counter[3]~3_combout\ = ( \u0|counter\(3) & ( \u0|counter[2]~DUPLICATE_q\ & ( (!\u0|counter[0]~DUPLICATE_q\) # (!\u0|counter[1]~DUPLICATE_q\) ) ) ) # ( !\u0|counter\(3) & ( \u0|counter[2]~DUPLICATE_q\ & ( (\u0|counter[0]~DUPLICATE_q\ & 
-- \u0|counter[1]~DUPLICATE_q\) ) ) ) # ( \u0|counter\(3) & ( !\u0|counter[2]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100010001000100011110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|ALT_INV_counter[0]~DUPLICATE_q\,
	datab => \u0|ALT_INV_counter[1]~DUPLICATE_q\,
	datae => \u0|ALT_INV_counter\(3),
	dataf => \u0|ALT_INV_counter[2]~DUPLICATE_q\,
	combout => \u0|counter[3]~3_combout\);

-- Location: FF_X66_Y7_N23
\u0|counter[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \u0|counter[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|counter[3]~DUPLICATE_q\);

-- Location: LABCELL_X66_Y7_N48
\u0|counter~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|counter~0_combout\ = ( !\u0|counter\(0) & ( \u0|counter[2]~DUPLICATE_q\ & ( (\u0|counter\(1)) # (\u0|counter[3]~DUPLICATE_q\) ) ) ) # ( !\u0|counter\(0) & ( !\u0|counter[2]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000001011111010111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|ALT_INV_counter[3]~DUPLICATE_q\,
	datac => \u0|ALT_INV_counter\(1),
	datae => \u0|ALT_INV_counter\(0),
	dataf => \u0|ALT_INV_counter[2]~DUPLICATE_q\,
	combout => \u0|counter~0_combout\);

-- Location: FF_X66_Y7_N50
\u0|counter[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \u0|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|counter[0]~DUPLICATE_q\);

-- Location: LABCELL_X66_Y7_N39
\u0|counter~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|counter~2_combout\ = ( \u0|counter\(2) & ( \u0|counter\(3) & ( (!\u0|counter[0]~DUPLICATE_q\) # (!\u0|counter\(1)) ) ) ) # ( !\u0|counter\(2) & ( \u0|counter\(3) & ( (\u0|counter[0]~DUPLICATE_q\ & \u0|counter\(1)) ) ) ) # ( \u0|counter\(2) & ( 
-- !\u0|counter\(3) & ( !\u0|counter[0]~DUPLICATE_q\ $ (!\u0|counter\(1)) ) ) ) # ( !\u0|counter\(2) & ( !\u0|counter\(3) & ( (\u0|counter[0]~DUPLICATE_q\ & \u0|counter\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101010101011010101000000000010101011111111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|ALT_INV_counter[0]~DUPLICATE_q\,
	datad => \u0|ALT_INV_counter\(1),
	datae => \u0|ALT_INV_counter\(2),
	dataf => \u0|ALT_INV_counter\(3),
	combout => \u0|counter~2_combout\);

-- Location: FF_X66_Y7_N41
\u0|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \u0|counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|counter\(2));

-- Location: LABCELL_X66_Y7_N57
\u0|clk_reg~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|clk_reg~0_combout\ = ( \u0|counter\(0) & ( \u0|clk_reg~q\ ) ) # ( !\u0|counter\(0) & ( \u0|clk_reg~q\ & ( (!\u0|counter\(2)) # ((\u0|counter[3]~DUPLICATE_q\) # (\u0|counter[1]~DUPLICATE_q\)) ) ) ) # ( !\u0|counter\(0) & ( !\u0|clk_reg~q\ & ( 
-- (\u0|counter\(2) & (!\u0|counter[1]~DUPLICATE_q\ & !\u0|counter[3]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000000000000000000011001111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u0|ALT_INV_counter\(2),
	datac => \u0|ALT_INV_counter[1]~DUPLICATE_q\,
	datad => \u0|ALT_INV_counter[3]~DUPLICATE_q\,
	datae => \u0|ALT_INV_counter\(0),
	dataf => \u0|ALT_INV_clk_reg~q\,
	combout => \u0|clk_reg~0_combout\);

-- Location: LABCELL_X66_Y7_N42
\u0|clk_reg~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|clk_reg~feeder_combout\ = ( \u0|clk_reg~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u0|ALT_INV_clk_reg~0_combout\,
	combout => \u0|clk_reg~feeder_combout\);

-- Location: FF_X66_Y7_N44
\u0|clk_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \u0|clk_reg~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|clk_reg~q\);

-- Location: MLABCELL_X82_Y7_N51
\internal_ADCLRCK~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \internal_ADCLRCK~0_combout\ = ( !\internal_ADCLRCK~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_internal_ADCLRCK~q\,
	combout => \internal_ADCLRCK~0_combout\);

-- Location: FF_X82_Y7_N56
internal_ADCLRCK : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|clk_reg~q\,
	asdata => \internal_ADCLRCK~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \internal_ADCLRCK~q\);

-- Location: MLABCELL_X82_Y7_N45
\internal_DACLRCK~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \internal_DACLRCK~0_combout\ = ( !\internal_DACLRCK~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_internal_DACLRCK~q\,
	combout => \internal_DACLRCK~0_combout\);

-- Location: MLABCELL_X82_Y7_N12
\internal_DACLRCK~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \internal_DACLRCK~feeder_combout\ = ( \internal_DACLRCK~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_internal_DACLRCK~0_combout\,
	combout => \internal_DACLRCK~feeder_combout\);

-- Location: FF_X82_Y7_N14
internal_DACLRCK : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|clk_reg~q\,
	d => \internal_DACLRCK~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \internal_DACLRCK~q\);

-- Location: IOIBUF_X89_Y6_N38
\AUD_ADCDAT~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AUD_ADCDAT,
	o => \AUD_ADCDAT~input_o\);

-- Location: FF_X83_Y7_N20
\aud_data[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \internal_ADCLRCK~q\,
	asdata => \AUD_ADCDAT~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => aud_data(15));

-- Location: FF_X83_Y7_N43
\AUD_DACDAT~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \internal_DACLRCK~q\,
	asdata => aud_data(15),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AUD_DACDAT~reg0_q\);

-- Location: LABCELL_X81_Y12_N30
\WM8731|LessThan1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \WM8731|LessThan1~1_combout\ = ( \WM8731|clk_prs\(0) & ( \WM8731|LessThan1~0_combout\ & ( (!\WM8731|clk_prs[2]~DUPLICATE_q\ & (!\WM8731|clk_prs\(7) & !\WM8731|clk_prs\(8))) ) ) ) # ( !\WM8731|clk_prs\(0) & ( \WM8731|LessThan1~0_combout\ & ( 
-- (!\WM8731|clk_prs\(7) & (!\WM8731|clk_prs\(8) & ((!\WM8731|clk_prs\(1)) # (!\WM8731|clk_prs[2]~DUPLICATE_q\)))) ) ) ) # ( \WM8731|clk_prs\(0) & ( !\WM8731|LessThan1~0_combout\ & ( (!\WM8731|clk_prs\(7) & !\WM8731|clk_prs\(8)) ) ) ) # ( 
-- !\WM8731|clk_prs\(0) & ( !\WM8731|LessThan1~0_combout\ & ( (!\WM8731|clk_prs\(7) & !\WM8731|clk_prs\(8)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011100000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WM8731|ALT_INV_clk_prs\(1),
	datab => \WM8731|ALT_INV_clk_prs[2]~DUPLICATE_q\,
	datac => \WM8731|ALT_INV_clk_prs\(7),
	datad => \WM8731|ALT_INV_clk_prs\(8),
	datae => \WM8731|ALT_INV_clk_prs\(0),
	dataf => \WM8731|ALT_INV_LessThan1~0_combout\,
	combout => \WM8731|LessThan1~1_combout\);

-- Location: FF_X81_Y12_N32
\WM8731|clk_i2c\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \WM8731|LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WM8731|clk_i2c~q\);

-- Location: LABCELL_X83_Y12_N27
\WM8731|i2c_clk_en~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WM8731|i2c_clk_en~0_combout\ = ( \WM8731|i2c_fsm.st6~q\ ) # ( !\WM8731|i2c_fsm.st6~q\ & ( ((!\WM8731|clk_en~DUPLICATE_q\) # ((!\WM8731|i2c_fsm.st0~q\) # (\WM8731|i2c_fsm.st4~q\))) # (\WM8731|i2c_fsm.st1~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111011111111111111101111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WM8731|ALT_INV_i2c_fsm.st1~q\,
	datab => \WM8731|ALT_INV_clk_en~DUPLICATE_q\,
	datac => \WM8731|ALT_INV_i2c_fsm.st4~q\,
	datad => \WM8731|ALT_INV_i2c_fsm.st0~q\,
	dataf => \WM8731|ALT_INV_i2c_fsm.st6~q\,
	combout => \WM8731|i2c_clk_en~0_combout\);

-- Location: MLABCELL_X82_Y12_N12
\WM8731|i2c_clk_en~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \WM8731|i2c_clk_en~1_combout\ = ( !\WM8731|WideNor0~combout\ & ( (!\WM8731|clk_en~DUPLICATE_q\ & (((\WM8731|i2c_clk_en~0_combout\ & ((\WM8731|i2c_clk_en~q\)))))) # (\WM8731|clk_en~DUPLICATE_q\ & (((\WM8731|i2c_clk_en~0_combout\ & 
-- ((\WM8731|i2c_clk_en~q\)))) # (\WM8731|i2c_fsm.st2~DUPLICATE_q\))) ) ) # ( \WM8731|WideNor0~combout\ & ( (!\WM8731|i2c_clk_en~q\ & (\WM8731|clk_en~DUPLICATE_q\ & (\WM8731|i2c_fsm.st2~DUPLICATE_q\))) # (\WM8731|i2c_clk_en~q\ & 
-- ((!\WM8731|ack_en~DUPLICATE_q\) # ((!\FPGA_I2C_SDAT~input_o\) # ((\WM8731|clk_en~DUPLICATE_q\ & \WM8731|i2c_fsm.st2~DUPLICATE_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001000100010001000100010001000100011111000111111111111111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WM8731|ALT_INV_clk_en~DUPLICATE_q\,
	datab => \WM8731|ALT_INV_i2c_fsm.st2~DUPLICATE_q\,
	datac => \WM8731|ALT_INV_ack_en~DUPLICATE_q\,
	datad => \ALT_INV_FPGA_I2C_SDAT~input_o\,
	datae => \WM8731|ALT_INV_WideNor0~combout\,
	dataf => \WM8731|ALT_INV_i2c_clk_en~q\,
	datag => \WM8731|ALT_INV_i2c_clk_en~0_combout\,
	combout => \WM8731|i2c_clk_en~1_combout\);

-- Location: FF_X82_Y12_N14
\WM8731|i2c_clk_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \WM8731|i2c_clk_en~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WM8731|i2c_clk_en~q\);

-- Location: LABCELL_X85_Y12_N36
\WM8731|i2c_scl~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WM8731|i2c_scl~0_combout\ = ( \WM8731|i2c_clk_en~q\ & ( \WM8731|clk_i2c~q\ ) ) # ( !\WM8731|i2c_clk_en~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \WM8731|ALT_INV_clk_i2c~q\,
	dataf => \WM8731|ALT_INV_i2c_clk_en~q\,
	combout => \WM8731|i2c_scl~0_combout\);

-- Location: FF_X85_Y12_N37
\WM8731|i2c_scl\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \WM8731|i2c_scl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WM8731|i2c_scl~q\);

-- Location: IOIBUF_X89_Y25_N21
\sw[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => \sw[1]~input_o\);

-- Location: IOIBUF_X89_Y21_N38
\sw[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(2),
	o => \sw[2]~input_o\);

-- Location: IOIBUF_X89_Y25_N55
\sw[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(3),
	o => \sw[3]~input_o\);

-- Location: IOIBUF_X89_Y20_N44
\sw[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(4),
	o => \sw[4]~input_o\);

-- Location: IOIBUF_X89_Y20_N61
\sw[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(5),
	o => \sw[5]~input_o\);

-- Location: IOIBUF_X89_Y20_N78
\sw[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(6),
	o => \sw[6]~input_o\);

-- Location: IOIBUF_X89_Y25_N38
\sw[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(7),
	o => \sw[7]~input_o\);

-- Location: IOIBUF_X89_Y20_N95
\sw[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(8),
	o => \sw[8]~input_o\);

-- Location: IOIBUF_X89_Y21_N21
\sw[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(9),
	o => \sw[9]~input_o\);

-- Location: LABCELL_X62_Y2_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


