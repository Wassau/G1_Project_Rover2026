-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "11/22/2026 18:19:42"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Prueba_comunicacion IS
    PORT (
	PWM : OUT std_logic;
	CLK : IN std_logic;
	RESET : IN std_logic;
	Rdx : IN std_logic
	);
END Prueba_comunicacion;

-- Design Ports Information
-- PWM	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rdx	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Prueba_comunicacion IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_PWM : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_Rdx : std_logic;
SIGNAL \inst5|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst5|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst7|LessThan2~1_cout\ : std_logic;
SIGNAL \inst7|LessThan2~3_cout\ : std_logic;
SIGNAL \inst7|LessThan2~5_cout\ : std_logic;
SIGNAL \inst7|LessThan2~7_cout\ : std_logic;
SIGNAL \inst7|LessThan2~9_cout\ : std_logic;
SIGNAL \inst7|LessThan2~11_cout\ : std_logic;
SIGNAL \inst7|LessThan2~13_cout\ : std_logic;
SIGNAL \inst7|LessThan2~14_combout\ : std_logic;
SIGNAL \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ : std_logic;
SIGNAL \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ : std_logic;
SIGNAL \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ : std_logic;
SIGNAL \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\ : std_logic;
SIGNAL \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\ : std_logic;
SIGNAL \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ : std_logic;
SIGNAL \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\ : std_logic;
SIGNAL \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\ : std_logic;
SIGNAL \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\ : std_logic;
SIGNAL \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~19\ : std_logic;
SIGNAL \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_12~1\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_12~0_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_12~3\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_12~2_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_12~5\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_12~4_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_12~7\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_12~6_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_12~9\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_12~8_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_12~11\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_12~10_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_12~13\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_12~12_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_12~15\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_12~14_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_12~16_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_13~1\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_13~0_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_13~3\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_13~2_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_13~5\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_13~4_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_13~7\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_13~6_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_13~9\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_13~8_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_13~11\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_13~10_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_13~13\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_13~12_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_13~15\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_13~14_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_13~17_cout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_13~18_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_14~1\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_14~0_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_14~3\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_14~2_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_14~5\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_14~4_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_14~7\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_14~6_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_14~9\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_14~8_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_14~11\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_14~10_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_14~13\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_14~12_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_14~15\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_14~14_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_14~17_cout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_14~18_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_1~1\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_1~0_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_1~3\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_1~2_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_1~5\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_1~4_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_1~7\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_1~6_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_1~9\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_1~8_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_1~11\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_1~10_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_1~13\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_1~12_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_1~15\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_1~14_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_1~17_cout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_1~18_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_2~1\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_2~0_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_2~3\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_2~2_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_2~5\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_2~4_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_2~7\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_2~6_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_2~9\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_2~8_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_2~11\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_2~10_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_2~13\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_2~12_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_2~15\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_2~14_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_2~17_cout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_2~18_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_3~1\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_3~0_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_3~3\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_3~2_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_3~5\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_3~4_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_3~7\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_3~6_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_3~9\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_3~8_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_3~11\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_3~10_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_3~13\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_3~12_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_3~15\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_3~14_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_3~17_cout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_3~18_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_4~1\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_4~0_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_4~3\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_4~2_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_4~5\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_4~4_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_4~7\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_4~6_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_4~9\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_4~8_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_4~11\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_4~10_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_4~13\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_4~12_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_4~15\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_4~14_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_4~17_cout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_4~18_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_5~1_cout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_5~3_cout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_5~5_cout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_5~7_cout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_5~9_cout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_5~11_cout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_5~13_cout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_5~15\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_5~14_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_5~17_cout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_5~18_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_6~1_cout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|op_6~2_combout\ : std_logic;
SIGNAL \inst7|Add2~1\ : std_logic;
SIGNAL \inst7|Add2~0_combout\ : std_logic;
SIGNAL \inst7|Add2~3\ : std_logic;
SIGNAL \inst7|Add2~2_combout\ : std_logic;
SIGNAL \inst7|Add2~5\ : std_logic;
SIGNAL \inst7|Add2~4_combout\ : std_logic;
SIGNAL \inst7|Add2~7\ : std_logic;
SIGNAL \inst7|Add2~6_combout\ : std_logic;
SIGNAL \inst7|Add2~9\ : std_logic;
SIGNAL \inst7|Add2~8_combout\ : std_logic;
SIGNAL \inst7|Add2~11\ : std_logic;
SIGNAL \inst7|Add2~10_combout\ : std_logic;
SIGNAL \inst7|Add2~13\ : std_logic;
SIGNAL \inst7|Add2~12_combout\ : std_logic;
SIGNAL \inst7|Add2~14_combout\ : std_logic;
SIGNAL \inst3|Add0~1\ : std_logic;
SIGNAL \inst3|Add0~0_combout\ : std_logic;
SIGNAL \inst3|Add0~3\ : std_logic;
SIGNAL \inst3|Add0~2_combout\ : std_logic;
SIGNAL \inst3|Add0~5\ : std_logic;
SIGNAL \inst3|Add0~4_combout\ : std_logic;
SIGNAL \inst3|Add0~7\ : std_logic;
SIGNAL \inst3|Add0~6_combout\ : std_logic;
SIGNAL \inst3|Add0~9\ : std_logic;
SIGNAL \inst3|Add0~8_combout\ : std_logic;
SIGNAL \inst3|Add0~11\ : std_logic;
SIGNAL \inst3|Add0~10_combout\ : std_logic;
SIGNAL \inst3|Add0~13\ : std_logic;
SIGNAL \inst3|Add0~12_combout\ : std_logic;
SIGNAL \inst3|Add0~15\ : std_logic;
SIGNAL \inst3|Add0~14_combout\ : std_logic;
SIGNAL \inst3|Add0~17\ : std_logic;
SIGNAL \inst3|Add0~16_combout\ : std_logic;
SIGNAL \inst3|Add0~18_combout\ : std_logic;
SIGNAL \inst3|Add1~1\ : std_logic;
SIGNAL \inst3|Add1~0_combout\ : std_logic;
SIGNAL \inst3|Add1~3\ : std_logic;
SIGNAL \inst3|Add1~2_combout\ : std_logic;
SIGNAL \inst3|Add1~5\ : std_logic;
SIGNAL \inst3|Add1~4_combout\ : std_logic;
SIGNAL \inst3|Add1~7\ : std_logic;
SIGNAL \inst3|Add1~6_combout\ : std_logic;
SIGNAL \inst3|Add1~9\ : std_logic;
SIGNAL \inst3|Add1~8_combout\ : std_logic;
SIGNAL \inst3|Add1~11\ : std_logic;
SIGNAL \inst3|Add1~10_combout\ : std_logic;
SIGNAL \inst3|Add1~13\ : std_logic;
SIGNAL \inst3|Add1~12_combout\ : std_logic;
SIGNAL \inst3|Add1~15\ : std_logic;
SIGNAL \inst3|Add1~14_combout\ : std_logic;
SIGNAL \inst3|Add1~17\ : std_logic;
SIGNAL \inst3|Add1~16_combout\ : std_logic;
SIGNAL \inst3|Add1~18_combout\ : std_logic;
SIGNAL \inst3|Add2~1_cout\ : std_logic;
SIGNAL \inst3|Add2~3\ : std_logic;
SIGNAL \inst3|Add2~2_combout\ : std_logic;
SIGNAL \inst3|Add2~5\ : std_logic;
SIGNAL \inst3|Add2~4_combout\ : std_logic;
SIGNAL \inst3|Add2~7\ : std_logic;
SIGNAL \inst3|Add2~6_combout\ : std_logic;
SIGNAL \inst3|Add2~9\ : std_logic;
SIGNAL \inst3|Add2~8_combout\ : std_logic;
SIGNAL \inst3|Add2~11\ : std_logic;
SIGNAL \inst3|Add2~10_combout\ : std_logic;
SIGNAL \inst3|Add2~13\ : std_logic;
SIGNAL \inst3|Add2~12_combout\ : std_logic;
SIGNAL \inst3|Add2~15\ : std_logic;
SIGNAL \inst3|Add2~14_combout\ : std_logic;
SIGNAL \inst3|Add2~17\ : std_logic;
SIGNAL \inst3|Add2~16_combout\ : std_logic;
SIGNAL \inst3|Add2~19\ : std_logic;
SIGNAL \inst3|Add2~18_combout\ : std_logic;
SIGNAL \inst3|Add2~21\ : std_logic;
SIGNAL \inst3|Add2~20_combout\ : std_logic;
SIGNAL \inst3|Add2~23\ : std_logic;
SIGNAL \inst3|Add2~22_combout\ : std_logic;
SIGNAL \inst3|Add2~25\ : std_logic;
SIGNAL \inst3|Add2~24_combout\ : std_logic;
SIGNAL \inst3|Add2~27\ : std_logic;
SIGNAL \inst3|Add2~26_combout\ : std_logic;
SIGNAL \inst3|Add2~29\ : std_logic;
SIGNAL \inst3|Add2~28_combout\ : std_logic;
SIGNAL \inst3|Add2~31\ : std_logic;
SIGNAL \inst3|Add2~30_combout\ : std_logic;
SIGNAL \inst3|Add2~33\ : std_logic;
SIGNAL \inst3|Add2~32_combout\ : std_logic;
SIGNAL \inst3|Add2~34_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~9\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~11\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~13_cout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~1\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~0_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~3\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~2_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~5\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~4_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~7\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~6_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~9\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~8_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~11\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~10_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~13_cout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~1\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~0_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~3\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~2_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~5\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~4_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~7\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~6_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~9\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~8_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~11\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~10_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~13_cout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~16_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~1\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~0_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~3\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~2_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~5\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~4_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~7\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~6_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~9\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~8_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~11\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~10_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~13_cout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~1\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~0_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~3\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~2_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~5\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~4_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~7\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~6_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~9\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~8_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~11\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~10_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~13_cout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~1\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~0_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~3\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~2_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~5\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~4_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~7\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~6_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~9\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~8_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~11\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~10_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~13_cout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~14_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~1\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~0_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~3\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~2_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~5\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~4_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~7\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~6_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~9\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~8_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~11\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~10_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~13_cout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[9]~14_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~1\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~0_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~3\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~2_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~5\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~4_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~7\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~6_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~9\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~8_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[7]~11\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[7]~10_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~13_cout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[9]~14_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[2]~1\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[2]~0_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[3]~3\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[3]~2_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[4]~5\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[4]~4_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[5]~7\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[5]~6_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[6]~9\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[6]~8_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[7]~11\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[7]~10_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[8]~13_cout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[9]~14_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[2]~1\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[2]~0_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[3]~3\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[3]~2_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[4]~5\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[4]~4_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[5]~7\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[5]~6_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[6]~9\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[6]~8_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[7]~11\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[7]~10_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[8]~13_cout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[9]~14_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[2]~1\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[2]~0_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[3]~3\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[3]~2_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[4]~5\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[4]~4_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[5]~7\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[5]~6_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~9\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~8_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~11\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~10_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[8]~13_cout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~14_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_19_result_int[2]~1_cout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_19_result_int[3]~3_cout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_19_result_int[4]~5_cout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_19_result_int[5]~7_cout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_19_result_int[6]~9_cout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_19_result_int[7]~11_cout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_19_result_int[8]~13_cout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_19_result_int[9]~14_combout\ : std_logic;
SIGNAL \inst7|LessThan0~1_cout\ : std_logic;
SIGNAL \inst7|LessThan0~3_cout\ : std_logic;
SIGNAL \inst7|LessThan0~5_cout\ : std_logic;
SIGNAL \inst7|LessThan0~7_cout\ : std_logic;
SIGNAL \inst7|LessThan0~9_cout\ : std_logic;
SIGNAL \inst7|LessThan0~11_cout\ : std_logic;
SIGNAL \inst7|LessThan0~13_cout\ : std_logic;
SIGNAL \inst7|LessThan0~14_combout\ : std_logic;
SIGNAL \inst7|Add0~1\ : std_logic;
SIGNAL \inst7|Add0~0_combout\ : std_logic;
SIGNAL \inst7|Add0~3\ : std_logic;
SIGNAL \inst7|Add0~2_combout\ : std_logic;
SIGNAL \inst7|Add0~5\ : std_logic;
SIGNAL \inst7|Add0~4_combout\ : std_logic;
SIGNAL \inst7|Add0~7\ : std_logic;
SIGNAL \inst7|Add0~6_combout\ : std_logic;
SIGNAL \inst7|Add0~9\ : std_logic;
SIGNAL \inst7|Add0~8_combout\ : std_logic;
SIGNAL \inst7|Add0~11\ : std_logic;
SIGNAL \inst7|Add0~10_combout\ : std_logic;
SIGNAL \inst7|LessThan1~1_cout\ : std_logic;
SIGNAL \inst7|LessThan1~3_cout\ : std_logic;
SIGNAL \inst7|LessThan1~5_cout\ : std_logic;
SIGNAL \inst7|LessThan1~7_cout\ : std_logic;
SIGNAL \inst7|LessThan1~9_cout\ : std_logic;
SIGNAL \inst7|LessThan1~11_cout\ : std_logic;
SIGNAL \inst7|LessThan1~13_cout\ : std_logic;
SIGNAL \inst7|LessThan1~14_combout\ : std_logic;
SIGNAL \inst7|Add0~13\ : std_logic;
SIGNAL \inst7|Add0~12_combout\ : std_logic;
SIGNAL \inst7|Add0~14_combout\ : std_logic;
SIGNAL \inst|descartar~q\ : std_logic;
SIGNAL \inst9|dato_listo~q\ : std_logic;
SIGNAL \inst|hay_cifras~q\ : std_logic;
SIGNAL \inst|Add0~1\ : std_logic;
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \inst|Add0~3\ : std_logic;
SIGNAL \inst|Add0~2_combout\ : std_logic;
SIGNAL \inst|Add0~5\ : std_logic;
SIGNAL \inst|Add0~4_combout\ : std_logic;
SIGNAL \inst|Add0~7\ : std_logic;
SIGNAL \inst|Add0~6_combout\ : std_logic;
SIGNAL \inst|Add0~9\ : std_logic;
SIGNAL \inst|Add0~8_combout\ : std_logic;
SIGNAL \inst|Add2~1\ : std_logic;
SIGNAL \inst|Add2~0_combout\ : std_logic;
SIGNAL \inst|Add2~3\ : std_logic;
SIGNAL \inst|Add2~2_combout\ : std_logic;
SIGNAL \inst|Add2~5\ : std_logic;
SIGNAL \inst|Add2~4_combout\ : std_logic;
SIGNAL \inst|Add2~7\ : std_logic;
SIGNAL \inst|Add2~6_combout\ : std_logic;
SIGNAL \inst|Add2~9\ : std_logic;
SIGNAL \inst|Add2~8_combout\ : std_logic;
SIGNAL \inst|Add2~11\ : std_logic;
SIGNAL \inst|Add2~10_combout\ : std_logic;
SIGNAL \inst|Add2~13\ : std_logic;
SIGNAL \inst|Add2~12_combout\ : std_logic;
SIGNAL \inst|Add0~11\ : std_logic;
SIGNAL \inst|Add0~10_combout\ : std_logic;
SIGNAL \inst|Add2~15\ : std_logic;
SIGNAL \inst|Add2~14_combout\ : std_logic;
SIGNAL \inst|Add0~13\ : std_logic;
SIGNAL \inst|Add0~12_combout\ : std_logic;
SIGNAL \inst|Add2~17\ : std_logic;
SIGNAL \inst|Add2~16_combout\ : std_logic;
SIGNAL \inst|Add0~15\ : std_logic;
SIGNAL \inst|Add0~14_combout\ : std_logic;
SIGNAL \inst|Add2~19\ : std_logic;
SIGNAL \inst|Add2~18_combout\ : std_logic;
SIGNAL \inst|Add0~16_combout\ : std_logic;
SIGNAL \inst|Add2~20_combout\ : std_logic;
SIGNAL \inst9|contadorPulsos[0]~10\ : std_logic;
SIGNAL \inst9|contadorPulsos[0]~9_combout\ : std_logic;
SIGNAL \inst9|contadorPulsos[1]~12\ : std_logic;
SIGNAL \inst9|contadorPulsos[1]~11_combout\ : std_logic;
SIGNAL \inst9|contadorPulsos[2]~14\ : std_logic;
SIGNAL \inst9|contadorPulsos[2]~13_combout\ : std_logic;
SIGNAL \inst9|contadorPulsos[3]~16\ : std_logic;
SIGNAL \inst9|contadorPulsos[3]~15_combout\ : std_logic;
SIGNAL \inst9|contadorPulsos[4]~18\ : std_logic;
SIGNAL \inst9|contadorPulsos[4]~17_combout\ : std_logic;
SIGNAL \inst9|contadorPulsos[5]~20\ : std_logic;
SIGNAL \inst9|contadorPulsos[5]~19_combout\ : std_logic;
SIGNAL \inst9|contadorPulsos[6]~22\ : std_logic;
SIGNAL \inst9|contadorPulsos[6]~21_combout\ : std_logic;
SIGNAL \inst9|contadorPulsos[7]~24\ : std_logic;
SIGNAL \inst9|contadorPulsos[7]~23_combout\ : std_logic;
SIGNAL \inst9|contadorPulsos[8]~26_combout\ : std_logic;
SIGNAL \inst7|Equal0~2_combout\ : std_logic;
SIGNAL \inst7|Mult0|mult_core|_~0_combout\ : std_logic;
SIGNAL \inst7|Mult0|mult_core|_~1_combout\ : std_logic;
SIGNAL \inst7|Mult0|mult_core|romout[1][10]~0_combout\ : std_logic;
SIGNAL \inst7|Mult0|mult_core|romout[1][9]~1_combout\ : std_logic;
SIGNAL \inst7|Mult0|mult_core|romout[1][8]~2_combout\ : std_logic;
SIGNAL \inst7|Mult0|mult_core|romout[1][7]~3_combout\ : std_logic;
SIGNAL \inst7|Mult0|mult_core|romout[0][11]~combout\ : std_logic;
SIGNAL \inst7|Mult0|mult_core|romout[1][6]~4_combout\ : std_logic;
SIGNAL \inst7|Mult0|mult_core|romout[0][10]~5_combout\ : std_logic;
SIGNAL \inst7|Mult0|mult_core|romout[1][5]~6_combout\ : std_logic;
SIGNAL \inst7|Mult0|mult_core|romout[0][9]~combout\ : std_logic;
SIGNAL \inst7|Mult0|mult_core|romout[1][4]~7_combout\ : std_logic;
SIGNAL \inst7|Mult0|mult_core|romout[0][8]~8_combout\ : std_logic;
SIGNAL \inst7|Mult0|mult_core|romout[1][3]~9_combout\ : std_logic;
SIGNAL \inst7|Mult0|mult_core|romout[0][7]~10_combout\ : std_logic;
SIGNAL \inst7|Mult0|mult_core|romout[1][2]~11_combout\ : std_logic;
SIGNAL \inst7|Mult0|mult_core|romout[0][6]~combout\ : std_logic;
SIGNAL \inst7|Mult0|mult_core|romout[0][5]~combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[70]~156_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[70]~157_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[69]~158_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[69]~159_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[68]~160_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[68]~161_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[67]~162_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[67]~163_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[66]~164_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[66]~165_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[65]~166_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[65]~167_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[64]~168_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[64]~169_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[63]~170_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[63]~171_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[79]~172_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[78]~173_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[77]~174_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[76]~175_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[75]~176_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[74]~177_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[73]~178_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[72]~179_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[72]~180_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[88]~181_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[87]~182_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[86]~183_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[85]~184_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[84]~185_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[83]~186_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[82]~187_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[81]~188_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[81]~189_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[97]~190_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[96]~191_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[95]~192_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[94]~193_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[93]~194_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[92]~195_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[91]~196_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[90]~197_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[90]~198_combout\ : std_logic;
SIGNAL \inst7|Mult0|mult_core|romout[0][4]~12_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[106]~199_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[105]~200_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[104]~201_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[103]~202_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[102]~203_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[101]~204_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[100]~205_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[99]~206_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[99]~207_combout\ : std_logic;
SIGNAL \inst7|Mult0|mult_core|romout[0][3]~13_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[115]~208_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[114]~209_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[113]~210_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[112]~211_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[111]~212_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[110]~213_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[109]~214_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[108]~215_combout\ : std_logic;
SIGNAL \inst7|Mult0|mult_core|romout[0][2]~14_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[124]~216_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[123]~217_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[122]~218_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[121]~219_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[120]~220_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[119]~221_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[118]~222_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[117]~223_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[133]~224_combout\ : std_logic;
SIGNAL \inst7|ancho[7]~0_combout\ : std_logic;
SIGNAL \inst3|LessThan0~0_combout\ : std_logic;
SIGNAL \inst3|LessThan0~1_combout\ : std_logic;
SIGNAL \inst3|LessThan0~2_combout\ : std_logic;
SIGNAL \inst3|grados[1]~4_combout\ : std_logic;
SIGNAL \inst3|grados[0]~5_combout\ : std_logic;
SIGNAL \inst3|grados[6]~6_combout\ : std_logic;
SIGNAL \inst3|grados[5]~7_combout\ : std_logic;
SIGNAL \inst3|grados[3]~8_combout\ : std_logic;
SIGNAL \inst3|grados[2]~9_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[70]~234_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[70]~235_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[69]~236_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[68]~237_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[68]~238_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[67]~239_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[67]~240_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[66]~241_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[66]~242_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[65]~243_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[65]~244_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[64]~245_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[64]~246_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[79]~247_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[78]~248_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[77]~249_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[76]~250_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[75]~251_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[74]~252_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[74]~253_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[73]~254_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[73]~255_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[88]~256_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[87]~257_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[86]~258_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[85]~259_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[84]~260_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[84]~261_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[83]~262_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[82]~263_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[82]~264_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[97]~265_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[96]~266_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[95]~267_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[94]~268_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[93]~269_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[92]~270_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[91]~271_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[81]~272_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[81]~273_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[91]~274_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[106]~275_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[105]~276_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[104]~277_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[103]~278_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[102]~279_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[101]~280_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[100]~281_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[100]~282_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[115]~283_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[114]~284_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[113]~285_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[112]~286_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[111]~287_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[110]~288_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[109]~289_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[109]~290_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[124]~291_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[123]~292_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[122]~293_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[121]~294_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[120]~295_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[119]~296_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[118]~297_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[118]~298_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[133]~299_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[132]~300_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[131]~301_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[130]~302_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[129]~303_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[128]~304_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[127]~305_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[127]~306_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[142]~307_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[141]~308_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[140]~309_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[139]~310_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[138]~311_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[137]~312_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[136]~313_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[136]~314_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[151]~315_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[150]~316_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[149]~317_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[148]~318_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[147]~319_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[146]~320_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[145]~321_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[145]~322_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[160]~323_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[159]~324_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[158]~325_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[157]~326_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[156]~327_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[155]~328_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[154]~329_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[154]~330_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[169]~331_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[168]~332_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[167]~333_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[166]~334_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[165]~335_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[164]~336_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[163]~337_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[163]~338_combout\ : std_logic;
SIGNAL \inst7|Equal0~3_combout\ : std_logic;
SIGNAL \inst7|pos_actual[3]~0_combout\ : std_logic;
SIGNAL \inst7|pos_actual[7]~1_combout\ : std_logic;
SIGNAL \inst|numero~0_combout\ : std_logic;
SIGNAL \inst|conv~0_combout\ : std_logic;
SIGNAL \inst|conv~1_combout\ : std_logic;
SIGNAL \inst|numero[2]~1_combout\ : std_logic;
SIGNAL \inst|numero[2]~2_combout\ : std_logic;
SIGNAL \inst|numero~3_combout\ : std_logic;
SIGNAL \inst|numero~4_combout\ : std_logic;
SIGNAL \inst|numero~5_combout\ : std_logic;
SIGNAL \inst|numero~6_combout\ : std_logic;
SIGNAL \inst|numero~7_combout\ : std_logic;
SIGNAL \inst|numero~8_combout\ : std_logic;
SIGNAL \inst|numero~9_combout\ : std_logic;
SIGNAL \inst|Add1~0_combout\ : std_logic;
SIGNAL \inst|Add1~1_combout\ : std_logic;
SIGNAL \inst|Add1~2_combout\ : std_logic;
SIGNAL \inst|Add1~3_combout\ : std_logic;
SIGNAL \inst|acumulado[6]~0_combout\ : std_logic;
SIGNAL \inst|conv~2_combout\ : std_logic;
SIGNAL \inst|conv~3_combout\ : std_logic;
SIGNAL \inst|acumulado~1_combout\ : std_logic;
SIGNAL \inst|conv~4_combout\ : std_logic;
SIGNAL \inst|acumulado[6]~2_combout\ : std_logic;
SIGNAL \inst|descartar~0_combout\ : std_logic;
SIGNAL \inst9|proximoRx.recibiendo_stop~q\ : std_logic;
SIGNAL \inst9|LessThan1~0_combout\ : std_logic;
SIGNAL \inst9|LessThan1~1_combout\ : std_logic;
SIGNAL \inst9|bufferRx[2]~0_combout\ : std_logic;
SIGNAL \inst9|bufferRx[2]~1_combout\ : std_logic;
SIGNAL \inst|hay_cifras~0_combout\ : std_logic;
SIGNAL \inst|acumulado~3_combout\ : std_logic;
SIGNAL \inst|acumulado~4_combout\ : std_logic;
SIGNAL \inst|acumulado~5_combout\ : std_logic;
SIGNAL \inst|acumulado~6_combout\ : std_logic;
SIGNAL \inst|acumulado~7_combout\ : std_logic;
SIGNAL \inst|acumulado~8_combout\ : std_logic;
SIGNAL \inst|acumulado~9_combout\ : std_logic;
SIGNAL \inst9|Equal0~0_combout\ : std_logic;
SIGNAL \inst9|proximoRx.recibiendo_bit~q\ : std_logic;
SIGNAL \inst9|registroRx[2]~0_combout\ : std_logic;
SIGNAL \inst9|registroRx[2]~1_combout\ : std_logic;
SIGNAL \inst9|proximoRx.idle~q\ : std_logic;
SIGNAL \inst9|proximoRx~10_combout\ : std_logic;
SIGNAL \inst9|LessThan1~2_combout\ : std_logic;
SIGNAL \inst9|LessThan0~0_combout\ : std_logic;
SIGNAL \inst9|LessThan0~1_combout\ : std_logic;
SIGNAL \inst9|proximoRx.validando_start~q\ : std_logic;
SIGNAL \inst9|proximoRx~11_combout\ : std_logic;
SIGNAL \inst9|proximoRx~12_combout\ : std_logic;
SIGNAL \inst9|proximoRx~13_combout\ : std_logic;
SIGNAL \inst9|contadorPulsos[0]~25_combout\ : std_logic;
SIGNAL \inst9|Add1~0_combout\ : std_logic;
SIGNAL \inst9|Selector1~0_combout\ : std_logic;
SIGNAL \inst9|Selector1~1_combout\ : std_logic;
SIGNAL \inst9|proximoRx~14_combout\ : std_logic;
SIGNAL \inst9|Selector3~0_combout\ : std_logic;
SIGNAL \inst9|Selector2~0_combout\ : std_logic;
SIGNAL \inst9|Selector0~0_combout\ : std_logic;
SIGNAL \inst9|Selector0~1_combout\ : std_logic;
SIGNAL \inst9|proximoRx~15_combout\ : std_logic;
SIGNAL \inst9|proximoRx~16_combout\ : std_logic;
SIGNAL \inst9|proximoRx~17_combout\ : std_logic;
SIGNAL \inst9|proximoRx~18_combout\ : std_logic;
SIGNAL \inst9|proximoRx.recibiendo_bit~0_combout\ : std_logic;
SIGNAL \inst9|proximoRx.recibiendo_bit~1_combout\ : std_logic;
SIGNAL \inst9|proximoRx~19_combout\ : std_logic;
SIGNAL \inst9|proximoRx~20_combout\ : std_logic;
SIGNAL \inst9|proximoRx~21_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[88]~225_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[87]~226_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[86]~227_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[85]~228_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[84]~229_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[83]~230_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[97]~231_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[96]~232_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[95]~233_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[94]~234_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[93]~235_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[92]~236_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[106]~237_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[105]~238_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[104]~239_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[103]~240_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[102]~241_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[101]~242_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[115]~243_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[114]~244_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[113]~245_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[112]~246_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[111]~247_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[110]~248_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[108]~249_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[124]~250_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[123]~251_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[122]~252_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[121]~253_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[120]~254_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[119]~255_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[118]~256_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[117]~257_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[133]~258_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[88]~339_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[87]~340_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[86]~341_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[85]~342_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[97]~343_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[96]~344_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[95]~345_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[94]~346_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[106]~347_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[105]~348_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[104]~349_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[103]~350_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[115]~351_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[114]~352_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[113]~353_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[112]~354_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[111]~355_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[124]~356_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[123]~357_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[122]~358_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[121]~359_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[133]~360_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[132]~361_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[131]~362_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[130]~363_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[142]~364_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[141]~365_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[140]~366_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[139]~367_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[151]~368_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[150]~369_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[149]~370_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[148]~371_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[160]~372_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[159]~373_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[158]~374_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[157]~375_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[169]~376_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[168]~377_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[167]~378_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[166]~379_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[79]~259_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[78]~260_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[77]~261_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[76]~262_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[75]~263_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[74]~264_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[73]~265_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[82]~266_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[91]~267_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[100]~268_combout\ : std_logic;
SIGNAL \inst7|Div0|auto_generated|divider|divider|StageOut[109]~269_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[79]~380_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[78]~381_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[77]~382_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[76]~383_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[75]~384_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[83]~385_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[92]~386_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[101]~387_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[110]~388_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[119]~389_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[128]~390_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[137]~391_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[146]~392_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[155]~393_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[164]~394_combout\ : std_logic;
SIGNAL \inst3|grados[4]~10_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[93]~395_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[102]~396_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[120]~397_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[129]~398_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[138]~399_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[147]~400_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[156]~401_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[165]~402_combout\ : std_logic;
SIGNAL \inst7|ancho[7]~1_combout\ : std_logic;
SIGNAL \inst7|ancho[4]~2_combout\ : std_logic;
SIGNAL \inst7|ancho[2]~3_combout\ : std_logic;
SIGNAL \inst7|ancho[1]~4_combout\ : std_logic;
SIGNAL \Rdx~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst9|dato_listo~feeder_combout\ : std_logic;
SIGNAL \inst9|bufferRx[6]~feeder_combout\ : std_logic;
SIGNAL \inst9|registroRx[5]~feeder_combout\ : std_logic;
SIGNAL \inst9|bufferRx[4]~feeder_combout\ : std_logic;
SIGNAL \inst9|registroRx[3]~feeder_combout\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \inst5|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \inst7|cnt[0]~11_combout\ : std_logic;
SIGNAL \inst7|cnt[2]~15_combout\ : std_logic;
SIGNAL \inst7|cnt[1]~13_combout\ : std_logic;
SIGNAL \inst7|Equal0~1_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \inst7|cnt[7]~25_combout\ : std_logic;
SIGNAL \inst7|Equal0~0_combout\ : std_logic;
SIGNAL \inst7|cnt[10]~27_combout\ : std_logic;
SIGNAL \inst7|cnt[0]~12\ : std_logic;
SIGNAL \inst7|cnt[1]~14\ : std_logic;
SIGNAL \inst7|cnt[2]~16\ : std_logic;
SIGNAL \inst7|cnt[3]~17_combout\ : std_logic;
SIGNAL \inst7|cnt[3]~18\ : std_logic;
SIGNAL \inst7|cnt[4]~19_combout\ : std_logic;
SIGNAL \inst7|cnt[4]~20\ : std_logic;
SIGNAL \inst7|cnt[5]~21_combout\ : std_logic;
SIGNAL \inst7|cnt[5]~22\ : std_logic;
SIGNAL \inst7|cnt[6]~23_combout\ : std_logic;
SIGNAL \inst7|cnt[6]~24\ : std_logic;
SIGNAL \inst7|cnt[7]~26\ : std_logic;
SIGNAL \inst7|cnt[8]~28_combout\ : std_logic;
SIGNAL \inst7|cnt[8]~29\ : std_logic;
SIGNAL \inst7|cnt[9]~31\ : std_logic;
SIGNAL \inst7|cnt[10]~32_combout\ : std_logic;
SIGNAL \inst7|cnt[9]~30_combout\ : std_logic;
SIGNAL \inst7|LessThan2~16_combout\ : std_logic;
SIGNAL \inst7|salida~q\ : std_logic;
SIGNAL \inst9|contadorBits\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst7|cnt\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst5|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst7|ancho\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|acumulado\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst9|registroRx\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst9|contadorPulsos\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst|numero\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst7|pos_actual\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst9|bufferRx\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_RESET~input_o\ : std_logic;

BEGIN

PWM <= ww_PWM;
ww_CLK <= CLK;
ww_RESET <= RESET;
ww_Rdx <= Rdx;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst5|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \CLK~input_o\);

\inst5|altpll_component|auto_generated|wire_pll1_clk\(0) <= \inst5|altpll_component|auto_generated|pll1_CLK_bus\(0);
\inst5|altpll_component|auto_generated|wire_pll1_clk\(1) <= \inst5|altpll_component|auto_generated|pll1_CLK_bus\(1);
\inst5|altpll_component|auto_generated|wire_pll1_clk\(2) <= \inst5|altpll_component|auto_generated|pll1_CLK_bus\(2);
\inst5|altpll_component|auto_generated|wire_pll1_clk\(3) <= \inst5|altpll_component|auto_generated|pll1_CLK_bus\(3);
\inst5|altpll_component|auto_generated|wire_pll1_clk\(4) <= \inst5|altpll_component|auto_generated|pll1_CLK_bus\(4);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

\inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst5|altpll_component|auto_generated|wire_pll1_clk\(0));
\ALT_INV_RESET~input_o\ <= NOT \RESET~input_o\;

-- Location: LCCOMB_X22_Y12_N12
\inst7|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan2~1_cout\ = CARRY((\inst7|ancho\(0) & !\inst7|cnt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|ancho\(0),
	datab => \inst7|cnt\(0),
	datad => VCC,
	cout => \inst7|LessThan2~1_cout\);

-- Location: LCCOMB_X22_Y12_N14
\inst7|LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan2~3_cout\ = CARRY((\inst7|ancho\(1) & ((\inst7|cnt\(1)) # (!\inst7|LessThan2~1_cout\))) # (!\inst7|ancho\(1) & (\inst7|cnt\(1) & !\inst7|LessThan2~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|ancho\(1),
	datab => \inst7|cnt\(1),
	datad => VCC,
	cin => \inst7|LessThan2~1_cout\,
	cout => \inst7|LessThan2~3_cout\);

-- Location: LCCOMB_X22_Y12_N16
\inst7|LessThan2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan2~5_cout\ = CARRY((\inst7|ancho\(2) & (!\inst7|cnt\(2) & !\inst7|LessThan2~3_cout\)) # (!\inst7|ancho\(2) & ((!\inst7|LessThan2~3_cout\) # (!\inst7|cnt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|ancho\(2),
	datab => \inst7|cnt\(2),
	datad => VCC,
	cin => \inst7|LessThan2~3_cout\,
	cout => \inst7|LessThan2~5_cout\);

-- Location: LCCOMB_X22_Y12_N18
\inst7|LessThan2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan2~7_cout\ = CARRY((\inst7|ancho\(3) & (\inst7|cnt\(3) & !\inst7|LessThan2~5_cout\)) # (!\inst7|ancho\(3) & ((\inst7|cnt\(3)) # (!\inst7|LessThan2~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|ancho\(3),
	datab => \inst7|cnt\(3),
	datad => VCC,
	cin => \inst7|LessThan2~5_cout\,
	cout => \inst7|LessThan2~7_cout\);

-- Location: LCCOMB_X22_Y12_N20
\inst7|LessThan2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan2~9_cout\ = CARRY((\inst7|ancho\(4) & (!\inst7|cnt\(4) & !\inst7|LessThan2~7_cout\)) # (!\inst7|ancho\(4) & ((!\inst7|LessThan2~7_cout\) # (!\inst7|cnt\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|ancho\(4),
	datab => \inst7|cnt\(4),
	datad => VCC,
	cin => \inst7|LessThan2~7_cout\,
	cout => \inst7|LessThan2~9_cout\);

-- Location: LCCOMB_X22_Y12_N22
\inst7|LessThan2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan2~11_cout\ = CARRY((\inst7|ancho\(5) & (\inst7|cnt\(5) & !\inst7|LessThan2~9_cout\)) # (!\inst7|ancho\(5) & ((\inst7|cnt\(5)) # (!\inst7|LessThan2~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|ancho\(5),
	datab => \inst7|cnt\(5),
	datad => VCC,
	cin => \inst7|LessThan2~9_cout\,
	cout => \inst7|LessThan2~11_cout\);

-- Location: LCCOMB_X22_Y12_N24
\inst7|LessThan2~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan2~13_cout\ = CARRY((\inst7|cnt\(6) & (\inst7|ancho\(6) & !\inst7|LessThan2~11_cout\)) # (!\inst7|cnt\(6) & ((\inst7|ancho\(6)) # (!\inst7|LessThan2~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cnt\(6),
	datab => \inst7|ancho\(6),
	datad => VCC,
	cin => \inst7|LessThan2~11_cout\,
	cout => \inst7|LessThan2~13_cout\);

-- Location: LCCOMB_X22_Y12_N26
\inst7|LessThan2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan2~14_combout\ = (\inst7|ancho\(7) & (\inst7|LessThan2~13_cout\ & !\inst7|cnt\(7))) # (!\inst7|ancho\(7) & ((\inst7|LessThan2~13_cout\) # (!\inst7|cnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|ancho\(7),
	datad => \inst7|cnt\(7),
	cin => \inst7|LessThan2~13_cout\,
	combout => \inst7|LessThan2~14_combout\);

-- Location: FF_X23_Y14_N11
\inst7|pos_actual[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst7|Add0~10_combout\,
	sclr => \ALT_INV_RESET~input_o\,
	ena => \inst7|pos_actual[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|pos_actual\(5));

-- Location: FF_X23_Y14_N13
\inst7|pos_actual[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst7|Add0~12_combout\,
	sclr => \ALT_INV_RESET~input_o\,
	ena => \inst7|pos_actual[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|pos_actual\(6));

-- Location: FF_X23_Y14_N9
\inst7|pos_actual[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst7|Add0~8_combout\,
	sclr => \ALT_INV_RESET~input_o\,
	ena => \inst7|pos_actual[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|pos_actual\(4));

-- Location: FF_X23_Y14_N7
\inst7|pos_actual[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst7|Add0~6_combout\,
	sclr => \ALT_INV_RESET~input_o\,
	ena => \inst7|pos_actual[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|pos_actual\(3));

-- Location: FF_X23_Y14_N5
\inst7|pos_actual[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst7|Add0~4_combout\,
	sclr => \ALT_INV_RESET~input_o\,
	ena => \inst7|pos_actual[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|pos_actual\(2));

-- Location: FF_X23_Y14_N3
\inst7|pos_actual[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst7|Add0~2_combout\,
	sclr => \ALT_INV_RESET~input_o\,
	ena => \inst7|pos_actual[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|pos_actual\(1));

-- Location: FF_X23_Y14_N1
\inst7|pos_actual[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst7|Add0~0_combout\,
	sclr => \ALT_INV_RESET~input_o\,
	ena => \inst7|pos_actual[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|pos_actual\(0));

-- Location: LCCOMB_X24_Y14_N2
\inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ = (\inst7|Mult0|mult_core|romout[0][5]~combout\ & (\inst7|pos_actual\(4) $ (VCC))) # (!\inst7|Mult0|mult_core|romout[0][5]~combout\ & (\inst7|pos_actual\(4) & VCC))
-- \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ = CARRY((\inst7|Mult0|mult_core|romout[0][5]~combout\ & \inst7|pos_actual\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mult0|mult_core|romout[0][5]~combout\,
	datab => \inst7|pos_actual\(4),
	datad => VCC,
	combout => \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	cout => \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\);

-- Location: LCCOMB_X24_Y14_N4
\inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ = (\inst7|Mult0|mult_core|romout[1][2]~11_combout\ & ((\inst7|Mult0|mult_core|romout[0][6]~combout\ & (\inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ & VCC)) # 
-- (!\inst7|Mult0|mult_core|romout[0][6]~combout\ & (!\inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)))) # (!\inst7|Mult0|mult_core|romout[1][2]~11_combout\ & ((\inst7|Mult0|mult_core|romout[0][6]~combout\ & 
-- (!\inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # (!\inst7|Mult0|mult_core|romout[0][6]~combout\ & ((\inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (GND)))))
-- \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ = CARRY((\inst7|Mult0|mult_core|romout[1][2]~11_combout\ & (!\inst7|Mult0|mult_core|romout[0][6]~combout\ & !\inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # 
-- (!\inst7|Mult0|mult_core|romout[1][2]~11_combout\ & ((!\inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (!\inst7|Mult0|mult_core|romout[0][6]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mult0|mult_core|romout[1][2]~11_combout\,
	datab => \inst7|Mult0|mult_core|romout[0][6]~combout\,
	datad => VCC,
	cin => \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\,
	combout => \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	cout => \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\);

-- Location: LCCOMB_X24_Y14_N6
\inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ = ((\inst7|Mult0|mult_core|romout[1][3]~9_combout\ $ (\inst7|Mult0|mult_core|romout[0][7]~10_combout\ $ (!\inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\)))) # (GND)
-- \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ = CARRY((\inst7|Mult0|mult_core|romout[1][3]~9_combout\ & ((\inst7|Mult0|mult_core|romout[0][7]~10_combout\) # (!\inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\))) # 
-- (!\inst7|Mult0|mult_core|romout[1][3]~9_combout\ & (\inst7|Mult0|mult_core|romout[0][7]~10_combout\ & !\inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mult0|mult_core|romout[1][3]~9_combout\,
	datab => \inst7|Mult0|mult_core|romout[0][7]~10_combout\,
	datad => VCC,
	cin => \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\,
	combout => \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	cout => \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\);

-- Location: LCCOMB_X24_Y14_N8
\inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ = (\inst7|Mult0|mult_core|romout[1][4]~7_combout\ & ((\inst7|Mult0|mult_core|romout[0][8]~8_combout\ & (\inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ & VCC)) # 
-- (!\inst7|Mult0|mult_core|romout[0][8]~8_combout\ & (!\inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\)))) # (!\inst7|Mult0|mult_core|romout[1][4]~7_combout\ & ((\inst7|Mult0|mult_core|romout[0][8]~8_combout\ & 
-- (!\inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\)) # (!\inst7|Mult0|mult_core|romout[0][8]~8_combout\ & ((\inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\) # (GND)))))
-- \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\ = CARRY((\inst7|Mult0|mult_core|romout[1][4]~7_combout\ & (!\inst7|Mult0|mult_core|romout[0][8]~8_combout\ & !\inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\)) # 
-- (!\inst7|Mult0|mult_core|romout[1][4]~7_combout\ & ((!\inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\) # (!\inst7|Mult0|mult_core|romout[0][8]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mult0|mult_core|romout[1][4]~7_combout\,
	datab => \inst7|Mult0|mult_core|romout[0][8]~8_combout\,
	datad => VCC,
	cin => \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\,
	combout => \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	cout => \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\);

-- Location: LCCOMB_X24_Y14_N10
\inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ = ((\inst7|Mult0|mult_core|romout[0][9]~combout\ $ (\inst7|Mult0|mult_core|romout[1][5]~6_combout\ $ (!\inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\)))) # (GND)
-- \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\ = CARRY((\inst7|Mult0|mult_core|romout[0][9]~combout\ & ((\inst7|Mult0|mult_core|romout[1][5]~6_combout\) # (!\inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\))) # 
-- (!\inst7|Mult0|mult_core|romout[0][9]~combout\ & (\inst7|Mult0|mult_core|romout[1][5]~6_combout\ & !\inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mult0|mult_core|romout[0][9]~combout\,
	datab => \inst7|Mult0|mult_core|romout[1][5]~6_combout\,
	datad => VCC,
	cin => \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\,
	combout => \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	cout => \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\);

-- Location: LCCOMB_X24_Y14_N12
\inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ = (\inst7|Mult0|mult_core|romout[0][10]~5_combout\ & ((\inst7|Mult0|mult_core|romout[1][6]~4_combout\ & (\inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\ & VCC)) # 
-- (!\inst7|Mult0|mult_core|romout[1][6]~4_combout\ & (!\inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\)))) # (!\inst7|Mult0|mult_core|romout[0][10]~5_combout\ & ((\inst7|Mult0|mult_core|romout[1][6]~4_combout\ & 
-- (!\inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\)) # (!\inst7|Mult0|mult_core|romout[1][6]~4_combout\ & ((\inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\) # (GND)))))
-- \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ = CARRY((\inst7|Mult0|mult_core|romout[0][10]~5_combout\ & (!\inst7|Mult0|mult_core|romout[1][6]~4_combout\ & !\inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\)) # 
-- (!\inst7|Mult0|mult_core|romout[0][10]~5_combout\ & ((!\inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\) # (!\inst7|Mult0|mult_core|romout[1][6]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mult0|mult_core|romout[0][10]~5_combout\,
	datab => \inst7|Mult0|mult_core|romout[1][6]~4_combout\,
	datad => VCC,
	cin => \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\,
	combout => \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	cout => \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\);

-- Location: LCCOMB_X24_Y14_N14
\inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ = ((\inst7|Mult0|mult_core|romout[1][7]~3_combout\ $ (\inst7|Mult0|mult_core|romout[0][11]~combout\ $ (!\inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\)))) # (GND)
-- \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\ = CARRY((\inst7|Mult0|mult_core|romout[1][7]~3_combout\ & ((\inst7|Mult0|mult_core|romout[0][11]~combout\) # (!\inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\))) # 
-- (!\inst7|Mult0|mult_core|romout[1][7]~3_combout\ & (\inst7|Mult0|mult_core|romout[0][11]~combout\ & !\inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mult0|mult_core|romout[1][7]~3_combout\,
	datab => \inst7|Mult0|mult_core|romout[0][11]~combout\,
	datad => VCC,
	cin => \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\,
	combout => \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\,
	cout => \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\);

-- Location: LCCOMB_X24_Y14_N16
\inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ = (\inst7|Mult0|mult_core|romout[1][8]~2_combout\ & (!\inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\)) # (!\inst7|Mult0|mult_core|romout[1][8]~2_combout\ & 
-- ((\inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\) # (GND)))
-- \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\ = CARRY((!\inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\) # (!\inst7|Mult0|mult_core|romout[1][8]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Mult0|mult_core|romout[1][8]~2_combout\,
	datad => VCC,
	cin => \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\,
	combout => \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\,
	cout => \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\);

-- Location: LCCOMB_X24_Y14_N18
\inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ = (\inst7|Mult0|mult_core|romout[1][9]~1_combout\ & (\inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\ $ (GND))) # (!\inst7|Mult0|mult_core|romout[1][9]~1_combout\ & 
-- (!\inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\ & VCC))
-- \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\ = CARRY((\inst7|Mult0|mult_core|romout[1][9]~1_combout\ & !\inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Mult0|mult_core|romout[1][9]~1_combout\,
	datad => VCC,
	cin => \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\,
	combout => \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\,
	cout => \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\);

-- Location: LCCOMB_X24_Y14_N20
\inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ = (\inst7|Mult0|mult_core|romout[1][10]~0_combout\ & (!\inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\)) # (!\inst7|Mult0|mult_core|romout[1][10]~0_combout\ & 
-- ((\inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\) # (GND)))
-- \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~19\ = CARRY((!\inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\) # (!\inst7|Mult0|mult_core|romout[1][10]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Mult0|mult_core|romout[1][10]~0_combout\,
	datad => VCC,
	cin => \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\,
	combout => \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\,
	cout => \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~19\);

-- Location: LCCOMB_X24_Y14_N22
\inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\ = \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~19\ $ (((!\inst7|Mult0|mult_core|_~0_combout\ & !\inst7|Mult0|mult_core|_~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mult0|mult_core|_~0_combout\,
	datad => \inst7|Mult0|mult_core|_~1_combout\,
	cin => \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~19\,
	combout => \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\);

-- Location: LCCOMB_X23_Y13_N2
\inst7|Div0|auto_generated|divider|divider|op_12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|op_12~0_combout\ = \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ $ (VCC)
-- \inst7|Div0|auto_generated|divider|divider|op_12~1\ = CARRY(\inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	datad => VCC,
	combout => \inst7|Div0|auto_generated|divider|divider|op_12~0_combout\,
	cout => \inst7|Div0|auto_generated|divider|divider|op_12~1\);

-- Location: LCCOMB_X23_Y13_N4
\inst7|Div0|auto_generated|divider|divider|op_12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|op_12~2_combout\ = (\inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & (!\inst7|Div0|auto_generated|divider|divider|op_12~1\)) # 
-- (!\inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & ((\inst7|Div0|auto_generated|divider|divider|op_12~1\) # (GND)))
-- \inst7|Div0|auto_generated|divider|divider|op_12~3\ = CARRY((!\inst7|Div0|auto_generated|divider|divider|op_12~1\) # (!\inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	datad => VCC,
	cin => \inst7|Div0|auto_generated|divider|divider|op_12~1\,
	combout => \inst7|Div0|auto_generated|divider|divider|op_12~2_combout\,
	cout => \inst7|Div0|auto_generated|divider|divider|op_12~3\);

-- Location: LCCOMB_X23_Y13_N6
\inst7|Div0|auto_generated|divider|divider|op_12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|op_12~4_combout\ = (\inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & (\inst7|Div0|auto_generated|divider|divider|op_12~3\ $ (GND))) # 
-- (!\inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & (!\inst7|Div0|auto_generated|divider|divider|op_12~3\ & VCC))
-- \inst7|Div0|auto_generated|divider|divider|op_12~5\ = CARRY((\inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & !\inst7|Div0|auto_generated|divider|divider|op_12~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	datad => VCC,
	cin => \inst7|Div0|auto_generated|divider|divider|op_12~3\,
	combout => \inst7|Div0|auto_generated|divider|divider|op_12~4_combout\,
	cout => \inst7|Div0|auto_generated|divider|divider|op_12~5\);

-- Location: LCCOMB_X23_Y13_N8
\inst7|Div0|auto_generated|divider|divider|op_12~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|op_12~6_combout\ = (\inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ & (!\inst7|Div0|auto_generated|divider|divider|op_12~5\)) # 
-- (!\inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ & ((\inst7|Div0|auto_generated|divider|divider|op_12~5\) # (GND)))
-- \inst7|Div0|auto_generated|divider|divider|op_12~7\ = CARRY((!\inst7|Div0|auto_generated|divider|divider|op_12~5\) # (!\inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\,
	datad => VCC,
	cin => \inst7|Div0|auto_generated|divider|divider|op_12~5\,
	combout => \inst7|Div0|auto_generated|divider|divider|op_12~6_combout\,
	cout => \inst7|Div0|auto_generated|divider|divider|op_12~7\);

-- Location: LCCOMB_X23_Y13_N10
\inst7|Div0|auto_generated|divider|divider|op_12~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|op_12~8_combout\ = (\inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ & (\inst7|Div0|auto_generated|divider|divider|op_12~7\ $ (GND))) # 
-- (!\inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ & (!\inst7|Div0|auto_generated|divider|divider|op_12~7\ & VCC))
-- \inst7|Div0|auto_generated|divider|divider|op_12~9\ = CARRY((\inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ & !\inst7|Div0|auto_generated|divider|divider|op_12~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\,
	datad => VCC,
	cin => \inst7|Div0|auto_generated|divider|divider|op_12~7\,
	combout => \inst7|Div0|auto_generated|divider|divider|op_12~8_combout\,
	cout => \inst7|Div0|auto_generated|divider|divider|op_12~9\);

-- Location: LCCOMB_X23_Y13_N12
\inst7|Div0|auto_generated|divider|divider|op_12~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|op_12~10_combout\ = (\inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ & (!\inst7|Div0|auto_generated|divider|divider|op_12~9\)) # 
-- (!\inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ & ((\inst7|Div0|auto_generated|divider|divider|op_12~9\) # (GND)))
-- \inst7|Div0|auto_generated|divider|divider|op_12~11\ = CARRY((!\inst7|Div0|auto_generated|divider|divider|op_12~9\) # (!\inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\,
	datad => VCC,
	cin => \inst7|Div0|auto_generated|divider|divider|op_12~9\,
	combout => \inst7|Div0|auto_generated|divider|divider|op_12~10_combout\,
	cout => \inst7|Div0|auto_generated|divider|divider|op_12~11\);

-- Location: LCCOMB_X23_Y13_N14
\inst7|Div0|auto_generated|divider|divider|op_12~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|op_12~12_combout\ = (\inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ & (\inst7|Div0|auto_generated|divider|divider|op_12~11\ $ (GND))) # 
-- (!\inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ & (!\inst7|Div0|auto_generated|divider|divider|op_12~11\ & VCC))
-- \inst7|Div0|auto_generated|divider|divider|op_12~13\ = CARRY((\inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ & !\inst7|Div0|auto_generated|divider|divider|op_12~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\,
	datad => VCC,
	cin => \inst7|Div0|auto_generated|divider|divider|op_12~11\,
	combout => \inst7|Div0|auto_generated|divider|divider|op_12~12_combout\,
	cout => \inst7|Div0|auto_generated|divider|divider|op_12~13\);

-- Location: LCCOMB_X23_Y13_N16
\inst7|Div0|auto_generated|divider|divider|op_12~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|op_12~14_combout\ = (\inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\ & (!\inst7|Div0|auto_generated|divider|divider|op_12~13\)) # 
-- (!\inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\ & ((\inst7|Div0|auto_generated|divider|divider|op_12~13\) # (GND)))
-- \inst7|Div0|auto_generated|divider|divider|op_12~15\ = CARRY((!\inst7|Div0|auto_generated|divider|divider|op_12~13\) # (!\inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\,
	datad => VCC,
	cin => \inst7|Div0|auto_generated|divider|divider|op_12~13\,
	combout => \inst7|Div0|auto_generated|divider|divider|op_12~14_combout\,
	cout => \inst7|Div0|auto_generated|divider|divider|op_12~15\);

-- Location: LCCOMB_X23_Y13_N18
\inst7|Div0|auto_generated|divider|divider|op_12~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|op_12~16_combout\ = \inst7|Div0|auto_generated|divider|divider|op_12~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst7|Div0|auto_generated|divider|divider|op_12~15\,
	combout => \inst7|Div0|auto_generated|divider|divider|op_12~16_combout\);

-- Location: LCCOMB_X25_Y13_N8
\inst7|Div0|auto_generated|divider|divider|op_13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|op_13~0_combout\ = \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ $ (VCC)
-- \inst7|Div0|auto_generated|divider|divider|op_13~1\ = CARRY(\inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	datad => VCC,
	combout => \inst7|Div0|auto_generated|divider|divider|op_13~0_combout\,
	cout => \inst7|Div0|auto_generated|divider|divider|op_13~1\);

-- Location: LCCOMB_X25_Y13_N10
\inst7|Div0|auto_generated|divider|divider|op_13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|op_13~2_combout\ = (\inst7|Div0|auto_generated|divider|divider|StageOut[63]~171_combout\ & (((!\inst7|Div0|auto_generated|divider|divider|op_13~1\)))) # 
-- (!\inst7|Div0|auto_generated|divider|divider|StageOut[63]~171_combout\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[63]~170_combout\ & (!\inst7|Div0|auto_generated|divider|divider|op_13~1\)) # 
-- (!\inst7|Div0|auto_generated|divider|divider|StageOut[63]~170_combout\ & ((\inst7|Div0|auto_generated|divider|divider|op_13~1\) # (GND)))))
-- \inst7|Div0|auto_generated|divider|divider|op_13~3\ = CARRY(((!\inst7|Div0|auto_generated|divider|divider|StageOut[63]~171_combout\ & !\inst7|Div0|auto_generated|divider|divider|StageOut[63]~170_combout\)) # 
-- (!\inst7|Div0|auto_generated|divider|divider|op_13~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[63]~171_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[63]~170_combout\,
	datad => VCC,
	cin => \inst7|Div0|auto_generated|divider|divider|op_13~1\,
	combout => \inst7|Div0|auto_generated|divider|divider|op_13~2_combout\,
	cout => \inst7|Div0|auto_generated|divider|divider|op_13~3\);

-- Location: LCCOMB_X25_Y13_N12
\inst7|Div0|auto_generated|divider|divider|op_13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|op_13~4_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_13~3\ & (((\inst7|Div0|auto_generated|divider|divider|StageOut[64]~168_combout\) # 
-- (\inst7|Div0|auto_generated|divider|divider|StageOut[64]~169_combout\)))) # (!\inst7|Div0|auto_generated|divider|divider|op_13~3\ & ((((\inst7|Div0|auto_generated|divider|divider|StageOut[64]~168_combout\) # 
-- (\inst7|Div0|auto_generated|divider|divider|StageOut[64]~169_combout\)))))
-- \inst7|Div0|auto_generated|divider|divider|op_13~5\ = CARRY((!\inst7|Div0|auto_generated|divider|divider|op_13~3\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[64]~168_combout\) # 
-- (\inst7|Div0|auto_generated|divider|divider|StageOut[64]~169_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[64]~168_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[64]~169_combout\,
	datad => VCC,
	cin => \inst7|Div0|auto_generated|divider|divider|op_13~3\,
	combout => \inst7|Div0|auto_generated|divider|divider|op_13~4_combout\,
	cout => \inst7|Div0|auto_generated|divider|divider|op_13~5\);

-- Location: LCCOMB_X25_Y13_N14
\inst7|Div0|auto_generated|divider|divider|op_13~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|op_13~6_combout\ = (\inst7|Div0|auto_generated|divider|divider|StageOut[65]~167_combout\ & (((!\inst7|Div0|auto_generated|divider|divider|op_13~5\)))) # 
-- (!\inst7|Div0|auto_generated|divider|divider|StageOut[65]~167_combout\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[65]~166_combout\ & (!\inst7|Div0|auto_generated|divider|divider|op_13~5\)) # 
-- (!\inst7|Div0|auto_generated|divider|divider|StageOut[65]~166_combout\ & ((\inst7|Div0|auto_generated|divider|divider|op_13~5\) # (GND)))))
-- \inst7|Div0|auto_generated|divider|divider|op_13~7\ = CARRY(((!\inst7|Div0|auto_generated|divider|divider|StageOut[65]~167_combout\ & !\inst7|Div0|auto_generated|divider|divider|StageOut[65]~166_combout\)) # 
-- (!\inst7|Div0|auto_generated|divider|divider|op_13~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[65]~167_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[65]~166_combout\,
	datad => VCC,
	cin => \inst7|Div0|auto_generated|divider|divider|op_13~5\,
	combout => \inst7|Div0|auto_generated|divider|divider|op_13~6_combout\,
	cout => \inst7|Div0|auto_generated|divider|divider|op_13~7\);

-- Location: LCCOMB_X25_Y13_N16
\inst7|Div0|auto_generated|divider|divider|op_13~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|op_13~8_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_13~7\ & (((\inst7|Div0|auto_generated|divider|divider|StageOut[66]~165_combout\) # 
-- (\inst7|Div0|auto_generated|divider|divider|StageOut[66]~164_combout\)))) # (!\inst7|Div0|auto_generated|divider|divider|op_13~7\ & ((((\inst7|Div0|auto_generated|divider|divider|StageOut[66]~165_combout\) # 
-- (\inst7|Div0|auto_generated|divider|divider|StageOut[66]~164_combout\)))))
-- \inst7|Div0|auto_generated|divider|divider|op_13~9\ = CARRY((!\inst7|Div0|auto_generated|divider|divider|op_13~7\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[66]~165_combout\) # 
-- (\inst7|Div0|auto_generated|divider|divider|StageOut[66]~164_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[66]~165_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[66]~164_combout\,
	datad => VCC,
	cin => \inst7|Div0|auto_generated|divider|divider|op_13~7\,
	combout => \inst7|Div0|auto_generated|divider|divider|op_13~8_combout\,
	cout => \inst7|Div0|auto_generated|divider|divider|op_13~9\);

-- Location: LCCOMB_X25_Y13_N18
\inst7|Div0|auto_generated|divider|divider|op_13~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|op_13~10_combout\ = (\inst7|Div0|auto_generated|divider|divider|StageOut[67]~162_combout\ & (((!\inst7|Div0|auto_generated|divider|divider|op_13~9\)))) # 
-- (!\inst7|Div0|auto_generated|divider|divider|StageOut[67]~162_combout\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[67]~163_combout\ & (!\inst7|Div0|auto_generated|divider|divider|op_13~9\)) # 
-- (!\inst7|Div0|auto_generated|divider|divider|StageOut[67]~163_combout\ & ((\inst7|Div0|auto_generated|divider|divider|op_13~9\) # (GND)))))
-- \inst7|Div0|auto_generated|divider|divider|op_13~11\ = CARRY(((!\inst7|Div0|auto_generated|divider|divider|StageOut[67]~162_combout\ & !\inst7|Div0|auto_generated|divider|divider|StageOut[67]~163_combout\)) # 
-- (!\inst7|Div0|auto_generated|divider|divider|op_13~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[67]~162_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[67]~163_combout\,
	datad => VCC,
	cin => \inst7|Div0|auto_generated|divider|divider|op_13~9\,
	combout => \inst7|Div0|auto_generated|divider|divider|op_13~10_combout\,
	cout => \inst7|Div0|auto_generated|divider|divider|op_13~11\);

-- Location: LCCOMB_X25_Y13_N20
\inst7|Div0|auto_generated|divider|divider|op_13~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|op_13~12_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_13~11\ & (((\inst7|Div0|auto_generated|divider|divider|StageOut[68]~161_combout\) # 
-- (\inst7|Div0|auto_generated|divider|divider|StageOut[68]~160_combout\)))) # (!\inst7|Div0|auto_generated|divider|divider|op_13~11\ & ((((\inst7|Div0|auto_generated|divider|divider|StageOut[68]~161_combout\) # 
-- (\inst7|Div0|auto_generated|divider|divider|StageOut[68]~160_combout\)))))
-- \inst7|Div0|auto_generated|divider|divider|op_13~13\ = CARRY((!\inst7|Div0|auto_generated|divider|divider|op_13~11\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[68]~161_combout\) # 
-- (\inst7|Div0|auto_generated|divider|divider|StageOut[68]~160_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[68]~161_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[68]~160_combout\,
	datad => VCC,
	cin => \inst7|Div0|auto_generated|divider|divider|op_13~11\,
	combout => \inst7|Div0|auto_generated|divider|divider|op_13~12_combout\,
	cout => \inst7|Div0|auto_generated|divider|divider|op_13~13\);

-- Location: LCCOMB_X25_Y13_N22
\inst7|Div0|auto_generated|divider|divider|op_13~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|op_13~14_combout\ = (\inst7|Div0|auto_generated|divider|divider|StageOut[69]~159_combout\ & (((!\inst7|Div0|auto_generated|divider|divider|op_13~13\)))) # 
-- (!\inst7|Div0|auto_generated|divider|divider|StageOut[69]~159_combout\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[69]~158_combout\ & (!\inst7|Div0|auto_generated|divider|divider|op_13~13\)) # 
-- (!\inst7|Div0|auto_generated|divider|divider|StageOut[69]~158_combout\ & ((\inst7|Div0|auto_generated|divider|divider|op_13~13\) # (GND)))))
-- \inst7|Div0|auto_generated|divider|divider|op_13~15\ = CARRY(((!\inst7|Div0|auto_generated|divider|divider|StageOut[69]~159_combout\ & !\inst7|Div0|auto_generated|divider|divider|StageOut[69]~158_combout\)) # 
-- (!\inst7|Div0|auto_generated|divider|divider|op_13~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[69]~159_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[69]~158_combout\,
	datad => VCC,
	cin => \inst7|Div0|auto_generated|divider|divider|op_13~13\,
	combout => \inst7|Div0|auto_generated|divider|divider|op_13~14_combout\,
	cout => \inst7|Div0|auto_generated|divider|divider|op_13~15\);

-- Location: LCCOMB_X25_Y13_N24
\inst7|Div0|auto_generated|divider|divider|op_13~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|op_13~17_cout\ = CARRY((\inst7|Div0|auto_generated|divider|divider|StageOut[70]~157_combout\) # ((\inst7|Div0|auto_generated|divider|divider|StageOut[70]~156_combout\) # 
-- (!\inst7|Div0|auto_generated|divider|divider|op_13~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[70]~157_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[70]~156_combout\,
	datad => VCC,
	cin => \inst7|Div0|auto_generated|divider|divider|op_13~15\,
	cout => \inst7|Div0|auto_generated|divider|divider|op_13~17_cout\);

-- Location: LCCOMB_X25_Y13_N26
\inst7|Div0|auto_generated|divider|divider|op_13~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|op_13~18_combout\ = !\inst7|Div0|auto_generated|divider|divider|op_13~17_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst7|Div0|auto_generated|divider|divider|op_13~17_cout\,
	combout => \inst7|Div0|auto_generated|divider|divider|op_13~18_combout\);

-- Location: LCCOMB_X24_Y12_N8
\inst7|Div0|auto_generated|divider|divider|op_14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|op_14~0_combout\ = \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ $ (VCC)
-- \inst7|Div0|auto_generated|divider|divider|op_14~1\ = CARRY(\inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	datad => VCC,
	combout => \inst7|Div0|auto_generated|divider|divider|op_14~0_combout\,
	cout => \inst7|Div0|auto_generated|divider|divider|op_14~1\);

-- Location: LCCOMB_X24_Y12_N10
\inst7|Div0|auto_generated|divider|divider|op_14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|op_14~2_combout\ = (\inst7|Div0|auto_generated|divider|divider|StageOut[72]~180_combout\ & (((!\inst7|Div0|auto_generated|divider|divider|op_14~1\)))) # 
-- (!\inst7|Div0|auto_generated|divider|divider|StageOut[72]~180_combout\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[72]~179_combout\ & (!\inst7|Div0|auto_generated|divider|divider|op_14~1\)) # 
-- (!\inst7|Div0|auto_generated|divider|divider|StageOut[72]~179_combout\ & ((\inst7|Div0|auto_generated|divider|divider|op_14~1\) # (GND)))))
-- \inst7|Div0|auto_generated|divider|divider|op_14~3\ = CARRY(((!\inst7|Div0|auto_generated|divider|divider|StageOut[72]~180_combout\ & !\inst7|Div0|auto_generated|divider|divider|StageOut[72]~179_combout\)) # 
-- (!\inst7|Div0|auto_generated|divider|divider|op_14~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[72]~180_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[72]~179_combout\,
	datad => VCC,
	cin => \inst7|Div0|auto_generated|divider|divider|op_14~1\,
	combout => \inst7|Div0|auto_generated|divider|divider|op_14~2_combout\,
	cout => \inst7|Div0|auto_generated|divider|divider|op_14~3\);

-- Location: LCCOMB_X24_Y12_N12
\inst7|Div0|auto_generated|divider|divider|op_14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|op_14~4_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_14~3\ & (((\inst7|Div0|auto_generated|divider|divider|StageOut[73]~265_combout\) # 
-- (\inst7|Div0|auto_generated|divider|divider|StageOut[73]~178_combout\)))) # (!\inst7|Div0|auto_generated|divider|divider|op_14~3\ & ((((\inst7|Div0|auto_generated|divider|divider|StageOut[73]~265_combout\) # 
-- (\inst7|Div0|auto_generated|divider|divider|StageOut[73]~178_combout\)))))
-- \inst7|Div0|auto_generated|divider|divider|op_14~5\ = CARRY((!\inst7|Div0|auto_generated|divider|divider|op_14~3\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[73]~265_combout\) # 
-- (\inst7|Div0|auto_generated|divider|divider|StageOut[73]~178_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[73]~265_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[73]~178_combout\,
	datad => VCC,
	cin => \inst7|Div0|auto_generated|divider|divider|op_14~3\,
	combout => \inst7|Div0|auto_generated|divider|divider|op_14~4_combout\,
	cout => \inst7|Div0|auto_generated|divider|divider|op_14~5\);

-- Location: LCCOMB_X24_Y12_N14
\inst7|Div0|auto_generated|divider|divider|op_14~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|op_14~6_combout\ = (\inst7|Div0|auto_generated|divider|divider|StageOut[74]~264_combout\ & (((!\inst7|Div0|auto_generated|divider|divider|op_14~5\)))) # 
-- (!\inst7|Div0|auto_generated|divider|divider|StageOut[74]~264_combout\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[74]~177_combout\ & (!\inst7|Div0|auto_generated|divider|divider|op_14~5\)) # 
-- (!\inst7|Div0|auto_generated|divider|divider|StageOut[74]~177_combout\ & ((\inst7|Div0|auto_generated|divider|divider|op_14~5\) # (GND)))))
-- \inst7|Div0|auto_generated|divider|divider|op_14~7\ = CARRY(((!\inst7|Div0|auto_generated|divider|divider|StageOut[74]~264_combout\ & !\inst7|Div0|auto_generated|divider|divider|StageOut[74]~177_combout\)) # 
-- (!\inst7|Div0|auto_generated|divider|divider|op_14~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[74]~264_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[74]~177_combout\,
	datad => VCC,
	cin => \inst7|Div0|auto_generated|divider|divider|op_14~5\,
	combout => \inst7|Div0|auto_generated|divider|divider|op_14~6_combout\,
	cout => \inst7|Div0|auto_generated|divider|divider|op_14~7\);

-- Location: LCCOMB_X24_Y12_N16
\inst7|Div0|auto_generated|divider|divider|op_14~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|op_14~8_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_14~7\ & (((\inst7|Div0|auto_generated|divider|divider|StageOut[75]~176_combout\) # 
-- (\inst7|Div0|auto_generated|divider|divider|StageOut[75]~263_combout\)))) # (!\inst7|Div0|auto_generated|divider|divider|op_14~7\ & ((((\inst7|Div0|auto_generated|divider|divider|StageOut[75]~176_combout\) # 
-- (\inst7|Div0|auto_generated|divider|divider|StageOut[75]~263_combout\)))))
-- \inst7|Div0|auto_generated|divider|divider|op_14~9\ = CARRY((!\inst7|Div0|auto_generated|divider|divider|op_14~7\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[75]~176_combout\) # 
-- (\inst7|Div0|auto_generated|divider|divider|StageOut[75]~263_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[75]~176_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[75]~263_combout\,
	datad => VCC,
	cin => \inst7|Div0|auto_generated|divider|divider|op_14~7\,
	combout => \inst7|Div0|auto_generated|divider|divider|op_14~8_combout\,
	cout => \inst7|Div0|auto_generated|divider|divider|op_14~9\);

-- Location: LCCOMB_X24_Y12_N18
\inst7|Div0|auto_generated|divider|divider|op_14~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|op_14~10_combout\ = (\inst7|Div0|auto_generated|divider|divider|StageOut[76]~175_combout\ & (((!\inst7|Div0|auto_generated|divider|divider|op_14~9\)))) # 
-- (!\inst7|Div0|auto_generated|divider|divider|StageOut[76]~175_combout\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[76]~262_combout\ & (!\inst7|Div0|auto_generated|divider|divider|op_14~9\)) # 
-- (!\inst7|Div0|auto_generated|divider|divider|StageOut[76]~262_combout\ & ((\inst7|Div0|auto_generated|divider|divider|op_14~9\) # (GND)))))
-- \inst7|Div0|auto_generated|divider|divider|op_14~11\ = CARRY(((!\inst7|Div0|auto_generated|divider|divider|StageOut[76]~175_combout\ & !\inst7|Div0|auto_generated|divider|divider|StageOut[76]~262_combout\)) # 
-- (!\inst7|Div0|auto_generated|divider|divider|op_14~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[76]~175_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[76]~262_combout\,
	datad => VCC,
	cin => \inst7|Div0|auto_generated|divider|divider|op_14~9\,
	combout => \inst7|Div0|auto_generated|divider|divider|op_14~10_combout\,
	cout => \inst7|Div0|auto_generated|divider|divider|op_14~11\);

-- Location: LCCOMB_X24_Y12_N20
\inst7|Div0|auto_generated|divider|divider|op_14~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|op_14~12_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_14~11\ & (((\inst7|Div0|auto_generated|divider|divider|StageOut[77]~261_combout\) # 
-- (\inst7|Div0|auto_generated|divider|divider|StageOut[77]~174_combout\)))) # (!\inst7|Div0|auto_generated|divider|divider|op_14~11\ & ((((\inst7|Div0|auto_generated|divider|divider|StageOut[77]~261_combout\) # 
-- (\inst7|Div0|auto_generated|divider|divider|StageOut[77]~174_combout\)))))
-- \inst7|Div0|auto_generated|divider|divider|op_14~13\ = CARRY((!\inst7|Div0|auto_generated|divider|divider|op_14~11\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[77]~261_combout\) # 
-- (\inst7|Div0|auto_generated|divider|divider|StageOut[77]~174_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[77]~261_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[77]~174_combout\,
	datad => VCC,
	cin => \inst7|Div0|auto_generated|divider|divider|op_14~11\,
	combout => \inst7|Div0|auto_generated|divider|divider|op_14~12_combout\,
	cout => \inst7|Div0|auto_generated|divider|divider|op_14~13\);

-- Location: LCCOMB_X24_Y12_N22
\inst7|Div0|auto_generated|divider|divider|op_14~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|op_14~14_combout\ = (\inst7|Div0|auto_generated|divider|divider|StageOut[78]~173_combout\ & (((!\inst7|Div0|auto_generated|divider|divider|op_14~13\)))) # 
-- (!\inst7|Div0|auto_generated|divider|divider|StageOut[78]~173_combout\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[78]~260_combout\ & (!\inst7|Div0|auto_generated|divider|divider|op_14~13\)) # 
-- (!\inst7|Div0|auto_generated|divider|divider|StageOut[78]~260_combout\ & ((\inst7|Div0|auto_generated|divider|divider|op_14~13\) # (GND)))))
-- \inst7|Div0|auto_generated|divider|divider|op_14~15\ = CARRY(((!\inst7|Div0|auto_generated|divider|divider|StageOut[78]~173_combout\ & !\inst7|Div0|auto_generated|divider|divider|StageOut[78]~260_combout\)) # 
-- (!\inst7|Div0|auto_generated|divider|divider|op_14~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[78]~173_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[78]~260_combout\,
	datad => VCC,
	cin => \inst7|Div0|auto_generated|divider|divider|op_14~13\,
	combout => \inst7|Div0|auto_generated|divider|divider|op_14~14_combout\,
	cout => \inst7|Div0|auto_generated|divider|divider|op_14~15\);

-- Location: LCCOMB_X24_Y12_N24
\inst7|Div0|auto_generated|divider|divider|op_14~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|op_14~17_cout\ = CARRY((\inst7|Div0|auto_generated|divider|divider|StageOut[79]~259_combout\) # ((\inst7|Div0|auto_generated|divider|divider|StageOut[79]~172_combout\) # 
-- (!\inst7|Div0|auto_generated|divider|divider|op_14~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[79]~259_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[79]~172_combout\,
	datad => VCC,
	cin => \inst7|Div0|auto_generated|divider|divider|op_14~15\,
	cout => \inst7|Div0|auto_generated|divider|divider|op_14~17_cout\);

-- Location: LCCOMB_X24_Y12_N26
\inst7|Div0|auto_generated|divider|divider|op_14~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|op_14~18_combout\ = !\inst7|Div0|auto_generated|divider|divider|op_14~17_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst7|Div0|auto_generated|divider|divider|op_14~17_cout\,
	combout => \inst7|Div0|auto_generated|divider|divider|op_14~18_combout\);

-- Location: LCCOMB_X25_Y11_N2
\inst7|Div0|auto_generated|divider|divider|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|op_1~0_combout\ = \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ $ (VCC)
-- \inst7|Div0|auto_generated|divider|divider|op_1~1\ = CARRY(\inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	datad => VCC,
	combout => \inst7|Div0|auto_generated|divider|divider|op_1~0_combout\,
	cout => \inst7|Div0|auto_generated|divider|divider|op_1~1\);

-- Location: LCCOMB_X25_Y11_N4
\inst7|Div0|auto_generated|divider|divider|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|op_1~2_combout\ = (\inst7|Div0|auto_generated|divider|divider|StageOut[81]~188_combout\ & (((!\inst7|Div0|auto_generated|divider|divider|op_1~1\)))) # 
-- (!\inst7|Div0|auto_generated|divider|divider|StageOut[81]~188_combout\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[81]~189_combout\ & (!\inst7|Div0|auto_generated|divider|divider|op_1~1\)) # 
-- (!\inst7|Div0|auto_generated|divider|divider|StageOut[81]~189_combout\ & ((\inst7|Div0|auto_generated|divider|divider|op_1~1\) # (GND)))))
-- \inst7|Div0|auto_generated|divider|divider|op_1~3\ = CARRY(((!\inst7|Div0|auto_generated|divider|divider|StageOut[81]~188_combout\ & !\inst7|Div0|auto_generated|divider|divider|StageOut[81]~189_combout\)) # 
-- (!\inst7|Div0|auto_generated|divider|divider|op_1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[81]~188_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[81]~189_combout\,
	datad => VCC,
	cin => \inst7|Div0|auto_generated|divider|divider|op_1~1\,
	combout => \inst7|Div0|auto_generated|divider|divider|op_1~2_combout\,
	cout => \inst7|Div0|auto_generated|divider|divider|op_1~3\);

-- Location: LCCOMB_X25_Y11_N6
\inst7|Div0|auto_generated|divider|divider|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|op_1~4_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_1~3\ & (((\inst7|Div0|auto_generated|divider|divider|StageOut[82]~266_combout\) # 
-- (\inst7|Div0|auto_generated|divider|divider|StageOut[82]~187_combout\)))) # (!\inst7|Div0|auto_generated|divider|divider|op_1~3\ & ((((\inst7|Div0|auto_generated|divider|divider|StageOut[82]~266_combout\) # 
-- (\inst7|Div0|auto_generated|divider|divider|StageOut[82]~187_combout\)))))
-- \inst7|Div0|auto_generated|divider|divider|op_1~5\ = CARRY((!\inst7|Div0|auto_generated|divider|divider|op_1~3\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[82]~266_combout\) # 
-- (\inst7|Div0|auto_generated|divider|divider|StageOut[82]~187_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[82]~266_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[82]~187_combout\,
	datad => VCC,
	cin => \inst7|Div0|auto_generated|divider|divider|op_1~3\,
	combout => \inst7|Div0|auto_generated|divider|divider|op_1~4_combout\,
	cout => \inst7|Div0|auto_generated|divider|divider|op_1~5\);

-- Location: LCCOMB_X25_Y11_N8
\inst7|Div0|auto_generated|divider|divider|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|op_1~6_combout\ = (\inst7|Div0|auto_generated|divider|divider|StageOut[83]~230_combout\ & (((!\inst7|Div0|auto_generated|divider|divider|op_1~5\)))) # 
-- (!\inst7|Div0|auto_generated|divider|divider|StageOut[83]~230_combout\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[83]~186_combout\ & (!\inst7|Div0|auto_generated|divider|divider|op_1~5\)) # 
-- (!\inst7|Div0|auto_generated|divider|divider|StageOut[83]~186_combout\ & ((\inst7|Div0|auto_generated|divider|divider|op_1~5\) # (GND)))))
-- \inst7|Div0|auto_generated|divider|divider|op_1~7\ = CARRY(((!\inst7|Div0|auto_generated|divider|divider|StageOut[83]~230_combout\ & !\inst7|Div0|auto_generated|divider|divider|StageOut[83]~186_combout\)) # 
-- (!\inst7|Div0|auto_generated|divider|divider|op_1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[83]~230_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[83]~186_combout\,
	datad => VCC,
	cin => \inst7|Div0|auto_generated|divider|divider|op_1~5\,
	combout => \inst7|Div0|auto_generated|divider|divider|op_1~6_combout\,
	cout => \inst7|Div0|auto_generated|divider|divider|op_1~7\);

-- Location: LCCOMB_X25_Y11_N10
\inst7|Div0|auto_generated|divider|divider|op_1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|op_1~8_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_1~7\ & (((\inst7|Div0|auto_generated|divider|divider|StageOut[84]~185_combout\) # 
-- (\inst7|Div0|auto_generated|divider|divider|StageOut[84]~229_combout\)))) # (!\inst7|Div0|auto_generated|divider|divider|op_1~7\ & ((((\inst7|Div0|auto_generated|divider|divider|StageOut[84]~185_combout\) # 
-- (\inst7|Div0|auto_generated|divider|divider|StageOut[84]~229_combout\)))))
-- \inst7|Div0|auto_generated|divider|divider|op_1~9\ = CARRY((!\inst7|Div0|auto_generated|divider|divider|op_1~7\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[84]~185_combout\) # 
-- (\inst7|Div0|auto_generated|divider|divider|StageOut[84]~229_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[84]~185_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[84]~229_combout\,
	datad => VCC,
	cin => \inst7|Div0|auto_generated|divider|divider|op_1~7\,
	combout => \inst7|Div0|auto_generated|divider|divider|op_1~8_combout\,
	cout => \inst7|Div0|auto_generated|divider|divider|op_1~9\);

-- Location: LCCOMB_X25_Y11_N12
\inst7|Div0|auto_generated|divider|divider|op_1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|op_1~10_combout\ = (\inst7|Div0|auto_generated|divider|divider|StageOut[85]~184_combout\ & (((!\inst7|Div0|auto_generated|divider|divider|op_1~9\)))) # 
-- (!\inst7|Div0|auto_generated|divider|divider|StageOut[85]~184_combout\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[85]~228_combout\ & (!\inst7|Div0|auto_generated|divider|divider|op_1~9\)) # 
-- (!\inst7|Div0|auto_generated|divider|divider|StageOut[85]~228_combout\ & ((\inst7|Div0|auto_generated|divider|divider|op_1~9\) # (GND)))))
-- \inst7|Div0|auto_generated|divider|divider|op_1~11\ = CARRY(((!\inst7|Div0|auto_generated|divider|divider|StageOut[85]~184_combout\ & !\inst7|Div0|auto_generated|divider|divider|StageOut[85]~228_combout\)) # 
-- (!\inst7|Div0|auto_generated|divider|divider|op_1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[85]~184_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[85]~228_combout\,
	datad => VCC,
	cin => \inst7|Div0|auto_generated|divider|divider|op_1~9\,
	combout => \inst7|Div0|auto_generated|divider|divider|op_1~10_combout\,
	cout => \inst7|Div0|auto_generated|divider|divider|op_1~11\);

-- Location: LCCOMB_X25_Y11_N14
\inst7|Div0|auto_generated|divider|divider|op_1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|op_1~12_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_1~11\ & (((\inst7|Div0|auto_generated|divider|divider|StageOut[86]~183_combout\) # 
-- (\inst7|Div0|auto_generated|divider|divider|StageOut[86]~227_combout\)))) # (!\inst7|Div0|auto_generated|divider|divider|op_1~11\ & ((((\inst7|Div0|auto_generated|divider|divider|StageOut[86]~183_combout\) # 
-- (\inst7|Div0|auto_generated|divider|divider|StageOut[86]~227_combout\)))))
-- \inst7|Div0|auto_generated|divider|divider|op_1~13\ = CARRY((!\inst7|Div0|auto_generated|divider|divider|op_1~11\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[86]~183_combout\) # 
-- (\inst7|Div0|auto_generated|divider|divider|StageOut[86]~227_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[86]~183_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[86]~227_combout\,
	datad => VCC,
	cin => \inst7|Div0|auto_generated|divider|divider|op_1~11\,
	combout => \inst7|Div0|auto_generated|divider|divider|op_1~12_combout\,
	cout => \inst7|Div0|auto_generated|divider|divider|op_1~13\);

-- Location: LCCOMB_X25_Y11_N16
\inst7|Div0|auto_generated|divider|divider|op_1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|op_1~14_combout\ = (\inst7|Div0|auto_generated|divider|divider|StageOut[87]~226_combout\ & (((!\inst7|Div0|auto_generated|divider|divider|op_1~13\)))) # 
-- (!\inst7|Div0|auto_generated|divider|divider|StageOut[87]~226_combout\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[87]~182_combout\ & (!\inst7|Div0|auto_generated|divider|divider|op_1~13\)) # 
-- (!\inst7|Div0|auto_generated|divider|divider|StageOut[87]~182_combout\ & ((\inst7|Div0|auto_generated|divider|divider|op_1~13\) # (GND)))))
-- \inst7|Div0|auto_generated|divider|divider|op_1~15\ = CARRY(((!\inst7|Div0|auto_generated|divider|divider|StageOut[87]~226_combout\ & !\inst7|Div0|auto_generated|divider|divider|StageOut[87]~182_combout\)) # 
-- (!\inst7|Div0|auto_generated|divider|divider|op_1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[87]~226_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[87]~182_combout\,
	datad => VCC,
	cin => \inst7|Div0|auto_generated|divider|divider|op_1~13\,
	combout => \inst7|Div0|auto_generated|divider|divider|op_1~14_combout\,
	cout => \inst7|Div0|auto_generated|divider|divider|op_1~15\);

-- Location: LCCOMB_X25_Y11_N18
\inst7|Div0|auto_generated|divider|divider|op_1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|op_1~17_cout\ = CARRY((\inst7|Div0|auto_generated|divider|divider|StageOut[88]~181_combout\) # ((\inst7|Div0|auto_generated|divider|divider|StageOut[88]~225_combout\) # 
-- (!\inst7|Div0|auto_generated|divider|divider|op_1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[88]~181_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[88]~225_combout\,
	datad => VCC,
	cin => \inst7|Div0|auto_generated|divider|divider|op_1~15\,
	cout => \inst7|Div0|auto_generated|divider|divider|op_1~17_cout\);

-- Location: LCCOMB_X25_Y11_N20
\inst7|Div0|auto_generated|divider|divider|op_1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|op_1~18_combout\ = !\inst7|Div0|auto_generated|divider|divider|op_1~17_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst7|Div0|auto_generated|divider|divider|op_1~17_cout\,
	combout => \inst7|Div0|auto_generated|divider|divider|op_1~18_combout\);

-- Location: LCCOMB_X23_Y11_N8
\inst7|Div0|auto_generated|divider|divider|op_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|op_2~0_combout\ = \inst7|Mult0|mult_core|romout[0][4]~12_combout\ $ (VCC)
-- \inst7|Div0|auto_generated|divider|divider|op_2~1\ = CARRY(\inst7|Mult0|mult_core|romout[0][4]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Mult0|mult_core|romout[0][4]~12_combout\,
	datad => VCC,
	combout => \inst7|Div0|auto_generated|divider|divider|op_2~0_combout\,
	cout => \inst7|Div0|auto_generated|divider|divider|op_2~1\);

-- Location: LCCOMB_X23_Y11_N10
\inst7|Div0|auto_generated|divider|divider|op_2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|op_2~2_combout\ = (\inst7|Div0|auto_generated|divider|divider|StageOut[90]~198_combout\ & (((!\inst7|Div0|auto_generated|divider|divider|op_2~1\)))) # 
-- (!\inst7|Div0|auto_generated|divider|divider|StageOut[90]~198_combout\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[90]~197_combout\ & (!\inst7|Div0|auto_generated|divider|divider|op_2~1\)) # 
-- (!\inst7|Div0|auto_generated|divider|divider|StageOut[90]~197_combout\ & ((\inst7|Div0|auto_generated|divider|divider|op_2~1\) # (GND)))))
-- \inst7|Div0|auto_generated|divider|divider|op_2~3\ = CARRY(((!\inst7|Div0|auto_generated|divider|divider|StageOut[90]~198_combout\ & !\inst7|Div0|auto_generated|divider|divider|StageOut[90]~197_combout\)) # 
-- (!\inst7|Div0|auto_generated|divider|divider|op_2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[90]~198_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[90]~197_combout\,
	datad => VCC,
	cin => \inst7|Div0|auto_generated|divider|divider|op_2~1\,
	combout => \inst7|Div0|auto_generated|divider|divider|op_2~2_combout\,
	cout => \inst7|Div0|auto_generated|divider|divider|op_2~3\);

-- Location: LCCOMB_X23_Y11_N12
\inst7|Div0|auto_generated|divider|divider|op_2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|op_2~4_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_2~3\ & (((\inst7|Div0|auto_generated|divider|divider|StageOut[91]~267_combout\) # 
-- (\inst7|Div0|auto_generated|divider|divider|StageOut[91]~196_combout\)))) # (!\inst7|Div0|auto_generated|divider|divider|op_2~3\ & ((((\inst7|Div0|auto_generated|divider|divider|StageOut[91]~267_combout\) # 
-- (\inst7|Div0|auto_generated|divider|divider|StageOut[91]~196_combout\)))))
-- \inst7|Div0|auto_generated|divider|divider|op_2~5\ = CARRY((!\inst7|Div0|auto_generated|divider|divider|op_2~3\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[91]~267_combout\) # 
-- (\inst7|Div0|auto_generated|divider|divider|StageOut[91]~196_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[91]~267_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[91]~196_combout\,
	datad => VCC,
	cin => \inst7|Div0|auto_generated|divider|divider|op_2~3\,
	combout => \inst7|Div0|auto_generated|divider|divider|op_2~4_combout\,
	cout => \inst7|Div0|auto_generated|divider|divider|op_2~5\);

-- Location: LCCOMB_X23_Y11_N14
\inst7|Div0|auto_generated|divider|divider|op_2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|op_2~6_combout\ = (\inst7|Div0|auto_generated|divider|divider|StageOut[92]~236_combout\ & (((!\inst7|Div0|auto_generated|divider|divider|op_2~5\)))) # 
-- (!\inst7|Div0|auto_generated|divider|divider|StageOut[92]~236_combout\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[92]~195_combout\ & (!\inst7|Div0|auto_generated|divider|divider|op_2~5\)) # 
-- (!\inst7|Div0|auto_generated|divider|divider|StageOut[92]~195_combout\ & ((\inst7|Div0|auto_generated|divider|divider|op_2~5\) # (GND)))))
-- \inst7|Div0|auto_generated|divider|divider|op_2~7\ = CARRY(((!\inst7|Div0|auto_generated|divider|divider|StageOut[92]~236_combout\ & !\inst7|Div0|auto_generated|divider|divider|StageOut[92]~195_combout\)) # 
-- (!\inst7|Div0|auto_generated|divider|divider|op_2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[92]~236_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[92]~195_combout\,
	datad => VCC,
	cin => \inst7|Div0|auto_generated|divider|divider|op_2~5\,
	combout => \inst7|Div0|auto_generated|divider|divider|op_2~6_combout\,
	cout => \inst7|Div0|auto_generated|divider|divider|op_2~7\);

-- Location: LCCOMB_X23_Y11_N16
\inst7|Div0|auto_generated|divider|divider|op_2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|op_2~8_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_2~7\ & (((\inst7|Div0|auto_generated|divider|divider|StageOut[93]~194_combout\) # 
-- (\inst7|Div0|auto_generated|divider|divider|StageOut[93]~235_combout\)))) # (!\inst7|Div0|auto_generated|divider|divider|op_2~7\ & ((((\inst7|Div0|auto_generated|divider|divider|StageOut[93]~194_combout\) # 
-- (\inst7|Div0|auto_generated|divider|divider|StageOut[93]~235_combout\)))))
-- \inst7|Div0|auto_generated|divider|divider|op_2~9\ = CARRY((!\inst7|Div0|auto_generated|divider|divider|op_2~7\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[93]~194_combout\) # 
-- (\inst7|Div0|auto_generated|divider|divider|StageOut[93]~235_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[93]~194_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[93]~235_combout\,
	datad => VCC,
	cin => \inst7|Div0|auto_generated|divider|divider|op_2~7\,
	combout => \inst7|Div0|auto_generated|divider|divider|op_2~8_combout\,
	cout => \inst7|Div0|auto_generated|divider|divider|op_2~9\);

-- Location: LCCOMB_X23_Y11_N18
\inst7|Div0|auto_generated|divider|divider|op_2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|op_2~10_combout\ = (\inst7|Div0|auto_generated|divider|divider|StageOut[94]~193_combout\ & (((!\inst7|Div0|auto_generated|divider|divider|op_2~9\)))) # 
-- (!\inst7|Div0|auto_generated|divider|divider|StageOut[94]~193_combout\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[94]~234_combout\ & (!\inst7|Div0|auto_generated|divider|divider|op_2~9\)) # 
-- (!\inst7|Div0|auto_generated|divider|divider|StageOut[94]~234_combout\ & ((\inst7|Div0|auto_generated|divider|divider|op_2~9\) # (GND)))))
-- \inst7|Div0|auto_generated|divider|divider|op_2~11\ = CARRY(((!\inst7|Div0|auto_generated|divider|divider|StageOut[94]~193_combout\ & !\inst7|Div0|auto_generated|divider|divider|StageOut[94]~234_combout\)) # 
-- (!\inst7|Div0|auto_generated|divider|divider|op_2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[94]~193_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[94]~234_combout\,
	datad => VCC,
	cin => \inst7|Div0|auto_generated|divider|divider|op_2~9\,
	combout => \inst7|Div0|auto_generated|divider|divider|op_2~10_combout\,
	cout => \inst7|Div0|auto_generated|divider|divider|op_2~11\);

-- Location: LCCOMB_X23_Y11_N20
\inst7|Div0|auto_generated|divider|divider|op_2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|op_2~12_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_2~11\ & (((\inst7|Div0|auto_generated|divider|divider|StageOut[95]~233_combout\) # 
-- (\inst7|Div0|auto_generated|divider|divider|StageOut[95]~192_combout\)))) # (!\inst7|Div0|auto_generated|divider|divider|op_2~11\ & ((((\inst7|Div0|auto_generated|divider|divider|StageOut[95]~233_combout\) # 
-- (\inst7|Div0|auto_generated|divider|divider|StageOut[95]~192_combout\)))))
-- \inst7|Div0|auto_generated|divider|divider|op_2~13\ = CARRY((!\inst7|Div0|auto_generated|divider|divider|op_2~11\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[95]~233_combout\) # 
-- (\inst7|Div0|auto_generated|divider|divider|StageOut[95]~192_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[95]~233_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[95]~192_combout\,
	datad => VCC,
	cin => \inst7|Div0|auto_generated|divider|divider|op_2~11\,
	combout => \inst7|Div0|auto_generated|divider|divider|op_2~12_combout\,
	cout => \inst7|Div0|auto_generated|divider|divider|op_2~13\);

-- Location: LCCOMB_X23_Y11_N22
\inst7|Div0|auto_generated|divider|divider|op_2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|op_2~14_combout\ = (\inst7|Div0|auto_generated|divider|divider|StageOut[96]~232_combout\ & (((!\inst7|Div0|auto_generated|divider|divider|op_2~13\)))) # 
-- (!\inst7|Div0|auto_generated|divider|divider|StageOut[96]~232_combout\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[96]~191_combout\ & (!\inst7|Div0|auto_generated|divider|divider|op_2~13\)) # 
-- (!\inst7|Div0|auto_generated|divider|divider|StageOut[96]~191_combout\ & ((\inst7|Div0|auto_generated|divider|divider|op_2~13\) # (GND)))))
-- \inst7|Div0|auto_generated|divider|divider|op_2~15\ = CARRY(((!\inst7|Div0|auto_generated|divider|divider|StageOut[96]~232_combout\ & !\inst7|Div0|auto_generated|divider|divider|StageOut[96]~191_combout\)) # 
-- (!\inst7|Div0|auto_generated|divider|divider|op_2~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[96]~232_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[96]~191_combout\,
	datad => VCC,
	cin => \inst7|Div0|auto_generated|divider|divider|op_2~13\,
	combout => \inst7|Div0|auto_generated|divider|divider|op_2~14_combout\,
	cout => \inst7|Div0|auto_generated|divider|divider|op_2~15\);

-- Location: LCCOMB_X23_Y11_N24
\inst7|Div0|auto_generated|divider|divider|op_2~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|op_2~17_cout\ = CARRY((\inst7|Div0|auto_generated|divider|divider|StageOut[97]~190_combout\) # ((\inst7|Div0|auto_generated|divider|divider|StageOut[97]~231_combout\) # 
-- (!\inst7|Div0|auto_generated|divider|divider|op_2~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[97]~190_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[97]~231_combout\,
	datad => VCC,
	cin => \inst7|Div0|auto_generated|divider|divider|op_2~15\,
	cout => \inst7|Div0|auto_generated|divider|divider|op_2~17_cout\);

-- Location: LCCOMB_X23_Y11_N26
\inst7|Div0|auto_generated|divider|divider|op_2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|op_2~18_combout\ = !\inst7|Div0|auto_generated|divider|divider|op_2~17_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst7|Div0|auto_generated|divider|divider|op_2~17_cout\,
	combout => \inst7|Div0|auto_generated|divider|divider|op_2~18_combout\);

-- Location: LCCOMB_X21_Y11_N4
\inst7|Div0|auto_generated|divider|divider|op_3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|op_3~0_combout\ = \inst7|Mult0|mult_core|romout[0][3]~13_combout\ $ (VCC)
-- \inst7|Div0|auto_generated|divider|divider|op_3~1\ = CARRY(\inst7|Mult0|mult_core|romout[0][3]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mult0|mult_core|romout[0][3]~13_combout\,
	datad => VCC,
	combout => \inst7|Div0|auto_generated|divider|divider|op_3~0_combout\,
	cout => \inst7|Div0|auto_generated|divider|divider|op_3~1\);

-- Location: LCCOMB_X21_Y11_N6
\inst7|Div0|auto_generated|divider|divider|op_3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|op_3~2_combout\ = (\inst7|Div0|auto_generated|divider|divider|StageOut[99]~206_combout\ & (((!\inst7|Div0|auto_generated|divider|divider|op_3~1\)))) # 
-- (!\inst7|Div0|auto_generated|divider|divider|StageOut[99]~206_combout\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[99]~207_combout\ & (!\inst7|Div0|auto_generated|divider|divider|op_3~1\)) # 
-- (!\inst7|Div0|auto_generated|divider|divider|StageOut[99]~207_combout\ & ((\inst7|Div0|auto_generated|divider|divider|op_3~1\) # (GND)))))
-- \inst7|Div0|auto_generated|divider|divider|op_3~3\ = CARRY(((!\inst7|Div0|auto_generated|divider|divider|StageOut[99]~206_combout\ & !\inst7|Div0|auto_generated|divider|divider|StageOut[99]~207_combout\)) # 
-- (!\inst7|Div0|auto_generated|divider|divider|op_3~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[99]~206_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[99]~207_combout\,
	datad => VCC,
	cin => \inst7|Div0|auto_generated|divider|divider|op_3~1\,
	combout => \inst7|Div0|auto_generated|divider|divider|op_3~2_combout\,
	cout => \inst7|Div0|auto_generated|divider|divider|op_3~3\);

-- Location: LCCOMB_X21_Y11_N8
\inst7|Div0|auto_generated|divider|divider|op_3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|op_3~4_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_3~3\ & (((\inst7|Div0|auto_generated|divider|divider|StageOut[100]~205_combout\) # 
-- (\inst7|Div0|auto_generated|divider|divider|StageOut[100]~268_combout\)))) # (!\inst7|Div0|auto_generated|divider|divider|op_3~3\ & ((((\inst7|Div0|auto_generated|divider|divider|StageOut[100]~205_combout\) # 
-- (\inst7|Div0|auto_generated|divider|divider|StageOut[100]~268_combout\)))))
-- \inst7|Div0|auto_generated|divider|divider|op_3~5\ = CARRY((!\inst7|Div0|auto_generated|divider|divider|op_3~3\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[100]~205_combout\) # 
-- (\inst7|Div0|auto_generated|divider|divider|StageOut[100]~268_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[100]~205_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[100]~268_combout\,
	datad => VCC,
	cin => \inst7|Div0|auto_generated|divider|divider|op_3~3\,
	combout => \inst7|Div0|auto_generated|divider|divider|op_3~4_combout\,
	cout => \inst7|Div0|auto_generated|divider|divider|op_3~5\);

-- Location: LCCOMB_X21_Y11_N10
\inst7|Div0|auto_generated|divider|divider|op_3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|op_3~6_combout\ = (\inst7|Div0|auto_generated|divider|divider|StageOut[101]~242_combout\ & (((!\inst7|Div0|auto_generated|divider|divider|op_3~5\)))) # 
-- (!\inst7|Div0|auto_generated|divider|divider|StageOut[101]~242_combout\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[101]~204_combout\ & (!\inst7|Div0|auto_generated|divider|divider|op_3~5\)) # 
-- (!\inst7|Div0|auto_generated|divider|divider|StageOut[101]~204_combout\ & ((\inst7|Div0|auto_generated|divider|divider|op_3~5\) # (GND)))))
-- \inst7|Div0|auto_generated|divider|divider|op_3~7\ = CARRY(((!\inst7|Div0|auto_generated|divider|divider|StageOut[101]~242_combout\ & !\inst7|Div0|auto_generated|divider|divider|StageOut[101]~204_combout\)) # 
-- (!\inst7|Div0|auto_generated|divider|divider|op_3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[101]~242_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[101]~204_combout\,
	datad => VCC,
	cin => \inst7|Div0|auto_generated|divider|divider|op_3~5\,
	combout => \inst7|Div0|auto_generated|divider|divider|op_3~6_combout\,
	cout => \inst7|Div0|auto_generated|divider|divider|op_3~7\);

-- Location: LCCOMB_X21_Y11_N12
\inst7|Div0|auto_generated|divider|divider|op_3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|op_3~8_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_3~7\ & (((\inst7|Div0|auto_generated|divider|divider|StageOut[102]~241_combout\) # 
-- (\inst7|Div0|auto_generated|divider|divider|StageOut[102]~203_combout\)))) # (!\inst7|Div0|auto_generated|divider|divider|op_3~7\ & ((((\inst7|Div0|auto_generated|divider|divider|StageOut[102]~241_combout\) # 
-- (\inst7|Div0|auto_generated|divider|divider|StageOut[102]~203_combout\)))))
-- \inst7|Div0|auto_generated|divider|divider|op_3~9\ = CARRY((!\inst7|Div0|auto_generated|divider|divider|op_3~7\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[102]~241_combout\) # 
-- (\inst7|Div0|auto_generated|divider|divider|StageOut[102]~203_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[102]~241_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[102]~203_combout\,
	datad => VCC,
	cin => \inst7|Div0|auto_generated|divider|divider|op_3~7\,
	combout => \inst7|Div0|auto_generated|divider|divider|op_3~8_combout\,
	cout => \inst7|Div0|auto_generated|divider|divider|op_3~9\);

-- Location: LCCOMB_X21_Y11_N14
\inst7|Div0|auto_generated|divider|divider|op_3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|op_3~10_combout\ = (\inst7|Div0|auto_generated|divider|divider|StageOut[103]~240_combout\ & (((!\inst7|Div0|auto_generated|divider|divider|op_3~9\)))) # 
-- (!\inst7|Div0|auto_generated|divider|divider|StageOut[103]~240_combout\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[103]~202_combout\ & (!\inst7|Div0|auto_generated|divider|divider|op_3~9\)) # 
-- (!\inst7|Div0|auto_generated|divider|divider|StageOut[103]~202_combout\ & ((\inst7|Div0|auto_generated|divider|divider|op_3~9\) # (GND)))))
-- \inst7|Div0|auto_generated|divider|divider|op_3~11\ = CARRY(((!\inst7|Div0|auto_generated|divider|divider|StageOut[103]~240_combout\ & !\inst7|Div0|auto_generated|divider|divider|StageOut[103]~202_combout\)) # 
-- (!\inst7|Div0|auto_generated|divider|divider|op_3~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[103]~240_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[103]~202_combout\,
	datad => VCC,
	cin => \inst7|Div0|auto_generated|divider|divider|op_3~9\,
	combout => \inst7|Div0|auto_generated|divider|divider|op_3~10_combout\,
	cout => \inst7|Div0|auto_generated|divider|divider|op_3~11\);

-- Location: LCCOMB_X21_Y11_N16
\inst7|Div0|auto_generated|divider|divider|op_3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|op_3~12_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_3~11\ & (((\inst7|Div0|auto_generated|divider|divider|StageOut[104]~239_combout\) # 
-- (\inst7|Div0|auto_generated|divider|divider|StageOut[104]~201_combout\)))) # (!\inst7|Div0|auto_generated|divider|divider|op_3~11\ & ((((\inst7|Div0|auto_generated|divider|divider|StageOut[104]~239_combout\) # 
-- (\inst7|Div0|auto_generated|divider|divider|StageOut[104]~201_combout\)))))
-- \inst7|Div0|auto_generated|divider|divider|op_3~13\ = CARRY((!\inst7|Div0|auto_generated|divider|divider|op_3~11\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[104]~239_combout\) # 
-- (\inst7|Div0|auto_generated|divider|divider|StageOut[104]~201_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[104]~239_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[104]~201_combout\,
	datad => VCC,
	cin => \inst7|Div0|auto_generated|divider|divider|op_3~11\,
	combout => \inst7|Div0|auto_generated|divider|divider|op_3~12_combout\,
	cout => \inst7|Div0|auto_generated|divider|divider|op_3~13\);

-- Location: LCCOMB_X21_Y11_N18
\inst7|Div0|auto_generated|divider|divider|op_3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|op_3~14_combout\ = (\inst7|Div0|auto_generated|divider|divider|StageOut[105]~200_combout\ & (((!\inst7|Div0|auto_generated|divider|divider|op_3~13\)))) # 
-- (!\inst7|Div0|auto_generated|divider|divider|StageOut[105]~200_combout\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[105]~238_combout\ & (!\inst7|Div0|auto_generated|divider|divider|op_3~13\)) # 
-- (!\inst7|Div0|auto_generated|divider|divider|StageOut[105]~238_combout\ & ((\inst7|Div0|auto_generated|divider|divider|op_3~13\) # (GND)))))
-- \inst7|Div0|auto_generated|divider|divider|op_3~15\ = CARRY(((!\inst7|Div0|auto_generated|divider|divider|StageOut[105]~200_combout\ & !\inst7|Div0|auto_generated|divider|divider|StageOut[105]~238_combout\)) # 
-- (!\inst7|Div0|auto_generated|divider|divider|op_3~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[105]~200_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[105]~238_combout\,
	datad => VCC,
	cin => \inst7|Div0|auto_generated|divider|divider|op_3~13\,
	combout => \inst7|Div0|auto_generated|divider|divider|op_3~14_combout\,
	cout => \inst7|Div0|auto_generated|divider|divider|op_3~15\);

-- Location: LCCOMB_X21_Y11_N20
\inst7|Div0|auto_generated|divider|divider|op_3~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|op_3~17_cout\ = CARRY((\inst7|Div0|auto_generated|divider|divider|StageOut[106]~237_combout\) # ((\inst7|Div0|auto_generated|divider|divider|StageOut[106]~199_combout\) # 
-- (!\inst7|Div0|auto_generated|divider|divider|op_3~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[106]~237_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[106]~199_combout\,
	datad => VCC,
	cin => \inst7|Div0|auto_generated|divider|divider|op_3~15\,
	cout => \inst7|Div0|auto_generated|divider|divider|op_3~17_cout\);

-- Location: LCCOMB_X21_Y11_N22
\inst7|Div0|auto_generated|divider|divider|op_3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|op_3~18_combout\ = !\inst7|Div0|auto_generated|divider|divider|op_3~17_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst7|Div0|auto_generated|divider|divider|op_3~17_cout\,
	combout => \inst7|Div0|auto_generated|divider|divider|op_3~18_combout\);

-- Location: LCCOMB_X17_Y11_N0
\inst7|Div0|auto_generated|divider|divider|op_4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|op_4~0_combout\ = \inst7|Mult0|mult_core|romout[0][2]~14_combout\ $ (VCC)
-- \inst7|Div0|auto_generated|divider|divider|op_4~1\ = CARRY(\inst7|Mult0|mult_core|romout[0][2]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Mult0|mult_core|romout[0][2]~14_combout\,
	datad => VCC,
	combout => \inst7|Div0|auto_generated|divider|divider|op_4~0_combout\,
	cout => \inst7|Div0|auto_generated|divider|divider|op_4~1\);

-- Location: LCCOMB_X17_Y11_N2
\inst7|Div0|auto_generated|divider|divider|op_4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|op_4~2_combout\ = (\inst7|Div0|auto_generated|divider|divider|StageOut[108]~249_combout\ & (((!\inst7|Div0|auto_generated|divider|divider|op_4~1\)))) # 
-- (!\inst7|Div0|auto_generated|divider|divider|StageOut[108]~249_combout\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[108]~215_combout\ & (!\inst7|Div0|auto_generated|divider|divider|op_4~1\)) # 
-- (!\inst7|Div0|auto_generated|divider|divider|StageOut[108]~215_combout\ & ((\inst7|Div0|auto_generated|divider|divider|op_4~1\) # (GND)))))
-- \inst7|Div0|auto_generated|divider|divider|op_4~3\ = CARRY(((!\inst7|Div0|auto_generated|divider|divider|StageOut[108]~249_combout\ & !\inst7|Div0|auto_generated|divider|divider|StageOut[108]~215_combout\)) # 
-- (!\inst7|Div0|auto_generated|divider|divider|op_4~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[108]~249_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[108]~215_combout\,
	datad => VCC,
	cin => \inst7|Div0|auto_generated|divider|divider|op_4~1\,
	combout => \inst7|Div0|auto_generated|divider|divider|op_4~2_combout\,
	cout => \inst7|Div0|auto_generated|divider|divider|op_4~3\);

-- Location: LCCOMB_X17_Y11_N4
\inst7|Div0|auto_generated|divider|divider|op_4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|op_4~4_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_4~3\ & (((\inst7|Div0|auto_generated|divider|divider|StageOut[109]~214_combout\) # 
-- (\inst7|Div0|auto_generated|divider|divider|StageOut[109]~269_combout\)))) # (!\inst7|Div0|auto_generated|divider|divider|op_4~3\ & ((((\inst7|Div0|auto_generated|divider|divider|StageOut[109]~214_combout\) # 
-- (\inst7|Div0|auto_generated|divider|divider|StageOut[109]~269_combout\)))))
-- \inst7|Div0|auto_generated|divider|divider|op_4~5\ = CARRY((!\inst7|Div0|auto_generated|divider|divider|op_4~3\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[109]~214_combout\) # 
-- (\inst7|Div0|auto_generated|divider|divider|StageOut[109]~269_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[109]~214_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[109]~269_combout\,
	datad => VCC,
	cin => \inst7|Div0|auto_generated|divider|divider|op_4~3\,
	combout => \inst7|Div0|auto_generated|divider|divider|op_4~4_combout\,
	cout => \inst7|Div0|auto_generated|divider|divider|op_4~5\);

-- Location: LCCOMB_X17_Y11_N6
\inst7|Div0|auto_generated|divider|divider|op_4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|op_4~6_combout\ = (\inst7|Div0|auto_generated|divider|divider|StageOut[110]~248_combout\ & (((!\inst7|Div0|auto_generated|divider|divider|op_4~5\)))) # 
-- (!\inst7|Div0|auto_generated|divider|divider|StageOut[110]~248_combout\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[110]~213_combout\ & (!\inst7|Div0|auto_generated|divider|divider|op_4~5\)) # 
-- (!\inst7|Div0|auto_generated|divider|divider|StageOut[110]~213_combout\ & ((\inst7|Div0|auto_generated|divider|divider|op_4~5\) # (GND)))))
-- \inst7|Div0|auto_generated|divider|divider|op_4~7\ = CARRY(((!\inst7|Div0|auto_generated|divider|divider|StageOut[110]~248_combout\ & !\inst7|Div0|auto_generated|divider|divider|StageOut[110]~213_combout\)) # 
-- (!\inst7|Div0|auto_generated|divider|divider|op_4~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[110]~248_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[110]~213_combout\,
	datad => VCC,
	cin => \inst7|Div0|auto_generated|divider|divider|op_4~5\,
	combout => \inst7|Div0|auto_generated|divider|divider|op_4~6_combout\,
	cout => \inst7|Div0|auto_generated|divider|divider|op_4~7\);

-- Location: LCCOMB_X17_Y11_N8
\inst7|Div0|auto_generated|divider|divider|op_4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|op_4~8_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_4~7\ & (((\inst7|Div0|auto_generated|divider|divider|StageOut[111]~247_combout\) # 
-- (\inst7|Div0|auto_generated|divider|divider|StageOut[111]~212_combout\)))) # (!\inst7|Div0|auto_generated|divider|divider|op_4~7\ & ((((\inst7|Div0|auto_generated|divider|divider|StageOut[111]~247_combout\) # 
-- (\inst7|Div0|auto_generated|divider|divider|StageOut[111]~212_combout\)))))
-- \inst7|Div0|auto_generated|divider|divider|op_4~9\ = CARRY((!\inst7|Div0|auto_generated|divider|divider|op_4~7\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[111]~247_combout\) # 
-- (\inst7|Div0|auto_generated|divider|divider|StageOut[111]~212_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[111]~247_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[111]~212_combout\,
	datad => VCC,
	cin => \inst7|Div0|auto_generated|divider|divider|op_4~7\,
	combout => \inst7|Div0|auto_generated|divider|divider|op_4~8_combout\,
	cout => \inst7|Div0|auto_generated|divider|divider|op_4~9\);

-- Location: LCCOMB_X17_Y11_N10
\inst7|Div0|auto_generated|divider|divider|op_4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|op_4~10_combout\ = (\inst7|Div0|auto_generated|divider|divider|StageOut[112]~246_combout\ & (((!\inst7|Div0|auto_generated|divider|divider|op_4~9\)))) # 
-- (!\inst7|Div0|auto_generated|divider|divider|StageOut[112]~246_combout\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[112]~211_combout\ & (!\inst7|Div0|auto_generated|divider|divider|op_4~9\)) # 
-- (!\inst7|Div0|auto_generated|divider|divider|StageOut[112]~211_combout\ & ((\inst7|Div0|auto_generated|divider|divider|op_4~9\) # (GND)))))
-- \inst7|Div0|auto_generated|divider|divider|op_4~11\ = CARRY(((!\inst7|Div0|auto_generated|divider|divider|StageOut[112]~246_combout\ & !\inst7|Div0|auto_generated|divider|divider|StageOut[112]~211_combout\)) # 
-- (!\inst7|Div0|auto_generated|divider|divider|op_4~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[112]~246_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[112]~211_combout\,
	datad => VCC,
	cin => \inst7|Div0|auto_generated|divider|divider|op_4~9\,
	combout => \inst7|Div0|auto_generated|divider|divider|op_4~10_combout\,
	cout => \inst7|Div0|auto_generated|divider|divider|op_4~11\);

-- Location: LCCOMB_X17_Y11_N12
\inst7|Div0|auto_generated|divider|divider|op_4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|op_4~12_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_4~11\ & (((\inst7|Div0|auto_generated|divider|divider|StageOut[113]~210_combout\) # 
-- (\inst7|Div0|auto_generated|divider|divider|StageOut[113]~245_combout\)))) # (!\inst7|Div0|auto_generated|divider|divider|op_4~11\ & ((((\inst7|Div0|auto_generated|divider|divider|StageOut[113]~210_combout\) # 
-- (\inst7|Div0|auto_generated|divider|divider|StageOut[113]~245_combout\)))))
-- \inst7|Div0|auto_generated|divider|divider|op_4~13\ = CARRY((!\inst7|Div0|auto_generated|divider|divider|op_4~11\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[113]~210_combout\) # 
-- (\inst7|Div0|auto_generated|divider|divider|StageOut[113]~245_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[113]~210_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[113]~245_combout\,
	datad => VCC,
	cin => \inst7|Div0|auto_generated|divider|divider|op_4~11\,
	combout => \inst7|Div0|auto_generated|divider|divider|op_4~12_combout\,
	cout => \inst7|Div0|auto_generated|divider|divider|op_4~13\);

-- Location: LCCOMB_X17_Y11_N14
\inst7|Div0|auto_generated|divider|divider|op_4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|op_4~14_combout\ = (\inst7|Div0|auto_generated|divider|divider|StageOut[114]~244_combout\ & (((!\inst7|Div0|auto_generated|divider|divider|op_4~13\)))) # 
-- (!\inst7|Div0|auto_generated|divider|divider|StageOut[114]~244_combout\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[114]~209_combout\ & (!\inst7|Div0|auto_generated|divider|divider|op_4~13\)) # 
-- (!\inst7|Div0|auto_generated|divider|divider|StageOut[114]~209_combout\ & ((\inst7|Div0|auto_generated|divider|divider|op_4~13\) # (GND)))))
-- \inst7|Div0|auto_generated|divider|divider|op_4~15\ = CARRY(((!\inst7|Div0|auto_generated|divider|divider|StageOut[114]~244_combout\ & !\inst7|Div0|auto_generated|divider|divider|StageOut[114]~209_combout\)) # 
-- (!\inst7|Div0|auto_generated|divider|divider|op_4~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[114]~244_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[114]~209_combout\,
	datad => VCC,
	cin => \inst7|Div0|auto_generated|divider|divider|op_4~13\,
	combout => \inst7|Div0|auto_generated|divider|divider|op_4~14_combout\,
	cout => \inst7|Div0|auto_generated|divider|divider|op_4~15\);

-- Location: LCCOMB_X17_Y11_N16
\inst7|Div0|auto_generated|divider|divider|op_4~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|op_4~17_cout\ = CARRY((\inst7|Div0|auto_generated|divider|divider|StageOut[115]~208_combout\) # ((\inst7|Div0|auto_generated|divider|divider|StageOut[115]~243_combout\) # 
-- (!\inst7|Div0|auto_generated|divider|divider|op_4~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[115]~208_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[115]~243_combout\,
	datad => VCC,
	cin => \inst7|Div0|auto_generated|divider|divider|op_4~15\,
	cout => \inst7|Div0|auto_generated|divider|divider|op_4~17_cout\);

-- Location: LCCOMB_X17_Y11_N18
\inst7|Div0|auto_generated|divider|divider|op_4~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|op_4~18_combout\ = !\inst7|Div0|auto_generated|divider|divider|op_4~17_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst7|Div0|auto_generated|divider|divider|op_4~17_cout\,
	combout => \inst7|Div0|auto_generated|divider|divider|op_4~18_combout\);

-- Location: LCCOMB_X18_Y12_N4
\inst7|Div0|auto_generated|divider|divider|op_5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|op_5~1_cout\ = CARRY(\inst7|pos_actual\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|pos_actual\(0),
	datad => VCC,
	cout => \inst7|Div0|auto_generated|divider|divider|op_5~1_cout\);

-- Location: LCCOMB_X18_Y12_N6
\inst7|Div0|auto_generated|divider|divider|op_5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|op_5~3_cout\ = CARRY(((!\inst7|Div0|auto_generated|divider|divider|StageOut[117]~257_combout\ & !\inst7|Div0|auto_generated|divider|divider|StageOut[117]~223_combout\)) # 
-- (!\inst7|Div0|auto_generated|divider|divider|op_5~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[117]~257_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[117]~223_combout\,
	datad => VCC,
	cin => \inst7|Div0|auto_generated|divider|divider|op_5~1_cout\,
	cout => \inst7|Div0|auto_generated|divider|divider|op_5~3_cout\);

-- Location: LCCOMB_X18_Y12_N8
\inst7|Div0|auto_generated|divider|divider|op_5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|op_5~5_cout\ = CARRY((!\inst7|Div0|auto_generated|divider|divider|op_5~3_cout\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[118]~256_combout\) # 
-- (\inst7|Div0|auto_generated|divider|divider|StageOut[118]~222_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[118]~256_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[118]~222_combout\,
	datad => VCC,
	cin => \inst7|Div0|auto_generated|divider|divider|op_5~3_cout\,
	cout => \inst7|Div0|auto_generated|divider|divider|op_5~5_cout\);

-- Location: LCCOMB_X18_Y12_N10
\inst7|Div0|auto_generated|divider|divider|op_5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|op_5~7_cout\ = CARRY(((!\inst7|Div0|auto_generated|divider|divider|StageOut[119]~255_combout\ & !\inst7|Div0|auto_generated|divider|divider|StageOut[119]~221_combout\)) # 
-- (!\inst7|Div0|auto_generated|divider|divider|op_5~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[119]~255_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[119]~221_combout\,
	datad => VCC,
	cin => \inst7|Div0|auto_generated|divider|divider|op_5~5_cout\,
	cout => \inst7|Div0|auto_generated|divider|divider|op_5~7_cout\);

-- Location: LCCOMB_X18_Y12_N12
\inst7|Div0|auto_generated|divider|divider|op_5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|op_5~9_cout\ = CARRY((!\inst7|Div0|auto_generated|divider|divider|op_5~7_cout\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[120]~220_combout\) # 
-- (\inst7|Div0|auto_generated|divider|divider|StageOut[120]~254_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[120]~220_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[120]~254_combout\,
	datad => VCC,
	cin => \inst7|Div0|auto_generated|divider|divider|op_5~7_cout\,
	cout => \inst7|Div0|auto_generated|divider|divider|op_5~9_cout\);

-- Location: LCCOMB_X18_Y12_N14
\inst7|Div0|auto_generated|divider|divider|op_5~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|op_5~11_cout\ = CARRY(((!\inst7|Div0|auto_generated|divider|divider|StageOut[121]~219_combout\ & !\inst7|Div0|auto_generated|divider|divider|StageOut[121]~253_combout\)) # 
-- (!\inst7|Div0|auto_generated|divider|divider|op_5~9_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[121]~219_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[121]~253_combout\,
	datad => VCC,
	cin => \inst7|Div0|auto_generated|divider|divider|op_5~9_cout\,
	cout => \inst7|Div0|auto_generated|divider|divider|op_5~11_cout\);

-- Location: LCCOMB_X18_Y12_N16
\inst7|Div0|auto_generated|divider|divider|op_5~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|op_5~13_cout\ = CARRY((!\inst7|Div0|auto_generated|divider|divider|op_5~11_cout\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[122]~252_combout\) # 
-- (\inst7|Div0|auto_generated|divider|divider|StageOut[122]~218_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[122]~252_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[122]~218_combout\,
	datad => VCC,
	cin => \inst7|Div0|auto_generated|divider|divider|op_5~11_cout\,
	cout => \inst7|Div0|auto_generated|divider|divider|op_5~13_cout\);

-- Location: LCCOMB_X18_Y12_N18
\inst7|Div0|auto_generated|divider|divider|op_5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|op_5~14_combout\ = (\inst7|Div0|auto_generated|divider|divider|StageOut[123]~217_combout\ & (((!\inst7|Div0|auto_generated|divider|divider|op_5~13_cout\)))) # 
-- (!\inst7|Div0|auto_generated|divider|divider|StageOut[123]~217_combout\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[123]~251_combout\ & (!\inst7|Div0|auto_generated|divider|divider|op_5~13_cout\)) # 
-- (!\inst7|Div0|auto_generated|divider|divider|StageOut[123]~251_combout\ & ((\inst7|Div0|auto_generated|divider|divider|op_5~13_cout\) # (GND)))))
-- \inst7|Div0|auto_generated|divider|divider|op_5~15\ = CARRY(((!\inst7|Div0|auto_generated|divider|divider|StageOut[123]~217_combout\ & !\inst7|Div0|auto_generated|divider|divider|StageOut[123]~251_combout\)) # 
-- (!\inst7|Div0|auto_generated|divider|divider|op_5~13_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[123]~217_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[123]~251_combout\,
	datad => VCC,
	cin => \inst7|Div0|auto_generated|divider|divider|op_5~13_cout\,
	combout => \inst7|Div0|auto_generated|divider|divider|op_5~14_combout\,
	cout => \inst7|Div0|auto_generated|divider|divider|op_5~15\);

-- Location: LCCOMB_X18_Y12_N20
\inst7|Div0|auto_generated|divider|divider|op_5~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|op_5~17_cout\ = CARRY((\inst7|Div0|auto_generated|divider|divider|StageOut[124]~250_combout\) # ((\inst7|Div0|auto_generated|divider|divider|StageOut[124]~216_combout\) # 
-- (!\inst7|Div0|auto_generated|divider|divider|op_5~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[124]~250_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[124]~216_combout\,
	datad => VCC,
	cin => \inst7|Div0|auto_generated|divider|divider|op_5~15\,
	cout => \inst7|Div0|auto_generated|divider|divider|op_5~17_cout\);

-- Location: LCCOMB_X18_Y12_N22
\inst7|Div0|auto_generated|divider|divider|op_5~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|op_5~18_combout\ = !\inst7|Div0|auto_generated|divider|divider|op_5~17_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst7|Div0|auto_generated|divider|divider|op_5~17_cout\,
	combout => \inst7|Div0|auto_generated|divider|divider|op_5~18_combout\);

-- Location: LCCOMB_X18_Y12_N0
\inst7|Div0|auto_generated|divider|divider|op_6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|op_6~1_cout\ = CARRY((\inst7|Div0|auto_generated|divider|divider|StageOut[133]~258_combout\) # (\inst7|Div0|auto_generated|divider|divider|StageOut[133]~224_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[133]~258_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[133]~224_combout\,
	datad => VCC,
	cout => \inst7|Div0|auto_generated|divider|divider|op_6~1_cout\);

-- Location: LCCOMB_X18_Y12_N2
\inst7|Div0|auto_generated|divider|divider|op_6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|op_6~2_combout\ = !\inst7|Div0|auto_generated|divider|divider|op_6~1_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst7|Div0|auto_generated|divider|divider|op_6~1_cout\,
	combout => \inst7|Div0|auto_generated|divider|divider|op_6~2_combout\);

-- Location: LCCOMB_X21_Y12_N8
\inst7|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add2~0_combout\ = \inst7|Div0|auto_generated|divider|divider|op_6~2_combout\ $ (GND)
-- \inst7|Add2~1\ = CARRY(!\inst7|Div0|auto_generated|divider|divider|op_6~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Div0|auto_generated|divider|divider|op_6~2_combout\,
	datad => VCC,
	combout => \inst7|Add2~0_combout\,
	cout => \inst7|Add2~1\);

-- Location: LCCOMB_X21_Y12_N10
\inst7|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add2~2_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_5~18_combout\ & (!\inst7|Add2~1\)) # (!\inst7|Div0|auto_generated|divider|divider|op_5~18_combout\ & (\inst7|Add2~1\ & VCC))
-- \inst7|Add2~3\ = CARRY((\inst7|Div0|auto_generated|divider|divider|op_5~18_combout\ & !\inst7|Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|op_5~18_combout\,
	datad => VCC,
	cin => \inst7|Add2~1\,
	combout => \inst7|Add2~2_combout\,
	cout => \inst7|Add2~3\);

-- Location: LCCOMB_X21_Y12_N12
\inst7|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add2~4_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_4~18_combout\ & (!\inst7|Add2~3\ & VCC)) # (!\inst7|Div0|auto_generated|divider|divider|op_4~18_combout\ & (\inst7|Add2~3\ $ (GND)))
-- \inst7|Add2~5\ = CARRY((!\inst7|Div0|auto_generated|divider|divider|op_4~18_combout\ & !\inst7|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Div0|auto_generated|divider|divider|op_4~18_combout\,
	datad => VCC,
	cin => \inst7|Add2~3\,
	combout => \inst7|Add2~4_combout\,
	cout => \inst7|Add2~5\);

-- Location: LCCOMB_X21_Y12_N14
\inst7|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add2~6_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_3~18_combout\ & (!\inst7|Add2~5\)) # (!\inst7|Div0|auto_generated|divider|divider|op_3~18_combout\ & (\inst7|Add2~5\ & VCC))
-- \inst7|Add2~7\ = CARRY((\inst7|Div0|auto_generated|divider|divider|op_3~18_combout\ & !\inst7|Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Div0|auto_generated|divider|divider|op_3~18_combout\,
	datad => VCC,
	cin => \inst7|Add2~5\,
	combout => \inst7|Add2~6_combout\,
	cout => \inst7|Add2~7\);

-- Location: LCCOMB_X21_Y12_N16
\inst7|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add2~8_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_2~18_combout\ & (!\inst7|Add2~7\ & VCC)) # (!\inst7|Div0|auto_generated|divider|divider|op_2~18_combout\ & (\inst7|Add2~7\ $ (GND)))
-- \inst7|Add2~9\ = CARRY((!\inst7|Div0|auto_generated|divider|divider|op_2~18_combout\ & !\inst7|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Div0|auto_generated|divider|divider|op_2~18_combout\,
	datad => VCC,
	cin => \inst7|Add2~7\,
	combout => \inst7|Add2~8_combout\,
	cout => \inst7|Add2~9\);

-- Location: LCCOMB_X21_Y12_N18
\inst7|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add2~10_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_1~18_combout\ & ((\inst7|Add2~9\) # (GND))) # (!\inst7|Div0|auto_generated|divider|divider|op_1~18_combout\ & (!\inst7|Add2~9\))
-- \inst7|Add2~11\ = CARRY((\inst7|Div0|auto_generated|divider|divider|op_1~18_combout\) # (!\inst7|Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Div0|auto_generated|divider|divider|op_1~18_combout\,
	datad => VCC,
	cin => \inst7|Add2~9\,
	combout => \inst7|Add2~10_combout\,
	cout => \inst7|Add2~11\);

-- Location: LCCOMB_X21_Y12_N20
\inst7|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add2~12_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_14~18_combout\ & (\inst7|Add2~11\ $ (GND))) # (!\inst7|Div0|auto_generated|divider|divider|op_14~18_combout\ & ((GND) # (!\inst7|Add2~11\)))
-- \inst7|Add2~13\ = CARRY((!\inst7|Add2~11\) # (!\inst7|Div0|auto_generated|divider|divider|op_14~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Div0|auto_generated|divider|divider|op_14~18_combout\,
	datad => VCC,
	cin => \inst7|Add2~11\,
	combout => \inst7|Add2~12_combout\,
	cout => \inst7|Add2~13\);

-- Location: LCCOMB_X21_Y12_N22
\inst7|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add2~14_combout\ = \inst7|Add2~13\ $ (!\inst7|Div0|auto_generated|divider|divider|op_13~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst7|Div0|auto_generated|divider|divider|op_13~18_combout\,
	cin => \inst7|Add2~13\,
	combout => \inst7|Add2~14_combout\);

-- Location: LCCOMB_X22_Y16_N10
\inst3|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~0_combout\ = (\inst3|grados[0]~5_combout\ & (!\inst3|grados[1]~4_combout\ & VCC)) # (!\inst3|grados[0]~5_combout\ & (\inst3|grados[1]~4_combout\ $ (GND)))
-- \inst3|Add0~1\ = CARRY((!\inst3|grados[0]~5_combout\ & !\inst3|grados[1]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|grados[0]~5_combout\,
	datab => \inst3|grados[1]~4_combout\,
	datad => VCC,
	combout => \inst3|Add0~0_combout\,
	cout => \inst3|Add0~1\);

-- Location: LCCOMB_X22_Y16_N12
\inst3|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~2_combout\ = (\inst3|Add0~1\ & ((\inst|numero\(2)) # ((\inst3|LessThan0~2_combout\)))) # (!\inst3|Add0~1\ & (((!\inst|numero\(2) & !\inst3|LessThan0~2_combout\)) # (GND)))
-- \inst3|Add0~3\ = CARRY((\inst|numero\(2)) # ((\inst3|LessThan0~2_combout\) # (!\inst3|Add0~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|numero\(2),
	datab => \inst3|LessThan0~2_combout\,
	datad => VCC,
	cin => \inst3|Add0~1\,
	combout => \inst3|Add0~2_combout\,
	cout => \inst3|Add0~3\);

-- Location: LCCOMB_X22_Y16_N14
\inst3|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~4_combout\ = (\inst3|Add0~3\ & (((\inst|numero\(3)) # (\inst3|LessThan0~2_combout\)))) # (!\inst3|Add0~3\ & ((((\inst|numero\(3)) # (\inst3|LessThan0~2_combout\)))))
-- \inst3|Add0~5\ = CARRY((!\inst3|Add0~3\ & ((\inst|numero\(3)) # (\inst3|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|numero\(3),
	datab => \inst3|LessThan0~2_combout\,
	datad => VCC,
	cin => \inst3|Add0~3\,
	combout => \inst3|Add0~4_combout\,
	cout => \inst3|Add0~5\);

-- Location: LCCOMB_X22_Y16_N16
\inst3|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~6_combout\ = (\inst3|Add0~5\ & (((\inst3|LessThan0~2_combout\)) # (!\inst|numero\(4)))) # (!\inst3|Add0~5\ & (((\inst|numero\(4) & !\inst3|LessThan0~2_combout\)) # (GND)))
-- \inst3|Add0~7\ = CARRY(((\inst3|LessThan0~2_combout\) # (!\inst3|Add0~5\)) # (!\inst|numero\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|numero\(4),
	datab => \inst3|LessThan0~2_combout\,
	datad => VCC,
	cin => \inst3|Add0~5\,
	combout => \inst3|Add0~6_combout\,
	cout => \inst3|Add0~7\);

-- Location: LCCOMB_X22_Y16_N18
\inst3|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~8_combout\ = (\inst3|Add0~7\ & (!\inst|numero\(5) & (!\inst3|LessThan0~2_combout\ & VCC))) # (!\inst3|Add0~7\ & ((((!\inst|numero\(5) & !\inst3|LessThan0~2_combout\)))))
-- \inst3|Add0~9\ = CARRY((!\inst|numero\(5) & (!\inst3|LessThan0~2_combout\ & !\inst3|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|numero\(5),
	datab => \inst3|LessThan0~2_combout\,
	datad => VCC,
	cin => \inst3|Add0~7\,
	combout => \inst3|Add0~8_combout\,
	cout => \inst3|Add0~9\);

-- Location: LCCOMB_X22_Y16_N20
\inst3|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~10_combout\ = (\inst|numero\(6) & (((!\inst3|Add0~9\)))) # (!\inst|numero\(6) & ((\inst|numero\(7) & (!\inst3|Add0~9\)) # (!\inst|numero\(7) & ((\inst3|Add0~9\) # (GND)))))
-- \inst3|Add0~11\ = CARRY(((!\inst|numero\(6) & !\inst|numero\(7))) # (!\inst3|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|numero\(6),
	datab => \inst|numero\(7),
	datad => VCC,
	cin => \inst3|Add0~9\,
	combout => \inst3|Add0~10_combout\,
	cout => \inst3|Add0~11\);

-- Location: LCCOMB_X22_Y16_N22
\inst3|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~12_combout\ = (\inst|numero\(7) & (!\inst3|Add0~11\ & VCC)) # (!\inst|numero\(7) & (\inst3|Add0~11\ $ (GND)))
-- \inst3|Add0~13\ = CARRY((!\inst|numero\(7) & !\inst3|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|numero\(7),
	datad => VCC,
	cin => \inst3|Add0~11\,
	combout => \inst3|Add0~12_combout\,
	cout => \inst3|Add0~13\);

-- Location: LCCOMB_X22_Y16_N24
\inst3|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~14_combout\ = !\inst3|Add0~13\
-- \inst3|Add0~15\ = CARRY(!\inst3|Add0~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \inst3|Add0~13\,
	combout => \inst3|Add0~14_combout\,
	cout => \inst3|Add0~15\);

-- Location: LCCOMB_X22_Y16_N26
\inst3|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~16_combout\ = \inst3|Add0~15\ $ (GND)
-- \inst3|Add0~17\ = CARRY(!\inst3|Add0~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \inst3|Add0~15\,
	combout => \inst3|Add0~16_combout\,
	cout => \inst3|Add0~17\);

-- Location: LCCOMB_X22_Y16_N28
\inst3|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~18_combout\ = \inst3|Add0~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst3|Add0~17\,
	combout => \inst3|Add0~18_combout\);

-- Location: LCCOMB_X23_Y16_N8
\inst3|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~0_combout\ = (\inst3|grados[0]~5_combout\ & (\inst3|Add0~14_combout\ $ (VCC))) # (!\inst3|grados[0]~5_combout\ & (\inst3|Add0~14_combout\ & VCC))
-- \inst3|Add1~1\ = CARRY((\inst3|grados[0]~5_combout\ & \inst3|Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|grados[0]~5_combout\,
	datab => \inst3|Add0~14_combout\,
	datad => VCC,
	combout => \inst3|Add1~0_combout\,
	cout => \inst3|Add1~1\);

-- Location: LCCOMB_X23_Y16_N10
\inst3|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~2_combout\ = (\inst3|Add0~16_combout\ & ((\inst3|grados[1]~4_combout\ & (\inst3|Add1~1\ & VCC)) # (!\inst3|grados[1]~4_combout\ & (!\inst3|Add1~1\)))) # (!\inst3|Add0~16_combout\ & ((\inst3|grados[1]~4_combout\ & (!\inst3|Add1~1\)) # 
-- (!\inst3|grados[1]~4_combout\ & ((\inst3|Add1~1\) # (GND)))))
-- \inst3|Add1~3\ = CARRY((\inst3|Add0~16_combout\ & (!\inst3|grados[1]~4_combout\ & !\inst3|Add1~1\)) # (!\inst3|Add0~16_combout\ & ((!\inst3|Add1~1\) # (!\inst3|grados[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~16_combout\,
	datab => \inst3|grados[1]~4_combout\,
	datad => VCC,
	cin => \inst3|Add1~1\,
	combout => \inst3|Add1~2_combout\,
	cout => \inst3|Add1~3\);

-- Location: LCCOMB_X23_Y16_N12
\inst3|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~4_combout\ = ((\inst3|grados[2]~9_combout\ $ (\inst3|Add0~18_combout\ $ (\inst3|Add1~3\)))) # (GND)
-- \inst3|Add1~5\ = CARRY((\inst3|grados[2]~9_combout\ & ((!\inst3|Add1~3\) # (!\inst3|Add0~18_combout\))) # (!\inst3|grados[2]~9_combout\ & (!\inst3|Add0~18_combout\ & !\inst3|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|grados[2]~9_combout\,
	datab => \inst3|Add0~18_combout\,
	datad => VCC,
	cin => \inst3|Add1~3\,
	combout => \inst3|Add1~4_combout\,
	cout => \inst3|Add1~5\);

-- Location: LCCOMB_X23_Y16_N14
\inst3|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~6_combout\ = (\inst3|grados[3]~8_combout\ & ((\inst3|Add0~18_combout\ & (!\inst3|Add1~5\)) # (!\inst3|Add0~18_combout\ & (\inst3|Add1~5\ & VCC)))) # (!\inst3|grados[3]~8_combout\ & ((\inst3|Add0~18_combout\ & ((\inst3|Add1~5\) # (GND))) # 
-- (!\inst3|Add0~18_combout\ & (!\inst3|Add1~5\))))
-- \inst3|Add1~7\ = CARRY((\inst3|grados[3]~8_combout\ & (\inst3|Add0~18_combout\ & !\inst3|Add1~5\)) # (!\inst3|grados[3]~8_combout\ & ((\inst3|Add0~18_combout\) # (!\inst3|Add1~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|grados[3]~8_combout\,
	datab => \inst3|Add0~18_combout\,
	datad => VCC,
	cin => \inst3|Add1~5\,
	combout => \inst3|Add1~6_combout\,
	cout => \inst3|Add1~7\);

-- Location: LCCOMB_X23_Y16_N16
\inst3|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~8_combout\ = ((\inst3|grados[4]~10_combout\ $ (\inst3|Add0~18_combout\ $ (\inst3|Add1~7\)))) # (GND)
-- \inst3|Add1~9\ = CARRY((\inst3|grados[4]~10_combout\ & ((!\inst3|Add1~7\) # (!\inst3|Add0~18_combout\))) # (!\inst3|grados[4]~10_combout\ & (!\inst3|Add0~18_combout\ & !\inst3|Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|grados[4]~10_combout\,
	datab => \inst3|Add0~18_combout\,
	datad => VCC,
	cin => \inst3|Add1~7\,
	combout => \inst3|Add1~8_combout\,
	cout => \inst3|Add1~9\);

-- Location: LCCOMB_X23_Y16_N18
\inst3|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~10_combout\ = (\inst3|grados[5]~7_combout\ & ((\inst3|Add0~18_combout\ & (!\inst3|Add1~9\)) # (!\inst3|Add0~18_combout\ & (\inst3|Add1~9\ & VCC)))) # (!\inst3|grados[5]~7_combout\ & ((\inst3|Add0~18_combout\ & ((\inst3|Add1~9\) # (GND))) # 
-- (!\inst3|Add0~18_combout\ & (!\inst3|Add1~9\))))
-- \inst3|Add1~11\ = CARRY((\inst3|grados[5]~7_combout\ & (\inst3|Add0~18_combout\ & !\inst3|Add1~9\)) # (!\inst3|grados[5]~7_combout\ & ((\inst3|Add0~18_combout\) # (!\inst3|Add1~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|grados[5]~7_combout\,
	datab => \inst3|Add0~18_combout\,
	datad => VCC,
	cin => \inst3|Add1~9\,
	combout => \inst3|Add1~10_combout\,
	cout => \inst3|Add1~11\);

-- Location: LCCOMB_X23_Y16_N20
\inst3|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~12_combout\ = ((\inst3|grados[6]~6_combout\ $ (\inst3|Add0~18_combout\ $ (\inst3|Add1~11\)))) # (GND)
-- \inst3|Add1~13\ = CARRY((\inst3|grados[6]~6_combout\ & ((!\inst3|Add1~11\) # (!\inst3|Add0~18_combout\))) # (!\inst3|grados[6]~6_combout\ & (!\inst3|Add0~18_combout\ & !\inst3|Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|grados[6]~6_combout\,
	datab => \inst3|Add0~18_combout\,
	datad => VCC,
	cin => \inst3|Add1~11\,
	combout => \inst3|Add1~12_combout\,
	cout => \inst3|Add1~13\);

-- Location: LCCOMB_X23_Y16_N22
\inst3|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~14_combout\ = (\inst|numero\(7) & ((\inst3|Add0~18_combout\ & (!\inst3|Add1~13\)) # (!\inst3|Add0~18_combout\ & (\inst3|Add1~13\ & VCC)))) # (!\inst|numero\(7) & ((\inst3|Add0~18_combout\ & ((\inst3|Add1~13\) # (GND))) # 
-- (!\inst3|Add0~18_combout\ & (!\inst3|Add1~13\))))
-- \inst3|Add1~15\ = CARRY((\inst|numero\(7) & (\inst3|Add0~18_combout\ & !\inst3|Add1~13\)) # (!\inst|numero\(7) & ((\inst3|Add0~18_combout\) # (!\inst3|Add1~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|numero\(7),
	datab => \inst3|Add0~18_combout\,
	datad => VCC,
	cin => \inst3|Add1~13\,
	combout => \inst3|Add1~14_combout\,
	cout => \inst3|Add1~15\);

-- Location: LCCOMB_X23_Y16_N24
\inst3|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~16_combout\ = (\inst3|Add0~18_combout\ & (!\inst3|Add1~15\ & VCC)) # (!\inst3|Add0~18_combout\ & (\inst3|Add1~15\ $ (GND)))
-- \inst3|Add1~17\ = CARRY((!\inst3|Add0~18_combout\ & !\inst3|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Add0~18_combout\,
	datad => VCC,
	cin => \inst3|Add1~15\,
	combout => \inst3|Add1~16_combout\,
	cout => \inst3|Add1~17\);

-- Location: LCCOMB_X23_Y16_N26
\inst3|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add1~18_combout\ = \inst3|Add1~17\ $ (!\inst3|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst3|Add0~18_combout\,
	cin => \inst3|Add1~17\,
	combout => \inst3|Add1~18_combout\);

-- Location: LCCOMB_X24_Y17_N14
\inst3|Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add2~1_cout\ = CARRY(\inst3|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Add0~0_combout\,
	datad => VCC,
	cout => \inst3|Add2~1_cout\);

-- Location: LCCOMB_X24_Y17_N16
\inst3|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add2~2_combout\ = (\inst3|Add0~2_combout\ & (!\inst3|Add2~1_cout\)) # (!\inst3|Add0~2_combout\ & ((\inst3|Add2~1_cout\) # (GND)))
-- \inst3|Add2~3\ = CARRY((!\inst3|Add2~1_cout\) # (!\inst3|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~2_combout\,
	datad => VCC,
	cin => \inst3|Add2~1_cout\,
	combout => \inst3|Add2~2_combout\,
	cout => \inst3|Add2~3\);

-- Location: LCCOMB_X24_Y17_N18
\inst3|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add2~4_combout\ = (\inst3|Add0~4_combout\ & ((GND) # (!\inst3|Add2~3\))) # (!\inst3|Add0~4_combout\ & (\inst3|Add2~3\ $ (GND)))
-- \inst3|Add2~5\ = CARRY((\inst3|Add0~4_combout\) # (!\inst3|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~4_combout\,
	datad => VCC,
	cin => \inst3|Add2~3\,
	combout => \inst3|Add2~4_combout\,
	cout => \inst3|Add2~5\);

-- Location: LCCOMB_X24_Y17_N20
\inst3|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add2~6_combout\ = (\inst3|Add0~6_combout\ & (\inst3|Add2~5\ & VCC)) # (!\inst3|Add0~6_combout\ & (!\inst3|Add2~5\))
-- \inst3|Add2~7\ = CARRY((!\inst3|Add0~6_combout\ & !\inst3|Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Add0~6_combout\,
	datad => VCC,
	cin => \inst3|Add2~5\,
	combout => \inst3|Add2~6_combout\,
	cout => \inst3|Add2~7\);

-- Location: LCCOMB_X24_Y17_N22
\inst3|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add2~8_combout\ = (\inst3|Add0~8_combout\ & (\inst3|Add2~7\ $ (GND))) # (!\inst3|Add0~8_combout\ & (!\inst3|Add2~7\ & VCC))
-- \inst3|Add2~9\ = CARRY((\inst3|Add0~8_combout\ & !\inst3|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Add0~8_combout\,
	datad => VCC,
	cin => \inst3|Add2~7\,
	combout => \inst3|Add2~8_combout\,
	cout => \inst3|Add2~9\);

-- Location: LCCOMB_X24_Y17_N24
\inst3|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add2~10_combout\ = (\inst3|Add0~10_combout\ & (\inst3|Add2~9\ & VCC)) # (!\inst3|Add0~10_combout\ & (!\inst3|Add2~9\))
-- \inst3|Add2~11\ = CARRY((!\inst3|Add0~10_combout\ & !\inst3|Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~10_combout\,
	datad => VCC,
	cin => \inst3|Add2~9\,
	combout => \inst3|Add2~10_combout\,
	cout => \inst3|Add2~11\);

-- Location: LCCOMB_X24_Y17_N26
\inst3|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add2~12_combout\ = (\inst3|Add0~12_combout\ & (\inst3|Add2~11\ $ (GND))) # (!\inst3|Add0~12_combout\ & (!\inst3|Add2~11\ & VCC))
-- \inst3|Add2~13\ = CARRY((\inst3|Add0~12_combout\ & !\inst3|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~12_combout\,
	datad => VCC,
	cin => \inst3|Add2~11\,
	combout => \inst3|Add2~12_combout\,
	cout => \inst3|Add2~13\);

-- Location: LCCOMB_X24_Y17_N28
\inst3|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add2~14_combout\ = (\inst3|Add1~0_combout\ & (!\inst3|Add2~13\)) # (!\inst3|Add1~0_combout\ & ((\inst3|Add2~13\) # (GND)))
-- \inst3|Add2~15\ = CARRY((!\inst3|Add2~13\) # (!\inst3|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Add1~0_combout\,
	datad => VCC,
	cin => \inst3|Add2~13\,
	combout => \inst3|Add2~14_combout\,
	cout => \inst3|Add2~15\);

-- Location: LCCOMB_X24_Y17_N30
\inst3|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add2~16_combout\ = (\inst3|Add1~2_combout\ & (\inst3|Add2~15\ $ (GND))) # (!\inst3|Add1~2_combout\ & (!\inst3|Add2~15\ & VCC))
-- \inst3|Add2~17\ = CARRY((\inst3|Add1~2_combout\ & !\inst3|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Add1~2_combout\,
	datad => VCC,
	cin => \inst3|Add2~15\,
	combout => \inst3|Add2~16_combout\,
	cout => \inst3|Add2~17\);

-- Location: LCCOMB_X24_Y16_N0
\inst3|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add2~18_combout\ = (\inst3|Add1~4_combout\ & (!\inst3|Add2~17\)) # (!\inst3|Add1~4_combout\ & ((\inst3|Add2~17\) # (GND)))
-- \inst3|Add2~19\ = CARRY((!\inst3|Add2~17\) # (!\inst3|Add1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add1~4_combout\,
	datad => VCC,
	cin => \inst3|Add2~17\,
	combout => \inst3|Add2~18_combout\,
	cout => \inst3|Add2~19\);

-- Location: LCCOMB_X24_Y16_N2
\inst3|Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add2~20_combout\ = (\inst3|Add1~6_combout\ & (\inst3|Add2~19\ $ (GND))) # (!\inst3|Add1~6_combout\ & (!\inst3|Add2~19\ & VCC))
-- \inst3|Add2~21\ = CARRY((\inst3|Add1~6_combout\ & !\inst3|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add1~6_combout\,
	datad => VCC,
	cin => \inst3|Add2~19\,
	combout => \inst3|Add2~20_combout\,
	cout => \inst3|Add2~21\);

-- Location: LCCOMB_X24_Y16_N4
\inst3|Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add2~22_combout\ = (\inst3|Add1~8_combout\ & (!\inst3|Add2~21\)) # (!\inst3|Add1~8_combout\ & ((\inst3|Add2~21\) # (GND)))
-- \inst3|Add2~23\ = CARRY((!\inst3|Add2~21\) # (!\inst3|Add1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add1~8_combout\,
	datad => VCC,
	cin => \inst3|Add2~21\,
	combout => \inst3|Add2~22_combout\,
	cout => \inst3|Add2~23\);

-- Location: LCCOMB_X24_Y16_N6
\inst3|Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add2~24_combout\ = (\inst3|Add1~10_combout\ & (\inst3|Add2~23\ $ (GND))) # (!\inst3|Add1~10_combout\ & (!\inst3|Add2~23\ & VCC))
-- \inst3|Add2~25\ = CARRY((\inst3|Add1~10_combout\ & !\inst3|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Add1~10_combout\,
	datad => VCC,
	cin => \inst3|Add2~23\,
	combout => \inst3|Add2~24_combout\,
	cout => \inst3|Add2~25\);

-- Location: LCCOMB_X24_Y16_N8
\inst3|Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add2~26_combout\ = (\inst3|Add1~12_combout\ & (!\inst3|Add2~25\)) # (!\inst3|Add1~12_combout\ & ((\inst3|Add2~25\) # (GND)))
-- \inst3|Add2~27\ = CARRY((!\inst3|Add2~25\) # (!\inst3|Add1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Add1~12_combout\,
	datad => VCC,
	cin => \inst3|Add2~25\,
	combout => \inst3|Add2~26_combout\,
	cout => \inst3|Add2~27\);

-- Location: LCCOMB_X24_Y16_N10
\inst3|Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add2~28_combout\ = (\inst3|Add1~14_combout\ & (\inst3|Add2~27\ $ (GND))) # (!\inst3|Add1~14_combout\ & (!\inst3|Add2~27\ & VCC))
-- \inst3|Add2~29\ = CARRY((\inst3|Add1~14_combout\ & !\inst3|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Add1~14_combout\,
	datad => VCC,
	cin => \inst3|Add2~27\,
	combout => \inst3|Add2~28_combout\,
	cout => \inst3|Add2~29\);

-- Location: LCCOMB_X24_Y16_N12
\inst3|Add2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add2~30_combout\ = (\inst3|Add1~16_combout\ & (!\inst3|Add2~29\)) # (!\inst3|Add1~16_combout\ & ((\inst3|Add2~29\) # (GND)))
-- \inst3|Add2~31\ = CARRY((!\inst3|Add2~29\) # (!\inst3|Add1~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Add1~16_combout\,
	datad => VCC,
	cin => \inst3|Add2~29\,
	combout => \inst3|Add2~30_combout\,
	cout => \inst3|Add2~31\);

-- Location: LCCOMB_X24_Y16_N14
\inst3|Add2~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add2~32_combout\ = (\inst3|Add1~18_combout\ & (\inst3|Add2~31\ $ (GND))) # (!\inst3|Add1~18_combout\ & (!\inst3|Add2~31\ & VCC))
-- \inst3|Add2~33\ = CARRY((\inst3|Add1~18_combout\ & !\inst3|Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add1~18_combout\,
	datad => VCC,
	cin => \inst3|Add2~31\,
	combout => \inst3|Add2~32_combout\,
	cout => \inst3|Add2~33\);

-- Location: LCCOMB_X24_Y16_N16
\inst3|Add2~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add2~34_combout\ = \inst3|Add1~18_combout\ $ (\inst3|Add2~33\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add1~18_combout\,
	cin => \inst3|Add2~33\,
	combout => \inst3|Add2~34_combout\);

-- Location: LCCOMB_X24_Y16_N18
\inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ = \inst3|Add2~26_combout\ $ (VCC)
-- \inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ = CARRY(\inst3|Add2~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Add2~26_combout\,
	datad => VCC,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\);

-- Location: LCCOMB_X24_Y16_N20
\inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ = (\inst3|Add2~28_combout\ & (\inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ & VCC)) # (!\inst3|Add2~28_combout\ & 
-- (!\inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\))
-- \inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ = CARRY((!\inst3|Add2~28_combout\ & !\inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add2~28_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\);

-- Location: LCCOMB_X24_Y16_N22
\inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ = (\inst3|Add2~30_combout\ & (\inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ $ (GND))) # (!\inst3|Add2~30_combout\ & 
-- (!\inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ & VCC))
-- \inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ = CARRY((\inst3|Add2~30_combout\ & !\inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add2~30_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\);

-- Location: LCCOMB_X24_Y16_N24
\inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ = (\inst3|Add2~32_combout\ & (!\inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\)) # (!\inst3|Add2~32_combout\ & 
-- ((\inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\) # (GND)))
-- \inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ = CARRY((!\inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\) # (!\inst3|Add2~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Add2~32_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\);

-- Location: LCCOMB_X24_Y16_N26
\inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ = (\inst3|Add2~34_combout\ & ((GND) # (!\inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\))) # (!\inst3|Add2~34_combout\ & 
-- (\inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ $ (GND)))
-- \inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ = CARRY((\inst3|Add2~34_combout\) # (!\inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Add2~34_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\);

-- Location: LCCOMB_X24_Y16_N28
\inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ = (\inst3|Add2~34_combout\ & (!\inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\)) # (!\inst3|Add2~34_combout\ & 
-- ((\inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\) # (GND)))
-- \inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ = CARRY((!\inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\) # (!\inst3|Add2~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Add2~34_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\);

-- Location: LCCOMB_X24_Y16_N30
\inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ = \inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\);

-- Location: LCCOMB_X26_Y16_N0
\inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\ = (((\inst3|Div0|auto_generated|divider|divider|StageOut[64]~245_combout\) # (\inst3|Div0|auto_generated|divider|divider|StageOut[64]~246_combout\)))
-- \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\ = CARRY((\inst3|Div0|auto_generated|divider|divider|StageOut[64]~245_combout\) # (\inst3|Div0|auto_generated|divider|divider|StageOut[64]~246_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[64]~245_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[64]~246_combout\,
	datad => VCC,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\);

-- Location: LCCOMB_X26_Y16_N2
\inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\ & (((\inst3|Div0|auto_generated|divider|divider|StageOut[65]~244_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[65]~243_combout\)))) # (!\inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\ & (!\inst3|Div0|auto_generated|divider|divider|StageOut[65]~244_combout\ & 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[65]~243_combout\)))
-- \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ = CARRY((!\inst3|Div0|auto_generated|divider|divider|StageOut[65]~244_combout\ & (!\inst3|Div0|auto_generated|divider|divider|StageOut[65]~243_combout\ & 
-- !\inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[65]~244_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[65]~243_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\);

-- Location: LCCOMB_X26_Y16_N4
\inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ & (((\inst3|Div0|auto_generated|divider|divider|StageOut[66]~241_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[66]~242_combout\)))) # (!\inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ & ((((\inst3|Div0|auto_generated|divider|divider|StageOut[66]~241_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[66]~242_combout\)))))
-- \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\ = CARRY((!\inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[66]~241_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[66]~242_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[66]~241_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[66]~242_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\);

-- Location: LCCOMB_X26_Y16_N6
\inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\ = (\inst3|Div0|auto_generated|divider|divider|StageOut[67]~240_combout\ & (((!\inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\)))) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[67]~240_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[67]~239_combout\ & (!\inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[67]~239_combout\ & ((\inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\) # (GND)))))
-- \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ = CARRY(((!\inst3|Div0|auto_generated|divider|divider|StageOut[67]~240_combout\ & !\inst3|Div0|auto_generated|divider|divider|StageOut[67]~239_combout\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[67]~240_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[67]~239_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\);

-- Location: LCCOMB_X26_Y16_N8
\inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ & ((((\inst3|Div0|auto_generated|divider|divider|StageOut[68]~237_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[68]~238_combout\))))) # (!\inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[68]~237_combout\) # 
-- ((\inst3|Div0|auto_generated|divider|divider|StageOut[68]~238_combout\) # (GND))))
-- \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~9\ = CARRY((\inst3|Div0|auto_generated|divider|divider|StageOut[68]~237_combout\) # ((\inst3|Div0|auto_generated|divider|divider|StageOut[68]~238_combout\) # 
-- (!\inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[68]~237_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[68]~238_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~9\);

-- Location: LCCOMB_X26_Y16_N10
\inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\ = (\inst3|Div0|auto_generated|divider|divider|StageOut[70]~234_combout\ & (((!\inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~9\)))) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[70]~234_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[69]~236_combout\ & (!\inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~9\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[69]~236_combout\ & ((\inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~9\) # (GND)))))
-- \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~11\ = CARRY(((!\inst3|Div0|auto_generated|divider|divider|StageOut[70]~234_combout\ & !\inst3|Div0|auto_generated|divider|divider|StageOut[69]~236_combout\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[70]~234_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[69]~236_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~9\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~11\);

-- Location: LCCOMB_X26_Y16_N12
\inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~13_cout\ = CARRY((\inst3|Div0|auto_generated|divider|divider|StageOut[70]~235_combout\) # ((\inst3|Div0|auto_generated|divider|divider|StageOut[70]~234_combout\) # 
-- (!\inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[70]~235_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[70]~234_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~11\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~13_cout\);

-- Location: LCCOMB_X26_Y16_N14
\inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ = !\inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[8]~13_cout\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\);

-- Location: LCCOMB_X25_Y15_N12
\inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~0_combout\ = (((\inst3|Div0|auto_generated|divider|divider|StageOut[73]~254_combout\) # (\inst3|Div0|auto_generated|divider|divider|StageOut[73]~255_combout\)))
-- \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~1\ = CARRY((\inst3|Div0|auto_generated|divider|divider|StageOut[73]~254_combout\) # (\inst3|Div0|auto_generated|divider|divider|StageOut[73]~255_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[73]~254_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[73]~255_combout\,
	datad => VCC,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~0_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~1\);

-- Location: LCCOMB_X25_Y15_N14
\inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~2_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~1\ & (((\inst3|Div0|auto_generated|divider|divider|StageOut[74]~253_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[74]~252_combout\)))) # (!\inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~1\ & (!\inst3|Div0|auto_generated|divider|divider|StageOut[74]~253_combout\ & 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[74]~252_combout\)))
-- \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~3\ = CARRY((!\inst3|Div0|auto_generated|divider|divider|StageOut[74]~253_combout\ & (!\inst3|Div0|auto_generated|divider|divider|StageOut[74]~252_combout\ & 
-- !\inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[74]~253_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[74]~252_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~1\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~2_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~3\);

-- Location: LCCOMB_X25_Y15_N16
\inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~4_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~3\ & (((\inst3|Div0|auto_generated|divider|divider|StageOut[75]~384_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[75]~251_combout\)))) # (!\inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~3\ & ((((\inst3|Div0|auto_generated|divider|divider|StageOut[75]~384_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[75]~251_combout\)))))
-- \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~5\ = CARRY((!\inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~3\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[75]~384_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[75]~251_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[75]~384_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[75]~251_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~3\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~4_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~5\);

-- Location: LCCOMB_X25_Y15_N18
\inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~6_combout\ = (\inst3|Div0|auto_generated|divider|divider|StageOut[76]~250_combout\ & (((!\inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~5\)))) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[76]~250_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[76]~383_combout\ & (!\inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~5\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[76]~383_combout\ & ((\inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~5\) # (GND)))))
-- \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~7\ = CARRY(((!\inst3|Div0|auto_generated|divider|divider|StageOut[76]~250_combout\ & !\inst3|Div0|auto_generated|divider|divider|StageOut[76]~383_combout\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[76]~250_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[76]~383_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~5\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~6_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~7\);

-- Location: LCCOMB_X25_Y15_N20
\inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~8_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~7\ & ((((\inst3|Div0|auto_generated|divider|divider|StageOut[77]~249_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[77]~382_combout\))))) # (!\inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~7\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[77]~249_combout\) # 
-- ((\inst3|Div0|auto_generated|divider|divider|StageOut[77]~382_combout\) # (GND))))
-- \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~9\ = CARRY((\inst3|Div0|auto_generated|divider|divider|StageOut[77]~249_combout\) # ((\inst3|Div0|auto_generated|divider|divider|StageOut[77]~382_combout\) # 
-- (!\inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[77]~249_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[77]~382_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~7\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~8_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~9\);

-- Location: LCCOMB_X25_Y15_N22
\inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~10_combout\ = (\inst3|Div0|auto_generated|divider|divider|StageOut[78]~248_combout\ & (((!\inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~9\)))) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[78]~248_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[78]~381_combout\ & (!\inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~9\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[78]~381_combout\ & ((\inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~9\) # (GND)))))
-- \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~11\ = CARRY(((!\inst3|Div0|auto_generated|divider|divider|StageOut[78]~248_combout\ & !\inst3|Div0|auto_generated|divider|divider|StageOut[78]~381_combout\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[78]~248_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[78]~381_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~9\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~10_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~11\);

-- Location: LCCOMB_X25_Y15_N24
\inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~13_cout\ = CARRY((\inst3|Div0|auto_generated|divider|divider|StageOut[79]~380_combout\) # ((\inst3|Div0|auto_generated|divider|divider|StageOut[79]~247_combout\) # 
-- (!\inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[79]~380_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[79]~247_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~11\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~13_cout\);

-- Location: LCCOMB_X25_Y15_N26
\inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\ = !\inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~13_cout\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\);

-- Location: LCCOMB_X26_Y15_N12
\inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~0_combout\ = (((\inst3|Div0|auto_generated|divider|divider|StageOut[82]~263_combout\) # (\inst3|Div0|auto_generated|divider|divider|StageOut[82]~264_combout\)))
-- \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~1\ = CARRY((\inst3|Div0|auto_generated|divider|divider|StageOut[82]~263_combout\) # (\inst3|Div0|auto_generated|divider|divider|StageOut[82]~264_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[82]~263_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[82]~264_combout\,
	datad => VCC,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~0_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~1\);

-- Location: LCCOMB_X26_Y15_N14
\inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~2_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~1\ & (((\inst3|Div0|auto_generated|divider|divider|StageOut[83]~262_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[83]~385_combout\)))) # (!\inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~1\ & (!\inst3|Div0|auto_generated|divider|divider|StageOut[83]~262_combout\ & 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[83]~385_combout\)))
-- \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~3\ = CARRY((!\inst3|Div0|auto_generated|divider|divider|StageOut[83]~262_combout\ & (!\inst3|Div0|auto_generated|divider|divider|StageOut[83]~385_combout\ & 
-- !\inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[83]~262_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[83]~385_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~1\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~2_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~3\);

-- Location: LCCOMB_X26_Y15_N16
\inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~4_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~3\ & (((\inst3|Div0|auto_generated|divider|divider|StageOut[84]~261_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[84]~260_combout\)))) # (!\inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~3\ & ((((\inst3|Div0|auto_generated|divider|divider|StageOut[84]~261_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[84]~260_combout\)))))
-- \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~5\ = CARRY((!\inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~3\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[84]~261_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[84]~260_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[84]~261_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[84]~260_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~3\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~4_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~5\);

-- Location: LCCOMB_X26_Y15_N18
\inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~6_combout\ = (\inst3|Div0|auto_generated|divider|divider|StageOut[85]~342_combout\ & (((!\inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~5\)))) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[85]~342_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[85]~259_combout\ & (!\inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~5\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[85]~259_combout\ & ((\inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~5\) # (GND)))))
-- \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~7\ = CARRY(((!\inst3|Div0|auto_generated|divider|divider|StageOut[85]~342_combout\ & !\inst3|Div0|auto_generated|divider|divider|StageOut[85]~259_combout\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[85]~342_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[85]~259_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~5\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~6_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~7\);

-- Location: LCCOMB_X26_Y15_N20
\inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~8_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~7\ & ((((\inst3|Div0|auto_generated|divider|divider|StageOut[86]~341_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[86]~258_combout\))))) # (!\inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~7\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[86]~341_combout\) # 
-- ((\inst3|Div0|auto_generated|divider|divider|StageOut[86]~258_combout\) # (GND))))
-- \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~9\ = CARRY((\inst3|Div0|auto_generated|divider|divider|StageOut[86]~341_combout\) # ((\inst3|Div0|auto_generated|divider|divider|StageOut[86]~258_combout\) # 
-- (!\inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[86]~341_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[86]~258_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~7\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~8_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~9\);

-- Location: LCCOMB_X26_Y15_N22
\inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~10_combout\ = (\inst3|Div0|auto_generated|divider|divider|StageOut[87]~340_combout\ & (((!\inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~9\)))) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[87]~340_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[87]~257_combout\ & (!\inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~9\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[87]~257_combout\ & ((\inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~9\) # (GND)))))
-- \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~11\ = CARRY(((!\inst3|Div0|auto_generated|divider|divider|StageOut[87]~340_combout\ & !\inst3|Div0|auto_generated|divider|divider|StageOut[87]~257_combout\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[87]~340_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[87]~257_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~9\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~10_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~11\);

-- Location: LCCOMB_X26_Y15_N24
\inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~13_cout\ = CARRY((\inst3|Div0|auto_generated|divider|divider|StageOut[88]~339_combout\) # ((\inst3|Div0|auto_generated|divider|divider|StageOut[88]~256_combout\) # 
-- (!\inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[88]~339_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[88]~256_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~11\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~13_cout\);

-- Location: LCCOMB_X26_Y15_N26
\inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\ = !\inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~13_cout\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\);

-- Location: LCCOMB_X25_Y17_N8
\inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~16_combout\ = (\inst3|Div0|auto_generated|divider|divider|StageOut[81]~273_combout\) # (\inst3|Div0|auto_generated|divider|divider|StageOut[81]~272_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|StageOut[81]~273_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|StageOut[81]~272_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~16_combout\);

-- Location: LCCOMB_X26_Y18_N0
\inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~0_combout\ = (((\inst3|Div0|auto_generated|divider|divider|StageOut[91]~271_combout\) # (\inst3|Div0|auto_generated|divider|divider|StageOut[91]~274_combout\)))
-- \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~1\ = CARRY((\inst3|Div0|auto_generated|divider|divider|StageOut[91]~271_combout\) # (\inst3|Div0|auto_generated|divider|divider|StageOut[91]~274_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[91]~271_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[91]~274_combout\,
	datad => VCC,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~0_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~1\);

-- Location: LCCOMB_X26_Y18_N2
\inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~2_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~1\ & (((\inst3|Div0|auto_generated|divider|divider|StageOut[92]~386_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[92]~270_combout\)))) # (!\inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~1\ & (!\inst3|Div0|auto_generated|divider|divider|StageOut[92]~386_combout\ & 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[92]~270_combout\)))
-- \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~3\ = CARRY((!\inst3|Div0|auto_generated|divider|divider|StageOut[92]~386_combout\ & (!\inst3|Div0|auto_generated|divider|divider|StageOut[92]~270_combout\ & 
-- !\inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[92]~386_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[92]~270_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~1\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~2_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~3\);

-- Location: LCCOMB_X26_Y18_N4
\inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~4_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~3\ & (((\inst3|Div0|auto_generated|divider|divider|StageOut[93]~395_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[93]~269_combout\)))) # (!\inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~3\ & ((((\inst3|Div0|auto_generated|divider|divider|StageOut[93]~395_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[93]~269_combout\)))))
-- \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~5\ = CARRY((!\inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~3\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[93]~395_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[93]~269_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[93]~395_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[93]~269_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~3\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~4_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~5\);

-- Location: LCCOMB_X26_Y18_N6
\inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~6_combout\ = (\inst3|Div0|auto_generated|divider|divider|StageOut[94]~268_combout\ & (((!\inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~5\)))) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[94]~268_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[94]~346_combout\ & (!\inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~5\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[94]~346_combout\ & ((\inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~5\) # (GND)))))
-- \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~7\ = CARRY(((!\inst3|Div0|auto_generated|divider|divider|StageOut[94]~268_combout\ & !\inst3|Div0|auto_generated|divider|divider|StageOut[94]~346_combout\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[94]~268_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[94]~346_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~5\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~6_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~7\);

-- Location: LCCOMB_X26_Y18_N8
\inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~8_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~7\ & ((((\inst3|Div0|auto_generated|divider|divider|StageOut[95]~345_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[95]~267_combout\))))) # (!\inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~7\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[95]~345_combout\) # 
-- ((\inst3|Div0|auto_generated|divider|divider|StageOut[95]~267_combout\) # (GND))))
-- \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~9\ = CARRY((\inst3|Div0|auto_generated|divider|divider|StageOut[95]~345_combout\) # ((\inst3|Div0|auto_generated|divider|divider|StageOut[95]~267_combout\) # 
-- (!\inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[95]~345_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[95]~267_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~7\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~8_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~9\);

-- Location: LCCOMB_X26_Y18_N10
\inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~10_combout\ = (\inst3|Div0|auto_generated|divider|divider|StageOut[96]~266_combout\ & (((!\inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~9\)))) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[96]~266_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[96]~344_combout\ & (!\inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~9\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[96]~344_combout\ & ((\inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~9\) # (GND)))))
-- \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~11\ = CARRY(((!\inst3|Div0|auto_generated|divider|divider|StageOut[96]~266_combout\ & !\inst3|Div0|auto_generated|divider|divider|StageOut[96]~344_combout\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[96]~266_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[96]~344_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~9\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~10_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~11\);

-- Location: LCCOMB_X26_Y18_N12
\inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~13_cout\ = CARRY((\inst3|Div0|auto_generated|divider|divider|StageOut[97]~265_combout\) # ((\inst3|Div0|auto_generated|divider|divider|StageOut[97]~343_combout\) # 
-- (!\inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[97]~265_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[97]~343_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~11\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~13_cout\);

-- Location: LCCOMB_X26_Y18_N14
\inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\ = !\inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~13_cout\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\);

-- Location: LCCOMB_X25_Y18_N2
\inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~0_combout\ = (((\inst3|Div0|auto_generated|divider|divider|StageOut[100]~282_combout\) # (\inst3|Div0|auto_generated|divider|divider|StageOut[100]~281_combout\)))
-- \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~1\ = CARRY((\inst3|Div0|auto_generated|divider|divider|StageOut[100]~282_combout\) # (\inst3|Div0|auto_generated|divider|divider|StageOut[100]~281_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[100]~282_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[100]~281_combout\,
	datad => VCC,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~0_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~1\);

-- Location: LCCOMB_X25_Y18_N4
\inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~2_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~1\ & (((\inst3|Div0|auto_generated|divider|divider|StageOut[101]~387_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[101]~280_combout\)))) # (!\inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~1\ & (!\inst3|Div0|auto_generated|divider|divider|StageOut[101]~387_combout\ & 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[101]~280_combout\)))
-- \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~3\ = CARRY((!\inst3|Div0|auto_generated|divider|divider|StageOut[101]~387_combout\ & (!\inst3|Div0|auto_generated|divider|divider|StageOut[101]~280_combout\ & 
-- !\inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[101]~387_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[101]~280_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~1\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~2_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~3\);

-- Location: LCCOMB_X25_Y18_N6
\inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~4_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~3\ & (((\inst3|Div0|auto_generated|divider|divider|StageOut[102]~279_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[102]~396_combout\)))) # (!\inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~3\ & ((((\inst3|Div0|auto_generated|divider|divider|StageOut[102]~279_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[102]~396_combout\)))))
-- \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~5\ = CARRY((!\inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~3\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[102]~279_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[102]~396_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[102]~279_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[102]~396_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~3\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~4_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~5\);

-- Location: LCCOMB_X25_Y18_N8
\inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~6_combout\ = (\inst3|Div0|auto_generated|divider|divider|StageOut[103]~278_combout\ & (((!\inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~5\)))) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[103]~278_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[103]~350_combout\ & (!\inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~5\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[103]~350_combout\ & ((\inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~5\) # (GND)))))
-- \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~7\ = CARRY(((!\inst3|Div0|auto_generated|divider|divider|StageOut[103]~278_combout\ & !\inst3|Div0|auto_generated|divider|divider|StageOut[103]~350_combout\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[103]~278_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[103]~350_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~5\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~6_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~7\);

-- Location: LCCOMB_X25_Y18_N10
\inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~8_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~7\ & ((((\inst3|Div0|auto_generated|divider|divider|StageOut[104]~349_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[104]~277_combout\))))) # (!\inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~7\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[104]~349_combout\) # 
-- ((\inst3|Div0|auto_generated|divider|divider|StageOut[104]~277_combout\) # (GND))))
-- \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~9\ = CARRY((\inst3|Div0|auto_generated|divider|divider|StageOut[104]~349_combout\) # ((\inst3|Div0|auto_generated|divider|divider|StageOut[104]~277_combout\) # 
-- (!\inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[104]~349_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[104]~277_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~7\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~8_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~9\);

-- Location: LCCOMB_X25_Y18_N12
\inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~10_combout\ = (\inst3|Div0|auto_generated|divider|divider|StageOut[105]~348_combout\ & (((!\inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~9\)))) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[105]~348_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[105]~276_combout\ & (!\inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~9\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[105]~276_combout\ & ((\inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~9\) # (GND)))))
-- \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~11\ = CARRY(((!\inst3|Div0|auto_generated|divider|divider|StageOut[105]~348_combout\ & !\inst3|Div0|auto_generated|divider|divider|StageOut[105]~276_combout\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[105]~348_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[105]~276_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~9\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~10_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~11\);

-- Location: LCCOMB_X25_Y18_N14
\inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~13_cout\ = CARRY((\inst3|Div0|auto_generated|divider|divider|StageOut[106]~275_combout\) # ((\inst3|Div0|auto_generated|divider|divider|StageOut[106]~347_combout\) # 
-- (!\inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[106]~275_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[106]~347_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~11\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~13_cout\);

-- Location: LCCOMB_X25_Y18_N16
\inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\ = !\inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~13_cout\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\);

-- Location: LCCOMB_X24_Y18_N14
\inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~0_combout\ = (((\inst3|Div0|auto_generated|divider|divider|StageOut[109]~290_combout\) # (\inst3|Div0|auto_generated|divider|divider|StageOut[109]~289_combout\)))
-- \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~1\ = CARRY((\inst3|Div0|auto_generated|divider|divider|StageOut[109]~290_combout\) # (\inst3|Div0|auto_generated|divider|divider|StageOut[109]~289_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[109]~290_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[109]~289_combout\,
	datad => VCC,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~0_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~1\);

-- Location: LCCOMB_X24_Y18_N16
\inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~2_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~1\ & (((\inst3|Div0|auto_generated|divider|divider|StageOut[110]~288_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[110]~388_combout\)))) # (!\inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~1\ & (!\inst3|Div0|auto_generated|divider|divider|StageOut[110]~288_combout\ & 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[110]~388_combout\)))
-- \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~3\ = CARRY((!\inst3|Div0|auto_generated|divider|divider|StageOut[110]~288_combout\ & (!\inst3|Div0|auto_generated|divider|divider|StageOut[110]~388_combout\ & 
-- !\inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[110]~288_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[110]~388_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~1\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~2_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~3\);

-- Location: LCCOMB_X24_Y18_N18
\inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~4_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~3\ & (((\inst3|Div0|auto_generated|divider|divider|StageOut[111]~287_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[111]~355_combout\)))) # (!\inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~3\ & ((((\inst3|Div0|auto_generated|divider|divider|StageOut[111]~287_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[111]~355_combout\)))))
-- \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~5\ = CARRY((!\inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~3\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[111]~287_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[111]~355_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[111]~287_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[111]~355_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~3\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~4_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~5\);

-- Location: LCCOMB_X24_Y18_N20
\inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~6_combout\ = (\inst3|Div0|auto_generated|divider|divider|StageOut[112]~354_combout\ & (((!\inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~5\)))) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[112]~354_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[112]~286_combout\ & (!\inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~5\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[112]~286_combout\ & ((\inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~5\) # (GND)))))
-- \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~7\ = CARRY(((!\inst3|Div0|auto_generated|divider|divider|StageOut[112]~354_combout\ & !\inst3|Div0|auto_generated|divider|divider|StageOut[112]~286_combout\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[112]~354_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[112]~286_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~5\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~6_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~7\);

-- Location: LCCOMB_X24_Y18_N22
\inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~8_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~7\ & ((((\inst3|Div0|auto_generated|divider|divider|StageOut[113]~353_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[113]~285_combout\))))) # (!\inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~7\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[113]~353_combout\) # 
-- ((\inst3|Div0|auto_generated|divider|divider|StageOut[113]~285_combout\) # (GND))))
-- \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~9\ = CARRY((\inst3|Div0|auto_generated|divider|divider|StageOut[113]~353_combout\) # ((\inst3|Div0|auto_generated|divider|divider|StageOut[113]~285_combout\) # 
-- (!\inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[113]~353_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[113]~285_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~7\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~8_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~9\);

-- Location: LCCOMB_X24_Y18_N24
\inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~10_combout\ = (\inst3|Div0|auto_generated|divider|divider|StageOut[114]~284_combout\ & (((!\inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~9\)))) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[114]~284_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[114]~352_combout\ & (!\inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~9\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[114]~352_combout\ & ((\inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~9\) # (GND)))))
-- \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~11\ = CARRY(((!\inst3|Div0|auto_generated|divider|divider|StageOut[114]~284_combout\ & !\inst3|Div0|auto_generated|divider|divider|StageOut[114]~352_combout\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[114]~284_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[114]~352_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~9\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~10_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~11\);

-- Location: LCCOMB_X24_Y18_N26
\inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~13_cout\ = CARRY((\inst3|Div0|auto_generated|divider|divider|StageOut[115]~351_combout\) # ((\inst3|Div0|auto_generated|divider|divider|StageOut[115]~283_combout\) # 
-- (!\inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[115]~351_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[115]~283_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~11\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~13_cout\);

-- Location: LCCOMB_X24_Y18_N28
\inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~14_combout\ = !\inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~13_cout\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~14_combout\);

-- Location: LCCOMB_X23_Y18_N16
\inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~0_combout\ = (((\inst3|Div0|auto_generated|divider|divider|StageOut[118]~297_combout\) # (\inst3|Div0|auto_generated|divider|divider|StageOut[118]~298_combout\)))
-- \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~1\ = CARRY((\inst3|Div0|auto_generated|divider|divider|StageOut[118]~297_combout\) # (\inst3|Div0|auto_generated|divider|divider|StageOut[118]~298_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[118]~297_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[118]~298_combout\,
	datad => VCC,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~0_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~1\);

-- Location: LCCOMB_X23_Y18_N18
\inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~2_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~1\ & (((\inst3|Div0|auto_generated|divider|divider|StageOut[119]~296_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[119]~389_combout\)))) # (!\inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~1\ & (!\inst3|Div0|auto_generated|divider|divider|StageOut[119]~296_combout\ & 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[119]~389_combout\)))
-- \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~3\ = CARRY((!\inst3|Div0|auto_generated|divider|divider|StageOut[119]~296_combout\ & (!\inst3|Div0|auto_generated|divider|divider|StageOut[119]~389_combout\ & 
-- !\inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[119]~296_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[119]~389_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~1\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~2_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~3\);

-- Location: LCCOMB_X23_Y18_N20
\inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~4_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~3\ & (((\inst3|Div0|auto_generated|divider|divider|StageOut[120]~295_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[120]~397_combout\)))) # (!\inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~3\ & ((((\inst3|Div0|auto_generated|divider|divider|StageOut[120]~295_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[120]~397_combout\)))))
-- \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~5\ = CARRY((!\inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~3\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[120]~295_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[120]~397_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[120]~295_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[120]~397_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~3\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~4_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~5\);

-- Location: LCCOMB_X23_Y18_N22
\inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~6_combout\ = (\inst3|Div0|auto_generated|divider|divider|StageOut[121]~294_combout\ & (((!\inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~5\)))) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[121]~294_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[121]~359_combout\ & (!\inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~5\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[121]~359_combout\ & ((\inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~5\) # (GND)))))
-- \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~7\ = CARRY(((!\inst3|Div0|auto_generated|divider|divider|StageOut[121]~294_combout\ & !\inst3|Div0|auto_generated|divider|divider|StageOut[121]~359_combout\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[121]~294_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[121]~359_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~5\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~6_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~7\);

-- Location: LCCOMB_X23_Y18_N24
\inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~8_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~7\ & ((((\inst3|Div0|auto_generated|divider|divider|StageOut[122]~358_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[122]~293_combout\))))) # (!\inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~7\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[122]~358_combout\) # 
-- ((\inst3|Div0|auto_generated|divider|divider|StageOut[122]~293_combout\) # (GND))))
-- \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~9\ = CARRY((\inst3|Div0|auto_generated|divider|divider|StageOut[122]~358_combout\) # ((\inst3|Div0|auto_generated|divider|divider|StageOut[122]~293_combout\) # 
-- (!\inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[122]~358_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[122]~293_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~7\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~8_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~9\);

-- Location: LCCOMB_X23_Y18_N26
\inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~10_combout\ = (\inst3|Div0|auto_generated|divider|divider|StageOut[123]~292_combout\ & (((!\inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~9\)))) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[123]~292_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[123]~357_combout\ & (!\inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~9\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[123]~357_combout\ & ((\inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~9\) # (GND)))))
-- \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~11\ = CARRY(((!\inst3|Div0|auto_generated|divider|divider|StageOut[123]~292_combout\ & !\inst3|Div0|auto_generated|divider|divider|StageOut[123]~357_combout\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[123]~292_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[123]~357_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~9\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~10_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~11\);

-- Location: LCCOMB_X23_Y18_N28
\inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~13_cout\ = CARRY((\inst3|Div0|auto_generated|divider|divider|StageOut[124]~356_combout\) # ((\inst3|Div0|auto_generated|divider|divider|StageOut[124]~291_combout\) # 
-- (!\inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[124]~356_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[124]~291_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~11\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~13_cout\);

-- Location: LCCOMB_X23_Y18_N30
\inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[9]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[9]~14_combout\ = !\inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[8]~13_cout\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[9]~14_combout\);

-- Location: LCCOMB_X22_Y18_N4
\inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~0_combout\ = (((\inst3|Div0|auto_generated|divider|divider|StageOut[127]~306_combout\) # (\inst3|Div0|auto_generated|divider|divider|StageOut[127]~305_combout\)))
-- \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~1\ = CARRY((\inst3|Div0|auto_generated|divider|divider|StageOut[127]~306_combout\) # (\inst3|Div0|auto_generated|divider|divider|StageOut[127]~305_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[127]~306_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[127]~305_combout\,
	datad => VCC,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~0_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~1\);

-- Location: LCCOMB_X22_Y18_N6
\inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~2_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~1\ & (((\inst3|Div0|auto_generated|divider|divider|StageOut[128]~304_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[128]~390_combout\)))) # (!\inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~1\ & (!\inst3|Div0|auto_generated|divider|divider|StageOut[128]~304_combout\ & 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[128]~390_combout\)))
-- \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~3\ = CARRY((!\inst3|Div0|auto_generated|divider|divider|StageOut[128]~304_combout\ & (!\inst3|Div0|auto_generated|divider|divider|StageOut[128]~390_combout\ & 
-- !\inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[128]~304_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[128]~390_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~1\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~2_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~3\);

-- Location: LCCOMB_X22_Y18_N8
\inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~4_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~3\ & (((\inst3|Div0|auto_generated|divider|divider|StageOut[129]~398_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[129]~303_combout\)))) # (!\inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~3\ & ((((\inst3|Div0|auto_generated|divider|divider|StageOut[129]~398_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[129]~303_combout\)))))
-- \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~5\ = CARRY((!\inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~3\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[129]~398_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[129]~303_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[129]~398_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[129]~303_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~3\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~4_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~5\);

-- Location: LCCOMB_X22_Y18_N10
\inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~6_combout\ = (\inst3|Div0|auto_generated|divider|divider|StageOut[130]~363_combout\ & (((!\inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~5\)))) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[130]~363_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[130]~302_combout\ & (!\inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~5\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[130]~302_combout\ & ((\inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~5\) # (GND)))))
-- \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~7\ = CARRY(((!\inst3|Div0|auto_generated|divider|divider|StageOut[130]~363_combout\ & !\inst3|Div0|auto_generated|divider|divider|StageOut[130]~302_combout\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[130]~363_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[130]~302_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~5\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~6_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~7\);

-- Location: LCCOMB_X22_Y18_N12
\inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~8_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~7\ & ((((\inst3|Div0|auto_generated|divider|divider|StageOut[131]~301_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[131]~362_combout\))))) # (!\inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~7\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[131]~301_combout\) # 
-- ((\inst3|Div0|auto_generated|divider|divider|StageOut[131]~362_combout\) # (GND))))
-- \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~9\ = CARRY((\inst3|Div0|auto_generated|divider|divider|StageOut[131]~301_combout\) # ((\inst3|Div0|auto_generated|divider|divider|StageOut[131]~362_combout\) # 
-- (!\inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[131]~301_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[131]~362_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~7\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~8_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~9\);

-- Location: LCCOMB_X22_Y18_N14
\inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[7]~10_combout\ = (\inst3|Div0|auto_generated|divider|divider|StageOut[132]~300_combout\ & (((!\inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~9\)))) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[132]~300_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[132]~361_combout\ & (!\inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~9\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[132]~361_combout\ & ((\inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~9\) # (GND)))))
-- \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[7]~11\ = CARRY(((!\inst3|Div0|auto_generated|divider|divider|StageOut[132]~300_combout\ & !\inst3|Div0|auto_generated|divider|divider|StageOut[132]~361_combout\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[132]~300_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[132]~361_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~9\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[7]~10_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[7]~11\);

-- Location: LCCOMB_X22_Y18_N16
\inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~13_cout\ = CARRY((\inst3|Div0|auto_generated|divider|divider|StageOut[133]~360_combout\) # ((\inst3|Div0|auto_generated|divider|divider|StageOut[133]~299_combout\) # 
-- (!\inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[7]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[133]~360_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[133]~299_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[7]~11\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~13_cout\);

-- Location: LCCOMB_X22_Y18_N18
\inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[9]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[9]~14_combout\ = !\inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[8]~13_cout\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[9]~14_combout\);

-- Location: LCCOMB_X21_Y18_N6
\inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[2]~0_combout\ = (((\inst3|Div0|auto_generated|divider|divider|StageOut[136]~314_combout\) # (\inst3|Div0|auto_generated|divider|divider|StageOut[136]~313_combout\)))
-- \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[2]~1\ = CARRY((\inst3|Div0|auto_generated|divider|divider|StageOut[136]~314_combout\) # (\inst3|Div0|auto_generated|divider|divider|StageOut[136]~313_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[136]~314_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[136]~313_combout\,
	datad => VCC,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[2]~0_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[2]~1\);

-- Location: LCCOMB_X21_Y18_N8
\inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[3]~2_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[2]~1\ & (((\inst3|Div0|auto_generated|divider|divider|StageOut[137]~312_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[137]~391_combout\)))) # (!\inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[2]~1\ & (!\inst3|Div0|auto_generated|divider|divider|StageOut[137]~312_combout\ & 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[137]~391_combout\)))
-- \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[3]~3\ = CARRY((!\inst3|Div0|auto_generated|divider|divider|StageOut[137]~312_combout\ & (!\inst3|Div0|auto_generated|divider|divider|StageOut[137]~391_combout\ & 
-- !\inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[137]~312_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[137]~391_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[2]~1\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[3]~2_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[3]~3\);

-- Location: LCCOMB_X21_Y18_N10
\inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[4]~4_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[3]~3\ & (((\inst3|Div0|auto_generated|divider|divider|StageOut[138]~311_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[138]~399_combout\)))) # (!\inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[3]~3\ & ((((\inst3|Div0|auto_generated|divider|divider|StageOut[138]~311_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[138]~399_combout\)))))
-- \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[4]~5\ = CARRY((!\inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[3]~3\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[138]~311_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[138]~399_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[138]~311_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[138]~399_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[3]~3\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[4]~4_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[4]~5\);

-- Location: LCCOMB_X21_Y18_N12
\inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[5]~6_combout\ = (\inst3|Div0|auto_generated|divider|divider|StageOut[139]~367_combout\ & (((!\inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[4]~5\)))) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[139]~367_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[139]~310_combout\ & (!\inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[4]~5\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[139]~310_combout\ & ((\inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[4]~5\) # (GND)))))
-- \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[5]~7\ = CARRY(((!\inst3|Div0|auto_generated|divider|divider|StageOut[139]~367_combout\ & !\inst3|Div0|auto_generated|divider|divider|StageOut[139]~310_combout\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[139]~367_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[139]~310_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[4]~5\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[5]~6_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[5]~7\);

-- Location: LCCOMB_X21_Y18_N14
\inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[6]~8_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[5]~7\ & ((((\inst3|Div0|auto_generated|divider|divider|StageOut[140]~366_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[140]~309_combout\))))) # (!\inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[5]~7\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[140]~366_combout\) # 
-- ((\inst3|Div0|auto_generated|divider|divider|StageOut[140]~309_combout\) # (GND))))
-- \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[6]~9\ = CARRY((\inst3|Div0|auto_generated|divider|divider|StageOut[140]~366_combout\) # ((\inst3|Div0|auto_generated|divider|divider|StageOut[140]~309_combout\) # 
-- (!\inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[5]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[140]~366_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[140]~309_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[5]~7\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[6]~8_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[6]~9\);

-- Location: LCCOMB_X21_Y18_N16
\inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[7]~10_combout\ = (\inst3|Div0|auto_generated|divider|divider|StageOut[141]~365_combout\ & (((!\inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[6]~9\)))) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[141]~365_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[141]~308_combout\ & (!\inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[6]~9\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[141]~308_combout\ & ((\inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[6]~9\) # (GND)))))
-- \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[7]~11\ = CARRY(((!\inst3|Div0|auto_generated|divider|divider|StageOut[141]~365_combout\ & !\inst3|Div0|auto_generated|divider|divider|StageOut[141]~308_combout\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[6]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[141]~365_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[141]~308_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[6]~9\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[7]~10_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[7]~11\);

-- Location: LCCOMB_X21_Y18_N18
\inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[8]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[8]~13_cout\ = CARRY((\inst3|Div0|auto_generated|divider|divider|StageOut[142]~307_combout\) # ((\inst3|Div0|auto_generated|divider|divider|StageOut[142]~364_combout\) # 
-- (!\inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[7]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[142]~307_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[142]~364_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[7]~11\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[8]~13_cout\);

-- Location: LCCOMB_X21_Y18_N20
\inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[9]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[9]~14_combout\ = !\inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[8]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[8]~13_cout\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[9]~14_combout\);

-- Location: LCCOMB_X21_Y17_N10
\inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[2]~0_combout\ = (((\inst3|Div0|auto_generated|divider|divider|StageOut[145]~321_combout\) # (\inst3|Div0|auto_generated|divider|divider|StageOut[145]~322_combout\)))
-- \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[2]~1\ = CARRY((\inst3|Div0|auto_generated|divider|divider|StageOut[145]~321_combout\) # (\inst3|Div0|auto_generated|divider|divider|StageOut[145]~322_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[145]~321_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[145]~322_combout\,
	datad => VCC,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[2]~0_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[2]~1\);

-- Location: LCCOMB_X21_Y17_N12
\inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[3]~2_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[2]~1\ & (((\inst3|Div0|auto_generated|divider|divider|StageOut[146]~320_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[146]~392_combout\)))) # (!\inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[2]~1\ & (!\inst3|Div0|auto_generated|divider|divider|StageOut[146]~320_combout\ & 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[146]~392_combout\)))
-- \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[3]~3\ = CARRY((!\inst3|Div0|auto_generated|divider|divider|StageOut[146]~320_combout\ & (!\inst3|Div0|auto_generated|divider|divider|StageOut[146]~392_combout\ & 
-- !\inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[146]~320_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[146]~392_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[2]~1\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[3]~2_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[3]~3\);

-- Location: LCCOMB_X21_Y17_N14
\inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[4]~4_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[3]~3\ & (((\inst3|Div0|auto_generated|divider|divider|StageOut[147]~400_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[147]~319_combout\)))) # (!\inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[3]~3\ & ((((\inst3|Div0|auto_generated|divider|divider|StageOut[147]~400_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[147]~319_combout\)))))
-- \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[4]~5\ = CARRY((!\inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[3]~3\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[147]~400_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[147]~319_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[147]~400_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[147]~319_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[3]~3\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[4]~4_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[4]~5\);

-- Location: LCCOMB_X21_Y17_N16
\inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[5]~6_combout\ = (\inst3|Div0|auto_generated|divider|divider|StageOut[148]~371_combout\ & (((!\inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[4]~5\)))) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[148]~371_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[148]~318_combout\ & (!\inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[4]~5\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[148]~318_combout\ & ((\inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[4]~5\) # (GND)))))
-- \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[5]~7\ = CARRY(((!\inst3|Div0|auto_generated|divider|divider|StageOut[148]~371_combout\ & !\inst3|Div0|auto_generated|divider|divider|StageOut[148]~318_combout\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[148]~371_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[148]~318_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[4]~5\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[5]~6_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[5]~7\);

-- Location: LCCOMB_X21_Y17_N18
\inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[6]~8_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[5]~7\ & ((((\inst3|Div0|auto_generated|divider|divider|StageOut[149]~370_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[149]~317_combout\))))) # (!\inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[5]~7\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[149]~370_combout\) # 
-- ((\inst3|Div0|auto_generated|divider|divider|StageOut[149]~317_combout\) # (GND))))
-- \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[6]~9\ = CARRY((\inst3|Div0|auto_generated|divider|divider|StageOut[149]~370_combout\) # ((\inst3|Div0|auto_generated|divider|divider|StageOut[149]~317_combout\) # 
-- (!\inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[5]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[149]~370_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[149]~317_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[5]~7\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[6]~8_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[6]~9\);

-- Location: LCCOMB_X21_Y17_N20
\inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[7]~10_combout\ = (\inst3|Div0|auto_generated|divider|divider|StageOut[150]~369_combout\ & (((!\inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[6]~9\)))) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[150]~369_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[150]~316_combout\ & (!\inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[6]~9\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[150]~316_combout\ & ((\inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[6]~9\) # (GND)))))
-- \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[7]~11\ = CARRY(((!\inst3|Div0|auto_generated|divider|divider|StageOut[150]~369_combout\ & !\inst3|Div0|auto_generated|divider|divider|StageOut[150]~316_combout\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[6]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[150]~369_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[150]~316_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[6]~9\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[7]~10_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[7]~11\);

-- Location: LCCOMB_X21_Y17_N22
\inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[8]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[8]~13_cout\ = CARRY((\inst3|Div0|auto_generated|divider|divider|StageOut[151]~315_combout\) # ((\inst3|Div0|auto_generated|divider|divider|StageOut[151]~368_combout\) # 
-- (!\inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[7]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[151]~315_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[151]~368_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[7]~11\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[8]~13_cout\);

-- Location: LCCOMB_X21_Y17_N24
\inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[9]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[9]~14_combout\ = !\inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[8]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[8]~13_cout\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[9]~14_combout\);

-- Location: LCCOMB_X22_Y17_N16
\inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[2]~0_combout\ = (((\inst3|Div0|auto_generated|divider|divider|StageOut[154]~330_combout\) # (\inst3|Div0|auto_generated|divider|divider|StageOut[154]~329_combout\)))
-- \inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[2]~1\ = CARRY((\inst3|Div0|auto_generated|divider|divider|StageOut[154]~330_combout\) # (\inst3|Div0|auto_generated|divider|divider|StageOut[154]~329_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[154]~330_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[154]~329_combout\,
	datad => VCC,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[2]~0_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[2]~1\);

-- Location: LCCOMB_X22_Y17_N18
\inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[3]~2_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[2]~1\ & (((\inst3|Div0|auto_generated|divider|divider|StageOut[155]~328_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[155]~393_combout\)))) # (!\inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[2]~1\ & (!\inst3|Div0|auto_generated|divider|divider|StageOut[155]~328_combout\ & 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[155]~393_combout\)))
-- \inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[3]~3\ = CARRY((!\inst3|Div0|auto_generated|divider|divider|StageOut[155]~328_combout\ & (!\inst3|Div0|auto_generated|divider|divider|StageOut[155]~393_combout\ & 
-- !\inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[155]~328_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[155]~393_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[2]~1\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[3]~2_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[3]~3\);

-- Location: LCCOMB_X22_Y17_N20
\inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[4]~4_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[3]~3\ & (((\inst3|Div0|auto_generated|divider|divider|StageOut[156]~327_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[156]~401_combout\)))) # (!\inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[3]~3\ & ((((\inst3|Div0|auto_generated|divider|divider|StageOut[156]~327_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[156]~401_combout\)))))
-- \inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[4]~5\ = CARRY((!\inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[3]~3\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[156]~327_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[156]~401_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[156]~327_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[156]~401_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[3]~3\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[4]~4_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[4]~5\);

-- Location: LCCOMB_X22_Y17_N22
\inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[5]~6_combout\ = (\inst3|Div0|auto_generated|divider|divider|StageOut[157]~375_combout\ & (((!\inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[4]~5\)))) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[157]~375_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[157]~326_combout\ & (!\inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[4]~5\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[157]~326_combout\ & ((\inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[4]~5\) # (GND)))))
-- \inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[5]~7\ = CARRY(((!\inst3|Div0|auto_generated|divider|divider|StageOut[157]~375_combout\ & !\inst3|Div0|auto_generated|divider|divider|StageOut[157]~326_combout\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[157]~375_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[157]~326_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[4]~5\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[5]~6_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[5]~7\);

-- Location: LCCOMB_X22_Y17_N24
\inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~8_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[5]~7\ & ((((\inst3|Div0|auto_generated|divider|divider|StageOut[158]~325_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[158]~374_combout\))))) # (!\inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[5]~7\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[158]~325_combout\) # 
-- ((\inst3|Div0|auto_generated|divider|divider|StageOut[158]~374_combout\) # (GND))))
-- \inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~9\ = CARRY((\inst3|Div0|auto_generated|divider|divider|StageOut[158]~325_combout\) # ((\inst3|Div0|auto_generated|divider|divider|StageOut[158]~374_combout\) # 
-- (!\inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[5]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[158]~325_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[158]~374_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[5]~7\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~8_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~9\);

-- Location: LCCOMB_X22_Y17_N26
\inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~10_combout\ = (\inst3|Div0|auto_generated|divider|divider|StageOut[159]~324_combout\ & (((!\inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~9\)))) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[159]~324_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[159]~373_combout\ & (!\inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~9\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[159]~373_combout\ & ((\inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~9\) # (GND)))))
-- \inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~11\ = CARRY(((!\inst3|Div0|auto_generated|divider|divider|StageOut[159]~324_combout\ & !\inst3|Div0|auto_generated|divider|divider|StageOut[159]~373_combout\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[159]~324_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[159]~373_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~9\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~10_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~11\);

-- Location: LCCOMB_X22_Y17_N28
\inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[8]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[8]~13_cout\ = CARRY((\inst3|Div0|auto_generated|divider|divider|StageOut[160]~323_combout\) # ((\inst3|Div0|auto_generated|divider|divider|StageOut[160]~372_combout\) # 
-- (!\inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[160]~323_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[160]~372_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~11\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[8]~13_cout\);

-- Location: LCCOMB_X22_Y17_N30
\inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~14_combout\ = !\inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[8]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[8]~13_cout\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~14_combout\);

-- Location: LCCOMB_X22_Y14_N16
\inst3|Div0|auto_generated|divider|divider|add_sub_19_result_int[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_19_result_int[2]~1_cout\ = CARRY((\inst3|Div0|auto_generated|divider|divider|StageOut[163]~338_combout\) # (\inst3|Div0|auto_generated|divider|divider|StageOut[163]~337_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[163]~338_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[163]~337_combout\,
	datad => VCC,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_19_result_int[2]~1_cout\);

-- Location: LCCOMB_X22_Y14_N18
\inst3|Div0|auto_generated|divider|divider|add_sub_19_result_int[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_19_result_int[3]~3_cout\ = CARRY((!\inst3|Div0|auto_generated|divider|divider|StageOut[164]~336_combout\ & (!\inst3|Div0|auto_generated|divider|divider|StageOut[164]~394_combout\ & 
-- !\inst3|Div0|auto_generated|divider|divider|add_sub_19_result_int[2]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[164]~336_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[164]~394_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_19_result_int[2]~1_cout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_19_result_int[3]~3_cout\);

-- Location: LCCOMB_X22_Y14_N20
\inst3|Div0|auto_generated|divider|divider|add_sub_19_result_int[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_19_result_int[4]~5_cout\ = CARRY((!\inst3|Div0|auto_generated|divider|divider|add_sub_19_result_int[3]~3_cout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[165]~402_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[165]~335_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[165]~402_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[165]~335_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_19_result_int[3]~3_cout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_19_result_int[4]~5_cout\);

-- Location: LCCOMB_X22_Y14_N22
\inst3|Div0|auto_generated|divider|divider|add_sub_19_result_int[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_19_result_int[5]~7_cout\ = CARRY(((!\inst3|Div0|auto_generated|divider|divider|StageOut[166]~334_combout\ & !\inst3|Div0|auto_generated|divider|divider|StageOut[166]~379_combout\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|add_sub_19_result_int[4]~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[166]~334_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[166]~379_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_19_result_int[4]~5_cout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_19_result_int[5]~7_cout\);

-- Location: LCCOMB_X22_Y14_N24
\inst3|Div0|auto_generated|divider|divider|add_sub_19_result_int[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_19_result_int[6]~9_cout\ = CARRY((\inst3|Div0|auto_generated|divider|divider|StageOut[167]~333_combout\) # ((\inst3|Div0|auto_generated|divider|divider|StageOut[167]~378_combout\) # 
-- (!\inst3|Div0|auto_generated|divider|divider|add_sub_19_result_int[5]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[167]~333_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[167]~378_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_19_result_int[5]~7_cout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_19_result_int[6]~9_cout\);

-- Location: LCCOMB_X22_Y14_N26
\inst3|Div0|auto_generated|divider|divider|add_sub_19_result_int[7]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_19_result_int[7]~11_cout\ = CARRY(((!\inst3|Div0|auto_generated|divider|divider|StageOut[168]~377_combout\ & !\inst3|Div0|auto_generated|divider|divider|StageOut[168]~332_combout\)) # 
-- (!\inst3|Div0|auto_generated|divider|divider|add_sub_19_result_int[6]~9_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[168]~377_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[168]~332_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_19_result_int[6]~9_cout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_19_result_int[7]~11_cout\);

-- Location: LCCOMB_X22_Y14_N28
\inst3|Div0|auto_generated|divider|divider|add_sub_19_result_int[8]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_19_result_int[8]~13_cout\ = CARRY((\inst3|Div0|auto_generated|divider|divider|StageOut[169]~331_combout\) # ((\inst3|Div0|auto_generated|divider|divider|StageOut[169]~376_combout\) # 
-- (!\inst3|Div0|auto_generated|divider|divider|add_sub_19_result_int[7]~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[169]~331_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[169]~376_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_19_result_int[7]~11_cout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_19_result_int[8]~13_cout\);

-- Location: LCCOMB_X22_Y14_N30
\inst3|Div0|auto_generated|divider|divider|add_sub_19_result_int[9]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_19_result_int[9]~14_combout\ = !\inst3|Div0|auto_generated|divider|divider|add_sub_19_result_int[8]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_19_result_int[8]~13_cout\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_19_result_int[9]~14_combout\);

-- Location: LCCOMB_X22_Y14_N0
\inst7|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan0~1_cout\ = CARRY((!\inst3|Div0|auto_generated|divider|divider|add_sub_19_result_int[9]~14_combout\ & !\inst7|pos_actual\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|add_sub_19_result_int[9]~14_combout\,
	datab => \inst7|pos_actual\(0),
	datad => VCC,
	cout => \inst7|LessThan0~1_cout\);

-- Location: LCCOMB_X22_Y14_N2
\inst7|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan0~3_cout\ = CARRY((\inst7|pos_actual\(1) & ((\inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~14_combout\) # (!\inst7|LessThan0~1_cout\))) # (!\inst7|pos_actual\(1) & 
-- (\inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~14_combout\ & !\inst7|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|pos_actual\(1),
	datab => \inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~14_combout\,
	datad => VCC,
	cin => \inst7|LessThan0~1_cout\,
	cout => \inst7|LessThan0~3_cout\);

-- Location: LCCOMB_X22_Y14_N4
\inst7|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan0~5_cout\ = CARRY((\inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[9]~14_combout\ & (!\inst7|pos_actual\(2) & !\inst7|LessThan0~3_cout\)) # (!\inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[9]~14_combout\ & 
-- ((!\inst7|LessThan0~3_cout\) # (!\inst7|pos_actual\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[9]~14_combout\,
	datab => \inst7|pos_actual\(2),
	datad => VCC,
	cin => \inst7|LessThan0~3_cout\,
	cout => \inst7|LessThan0~5_cout\);

-- Location: LCCOMB_X22_Y14_N6
\inst7|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan0~7_cout\ = CARRY((\inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[9]~14_combout\ & ((\inst7|pos_actual\(3)) # (!\inst7|LessThan0~5_cout\))) # 
-- (!\inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[9]~14_combout\ & (\inst7|pos_actual\(3) & !\inst7|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[9]~14_combout\,
	datab => \inst7|pos_actual\(3),
	datad => VCC,
	cin => \inst7|LessThan0~5_cout\,
	cout => \inst7|LessThan0~7_cout\);

-- Location: LCCOMB_X22_Y14_N8
\inst7|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan0~9_cout\ = CARRY((\inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[9]~14_combout\ & (!\inst7|pos_actual\(4) & !\inst7|LessThan0~7_cout\)) # (!\inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[9]~14_combout\ & 
-- ((!\inst7|LessThan0~7_cout\) # (!\inst7|pos_actual\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[9]~14_combout\,
	datab => \inst7|pos_actual\(4),
	datad => VCC,
	cin => \inst7|LessThan0~7_cout\,
	cout => \inst7|LessThan0~9_cout\);

-- Location: LCCOMB_X22_Y14_N10
\inst7|LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan0~11_cout\ = CARRY((\inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[9]~14_combout\ & ((\inst7|pos_actual\(5)) # (!\inst7|LessThan0~9_cout\))) # 
-- (!\inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[9]~14_combout\ & (\inst7|pos_actual\(5) & !\inst7|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[9]~14_combout\,
	datab => \inst7|pos_actual\(5),
	datad => VCC,
	cin => \inst7|LessThan0~9_cout\,
	cout => \inst7|LessThan0~11_cout\);

-- Location: LCCOMB_X22_Y14_N12
\inst7|LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan0~13_cout\ = CARRY((\inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~14_combout\ & (!\inst7|pos_actual\(6) & !\inst7|LessThan0~11_cout\)) # (!\inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~14_combout\ 
-- & ((!\inst7|LessThan0~11_cout\) # (!\inst7|pos_actual\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~14_combout\,
	datab => \inst7|pos_actual\(6),
	datad => VCC,
	cin => \inst7|LessThan0~11_cout\,
	cout => \inst7|LessThan0~13_cout\);

-- Location: LCCOMB_X22_Y14_N14
\inst7|LessThan0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan0~14_combout\ = (\inst7|pos_actual\(7) & ((\inst7|LessThan0~13_cout\) # (!\inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\))) # (!\inst7|pos_actual\(7) & (\inst7|LessThan0~13_cout\ & 
-- !\inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|pos_actual\(7),
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\,
	cin => \inst7|LessThan0~13_cout\,
	combout => \inst7|LessThan0~14_combout\);

-- Location: LCCOMB_X23_Y14_N0
\inst7|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~0_combout\ = \inst7|pos_actual\(0) $ (VCC)
-- \inst7|Add0~1\ = CARRY(\inst7|pos_actual\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|pos_actual\(0),
	datad => VCC,
	combout => \inst7|Add0~0_combout\,
	cout => \inst7|Add0~1\);

-- Location: LCCOMB_X23_Y14_N2
\inst7|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~2_combout\ = (\inst7|LessThan0~14_combout\ & ((\inst7|pos_actual\(1) & (!\inst7|Add0~1\)) # (!\inst7|pos_actual\(1) & ((\inst7|Add0~1\) # (GND))))) # (!\inst7|LessThan0~14_combout\ & ((\inst7|pos_actual\(1) & (\inst7|Add0~1\ & VCC)) # 
-- (!\inst7|pos_actual\(1) & (!\inst7|Add0~1\))))
-- \inst7|Add0~3\ = CARRY((\inst7|LessThan0~14_combout\ & ((!\inst7|Add0~1\) # (!\inst7|pos_actual\(1)))) # (!\inst7|LessThan0~14_combout\ & (!\inst7|pos_actual\(1) & !\inst7|Add0~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan0~14_combout\,
	datab => \inst7|pos_actual\(1),
	datad => VCC,
	cin => \inst7|Add0~1\,
	combout => \inst7|Add0~2_combout\,
	cout => \inst7|Add0~3\);

-- Location: LCCOMB_X23_Y14_N4
\inst7|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~4_combout\ = ((\inst7|LessThan0~14_combout\ $ (\inst7|pos_actual\(2) $ (\inst7|Add0~3\)))) # (GND)
-- \inst7|Add0~5\ = CARRY((\inst7|LessThan0~14_combout\ & (\inst7|pos_actual\(2) & !\inst7|Add0~3\)) # (!\inst7|LessThan0~14_combout\ & ((\inst7|pos_actual\(2)) # (!\inst7|Add0~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan0~14_combout\,
	datab => \inst7|pos_actual\(2),
	datad => VCC,
	cin => \inst7|Add0~3\,
	combout => \inst7|Add0~4_combout\,
	cout => \inst7|Add0~5\);

-- Location: LCCOMB_X23_Y14_N6
\inst7|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~6_combout\ = (\inst7|LessThan0~14_combout\ & ((\inst7|pos_actual\(3) & (!\inst7|Add0~5\)) # (!\inst7|pos_actual\(3) & ((\inst7|Add0~5\) # (GND))))) # (!\inst7|LessThan0~14_combout\ & ((\inst7|pos_actual\(3) & (\inst7|Add0~5\ & VCC)) # 
-- (!\inst7|pos_actual\(3) & (!\inst7|Add0~5\))))
-- \inst7|Add0~7\ = CARRY((\inst7|LessThan0~14_combout\ & ((!\inst7|Add0~5\) # (!\inst7|pos_actual\(3)))) # (!\inst7|LessThan0~14_combout\ & (!\inst7|pos_actual\(3) & !\inst7|Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan0~14_combout\,
	datab => \inst7|pos_actual\(3),
	datad => VCC,
	cin => \inst7|Add0~5\,
	combout => \inst7|Add0~6_combout\,
	cout => \inst7|Add0~7\);

-- Location: LCCOMB_X23_Y14_N8
\inst7|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~8_combout\ = ((\inst7|LessThan0~14_combout\ $ (\inst7|pos_actual\(4) $ (\inst7|Add0~7\)))) # (GND)
-- \inst7|Add0~9\ = CARRY((\inst7|LessThan0~14_combout\ & (\inst7|pos_actual\(4) & !\inst7|Add0~7\)) # (!\inst7|LessThan0~14_combout\ & ((\inst7|pos_actual\(4)) # (!\inst7|Add0~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan0~14_combout\,
	datab => \inst7|pos_actual\(4),
	datad => VCC,
	cin => \inst7|Add0~7\,
	combout => \inst7|Add0~8_combout\,
	cout => \inst7|Add0~9\);

-- Location: LCCOMB_X23_Y14_N10
\inst7|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~10_combout\ = (\inst7|LessThan0~14_combout\ & ((\inst7|pos_actual\(5) & (!\inst7|Add0~9\)) # (!\inst7|pos_actual\(5) & ((\inst7|Add0~9\) # (GND))))) # (!\inst7|LessThan0~14_combout\ & ((\inst7|pos_actual\(5) & (\inst7|Add0~9\ & VCC)) # 
-- (!\inst7|pos_actual\(5) & (!\inst7|Add0~9\))))
-- \inst7|Add0~11\ = CARRY((\inst7|LessThan0~14_combout\ & ((!\inst7|Add0~9\) # (!\inst7|pos_actual\(5)))) # (!\inst7|LessThan0~14_combout\ & (!\inst7|pos_actual\(5) & !\inst7|Add0~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan0~14_combout\,
	datab => \inst7|pos_actual\(5),
	datad => VCC,
	cin => \inst7|Add0~9\,
	combout => \inst7|Add0~10_combout\,
	cout => \inst7|Add0~11\);

-- Location: LCCOMB_X21_Y14_N10
\inst7|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan1~1_cout\ = CARRY((\inst3|Div0|auto_generated|divider|divider|add_sub_19_result_int[9]~14_combout\ & \inst7|pos_actual\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|add_sub_19_result_int[9]~14_combout\,
	datab => \inst7|pos_actual\(0),
	datad => VCC,
	cout => \inst7|LessThan1~1_cout\);

-- Location: LCCOMB_X21_Y14_N12
\inst7|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan1~3_cout\ = CARRY((\inst7|pos_actual\(1) & (!\inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~14_combout\ & !\inst7|LessThan1~1_cout\)) # (!\inst7|pos_actual\(1) & ((!\inst7|LessThan1~1_cout\) # 
-- (!\inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|pos_actual\(1),
	datab => \inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~14_combout\,
	datad => VCC,
	cin => \inst7|LessThan1~1_cout\,
	cout => \inst7|LessThan1~3_cout\);

-- Location: LCCOMB_X21_Y14_N14
\inst7|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan1~5_cout\ = CARRY((\inst7|pos_actual\(2) & ((\inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[9]~14_combout\) # (!\inst7|LessThan1~3_cout\))) # (!\inst7|pos_actual\(2) & 
-- (\inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[9]~14_combout\ & !\inst7|LessThan1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|pos_actual\(2),
	datab => \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[9]~14_combout\,
	datad => VCC,
	cin => \inst7|LessThan1~3_cout\,
	cout => \inst7|LessThan1~5_cout\);

-- Location: LCCOMB_X21_Y14_N16
\inst7|LessThan1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan1~7_cout\ = CARRY((\inst7|pos_actual\(3) & (!\inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[9]~14_combout\ & !\inst7|LessThan1~5_cout\)) # (!\inst7|pos_actual\(3) & ((!\inst7|LessThan1~5_cout\) # 
-- (!\inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|pos_actual\(3),
	datab => \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[9]~14_combout\,
	datad => VCC,
	cin => \inst7|LessThan1~5_cout\,
	cout => \inst7|LessThan1~7_cout\);

-- Location: LCCOMB_X21_Y14_N18
\inst7|LessThan1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan1~9_cout\ = CARRY((\inst7|pos_actual\(4) & ((\inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[9]~14_combout\) # (!\inst7|LessThan1~7_cout\))) # (!\inst7|pos_actual\(4) & 
-- (\inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[9]~14_combout\ & !\inst7|LessThan1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|pos_actual\(4),
	datab => \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[9]~14_combout\,
	datad => VCC,
	cin => \inst7|LessThan1~7_cout\,
	cout => \inst7|LessThan1~9_cout\);

-- Location: LCCOMB_X21_Y14_N20
\inst7|LessThan1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan1~11_cout\ = CARRY((\inst7|pos_actual\(5) & (!\inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[9]~14_combout\ & !\inst7|LessThan1~9_cout\)) # (!\inst7|pos_actual\(5) & ((!\inst7|LessThan1~9_cout\) # 
-- (!\inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|pos_actual\(5),
	datab => \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[9]~14_combout\,
	datad => VCC,
	cin => \inst7|LessThan1~9_cout\,
	cout => \inst7|LessThan1~11_cout\);

-- Location: LCCOMB_X21_Y14_N22
\inst7|LessThan1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan1~13_cout\ = CARRY((\inst7|pos_actual\(6) & ((\inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~14_combout\) # (!\inst7|LessThan1~11_cout\))) # (!\inst7|pos_actual\(6) & 
-- (\inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~14_combout\ & !\inst7|LessThan1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|pos_actual\(6),
	datab => \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~14_combout\,
	datad => VCC,
	cin => \inst7|LessThan1~11_cout\,
	cout => \inst7|LessThan1~13_cout\);

-- Location: LCCOMB_X21_Y14_N24
\inst7|LessThan1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan1~14_combout\ = (\inst7|pos_actual\(7) & (\inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\ & \inst7|LessThan1~13_cout\)) # (!\inst7|pos_actual\(7) & 
-- ((\inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\) # (\inst7|LessThan1~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|pos_actual\(7),
	datab => \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\,
	cin => \inst7|LessThan1~13_cout\,
	combout => \inst7|LessThan1~14_combout\);

-- Location: LCCOMB_X23_Y14_N12
\inst7|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~12_combout\ = ((\inst7|LessThan0~14_combout\ $ (\inst7|pos_actual\(6) $ (\inst7|Add0~11\)))) # (GND)
-- \inst7|Add0~13\ = CARRY((\inst7|LessThan0~14_combout\ & (\inst7|pos_actual\(6) & !\inst7|Add0~11\)) # (!\inst7|LessThan0~14_combout\ & ((\inst7|pos_actual\(6)) # (!\inst7|Add0~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan0~14_combout\,
	datab => \inst7|pos_actual\(6),
	datad => VCC,
	cin => \inst7|Add0~11\,
	combout => \inst7|Add0~12_combout\,
	cout => \inst7|Add0~13\);

-- Location: LCCOMB_X23_Y14_N14
\inst7|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~14_combout\ = \inst7|pos_actual\(7) $ (\inst7|Add0~13\ $ (\inst7|LessThan0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|pos_actual\(7),
	datad => \inst7|LessThan0~14_combout\,
	cin => \inst7|Add0~13\,
	combout => \inst7|Add0~14_combout\);

-- Location: FF_X29_Y10_N1
\inst|descartar\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|descartar~0_combout\,
	sclr => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|descartar~q\);

-- Location: FF_X29_Y10_N3
\inst9|dato_listo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst9|dato_listo~feeder_combout\,
	sclr => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|dato_listo~q\);

-- Location: FF_X29_Y10_N17
\inst|hay_cifras\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|hay_cifras~0_combout\,
	sclr => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|hay_cifras~q\);

-- Location: LCCOMB_X26_Y10_N12
\inst|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~0_combout\ = (\inst|acumulado\(2) & (\inst|acumulado\(0) $ (VCC))) # (!\inst|acumulado\(2) & (\inst|acumulado\(0) & VCC))
-- \inst|Add0~1\ = CARRY((\inst|acumulado\(2) & \inst|acumulado\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|acumulado\(2),
	datab => \inst|acumulado\(0),
	datad => VCC,
	combout => \inst|Add0~0_combout\,
	cout => \inst|Add0~1\);

-- Location: LCCOMB_X26_Y10_N14
\inst|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~2_combout\ = (\inst|acumulado\(1) & ((\inst|acumulado\(3) & (\inst|Add0~1\ & VCC)) # (!\inst|acumulado\(3) & (!\inst|Add0~1\)))) # (!\inst|acumulado\(1) & ((\inst|acumulado\(3) & (!\inst|Add0~1\)) # (!\inst|acumulado\(3) & ((\inst|Add0~1\) # 
-- (GND)))))
-- \inst|Add0~3\ = CARRY((\inst|acumulado\(1) & (!\inst|acumulado\(3) & !\inst|Add0~1\)) # (!\inst|acumulado\(1) & ((!\inst|Add0~1\) # (!\inst|acumulado\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|acumulado\(1),
	datab => \inst|acumulado\(3),
	datad => VCC,
	cin => \inst|Add0~1\,
	combout => \inst|Add0~2_combout\,
	cout => \inst|Add0~3\);

-- Location: LCCOMB_X26_Y10_N16
\inst|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~4_combout\ = ((\inst|acumulado\(2) $ (\inst|acumulado\(4) $ (!\inst|Add0~3\)))) # (GND)
-- \inst|Add0~5\ = CARRY((\inst|acumulado\(2) & ((\inst|acumulado\(4)) # (!\inst|Add0~3\))) # (!\inst|acumulado\(2) & (\inst|acumulado\(4) & !\inst|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|acumulado\(2),
	datab => \inst|acumulado\(4),
	datad => VCC,
	cin => \inst|Add0~3\,
	combout => \inst|Add0~4_combout\,
	cout => \inst|Add0~5\);

-- Location: LCCOMB_X26_Y10_N18
\inst|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~6_combout\ = (\inst|acumulado\(5) & ((\inst|acumulado\(3) & (\inst|Add0~5\ & VCC)) # (!\inst|acumulado\(3) & (!\inst|Add0~5\)))) # (!\inst|acumulado\(5) & ((\inst|acumulado\(3) & (!\inst|Add0~5\)) # (!\inst|acumulado\(3) & ((\inst|Add0~5\) # 
-- (GND)))))
-- \inst|Add0~7\ = CARRY((\inst|acumulado\(5) & (!\inst|acumulado\(3) & !\inst|Add0~5\)) # (!\inst|acumulado\(5) & ((!\inst|Add0~5\) # (!\inst|acumulado\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|acumulado\(5),
	datab => \inst|acumulado\(3),
	datad => VCC,
	cin => \inst|Add0~5\,
	combout => \inst|Add0~6_combout\,
	cout => \inst|Add0~7\);

-- Location: LCCOMB_X26_Y10_N20
\inst|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~8_combout\ = ((\inst|acumulado\(6) $ (\inst|acumulado\(4) $ (!\inst|Add0~7\)))) # (GND)
-- \inst|Add0~9\ = CARRY((\inst|acumulado\(6) & ((\inst|acumulado\(4)) # (!\inst|Add0~7\))) # (!\inst|acumulado\(6) & (\inst|acumulado\(4) & !\inst|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|acumulado\(6),
	datab => \inst|acumulado\(4),
	datad => VCC,
	cin => \inst|Add0~7\,
	combout => \inst|Add0~8_combout\,
	cout => \inst|Add0~9\);

-- Location: LCCOMB_X28_Y10_N10
\inst|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~0_combout\ = (\inst9|bufferRx\(1) & (\inst|acumulado\(0) $ (VCC))) # (!\inst9|bufferRx\(1) & (\inst|acumulado\(0) & VCC))
-- \inst|Add2~1\ = CARRY((\inst9|bufferRx\(1) & \inst|acumulado\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|bufferRx\(1),
	datab => \inst|acumulado\(0),
	datad => VCC,
	combout => \inst|Add2~0_combout\,
	cout => \inst|Add2~1\);

-- Location: LCCOMB_X28_Y10_N12
\inst|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~2_combout\ = (\inst9|bufferRx\(2) & ((\inst|acumulado\(1) & (\inst|Add2~1\ & VCC)) # (!\inst|acumulado\(1) & (!\inst|Add2~1\)))) # (!\inst9|bufferRx\(2) & ((\inst|acumulado\(1) & (!\inst|Add2~1\)) # (!\inst|acumulado\(1) & ((\inst|Add2~1\) # 
-- (GND)))))
-- \inst|Add2~3\ = CARRY((\inst9|bufferRx\(2) & (!\inst|acumulado\(1) & !\inst|Add2~1\)) # (!\inst9|bufferRx\(2) & ((!\inst|Add2~1\) # (!\inst|acumulado\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|bufferRx\(2),
	datab => \inst|acumulado\(1),
	datad => VCC,
	cin => \inst|Add2~1\,
	combout => \inst|Add2~2_combout\,
	cout => \inst|Add2~3\);

-- Location: LCCOMB_X28_Y10_N14
\inst|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~4_combout\ = ((\inst9|bufferRx\(3) $ (\inst|Add0~0_combout\ $ (!\inst|Add2~3\)))) # (GND)
-- \inst|Add2~5\ = CARRY((\inst9|bufferRx\(3) & ((\inst|Add0~0_combout\) # (!\inst|Add2~3\))) # (!\inst9|bufferRx\(3) & (\inst|Add0~0_combout\ & !\inst|Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|bufferRx\(3),
	datab => \inst|Add0~0_combout\,
	datad => VCC,
	cin => \inst|Add2~3\,
	combout => \inst|Add2~4_combout\,
	cout => \inst|Add2~5\);

-- Location: LCCOMB_X28_Y10_N16
\inst|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~6_combout\ = (\inst|Add0~2_combout\ & ((\inst9|bufferRx\(4) & (!\inst|Add2~5\)) # (!\inst9|bufferRx\(4) & (\inst|Add2~5\ & VCC)))) # (!\inst|Add0~2_combout\ & ((\inst9|bufferRx\(4) & ((\inst|Add2~5\) # (GND))) # (!\inst9|bufferRx\(4) & 
-- (!\inst|Add2~5\))))
-- \inst|Add2~7\ = CARRY((\inst|Add0~2_combout\ & (\inst9|bufferRx\(4) & !\inst|Add2~5\)) # (!\inst|Add0~2_combout\ & ((\inst9|bufferRx\(4)) # (!\inst|Add2~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~2_combout\,
	datab => \inst9|bufferRx\(4),
	datad => VCC,
	cin => \inst|Add2~5\,
	combout => \inst|Add2~6_combout\,
	cout => \inst|Add2~7\);

-- Location: LCCOMB_X28_Y10_N18
\inst|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~8_combout\ = ((\inst|Add0~4_combout\ $ (\inst|Add1~2_combout\ $ (!\inst|Add2~7\)))) # (GND)
-- \inst|Add2~9\ = CARRY((\inst|Add0~4_combout\ & ((\inst|Add1~2_combout\) # (!\inst|Add2~7\))) # (!\inst|Add0~4_combout\ & (\inst|Add1~2_combout\ & !\inst|Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~4_combout\,
	datab => \inst|Add1~2_combout\,
	datad => VCC,
	cin => \inst|Add2~7\,
	combout => \inst|Add2~8_combout\,
	cout => \inst|Add2~9\);

-- Location: LCCOMB_X28_Y10_N20
\inst|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~10_combout\ = (\inst|Add1~1_combout\ & ((\inst|Add0~6_combout\ & (!\inst|Add2~9\)) # (!\inst|Add0~6_combout\ & ((\inst|Add2~9\) # (GND))))) # (!\inst|Add1~1_combout\ & ((\inst|Add0~6_combout\ & (\inst|Add2~9\ & VCC)) # (!\inst|Add0~6_combout\ & 
-- (!\inst|Add2~9\))))
-- \inst|Add2~11\ = CARRY((\inst|Add1~1_combout\ & ((!\inst|Add2~9\) # (!\inst|Add0~6_combout\))) # (!\inst|Add1~1_combout\ & (!\inst|Add0~6_combout\ & !\inst|Add2~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~1_combout\,
	datab => \inst|Add0~6_combout\,
	datad => VCC,
	cin => \inst|Add2~9\,
	combout => \inst|Add2~10_combout\,
	cout => \inst|Add2~11\);

-- Location: LCCOMB_X28_Y10_N22
\inst|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~12_combout\ = ((\inst|Add0~8_combout\ $ (\inst|Add1~0_combout\ $ (\inst|Add2~11\)))) # (GND)
-- \inst|Add2~13\ = CARRY((\inst|Add0~8_combout\ & ((!\inst|Add2~11\) # (!\inst|Add1~0_combout\))) # (!\inst|Add0~8_combout\ & (!\inst|Add1~0_combout\ & !\inst|Add2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~8_combout\,
	datab => \inst|Add1~0_combout\,
	datad => VCC,
	cin => \inst|Add2~11\,
	combout => \inst|Add2~12_combout\,
	cout => \inst|Add2~13\);

-- Location: LCCOMB_X26_Y10_N22
\inst|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~10_combout\ = (\inst|acumulado\(5) & ((\inst|acumulado\(7) & (\inst|Add0~9\ & VCC)) # (!\inst|acumulado\(7) & (!\inst|Add0~9\)))) # (!\inst|acumulado\(5) & ((\inst|acumulado\(7) & (!\inst|Add0~9\)) # (!\inst|acumulado\(7) & ((\inst|Add0~9\) # 
-- (GND)))))
-- \inst|Add0~11\ = CARRY((\inst|acumulado\(5) & (!\inst|acumulado\(7) & !\inst|Add0~9\)) # (!\inst|acumulado\(5) & ((!\inst|Add0~9\) # (!\inst|acumulado\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|acumulado\(5),
	datab => \inst|acumulado\(7),
	datad => VCC,
	cin => \inst|Add0~9\,
	combout => \inst|Add0~10_combout\,
	cout => \inst|Add0~11\);

-- Location: LCCOMB_X28_Y10_N24
\inst|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~14_combout\ = (\inst|Add0~10_combout\ & ((\inst|Add1~3_combout\ & (!\inst|Add2~13\)) # (!\inst|Add1~3_combout\ & (\inst|Add2~13\ & VCC)))) # (!\inst|Add0~10_combout\ & ((\inst|Add1~3_combout\ & ((\inst|Add2~13\) # (GND))) # 
-- (!\inst|Add1~3_combout\ & (!\inst|Add2~13\))))
-- \inst|Add2~15\ = CARRY((\inst|Add0~10_combout\ & (\inst|Add1~3_combout\ & !\inst|Add2~13\)) # (!\inst|Add0~10_combout\ & ((\inst|Add1~3_combout\) # (!\inst|Add2~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~10_combout\,
	datab => \inst|Add1~3_combout\,
	datad => VCC,
	cin => \inst|Add2~13\,
	combout => \inst|Add2~14_combout\,
	cout => \inst|Add2~15\);

-- Location: LCCOMB_X26_Y10_N24
\inst|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~12_combout\ = (\inst|acumulado\(6) & (\inst|Add0~11\ $ (GND))) # (!\inst|acumulado\(6) & (!\inst|Add0~11\ & VCC))
-- \inst|Add0~13\ = CARRY((\inst|acumulado\(6) & !\inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|acumulado\(6),
	datad => VCC,
	cin => \inst|Add0~11\,
	combout => \inst|Add0~12_combout\,
	cout => \inst|Add0~13\);

-- Location: LCCOMB_X28_Y10_N26
\inst|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~16_combout\ = ((\inst|Add0~12_combout\ $ (\inst|Add1~3_combout\ $ (\inst|Add2~15\)))) # (GND)
-- \inst|Add2~17\ = CARRY((\inst|Add0~12_combout\ & ((!\inst|Add2~15\) # (!\inst|Add1~3_combout\))) # (!\inst|Add0~12_combout\ & (!\inst|Add1~3_combout\ & !\inst|Add2~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~12_combout\,
	datab => \inst|Add1~3_combout\,
	datad => VCC,
	cin => \inst|Add2~15\,
	combout => \inst|Add2~16_combout\,
	cout => \inst|Add2~17\);

-- Location: LCCOMB_X26_Y10_N26
\inst|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~14_combout\ = (\inst|acumulado\(7) & (!\inst|Add0~13\)) # (!\inst|acumulado\(7) & ((\inst|Add0~13\) # (GND)))
-- \inst|Add0~15\ = CARRY((!\inst|Add0~13\) # (!\inst|acumulado\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|acumulado\(7),
	datad => VCC,
	cin => \inst|Add0~13\,
	combout => \inst|Add0~14_combout\,
	cout => \inst|Add0~15\);

-- Location: LCCOMB_X28_Y10_N28
\inst|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~18_combout\ = (\inst|Add0~14_combout\ & ((\inst|Add1~3_combout\ & (!\inst|Add2~17\)) # (!\inst|Add1~3_combout\ & (\inst|Add2~17\ & VCC)))) # (!\inst|Add0~14_combout\ & ((\inst|Add1~3_combout\ & ((\inst|Add2~17\) # (GND))) # 
-- (!\inst|Add1~3_combout\ & (!\inst|Add2~17\))))
-- \inst|Add2~19\ = CARRY((\inst|Add0~14_combout\ & (\inst|Add1~3_combout\ & !\inst|Add2~17\)) # (!\inst|Add0~14_combout\ & ((\inst|Add1~3_combout\) # (!\inst|Add2~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~14_combout\,
	datab => \inst|Add1~3_combout\,
	datad => VCC,
	cin => \inst|Add2~17\,
	combout => \inst|Add2~18_combout\,
	cout => \inst|Add2~19\);

-- Location: LCCOMB_X26_Y10_N28
\inst|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~16_combout\ = !\inst|Add0~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Add0~15\,
	combout => \inst|Add0~16_combout\);

-- Location: LCCOMB_X28_Y10_N30
\inst|Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~20_combout\ = \inst|Add1~3_combout\ $ (\inst|Add2~19\ $ (\inst|Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add1~3_combout\,
	datad => \inst|Add0~16_combout\,
	cin => \inst|Add2~19\,
	combout => \inst|Add2~20_combout\);

-- Location: FF_X24_Y9_N17
\inst9|contadorPulsos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst9|contadorPulsos[7]~23_combout\,
	sclr => \inst9|contadorPulsos[0]~25_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|contadorPulsos\(7));

-- Location: FF_X24_Y9_N19
\inst9|contadorPulsos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst9|contadorPulsos[8]~26_combout\,
	sclr => \inst9|contadorPulsos[0]~25_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|contadorPulsos\(8));

-- Location: FF_X24_Y9_N3
\inst9|contadorPulsos[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst9|contadorPulsos[0]~9_combout\,
	sclr => \inst9|contadorPulsos[0]~25_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|contadorPulsos\(0));

-- Location: FF_X24_Y9_N5
\inst9|contadorPulsos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst9|contadorPulsos[1]~11_combout\,
	sclr => \inst9|contadorPulsos[0]~25_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|contadorPulsos\(1));

-- Location: FF_X24_Y9_N7
\inst9|contadorPulsos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst9|contadorPulsos[2]~13_combout\,
	sclr => \inst9|contadorPulsos[0]~25_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|contadorPulsos\(2));

-- Location: FF_X24_Y9_N9
\inst9|contadorPulsos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst9|contadorPulsos[3]~15_combout\,
	sclr => \inst9|contadorPulsos[0]~25_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|contadorPulsos\(3));

-- Location: FF_X24_Y9_N11
\inst9|contadorPulsos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst9|contadorPulsos[4]~17_combout\,
	sclr => \inst9|contadorPulsos[0]~25_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|contadorPulsos\(4));

-- Location: FF_X24_Y9_N13
\inst9|contadorPulsos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst9|contadorPulsos[5]~19_combout\,
	sclr => \inst9|contadorPulsos[0]~25_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|contadorPulsos\(5));

-- Location: FF_X24_Y9_N15
\inst9|contadorPulsos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst9|contadorPulsos[6]~21_combout\,
	sclr => \inst9|contadorPulsos[0]~25_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|contadorPulsos\(6));

-- Location: LCCOMB_X24_Y9_N2
\inst9|contadorPulsos[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|contadorPulsos[0]~9_combout\ = \inst9|contadorPulsos\(0) $ (VCC)
-- \inst9|contadorPulsos[0]~10\ = CARRY(\inst9|contadorPulsos\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|contadorPulsos\(0),
	datad => VCC,
	combout => \inst9|contadorPulsos[0]~9_combout\,
	cout => \inst9|contadorPulsos[0]~10\);

-- Location: LCCOMB_X24_Y9_N4
\inst9|contadorPulsos[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|contadorPulsos[1]~11_combout\ = (\inst9|contadorPulsos\(1) & (!\inst9|contadorPulsos[0]~10\)) # (!\inst9|contadorPulsos\(1) & ((\inst9|contadorPulsos[0]~10\) # (GND)))
-- \inst9|contadorPulsos[1]~12\ = CARRY((!\inst9|contadorPulsos[0]~10\) # (!\inst9|contadorPulsos\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|contadorPulsos\(1),
	datad => VCC,
	cin => \inst9|contadorPulsos[0]~10\,
	combout => \inst9|contadorPulsos[1]~11_combout\,
	cout => \inst9|contadorPulsos[1]~12\);

-- Location: LCCOMB_X24_Y9_N6
\inst9|contadorPulsos[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|contadorPulsos[2]~13_combout\ = (\inst9|contadorPulsos\(2) & (\inst9|contadorPulsos[1]~12\ $ (GND))) # (!\inst9|contadorPulsos\(2) & (!\inst9|contadorPulsos[1]~12\ & VCC))
-- \inst9|contadorPulsos[2]~14\ = CARRY((\inst9|contadorPulsos\(2) & !\inst9|contadorPulsos[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|contadorPulsos\(2),
	datad => VCC,
	cin => \inst9|contadorPulsos[1]~12\,
	combout => \inst9|contadorPulsos[2]~13_combout\,
	cout => \inst9|contadorPulsos[2]~14\);

-- Location: LCCOMB_X24_Y9_N8
\inst9|contadorPulsos[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|contadorPulsos[3]~15_combout\ = (\inst9|contadorPulsos\(3) & (!\inst9|contadorPulsos[2]~14\)) # (!\inst9|contadorPulsos\(3) & ((\inst9|contadorPulsos[2]~14\) # (GND)))
-- \inst9|contadorPulsos[3]~16\ = CARRY((!\inst9|contadorPulsos[2]~14\) # (!\inst9|contadorPulsos\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|contadorPulsos\(3),
	datad => VCC,
	cin => \inst9|contadorPulsos[2]~14\,
	combout => \inst9|contadorPulsos[3]~15_combout\,
	cout => \inst9|contadorPulsos[3]~16\);

-- Location: LCCOMB_X24_Y9_N10
\inst9|contadorPulsos[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|contadorPulsos[4]~17_combout\ = (\inst9|contadorPulsos\(4) & (\inst9|contadorPulsos[3]~16\ $ (GND))) # (!\inst9|contadorPulsos\(4) & (!\inst9|contadorPulsos[3]~16\ & VCC))
-- \inst9|contadorPulsos[4]~18\ = CARRY((\inst9|contadorPulsos\(4) & !\inst9|contadorPulsos[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|contadorPulsos\(4),
	datad => VCC,
	cin => \inst9|contadorPulsos[3]~16\,
	combout => \inst9|contadorPulsos[4]~17_combout\,
	cout => \inst9|contadorPulsos[4]~18\);

-- Location: LCCOMB_X24_Y9_N12
\inst9|contadorPulsos[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|contadorPulsos[5]~19_combout\ = (\inst9|contadorPulsos\(5) & (!\inst9|contadorPulsos[4]~18\)) # (!\inst9|contadorPulsos\(5) & ((\inst9|contadorPulsos[4]~18\) # (GND)))
-- \inst9|contadorPulsos[5]~20\ = CARRY((!\inst9|contadorPulsos[4]~18\) # (!\inst9|contadorPulsos\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|contadorPulsos\(5),
	datad => VCC,
	cin => \inst9|contadorPulsos[4]~18\,
	combout => \inst9|contadorPulsos[5]~19_combout\,
	cout => \inst9|contadorPulsos[5]~20\);

-- Location: LCCOMB_X24_Y9_N14
\inst9|contadorPulsos[6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|contadorPulsos[6]~21_combout\ = (\inst9|contadorPulsos\(6) & (\inst9|contadorPulsos[5]~20\ $ (GND))) # (!\inst9|contadorPulsos\(6) & (!\inst9|contadorPulsos[5]~20\ & VCC))
-- \inst9|contadorPulsos[6]~22\ = CARRY((\inst9|contadorPulsos\(6) & !\inst9|contadorPulsos[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|contadorPulsos\(6),
	datad => VCC,
	cin => \inst9|contadorPulsos[5]~20\,
	combout => \inst9|contadorPulsos[6]~21_combout\,
	cout => \inst9|contadorPulsos[6]~22\);

-- Location: LCCOMB_X24_Y9_N16
\inst9|contadorPulsos[7]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|contadorPulsos[7]~23_combout\ = (\inst9|contadorPulsos\(7) & (!\inst9|contadorPulsos[6]~22\)) # (!\inst9|contadorPulsos\(7) & ((\inst9|contadorPulsos[6]~22\) # (GND)))
-- \inst9|contadorPulsos[7]~24\ = CARRY((!\inst9|contadorPulsos[6]~22\) # (!\inst9|contadorPulsos\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|contadorPulsos\(7),
	datad => VCC,
	cin => \inst9|contadorPulsos[6]~22\,
	combout => \inst9|contadorPulsos[7]~23_combout\,
	cout => \inst9|contadorPulsos[7]~24\);

-- Location: LCCOMB_X24_Y9_N18
\inst9|contadorPulsos[8]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|contadorPulsos[8]~26_combout\ = \inst9|contadorPulsos[7]~24\ $ (!\inst9|contadorPulsos\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst9|contadorPulsos\(8),
	cin => \inst9|contadorPulsos[7]~24\,
	combout => \inst9|contadorPulsos[8]~26_combout\);

-- Location: FF_X21_Y12_N25
\inst7|ancho[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst7|ancho[7]~1_combout\,
	ena => \inst7|ancho[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|ancho\(7));

-- Location: FF_X21_Y12_N21
\inst7|ancho[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst7|Add2~12_combout\,
	ena => \inst7|ancho[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|ancho\(6));

-- Location: FF_X21_Y12_N19
\inst7|ancho[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst7|Add2~10_combout\,
	ena => \inst7|ancho[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|ancho\(5));

-- Location: FF_X21_Y12_N27
\inst7|ancho[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst7|ancho[4]~2_combout\,
	ena => \inst7|ancho[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|ancho\(4));

-- Location: FF_X21_Y12_N15
\inst7|ancho[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst7|Add2~6_combout\,
	ena => \inst7|ancho[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|ancho\(3));

-- Location: FF_X21_Y12_N1
\inst7|ancho[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst7|ancho[2]~3_combout\,
	ena => \inst7|ancho[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|ancho\(2));

-- Location: FF_X21_Y12_N3
\inst7|ancho[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst7|ancho[1]~4_combout\,
	ena => \inst7|ancho[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|ancho\(1));

-- Location: FF_X21_Y12_N9
\inst7|ancho[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst7|Add2~0_combout\,
	ena => \inst7|ancho[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|ancho\(0));

-- Location: LCCOMB_X22_Y12_N10
\inst7|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Equal0~2_combout\ = (\inst7|cnt\(5)) # ((\inst7|cnt\(4)) # (!\inst7|cnt\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|cnt\(5),
	datac => \inst7|cnt\(6),
	datad => \inst7|cnt\(4),
	combout => \inst7|Equal0~2_combout\);

-- Location: FF_X23_Y14_N25
\inst7|pos_actual[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst7|pos_actual[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|pos_actual\(7));

-- Location: LCCOMB_X21_Y14_N28
\inst7|Mult0|mult_core|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mult0|mult_core|_~0_combout\ = (\inst7|pos_actual\(6) & (\inst7|pos_actual\(5) & (!\inst7|pos_actual\(7) & !\inst7|pos_actual\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|pos_actual\(6),
	datab => \inst7|pos_actual\(5),
	datac => \inst7|pos_actual\(7),
	datad => \inst7|pos_actual\(4),
	combout => \inst7|Mult0|mult_core|_~0_combout\);

-- Location: LCCOMB_X24_Y14_N0
\inst7|Mult0|mult_core|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mult0|mult_core|_~1_combout\ = (\inst7|pos_actual\(5) & (\inst7|pos_actual\(6) & (\inst7|pos_actual\(4) & !\inst7|pos_actual\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|pos_actual\(5),
	datab => \inst7|pos_actual\(6),
	datac => \inst7|pos_actual\(4),
	datad => \inst7|pos_actual\(7),
	combout => \inst7|Mult0|mult_core|_~1_combout\);

-- Location: LCCOMB_X24_Y14_N28
\inst7|Mult0|mult_core|romout[1][10]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mult0|mult_core|romout[1][10]~0_combout\ = (\inst7|pos_actual\(5) & ((\inst7|pos_actual\(6) & (\inst7|pos_actual\(4) & \inst7|pos_actual\(7))) # (!\inst7|pos_actual\(6) & ((!\inst7|pos_actual\(7)))))) # (!\inst7|pos_actual\(5) & 
-- (((!\inst7|pos_actual\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|pos_actual\(5),
	datab => \inst7|pos_actual\(6),
	datac => \inst7|pos_actual\(4),
	datad => \inst7|pos_actual\(7),
	combout => \inst7|Mult0|mult_core|romout[1][10]~0_combout\);

-- Location: LCCOMB_X21_Y14_N2
\inst7|Mult0|mult_core|romout[1][9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mult0|mult_core|romout[1][9]~1_combout\ = (\inst7|pos_actual\(6) & (((\inst7|pos_actual\(7) & !\inst7|pos_actual\(4))) # (!\inst7|pos_actual\(5)))) # (!\inst7|pos_actual\(6) & (\inst7|pos_actual\(5) & (!\inst7|pos_actual\(7) & 
-- \inst7|pos_actual\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|pos_actual\(6),
	datab => \inst7|pos_actual\(5),
	datac => \inst7|pos_actual\(7),
	datad => \inst7|pos_actual\(4),
	combout => \inst7|Mult0|mult_core|romout[1][9]~1_combout\);

-- Location: LCCOMB_X25_Y13_N0
\inst7|Mult0|mult_core|romout[1][8]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mult0|mult_core|romout[1][8]~2_combout\ = (\inst7|pos_actual\(7) & (\inst7|pos_actual\(5) & ((!\inst7|pos_actual\(4)) # (!\inst7|pos_actual\(6))))) # (!\inst7|pos_actual\(7) & (\inst7|pos_actual\(5) $ (((\inst7|pos_actual\(6)) # 
-- (\inst7|pos_actual\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|pos_actual\(7),
	datab => \inst7|pos_actual\(6),
	datac => \inst7|pos_actual\(4),
	datad => \inst7|pos_actual\(5),
	combout => \inst7|Mult0|mult_core|romout[1][8]~2_combout\);

-- Location: LCCOMB_X24_Y14_N26
\inst7|Mult0|mult_core|romout[1][7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mult0|mult_core|romout[1][7]~3_combout\ = \inst7|pos_actual\(4) $ (((\inst7|pos_actual\(6) & (\inst7|pos_actual\(5) & \inst7|pos_actual\(7))) # (!\inst7|pos_actual\(6) & ((!\inst7|pos_actual\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|pos_actual\(5),
	datab => \inst7|pos_actual\(6),
	datac => \inst7|pos_actual\(4),
	datad => \inst7|pos_actual\(7),
	combout => \inst7|Mult0|mult_core|romout[1][7]~3_combout\);

-- Location: LCCOMB_X21_Y14_N4
\inst7|Mult0|mult_core|romout[0][11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mult0|mult_core|romout[0][11]~combout\ = (\inst7|pos_actual\(1) & (\inst7|pos_actual\(2) & \inst7|pos_actual\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|pos_actual\(1),
	datac => \inst7|pos_actual\(2),
	datad => \inst7|pos_actual\(3),
	combout => \inst7|Mult0|mult_core|romout[0][11]~combout\);

-- Location: LCCOMB_X23_Y14_N22
\inst7|Mult0|mult_core|romout[1][6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mult0|mult_core|romout[1][6]~4_combout\ = (\inst7|pos_actual\(6) & ((\inst7|pos_actual\(7) & ((!\inst7|pos_actual\(5)))) # (!\inst7|pos_actual\(7) & (\inst7|pos_actual\(4) & \inst7|pos_actual\(5))))) # (!\inst7|pos_actual\(6) & 
-- ((\inst7|pos_actual\(7) & (\inst7|pos_actual\(4) & \inst7|pos_actual\(5))) # (!\inst7|pos_actual\(7) & ((\inst7|pos_actual\(4)) # (\inst7|pos_actual\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|pos_actual\(6),
	datab => \inst7|pos_actual\(7),
	datac => \inst7|pos_actual\(4),
	datad => \inst7|pos_actual\(5),
	combout => \inst7|Mult0|mult_core|romout[1][6]~4_combout\);

-- Location: LCCOMB_X23_Y14_N16
\inst7|Mult0|mult_core|romout[0][10]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mult0|mult_core|romout[0][10]~5_combout\ = (\inst7|pos_actual\(1) & ((\inst7|pos_actual\(2) & (\inst7|pos_actual\(0) & !\inst7|pos_actual\(3))) # (!\inst7|pos_actual\(2) & ((\inst7|pos_actual\(3)))))) # (!\inst7|pos_actual\(1) & 
-- (((\inst7|pos_actual\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|pos_actual\(0),
	datab => \inst7|pos_actual\(1),
	datac => \inst7|pos_actual\(2),
	datad => \inst7|pos_actual\(3),
	combout => \inst7|Mult0|mult_core|romout[0][10]~5_combout\);

-- Location: LCCOMB_X24_Y14_N24
\inst7|Mult0|mult_core|romout[1][5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mult0|mult_core|romout[1][5]~6_combout\ = (\inst7|pos_actual\(5) & ((\inst7|pos_actual\(6) & (!\inst7|pos_actual\(4) & !\inst7|pos_actual\(7))) # (!\inst7|pos_actual\(6) & (\inst7|pos_actual\(4) $ (\inst7|pos_actual\(7)))))) # 
-- (!\inst7|pos_actual\(5) & ((\inst7|pos_actual\(6) & (\inst7|pos_actual\(4) & \inst7|pos_actual\(7))) # (!\inst7|pos_actual\(6) & (!\inst7|pos_actual\(4) & !\inst7|pos_actual\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|pos_actual\(5),
	datab => \inst7|pos_actual\(6),
	datac => \inst7|pos_actual\(4),
	datad => \inst7|pos_actual\(7),
	combout => \inst7|Mult0|mult_core|romout[1][5]~6_combout\);

-- Location: LCCOMB_X21_Y14_N30
\inst7|Mult0|mult_core|romout[0][9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mult0|mult_core|romout[0][9]~combout\ = (\inst7|pos_actual\(1) & ((\inst7|pos_actual\(2) & (!\inst7|pos_actual\(0) & !\inst7|pos_actual\(3))) # (!\inst7|pos_actual\(2) & (\inst7|pos_actual\(0) & \inst7|pos_actual\(3))))) # (!\inst7|pos_actual\(1) & 
-- (\inst7|pos_actual\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|pos_actual\(1),
	datab => \inst7|pos_actual\(2),
	datac => \inst7|pos_actual\(0),
	datad => \inst7|pos_actual\(3),
	combout => \inst7|Mult0|mult_core|romout[0][9]~combout\);

-- Location: LCCOMB_X24_Y14_N30
\inst7|Mult0|mult_core|romout[1][4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mult0|mult_core|romout[1][4]~7_combout\ = \inst7|pos_actual\(7) $ (((\inst7|pos_actual\(5) & ((!\inst7|pos_actual\(4)) # (!\inst7|pos_actual\(6)))) # (!\inst7|pos_actual\(5) & (\inst7|pos_actual\(6) $ (!\inst7|pos_actual\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010001101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|pos_actual\(5),
	datab => \inst7|pos_actual\(6),
	datac => \inst7|pos_actual\(4),
	datad => \inst7|pos_actual\(7),
	combout => \inst7|Mult0|mult_core|romout[1][4]~7_combout\);

-- Location: LCCOMB_X23_Y14_N30
\inst7|Mult0|mult_core|romout[0][8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mult0|mult_core|romout[0][8]~8_combout\ = (\inst7|pos_actual\(3) & (\inst7|pos_actual\(1) $ (((\inst7|pos_actual\(0)) # (\inst7|pos_actual\(2)))))) # (!\inst7|pos_actual\(3) & (\inst7|pos_actual\(1) & ((!\inst7|pos_actual\(2)) # 
-- (!\inst7|pos_actual\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|pos_actual\(0),
	datab => \inst7|pos_actual\(1),
	datac => \inst7|pos_actual\(2),
	datad => \inst7|pos_actual\(3),
	combout => \inst7|Mult0|mult_core|romout[0][8]~8_combout\);

-- Location: LCCOMB_X25_Y14_N4
\inst7|Mult0|mult_core|romout[1][3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mult0|mult_core|romout[1][3]~9_combout\ = \inst7|pos_actual\(6) $ (((\inst7|pos_actual\(5) & !\inst7|pos_actual\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|pos_actual\(5),
	datac => \inst7|pos_actual\(6),
	datad => \inst7|pos_actual\(4),
	combout => \inst7|Mult0|mult_core|romout[1][3]~9_combout\);

-- Location: LCCOMB_X23_Y14_N20
\inst7|Mult0|mult_core|romout[0][7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mult0|mult_core|romout[0][7]~10_combout\ = \inst7|pos_actual\(0) $ (((\inst7|pos_actual\(2) & (\inst7|pos_actual\(1) & !\inst7|pos_actual\(3))) # (!\inst7|pos_actual\(2) & ((\inst7|pos_actual\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|pos_actual\(0),
	datab => \inst7|pos_actual\(1),
	datac => \inst7|pos_actual\(2),
	datad => \inst7|pos_actual\(3),
	combout => \inst7|Mult0|mult_core|romout[0][7]~10_combout\);

-- Location: LCCOMB_X25_Y14_N6
\inst7|Mult0|mult_core|romout[1][2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mult0|mult_core|romout[1][2]~11_combout\ = \inst7|pos_actual\(5) $ (\inst7|pos_actual\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|pos_actual\(5),
	datad => \inst7|pos_actual\(4),
	combout => \inst7|Mult0|mult_core|romout[1][2]~11_combout\);

-- Location: LCCOMB_X23_Y14_N26
\inst7|Mult0|mult_core|romout[0][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mult0|mult_core|romout[0][6]~combout\ = (\inst7|pos_actual\(1) & ((\inst7|pos_actual\(0) & ((\inst7|pos_actual\(3)) # (!\inst7|pos_actual\(2)))) # (!\inst7|pos_actual\(0) & (!\inst7|pos_actual\(2) & \inst7|pos_actual\(3))))) # 
-- (!\inst7|pos_actual\(1) & ((\inst7|pos_actual\(2) & ((!\inst7|pos_actual\(3)))) # (!\inst7|pos_actual\(2) & (\inst7|pos_actual\(0) & \inst7|pos_actual\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|pos_actual\(0),
	datab => \inst7|pos_actual\(1),
	datac => \inst7|pos_actual\(2),
	datad => \inst7|pos_actual\(3),
	combout => \inst7|Mult0|mult_core|romout[0][6]~combout\);

-- Location: LCCOMB_X21_Y14_N8
\inst7|Mult0|mult_core|romout[0][5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mult0|mult_core|romout[0][5]~combout\ = (\inst7|pos_actual\(1) & ((\inst7|pos_actual\(2) & (!\inst7|pos_actual\(0) & \inst7|pos_actual\(3))) # (!\inst7|pos_actual\(2) & (\inst7|pos_actual\(0) $ (!\inst7|pos_actual\(3)))))) # (!\inst7|pos_actual\(1) 
-- & ((\inst7|pos_actual\(2) & (\inst7|pos_actual\(0) & !\inst7|pos_actual\(3))) # (!\inst7|pos_actual\(2) & (!\inst7|pos_actual\(0) & \inst7|pos_actual\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|pos_actual\(1),
	datab => \inst7|pos_actual\(2),
	datac => \inst7|pos_actual\(0),
	datad => \inst7|pos_actual\(3),
	combout => \inst7|Mult0|mult_core|romout[0][5]~combout\);

-- Location: LCCOMB_X23_Y13_N24
\inst7|Div0|auto_generated|divider|divider|StageOut[70]~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[70]~156_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_12~16_combout\ & \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Div0|auto_generated|divider|divider|op_12~16_combout\,
	datad => \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[70]~156_combout\);

-- Location: LCCOMB_X23_Y13_N0
\inst7|Div0|auto_generated|divider|divider|StageOut[70]~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[70]~157_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_12~14_combout\ & !\inst7|Div0|auto_generated|divider|divider|op_12~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Div0|auto_generated|divider|divider|op_12~14_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|op_12~16_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[70]~157_combout\);

-- Location: LCCOMB_X24_Y13_N20
\inst7|Div0|auto_generated|divider|divider|StageOut[69]~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[69]~158_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_12~16_combout\ & \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|op_12~16_combout\,
	datac => \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[69]~158_combout\);

-- Location: LCCOMB_X24_Y13_N14
\inst7|Div0|auto_generated|divider|divider|StageOut[69]~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[69]~159_combout\ = (!\inst7|Div0|auto_generated|divider|divider|op_12~16_combout\ & \inst7|Div0|auto_generated|divider|divider|op_12~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Div0|auto_generated|divider|divider|op_12~16_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|op_12~12_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[69]~159_combout\);

-- Location: LCCOMB_X24_Y13_N24
\inst7|Div0|auto_generated|divider|divider|StageOut[68]~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[68]~160_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_12~16_combout\ & \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Div0|auto_generated|divider|divider|op_12~16_combout\,
	datad => \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[68]~160_combout\);

-- Location: LCCOMB_X24_Y13_N26
\inst7|Div0|auto_generated|divider|divider|StageOut[68]~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[68]~161_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_12~10_combout\ & !\inst7|Div0|auto_generated|divider|divider|op_12~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|op_12~10_combout\,
	datac => \inst7|Div0|auto_generated|divider|divider|op_12~16_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[68]~161_combout\);

-- Location: LCCOMB_X24_Y13_N16
\inst7|Div0|auto_generated|divider|divider|StageOut[67]~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[67]~162_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_12~16_combout\ & \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|op_12~16_combout\,
	datac => \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[67]~162_combout\);

-- Location: LCCOMB_X24_Y13_N18
\inst7|Div0|auto_generated|divider|divider|StageOut[67]~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[67]~163_combout\ = (!\inst7|Div0|auto_generated|divider|divider|op_12~16_combout\ & \inst7|Div0|auto_generated|divider|divider|op_12~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Div0|auto_generated|divider|divider|op_12~16_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|op_12~8_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[67]~163_combout\);

-- Location: LCCOMB_X23_Y13_N26
\inst7|Div0|auto_generated|divider|divider|StageOut[66]~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[66]~164_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_12~16_combout\ & \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Div0|auto_generated|divider|divider|op_12~16_combout\,
	datad => \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[66]~164_combout\);

-- Location: LCCOMB_X24_Y13_N0
\inst7|Div0|auto_generated|divider|divider|StageOut[66]~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[66]~165_combout\ = (!\inst7|Div0|auto_generated|divider|divider|op_12~16_combout\ & \inst7|Div0|auto_generated|divider|divider|op_12~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Div0|auto_generated|divider|divider|op_12~16_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|op_12~6_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[66]~165_combout\);

-- Location: LCCOMB_X24_Y13_N30
\inst7|Div0|auto_generated|divider|divider|StageOut[65]~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[65]~166_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_12~16_combout\ & \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Div0|auto_generated|divider|divider|op_12~16_combout\,
	datad => \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[65]~166_combout\);

-- Location: LCCOMB_X24_Y13_N12
\inst7|Div0|auto_generated|divider|divider|StageOut[65]~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[65]~167_combout\ = (!\inst7|Div0|auto_generated|divider|divider|op_12~16_combout\ & \inst7|Div0|auto_generated|divider|divider|op_12~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|op_12~16_combout\,
	datac => \inst7|Div0|auto_generated|divider|divider|op_12~4_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[65]~167_combout\);

-- Location: LCCOMB_X24_Y13_N2
\inst7|Div0|auto_generated|divider|divider|StageOut[64]~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[64]~168_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_12~16_combout\ & \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Div0|auto_generated|divider|divider|op_12~16_combout\,
	datad => \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[64]~168_combout\);

-- Location: LCCOMB_X24_Y13_N4
\inst7|Div0|auto_generated|divider|divider|StageOut[64]~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[64]~169_combout\ = (!\inst7|Div0|auto_generated|divider|divider|op_12~16_combout\ & \inst7|Div0|auto_generated|divider|divider|op_12~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|op_12~16_combout\,
	datac => \inst7|Div0|auto_generated|divider|divider|op_12~2_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[64]~169_combout\);

-- Location: LCCOMB_X24_Y13_N6
\inst7|Div0|auto_generated|divider|divider|StageOut[63]~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[63]~170_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_12~16_combout\ & \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Div0|auto_generated|divider|divider|op_12~16_combout\,
	datad => \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[63]~170_combout\);

-- Location: LCCOMB_X24_Y13_N8
\inst7|Div0|auto_generated|divider|divider|StageOut[63]~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[63]~171_combout\ = (!\inst7|Div0|auto_generated|divider|divider|op_12~16_combout\ & \inst7|Div0|auto_generated|divider|divider|op_12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Div0|auto_generated|divider|divider|op_12~16_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|op_12~0_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[63]~171_combout\);

-- Location: LCCOMB_X25_Y12_N8
\inst7|Div0|auto_generated|divider|divider|StageOut[79]~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[79]~172_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_13~14_combout\ & !\inst7|Div0|auto_generated|divider|divider|op_13~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|op_13~14_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|op_13~18_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[79]~172_combout\);

-- Location: LCCOMB_X25_Y12_N6
\inst7|Div0|auto_generated|divider|divider|StageOut[78]~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[78]~173_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_13~12_combout\ & !\inst7|Div0|auto_generated|divider|divider|op_13~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|op_13~12_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|op_13~18_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[78]~173_combout\);

-- Location: LCCOMB_X25_Y12_N0
\inst7|Div0|auto_generated|divider|divider|StageOut[77]~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[77]~174_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_13~10_combout\ & !\inst7|Div0|auto_generated|divider|divider|op_13~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Div0|auto_generated|divider|divider|op_13~10_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|op_13~18_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[77]~174_combout\);

-- Location: LCCOMB_X25_Y12_N2
\inst7|Div0|auto_generated|divider|divider|StageOut[76]~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[76]~175_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_13~8_combout\ & !\inst7|Div0|auto_generated|divider|divider|op_13~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Div0|auto_generated|divider|divider|op_13~8_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|op_13~18_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[76]~175_combout\);

-- Location: LCCOMB_X25_Y12_N4
\inst7|Div0|auto_generated|divider|divider|StageOut[75]~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[75]~176_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_13~6_combout\ & !\inst7|Div0|auto_generated|divider|divider|op_13~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Div0|auto_generated|divider|divider|op_13~6_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|op_13~18_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[75]~176_combout\);

-- Location: LCCOMB_X25_Y12_N10
\inst7|Div0|auto_generated|divider|divider|StageOut[74]~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[74]~177_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_13~4_combout\ & !\inst7|Div0|auto_generated|divider|divider|op_13~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Div0|auto_generated|divider|divider|op_13~4_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|op_13~18_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[74]~177_combout\);

-- Location: LCCOMB_X25_Y12_N12
\inst7|Div0|auto_generated|divider|divider|StageOut[73]~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[73]~178_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_13~2_combout\ & !\inst7|Div0|auto_generated|divider|divider|op_13~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Div0|auto_generated|divider|divider|op_13~2_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|op_13~18_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[73]~178_combout\);

-- Location: LCCOMB_X25_Y13_N30
\inst7|Div0|auto_generated|divider|divider|StageOut[72]~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[72]~179_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_13~18_combout\ & \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Div0|auto_generated|divider|divider|op_13~18_combout\,
	datad => \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[72]~179_combout\);

-- Location: LCCOMB_X25_Y12_N30
\inst7|Div0|auto_generated|divider|divider|StageOut[72]~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[72]~180_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_13~0_combout\ & !\inst7|Div0|auto_generated|divider|divider|op_13~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Div0|auto_generated|divider|divider|op_13~0_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|op_13~18_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[72]~180_combout\);

-- Location: LCCOMB_X25_Y12_N20
\inst7|Div0|auto_generated|divider|divider|StageOut[88]~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[88]~181_combout\ = (!\inst7|Div0|auto_generated|divider|divider|op_14~18_combout\ & \inst7|Div0|auto_generated|divider|divider|op_14~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Div0|auto_generated|divider|divider|op_14~18_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|op_14~14_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[88]~181_combout\);

-- Location: LCCOMB_X24_Y11_N28
\inst7|Div0|auto_generated|divider|divider|StageOut[87]~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[87]~182_combout\ = (!\inst7|Div0|auto_generated|divider|divider|op_14~18_combout\ & \inst7|Div0|auto_generated|divider|divider|op_14~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|op_14~18_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|op_14~12_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[87]~182_combout\);

-- Location: LCCOMB_X24_Y11_N14
\inst7|Div0|auto_generated|divider|divider|StageOut[86]~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[86]~183_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_14~10_combout\ & !\inst7|Div0|auto_generated|divider|divider|op_14~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Div0|auto_generated|divider|divider|op_14~10_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|op_14~18_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[86]~183_combout\);

-- Location: LCCOMB_X23_Y11_N28
\inst7|Div0|auto_generated|divider|divider|StageOut[85]~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[85]~184_combout\ = (!\inst7|Div0|auto_generated|divider|divider|op_14~18_combout\ & \inst7|Div0|auto_generated|divider|divider|op_14~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|op_14~18_combout\,
	datac => \inst7|Div0|auto_generated|divider|divider|op_14~8_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[85]~184_combout\);

-- Location: LCCOMB_X22_Y11_N20
\inst7|Div0|auto_generated|divider|divider|StageOut[84]~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[84]~185_combout\ = (!\inst7|Div0|auto_generated|divider|divider|op_14~18_combout\ & \inst7|Div0|auto_generated|divider|divider|op_14~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Div0|auto_generated|divider|divider|op_14~18_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|op_14~6_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[84]~185_combout\);

-- Location: LCCOMB_X24_Y11_N24
\inst7|Div0|auto_generated|divider|divider|StageOut[83]~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[83]~186_combout\ = (!\inst7|Div0|auto_generated|divider|divider|op_14~18_combout\ & \inst7|Div0|auto_generated|divider|divider|op_14~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|op_14~18_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|op_14~4_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[83]~186_combout\);

-- Location: LCCOMB_X25_Y11_N28
\inst7|Div0|auto_generated|divider|divider|StageOut[82]~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[82]~187_combout\ = (!\inst7|Div0|auto_generated|divider|divider|op_14~18_combout\ & \inst7|Div0|auto_generated|divider|divider|op_14~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Div0|auto_generated|divider|divider|op_14~18_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|op_14~2_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[82]~187_combout\);

-- Location: LCCOMB_X25_Y11_N30
\inst7|Div0|auto_generated|divider|divider|StageOut[81]~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[81]~188_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_14~18_combout\ & \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Div0|auto_generated|divider|divider|op_14~18_combout\,
	datac => \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[81]~188_combout\);

-- Location: LCCOMB_X24_Y11_N22
\inst7|Div0|auto_generated|divider|divider|StageOut[81]~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[81]~189_combout\ = (!\inst7|Div0|auto_generated|divider|divider|op_14~18_combout\ & \inst7|Div0|auto_generated|divider|divider|op_14~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|op_14~18_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|op_14~0_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[81]~189_combout\);

-- Location: LCCOMB_X24_Y11_N4
\inst7|Div0|auto_generated|divider|divider|StageOut[97]~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[97]~190_combout\ = (!\inst7|Div0|auto_generated|divider|divider|op_1~18_combout\ & \inst7|Div0|auto_generated|divider|divider|op_1~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Div0|auto_generated|divider|divider|op_1~18_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|op_1~14_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[97]~190_combout\);

-- Location: LCCOMB_X24_Y11_N18
\inst7|Div0|auto_generated|divider|divider|StageOut[96]~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[96]~191_combout\ = (!\inst7|Div0|auto_generated|divider|divider|op_1~18_combout\ & \inst7|Div0|auto_generated|divider|divider|op_1~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|op_1~18_combout\,
	datac => \inst7|Div0|auto_generated|divider|divider|op_1~12_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[96]~191_combout\);

-- Location: LCCOMB_X22_Y11_N30
\inst7|Div0|auto_generated|divider|divider|StageOut[95]~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[95]~192_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_1~10_combout\ & !\inst7|Div0|auto_generated|divider|divider|op_1~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|op_1~10_combout\,
	datac => \inst7|Div0|auto_generated|divider|divider|op_1~18_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[95]~192_combout\);

-- Location: LCCOMB_X22_Y11_N0
\inst7|Div0|auto_generated|divider|divider|StageOut[94]~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[94]~193_combout\ = (!\inst7|Div0|auto_generated|divider|divider|op_1~18_combout\ & \inst7|Div0|auto_generated|divider|divider|op_1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Div0|auto_generated|divider|divider|op_1~18_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|op_1~8_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[94]~193_combout\);

-- Location: LCCOMB_X23_Y11_N30
\inst7|Div0|auto_generated|divider|divider|StageOut[93]~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[93]~194_combout\ = (!\inst7|Div0|auto_generated|divider|divider|op_1~18_combout\ & \inst7|Div0|auto_generated|divider|divider|op_1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Div0|auto_generated|divider|divider|op_1~18_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|op_1~6_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[93]~194_combout\);

-- Location: LCCOMB_X23_Y11_N0
\inst7|Div0|auto_generated|divider|divider|StageOut[92]~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[92]~195_combout\ = (!\inst7|Div0|auto_generated|divider|divider|op_1~18_combout\ & \inst7|Div0|auto_generated|divider|divider|op_1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Div0|auto_generated|divider|divider|op_1~18_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|op_1~4_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[92]~195_combout\);

-- Location: LCCOMB_X22_Y11_N18
\inst7|Div0|auto_generated|divider|divider|StageOut[91]~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[91]~196_combout\ = (!\inst7|Div0|auto_generated|divider|divider|op_1~18_combout\ & \inst7|Div0|auto_generated|divider|divider|op_1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Div0|auto_generated|divider|divider|op_1~18_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|op_1~2_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[91]~196_combout\);

-- Location: LCCOMB_X24_Y11_N8
\inst7|Div0|auto_generated|divider|divider|StageOut[90]~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[90]~197_combout\ = (\inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ & \inst7|Div0|auto_generated|divider|divider|op_1~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	datac => \inst7|Div0|auto_generated|divider|divider|op_1~18_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[90]~197_combout\);

-- Location: LCCOMB_X24_Y11_N30
\inst7|Div0|auto_generated|divider|divider|StageOut[90]~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[90]~198_combout\ = (!\inst7|Div0|auto_generated|divider|divider|op_1~18_combout\ & \inst7|Div0|auto_generated|divider|divider|op_1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Div0|auto_generated|divider|divider|op_1~18_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|op_1~0_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[90]~198_combout\);

-- Location: LCCOMB_X23_Y14_N28
\inst7|Mult0|mult_core|romout[0][4]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mult0|mult_core|romout[0][4]~12_combout\ = \inst7|pos_actual\(3) $ (((\inst7|pos_actual\(0) & (\inst7|pos_actual\(1) $ (!\inst7|pos_actual\(2)))) # (!\inst7|pos_actual\(0) & (!\inst7|pos_actual\(1) & \inst7|pos_actual\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110110010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|pos_actual\(0),
	datab => \inst7|pos_actual\(1),
	datac => \inst7|pos_actual\(2),
	datad => \inst7|pos_actual\(3),
	combout => \inst7|Mult0|mult_core|romout[0][4]~12_combout\);

-- Location: LCCOMB_X21_Y11_N28
\inst7|Div0|auto_generated|divider|divider|StageOut[106]~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[106]~199_combout\ = (!\inst7|Div0|auto_generated|divider|divider|op_2~18_combout\ & \inst7|Div0|auto_generated|divider|divider|op_2~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Div0|auto_generated|divider|divider|op_2~18_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|op_2~14_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[106]~199_combout\);

-- Location: LCCOMB_X22_Y11_N12
\inst7|Div0|auto_generated|divider|divider|StageOut[105]~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[105]~200_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_2~12_combout\ & !\inst7|Div0|auto_generated|divider|divider|op_2~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Div0|auto_generated|divider|divider|op_2~12_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|op_2~18_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[105]~200_combout\);

-- Location: LCCOMB_X22_Y11_N14
\inst7|Div0|auto_generated|divider|divider|StageOut[104]~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[104]~201_combout\ = (!\inst7|Div0|auto_generated|divider|divider|op_2~18_combout\ & \inst7|Div0|auto_generated|divider|divider|op_2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Div0|auto_generated|divider|divider|op_2~18_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|op_2~10_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[104]~201_combout\);

-- Location: LCCOMB_X21_Y11_N2
\inst7|Div0|auto_generated|divider|divider|StageOut[103]~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[103]~202_combout\ = (!\inst7|Div0|auto_generated|divider|divider|op_2~18_combout\ & \inst7|Div0|auto_generated|divider|divider|op_2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Div0|auto_generated|divider|divider|op_2~18_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|op_2~8_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[103]~202_combout\);

-- Location: LCCOMB_X23_Y11_N6
\inst7|Div0|auto_generated|divider|divider|StageOut[102]~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[102]~203_combout\ = (!\inst7|Div0|auto_generated|divider|divider|op_2~18_combout\ & \inst7|Div0|auto_generated|divider|divider|op_2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|op_2~18_combout\,
	datac => \inst7|Div0|auto_generated|divider|divider|op_2~6_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[102]~203_combout\);

-- Location: LCCOMB_X21_Y11_N0
\inst7|Div0|auto_generated|divider|divider|StageOut[101]~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[101]~204_combout\ = (!\inst7|Div0|auto_generated|divider|divider|op_2~18_combout\ & \inst7|Div0|auto_generated|divider|divider|op_2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Div0|auto_generated|divider|divider|op_2~18_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|op_2~4_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[101]~204_combout\);

-- Location: LCCOMB_X21_Y11_N30
\inst7|Div0|auto_generated|divider|divider|StageOut[100]~205\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[100]~205_combout\ = (!\inst7|Div0|auto_generated|divider|divider|op_2~18_combout\ & \inst7|Div0|auto_generated|divider|divider|op_2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Div0|auto_generated|divider|divider|op_2~18_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|op_2~2_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[100]~205_combout\);

-- Location: LCCOMB_X22_Y11_N4
\inst7|Div0|auto_generated|divider|divider|StageOut[99]~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[99]~206_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_2~18_combout\ & \inst7|Mult0|mult_core|romout[0][4]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Div0|auto_generated|divider|divider|op_2~18_combout\,
	datad => \inst7|Mult0|mult_core|romout[0][4]~12_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[99]~206_combout\);

-- Location: LCCOMB_X22_Y11_N10
\inst7|Div0|auto_generated|divider|divider|StageOut[99]~207\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[99]~207_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_2~0_combout\ & !\inst7|Div0|auto_generated|divider|divider|op_2~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Div0|auto_generated|divider|divider|op_2~0_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|op_2~18_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[99]~207_combout\);

-- Location: LCCOMB_X22_Y13_N4
\inst7|Mult0|mult_core|romout[0][3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mult0|mult_core|romout[0][3]~13_combout\ = \inst7|pos_actual\(2) $ (((\inst7|pos_actual\(1) & !\inst7|pos_actual\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|pos_actual\(1),
	datac => \inst7|pos_actual\(0),
	datad => \inst7|pos_actual\(2),
	combout => \inst7|Mult0|mult_core|romout[0][3]~13_combout\);

-- Location: LCCOMB_X21_Y11_N24
\inst7|Div0|auto_generated|divider|divider|StageOut[115]~208\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[115]~208_combout\ = (!\inst7|Div0|auto_generated|divider|divider|op_3~18_combout\ & \inst7|Div0|auto_generated|divider|divider|op_3~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Div0|auto_generated|divider|divider|op_3~18_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|op_3~14_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[115]~208_combout\);

-- Location: LCCOMB_X17_Y11_N20
\inst7|Div0|auto_generated|divider|divider|StageOut[114]~209\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[114]~209_combout\ = (!\inst7|Div0|auto_generated|divider|divider|op_3~18_combout\ & \inst7|Div0|auto_generated|divider|divider|op_3~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Div0|auto_generated|divider|divider|op_3~18_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|op_3~12_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[114]~209_combout\);

-- Location: LCCOMB_X16_Y11_N16
\inst7|Div0|auto_generated|divider|divider|StageOut[113]~210\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[113]~210_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_3~10_combout\ & !\inst7|Div0|auto_generated|divider|divider|op_3~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Div0|auto_generated|divider|divider|op_3~10_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|op_3~18_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[113]~210_combout\);

-- Location: LCCOMB_X18_Y11_N28
\inst7|Div0|auto_generated|divider|divider|StageOut[112]~211\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[112]~211_combout\ = (!\inst7|Div0|auto_generated|divider|divider|op_3~18_combout\ & \inst7|Div0|auto_generated|divider|divider|op_3~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Div0|auto_generated|divider|divider|op_3~18_combout\,
	datac => \inst7|Div0|auto_generated|divider|divider|op_3~8_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[112]~211_combout\);

-- Location: LCCOMB_X18_Y11_N14
\inst7|Div0|auto_generated|divider|divider|StageOut[111]~212\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[111]~212_combout\ = (!\inst7|Div0|auto_generated|divider|divider|op_3~18_combout\ & \inst7|Div0|auto_generated|divider|divider|op_3~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Div0|auto_generated|divider|divider|op_3~18_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|op_3~6_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[111]~212_combout\);

-- Location: LCCOMB_X17_Y11_N30
\inst7|Div0|auto_generated|divider|divider|StageOut[110]~213\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[110]~213_combout\ = (!\inst7|Div0|auto_generated|divider|divider|op_3~18_combout\ & \inst7|Div0|auto_generated|divider|divider|op_3~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|op_3~18_combout\,
	datac => \inst7|Div0|auto_generated|divider|divider|op_3~4_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[110]~213_combout\);

-- Location: LCCOMB_X18_Y11_N4
\inst7|Div0|auto_generated|divider|divider|StageOut[109]~214\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[109]~214_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_3~2_combout\ & !\inst7|Div0|auto_generated|divider|divider|op_3~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Div0|auto_generated|divider|divider|op_3~2_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|op_3~18_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[109]~214_combout\);

-- Location: LCCOMB_X18_Y11_N22
\inst7|Div0|auto_generated|divider|divider|StageOut[108]~215\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[108]~215_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_3~0_combout\ & !\inst7|Div0|auto_generated|divider|divider|op_3~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|op_3~0_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|op_3~18_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[108]~215_combout\);

-- Location: LCCOMB_X17_Y11_N24
\inst7|Mult0|mult_core|romout[0][2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mult0|mult_core|romout[0][2]~14_combout\ = \inst7|pos_actual\(1) $ (\inst7|pos_actual\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|pos_actual\(1),
	datad => \inst7|pos_actual\(0),
	combout => \inst7|Mult0|mult_core|romout[0][2]~14_combout\);

-- Location: LCCOMB_X18_Y11_N8
\inst7|Div0|auto_generated|divider|divider|StageOut[124]~216\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[124]~216_combout\ = (!\inst7|Div0|auto_generated|divider|divider|op_4~18_combout\ & \inst7|Div0|auto_generated|divider|divider|op_4~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Div0|auto_generated|divider|divider|op_4~18_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|op_4~14_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[124]~216_combout\);

-- Location: LCCOMB_X18_Y12_N28
\inst7|Div0|auto_generated|divider|divider|StageOut[123]~217\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[123]~217_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_4~12_combout\ & !\inst7|Div0|auto_generated|divider|divider|op_4~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|op_4~12_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|op_4~18_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[123]~217_combout\);

-- Location: LCCOMB_X18_Y11_N26
\inst7|Div0|auto_generated|divider|divider|StageOut[122]~218\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[122]~218_combout\ = (!\inst7|Div0|auto_generated|divider|divider|op_4~18_combout\ & \inst7|Div0|auto_generated|divider|divider|op_4~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Div0|auto_generated|divider|divider|op_4~18_combout\,
	datac => \inst7|Div0|auto_generated|divider|divider|op_4~10_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[122]~218_combout\);

-- Location: LCCOMB_X17_Y12_N12
\inst7|Div0|auto_generated|divider|divider|StageOut[121]~219\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[121]~219_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_4~8_combout\ & !\inst7|Div0|auto_generated|divider|divider|op_4~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|op_4~8_combout\,
	datac => \inst7|Div0|auto_generated|divider|divider|op_4~18_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[121]~219_combout\);

-- Location: LCCOMB_X18_Y12_N30
\inst7|Div0|auto_generated|divider|divider|StageOut[120]~220\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[120]~220_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_4~6_combout\ & !\inst7|Div0|auto_generated|divider|divider|op_4~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Div0|auto_generated|divider|divider|op_4~6_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|op_4~18_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[120]~220_combout\);

-- Location: LCCOMB_X18_Y11_N12
\inst7|Div0|auto_generated|divider|divider|StageOut[119]~221\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[119]~221_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_4~4_combout\ & !\inst7|Div0|auto_generated|divider|divider|op_4~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Div0|auto_generated|divider|divider|op_4~4_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|op_4~18_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[119]~221_combout\);

-- Location: LCCOMB_X17_Y12_N6
\inst7|Div0|auto_generated|divider|divider|StageOut[118]~222\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[118]~222_combout\ = (!\inst7|Div0|auto_generated|divider|divider|op_4~18_combout\ & \inst7|Div0|auto_generated|divider|divider|op_4~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Div0|auto_generated|divider|divider|op_4~18_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|op_4~2_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[118]~222_combout\);

-- Location: LCCOMB_X18_Y11_N2
\inst7|Div0|auto_generated|divider|divider|StageOut[117]~223\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[117]~223_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_4~0_combout\ & !\inst7|Div0|auto_generated|divider|divider|op_4~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Div0|auto_generated|divider|divider|op_4~0_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|op_4~18_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[117]~223_combout\);

-- Location: LCCOMB_X18_Y12_N24
\inst7|Div0|auto_generated|divider|divider|StageOut[133]~224\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[133]~224_combout\ = (!\inst7|Div0|auto_generated|divider|divider|op_5~18_combout\ & \inst7|Div0|auto_generated|divider|divider|op_5~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Div0|auto_generated|divider|divider|op_5~18_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|op_5~14_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[133]~224_combout\);

-- Location: LCCOMB_X22_Y12_N2
\inst7|ancho[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|ancho[7]~0_combout\ = (!\inst7|Equal0~2_combout\ & (!\inst7|Equal0~1_combout\ & (\RESET~input_o\ & !\inst7|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal0~2_combout\,
	datab => \inst7|Equal0~1_combout\,
	datac => \RESET~input_o\,
	datad => \inst7|Equal0~0_combout\,
	combout => \inst7|ancho[7]~0_combout\);

-- Location: FF_X22_Y16_N5
\inst|numero[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|numero~0_combout\,
	sload => VCC,
	ena => \inst|numero[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|numero\(7));

-- Location: FF_X22_Y16_N31
\inst|numero[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|numero~3_combout\,
	sload => VCC,
	ena => \inst|numero[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|numero\(6));

-- Location: FF_X22_Y16_N1
\inst|numero[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|numero~4_combout\,
	sload => VCC,
	ena => \inst|numero[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|numero\(5));

-- Location: FF_X22_Y16_N3
\inst|numero[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|numero~5_combout\,
	sload => VCC,
	ena => \inst|numero[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|numero\(4));

-- Location: FF_X22_Y16_N15
\inst|numero[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|numero~6_combout\,
	sload => VCC,
	ena => \inst|numero[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|numero\(2));

-- Location: FF_X22_Y16_N9
\inst|numero[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|numero~7_combout\,
	sload => VCC,
	ena => \inst|numero[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|numero\(3));

-- Location: FF_X22_Y16_N7
\inst|numero[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|numero~8_combout\,
	sload => VCC,
	ena => \inst|numero[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|numero\(0));

-- Location: FF_X22_Y16_N17
\inst|numero[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|numero~9_combout\,
	sload => VCC,
	ena => \inst|numero[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|numero\(1));

-- Location: LCCOMB_X22_Y16_N8
\inst3|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~0_combout\ = ((\inst|numero\(2) & ((\inst|numero\(0)) # (!\inst|numero\(1))))) # (!\inst|numero\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|numero\(0),
	datab => \inst|numero\(2),
	datac => \inst|numero\(3),
	datad => \inst|numero\(1),
	combout => \inst3|LessThan0~0_combout\);

-- Location: LCCOMB_X22_Y16_N6
\inst3|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~1_combout\ = (\inst|numero\(7) & ((\inst|numero\(5)) # (!\inst|numero\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|numero\(6),
	datab => \inst|numero\(7),
	datad => \inst|numero\(5),
	combout => \inst3|LessThan0~1_combout\);

-- Location: LCCOMB_X22_Y16_N2
\inst3|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~2_combout\ = (\inst3|LessThan0~1_combout\ & (((!\inst|numero\(4) & \inst3|LessThan0~0_combout\)) # (!\inst|numero\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|numero\(6),
	datab => \inst3|LessThan0~1_combout\,
	datac => \inst|numero\(4),
	datad => \inst3|LessThan0~0_combout\,
	combout => \inst3|LessThan0~2_combout\);

-- Location: LCCOMB_X22_Y16_N30
\inst3|grados[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|grados[1]~4_combout\ = (!\inst|numero\(1) & !\inst3|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|numero\(1),
	datad => \inst3|LessThan0~2_combout\,
	combout => \inst3|grados[1]~4_combout\);

-- Location: LCCOMB_X22_Y16_N4
\inst3|grados[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|grados[0]~5_combout\ = (\inst|numero\(0) & !\inst3|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|numero\(0),
	datad => \inst3|LessThan0~2_combout\,
	combout => \inst3|grados[0]~5_combout\);

-- Location: LCCOMB_X23_Y16_N28
\inst3|grados[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|grados[6]~6_combout\ = (!\inst|numero\(7) & !\inst|numero\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|numero\(7),
	datad => \inst|numero\(6),
	combout => \inst3|grados[6]~6_combout\);

-- Location: LCCOMB_X23_Y16_N30
\inst3|grados[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|grados[5]~7_combout\ = (\inst3|LessThan0~2_combout\) # (\inst|numero\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LessThan0~2_combout\,
	datad => \inst|numero\(5),
	combout => \inst3|grados[5]~7_combout\);

-- Location: LCCOMB_X23_Y16_N4
\inst3|grados[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|grados[3]~8_combout\ = (!\inst|numero\(3) & !\inst3|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|numero\(3),
	datad => \inst3|LessThan0~2_combout\,
	combout => \inst3|grados[3]~8_combout\);

-- Location: LCCOMB_X23_Y16_N6
\inst3|grados[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|grados[2]~9_combout\ = (\inst|numero\(2)) # (\inst3|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|numero\(2),
	datad => \inst3|LessThan0~2_combout\,
	combout => \inst3|grados[2]~9_combout\);

-- Location: LCCOMB_X26_Y16_N24
\inst3|Div0|auto_generated|divider|divider|StageOut[70]~234\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[70]~234_combout\ = (\inst3|Add2~34_combout\ & \inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Add2~34_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[70]~234_combout\);

-- Location: LCCOMB_X26_Y16_N30
\inst3|Div0|auto_generated|divider|divider|StageOut[70]~235\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[70]~235_combout\ = (!\inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[70]~235_combout\);

-- Location: LCCOMB_X26_Y16_N28
\inst3|Div0|auto_generated|divider|divider|StageOut[69]~236\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[69]~236_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ & !\inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[69]~236_combout\);

-- Location: LCCOMB_X25_Y16_N12
\inst3|Div0|auto_generated|divider|divider|StageOut[68]~237\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[68]~237_combout\ = (\inst3|Add2~32_combout\ & \inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add2~32_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[68]~237_combout\);

-- Location: LCCOMB_X25_Y16_N18
\inst3|Div0|auto_generated|divider|divider|StageOut[68]~238\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[68]~238_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ & !\inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[68]~238_combout\);

-- Location: LCCOMB_X25_Y16_N4
\inst3|Div0|auto_generated|divider|divider|StageOut[67]~239\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[67]~239_combout\ = (\inst3|Add2~30_combout\ & \inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add2~30_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[67]~239_combout\);

-- Location: LCCOMB_X25_Y16_N10
\inst3|Div0|auto_generated|divider|divider|StageOut[67]~240\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[67]~240_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ & !\inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[67]~240_combout\);

-- Location: LCCOMB_X25_Y16_N0
\inst3|Div0|auto_generated|divider|divider|StageOut[66]~241\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[66]~241_combout\ = (\inst3|Add2~28_combout\ & \inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add2~28_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[66]~241_combout\);

-- Location: LCCOMB_X25_Y16_N22
\inst3|Div0|auto_generated|divider|divider|StageOut[66]~242\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[66]~242_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ & !\inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[66]~242_combout\);

-- Location: LCCOMB_X25_Y16_N28
\inst3|Div0|auto_generated|divider|divider|StageOut[65]~243\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[65]~243_combout\ = (\inst3|Add2~26_combout\ & \inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add2~26_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[65]~243_combout\);

-- Location: LCCOMB_X25_Y16_N14
\inst3|Div0|auto_generated|divider|divider|StageOut[65]~244\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[65]~244_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ & !\inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[65]~244_combout\);

-- Location: LCCOMB_X25_Y16_N16
\inst3|Div0|auto_generated|divider|divider|StageOut[64]~245\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[64]~245_combout\ = (\inst3|Add2~24_combout\ & \inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Add2~24_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[64]~245_combout\);

-- Location: LCCOMB_X25_Y16_N6
\inst3|Div0|auto_generated|divider|divider|StageOut[64]~246\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[64]~246_combout\ = (\inst3|Add2~24_combout\ & !\inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Add2~24_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[64]~246_combout\);

-- Location: LCCOMB_X26_Y16_N26
\inst3|Div0|auto_generated|divider|divider|StageOut[79]~247\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[79]~247_combout\ = (!\inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[79]~247_combout\);

-- Location: LCCOMB_X26_Y16_N20
\inst3|Div0|auto_generated|divider|divider|StageOut[78]~248\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[78]~248_combout\ = (!\inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[78]~248_combout\);

-- Location: LCCOMB_X26_Y16_N22
\inst3|Div0|auto_generated|divider|divider|StageOut[77]~249\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[77]~249_combout\ = (!\inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[77]~249_combout\);

-- Location: LCCOMB_X26_Y16_N16
\inst3|Div0|auto_generated|divider|divider|StageOut[76]~250\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[76]~250_combout\ = (!\inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[76]~250_combout\);

-- Location: LCCOMB_X26_Y16_N18
\inst3|Div0|auto_generated|divider|divider|StageOut[75]~251\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[75]~251_combout\ = (!\inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[75]~251_combout\);

-- Location: LCCOMB_X25_Y16_N24
\inst3|Div0|auto_generated|divider|divider|StageOut[74]~252\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[74]~252_combout\ = (\inst3|Add2~24_combout\ & \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Add2~24_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[74]~252_combout\);

-- Location: LCCOMB_X24_Y15_N16
\inst3|Div0|auto_generated|divider|divider|StageOut[74]~253\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[74]~253_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\ & !\inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[74]~253_combout\);

-- Location: LCCOMB_X25_Y17_N6
\inst3|Div0|auto_generated|divider|divider|StageOut[73]~254\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[73]~254_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & \inst3|Add2~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datad => \inst3|Add2~22_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[73]~254_combout\);

-- Location: LCCOMB_X25_Y15_N0
\inst3|Div0|auto_generated|divider|divider|StageOut[73]~255\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[73]~255_combout\ = (\inst3|Add2~22_combout\ & !\inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Add2~22_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[73]~255_combout\);

-- Location: LCCOMB_X26_Y15_N28
\inst3|Div0|auto_generated|divider|divider|StageOut[88]~256\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[88]~256_combout\ = (!\inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\ & \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~10_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[88]~256_combout\);

-- Location: LCCOMB_X25_Y15_N10
\inst3|Div0|auto_generated|divider|divider|StageOut[87]~257\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[87]~257_combout\ = (!\inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\ & \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~8_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[87]~257_combout\);

-- Location: LCCOMB_X25_Y15_N4
\inst3|Div0|auto_generated|divider|divider|StageOut[86]~258\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[86]~258_combout\ = (!\inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\ & \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~6_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[86]~258_combout\);

-- Location: LCCOMB_X25_Y15_N30
\inst3|Div0|auto_generated|divider|divider|StageOut[85]~259\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[85]~259_combout\ = (!\inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\ & \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~4_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[85]~259_combout\);

-- Location: LCCOMB_X25_Y17_N20
\inst3|Div0|auto_generated|divider|divider|StageOut[84]~260\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[84]~260_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\ & ((\inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & 
-- (\inst3|Add2~24_combout\)) # (!\inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & ((\inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add2~24_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[84]~260_combout\);

-- Location: LCCOMB_X25_Y15_N8
\inst3|Div0|auto_generated|divider|divider|StageOut[84]~261\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[84]~261_combout\ = (!\inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\ & \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~2_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[84]~261_combout\);

-- Location: LCCOMB_X24_Y15_N14
\inst3|Div0|auto_generated|divider|divider|StageOut[83]~262\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[83]~262_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~0_combout\ & !\inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~0_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[83]~262_combout\);

-- Location: LCCOMB_X24_Y15_N24
\inst3|Div0|auto_generated|divider|divider|StageOut[82]~263\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[82]~263_combout\ = (\inst3|Add2~20_combout\ & \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Add2~20_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[82]~263_combout\);

-- Location: LCCOMB_X24_Y15_N6
\inst3|Div0|auto_generated|divider|divider|StageOut[82]~264\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[82]~264_combout\ = (\inst3|Add2~20_combout\ & !\inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Add2~20_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[82]~264_combout\);

-- Location: LCCOMB_X26_Y15_N6
\inst3|Div0|auto_generated|divider|divider|StageOut[97]~265\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[97]~265_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~10_combout\ & !\inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~10_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[97]~265_combout\);

-- Location: LCCOMB_X26_Y15_N8
\inst3|Div0|auto_generated|divider|divider|StageOut[96]~266\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[96]~266_combout\ = (!\inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\ & \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~8_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[96]~266_combout\);

-- Location: LCCOMB_X26_Y15_N10
\inst3|Div0|auto_generated|divider|divider|StageOut[95]~267\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[95]~267_combout\ = (!\inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\ & \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~6_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[95]~267_combout\);

-- Location: LCCOMB_X26_Y15_N0
\inst3|Div0|auto_generated|divider|divider|StageOut[94]~268\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[94]~268_combout\ = (!\inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\ & \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~4_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[94]~268_combout\);

-- Location: LCCOMB_X26_Y15_N2
\inst3|Div0|auto_generated|divider|divider|StageOut[93]~269\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[93]~269_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~2_combout\ & !\inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~2_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[93]~269_combout\);

-- Location: LCCOMB_X26_Y17_N0
\inst3|Div0|auto_generated|divider|divider|StageOut[92]~270\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[92]~270_combout\ = (!\inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\ & \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~0_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[92]~270_combout\);

-- Location: LCCOMB_X25_Y17_N2
\inst3|Div0|auto_generated|divider|divider|StageOut[91]~271\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[91]~271_combout\ = (\inst3|Add2~18_combout\ & \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Add2~18_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[91]~271_combout\);

-- Location: LCCOMB_X25_Y17_N24
\inst3|Div0|auto_generated|divider|divider|StageOut[81]~272\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[81]~272_combout\ = (\inst3|Add2~18_combout\ & \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Add2~18_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[81]~272_combout\);

-- Location: LCCOMB_X25_Y17_N22
\inst3|Div0|auto_generated|divider|divider|StageOut[81]~273\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[81]~273_combout\ = (\inst3|Add2~18_combout\ & !\inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Add2~18_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[81]~273_combout\);

-- Location: LCCOMB_X25_Y17_N28
\inst3|Div0|auto_generated|divider|divider|StageOut[91]~274\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[91]~274_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~16_combout\ & !\inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~16_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[91]~274_combout\);

-- Location: LCCOMB_X25_Y18_N28
\inst3|Div0|auto_generated|divider|divider|StageOut[106]~275\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[106]~275_combout\ = (!\inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\ & \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~10_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[106]~275_combout\);

-- Location: LCCOMB_X25_Y18_N18
\inst3|Div0|auto_generated|divider|divider|StageOut[105]~276\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[105]~276_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~8_combout\ & !\inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~8_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[105]~276_combout\);

-- Location: LCCOMB_X26_Y18_N16
\inst3|Div0|auto_generated|divider|divider|StageOut[104]~277\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[104]~277_combout\ = (!\inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\ & \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~6_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[104]~277_combout\);

-- Location: LCCOMB_X26_Y18_N18
\inst3|Div0|auto_generated|divider|divider|StageOut[103]~278\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[103]~278_combout\ = (!\inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\ & \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~4_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[103]~278_combout\);

-- Location: LCCOMB_X26_Y18_N20
\inst3|Div0|auto_generated|divider|divider|StageOut[102]~279\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[102]~279_combout\ = (!\inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\ & \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~2_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[102]~279_combout\);

-- Location: LCCOMB_X26_Y18_N26
\inst3|Div0|auto_generated|divider|divider|StageOut[101]~280\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[101]~280_combout\ = (!\inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\ & \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~0_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[101]~280_combout\);

-- Location: LCCOMB_X25_Y19_N12
\inst3|Div0|auto_generated|divider|divider|StageOut[100]~281\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[100]~281_combout\ = (\inst3|Add2~16_combout\ & \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add2~16_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[100]~281_combout\);

-- Location: LCCOMB_X25_Y17_N18
\inst3|Div0|auto_generated|divider|divider|StageOut[100]~282\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[100]~282_combout\ = (\inst3|Add2~16_combout\ & !\inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Add2~16_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[100]~282_combout\);

-- Location: LCCOMB_X24_Y18_N8
\inst3|Div0|auto_generated|divider|divider|StageOut[115]~283\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[115]~283_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~10_combout\ & !\inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~10_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[115]~283_combout\);

-- Location: LCCOMB_X25_Y18_N0
\inst3|Div0|auto_generated|divider|divider|StageOut[114]~284\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[114]~284_combout\ = (!\inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\ & \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~8_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[114]~284_combout\);

-- Location: LCCOMB_X25_Y18_N26
\inst3|Div0|auto_generated|divider|divider|StageOut[113]~285\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[113]~285_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~6_combout\ & !\inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~6_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[113]~285_combout\);

-- Location: LCCOMB_X19_Y18_N8
\inst3|Div0|auto_generated|divider|divider|StageOut[112]~286\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[112]~286_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~4_combout\ & !\inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~4_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[112]~286_combout\);

-- Location: LCCOMB_X25_Y18_N20
\inst3|Div0|auto_generated|divider|divider|StageOut[111]~287\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[111]~287_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~2_combout\ & !\inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~2_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[111]~287_combout\);

-- Location: LCCOMB_X25_Y18_N30
\inst3|Div0|auto_generated|divider|divider|StageOut[110]~288\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[110]~288_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~0_combout\ & !\inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~0_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[110]~288_combout\);

-- Location: LCCOMB_X24_Y17_N12
\inst3|Div0|auto_generated|divider|divider|StageOut[109]~289\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[109]~289_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\ & \inst3|Add2~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\,
	datad => \inst3|Add2~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[109]~289_combout\);

-- Location: LCCOMB_X24_Y17_N2
\inst3|Div0|auto_generated|divider|divider|StageOut[109]~290\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[109]~290_combout\ = (!\inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\ & \inst3|Add2~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\,
	datad => \inst3|Add2~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[109]~290_combout\);

-- Location: LCCOMB_X23_Y18_N8
\inst3|Div0|auto_generated|divider|divider|StageOut[124]~291\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[124]~291_combout\ = (!\inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~14_combout\ & \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~14_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~10_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[124]~291_combout\);

-- Location: LCCOMB_X24_Y18_N30
\inst3|Div0|auto_generated|divider|divider|StageOut[123]~292\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[123]~292_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~8_combout\ & !\inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~8_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[123]~292_combout\);

-- Location: LCCOMB_X24_Y18_N12
\inst3|Div0|auto_generated|divider|divider|StageOut[122]~293\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[122]~293_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~6_combout\ & !\inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~6_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[122]~293_combout\);

-- Location: LCCOMB_X24_Y18_N2
\inst3|Div0|auto_generated|divider|divider|StageOut[121]~294\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[121]~294_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~4_combout\ & !\inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~4_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[121]~294_combout\);

-- Location: LCCOMB_X19_Y18_N18
\inst3|Div0|auto_generated|divider|divider|StageOut[120]~295\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[120]~295_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~2_combout\ & !\inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~2_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[120]~295_combout\);

-- Location: LCCOMB_X19_Y18_N24
\inst3|Div0|auto_generated|divider|divider|StageOut[119]~296\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[119]~296_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~0_combout\ & !\inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~0_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[119]~296_combout\);

-- Location: LCCOMB_X19_Y18_N26
\inst3|Div0|auto_generated|divider|divider|StageOut[118]~297\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[118]~297_combout\ = (\inst3|Add2~12_combout\ & \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Add2~12_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[118]~297_combout\);

-- Location: LCCOMB_X24_Y18_N0
\inst3|Div0|auto_generated|divider|divider|StageOut[118]~298\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[118]~298_combout\ = (\inst3|Add2~12_combout\ & !\inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Add2~12_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[118]~298_combout\);

-- Location: LCCOMB_X22_Y18_N28
\inst3|Div0|auto_generated|divider|divider|StageOut[133]~299\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[133]~299_combout\ = (!\inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[9]~14_combout\ & \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[9]~14_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[7]~10_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[133]~299_combout\);

-- Location: LCCOMB_X23_Y18_N6
\inst3|Div0|auto_generated|divider|divider|StageOut[132]~300\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[132]~300_combout\ = (!\inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[9]~14_combout\ & \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[9]~14_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~8_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[132]~300_combout\);

-- Location: LCCOMB_X23_Y18_N4
\inst3|Div0|auto_generated|divider|divider|StageOut[131]~301\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[131]~301_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~6_combout\ & !\inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~6_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[131]~301_combout\);

-- Location: LCCOMB_X23_Y18_N10
\inst3|Div0|auto_generated|divider|divider|StageOut[130]~302\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[130]~302_combout\ = (!\inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[9]~14_combout\ & \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[9]~14_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~4_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[130]~302_combout\);

-- Location: LCCOMB_X23_Y18_N12
\inst3|Div0|auto_generated|divider|divider|StageOut[129]~303\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[129]~303_combout\ = (!\inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[9]~14_combout\ & \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[9]~14_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~2_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[129]~303_combout\);

-- Location: LCCOMB_X23_Y18_N2
\inst3|Div0|auto_generated|divider|divider|StageOut[128]~304\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[128]~304_combout\ = (!\inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[9]~14_combout\ & \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[9]~14_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~0_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[128]~304_combout\);

-- Location: LCCOMB_X23_Y18_N0
\inst3|Div0|auto_generated|divider|divider|StageOut[127]~305\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[127]~305_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[9]~14_combout\ & \inst3|Add2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[9]~14_combout\,
	datad => \inst3|Add2~10_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[127]~305_combout\);

-- Location: LCCOMB_X19_Y18_N28
\inst3|Div0|auto_generated|divider|divider|StageOut[127]~306\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[127]~306_combout\ = (\inst3|Add2~10_combout\ & !\inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Add2~10_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[127]~306_combout\);

-- Location: LCCOMB_X21_Y18_N0
\inst3|Div0|auto_generated|divider|divider|StageOut[142]~307\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[142]~307_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[7]~10_combout\ & !\inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[7]~10_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[142]~307_combout\);

-- Location: LCCOMB_X22_Y18_N22
\inst3|Div0|auto_generated|divider|divider|StageOut[141]~308\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[141]~308_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~8_combout\ & !\inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~8_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[141]~308_combout\);

-- Location: LCCOMB_X22_Y18_N24
\inst3|Div0|auto_generated|divider|divider|StageOut[140]~309\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[140]~309_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~6_combout\ & !\inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~6_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[140]~309_combout\);

-- Location: LCCOMB_X21_Y18_N2
\inst3|Div0|auto_generated|divider|divider|StageOut[139]~310\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[139]~310_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~4_combout\ & !\inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~4_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[139]~310_combout\);

-- Location: LCCOMB_X22_Y18_N30
\inst3|Div0|auto_generated|divider|divider|StageOut[138]~311\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[138]~311_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~2_combout\ & !\inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~2_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[138]~311_combout\);

-- Location: LCCOMB_X22_Y18_N20
\inst3|Div0|auto_generated|divider|divider|StageOut[137]~312\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[137]~312_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~0_combout\ & !\inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~0_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[137]~312_combout\);

-- Location: LCCOMB_X19_Y18_N2
\inst3|Div0|auto_generated|divider|divider|StageOut[136]~313\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[136]~313_combout\ = (\inst3|Add2~8_combout\ & \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Add2~8_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[136]~313_combout\);

-- Location: LCCOMB_X19_Y18_N12
\inst3|Div0|auto_generated|divider|divider|StageOut[136]~314\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[136]~314_combout\ = (\inst3|Add2~8_combout\ & !\inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Add2~8_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[136]~314_combout\);

-- Location: LCCOMB_X21_Y18_N4
\inst3|Div0|auto_generated|divider|divider|StageOut[151]~315\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[151]~315_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[7]~10_combout\ & !\inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[7]~10_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[151]~315_combout\);

-- Location: LCCOMB_X21_Y18_N22
\inst3|Div0|auto_generated|divider|divider|StageOut[150]~316\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[150]~316_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[6]~8_combout\ & !\inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[6]~8_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[150]~316_combout\);

-- Location: LCCOMB_X21_Y18_N28
\inst3|Div0|auto_generated|divider|divider|StageOut[149]~317\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[149]~317_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[5]~6_combout\ & !\inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[5]~6_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[149]~317_combout\);

-- Location: LCCOMB_X21_Y17_N8
\inst3|Div0|auto_generated|divider|divider|StageOut[148]~318\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[148]~318_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[4]~4_combout\ & !\inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[4]~4_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[148]~318_combout\);

-- Location: LCCOMB_X21_Y18_N30
\inst3|Div0|auto_generated|divider|divider|StageOut[147]~319\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[147]~319_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[3]~2_combout\ & !\inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[3]~2_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[147]~319_combout\);

-- Location: LCCOMB_X21_Y16_N24
\inst3|Div0|auto_generated|divider|divider|StageOut[146]~320\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[146]~320_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[2]~0_combout\ & !\inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[2]~0_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[146]~320_combout\);

-- Location: LCCOMB_X21_Y16_N22
\inst3|Div0|auto_generated|divider|divider|StageOut[145]~321\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[145]~321_combout\ = (\inst3|Add2~6_combout\ & \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Add2~6_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[145]~321_combout\);

-- Location: LCCOMB_X21_Y16_N4
\inst3|Div0|auto_generated|divider|divider|StageOut[145]~322\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[145]~322_combout\ = (\inst3|Add2~6_combout\ & !\inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Add2~6_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[145]~322_combout\);

-- Location: LCCOMB_X21_Y17_N2
\inst3|Div0|auto_generated|divider|divider|StageOut[160]~323\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[160]~323_combout\ = (!\inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[9]~14_combout\ & \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[9]~14_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[7]~10_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[160]~323_combout\);

-- Location: LCCOMB_X21_Y17_N0
\inst3|Div0|auto_generated|divider|divider|StageOut[159]~324\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[159]~324_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[6]~8_combout\ & !\inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[6]~8_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[159]~324_combout\);

-- Location: LCCOMB_X21_Y17_N6
\inst3|Div0|auto_generated|divider|divider|StageOut[158]~325\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[158]~325_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[5]~6_combout\ & !\inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[5]~6_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[158]~325_combout\);

-- Location: LCCOMB_X21_Y17_N4
\inst3|Div0|auto_generated|divider|divider|StageOut[157]~326\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[157]~326_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[4]~4_combout\ & !\inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[4]~4_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[157]~326_combout\);

-- Location: LCCOMB_X22_Y17_N12
\inst3|Div0|auto_generated|divider|divider|StageOut[156]~327\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[156]~327_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[3]~2_combout\ & !\inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[3]~2_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[156]~327_combout\);

-- Location: LCCOMB_X21_Y17_N26
\inst3|Div0|auto_generated|divider|divider|StageOut[155]~328\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[155]~328_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[2]~0_combout\ & !\inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[2]~0_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[155]~328_combout\);

-- Location: LCCOMB_X23_Y17_N12
\inst3|Div0|auto_generated|divider|divider|StageOut[154]~329\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[154]~329_combout\ = (\inst3|Add2~4_combout\ & \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Add2~4_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[154]~329_combout\);

-- Location: LCCOMB_X23_Y17_N6
\inst3|Div0|auto_generated|divider|divider|StageOut[154]~330\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[154]~330_combout\ = (\inst3|Add2~4_combout\ & !\inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Add2~4_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[154]~330_combout\);

-- Location: LCCOMB_X22_Y17_N10
\inst3|Div0|auto_generated|divider|divider|StageOut[169]~331\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[169]~331_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~10_combout\ & !\inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[7]~10_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[169]~331_combout\);

-- Location: LCCOMB_X22_Y17_N8
\inst3|Div0|auto_generated|divider|divider|StageOut[168]~332\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[168]~332_combout\ = (!\inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~14_combout\ & \inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~14_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[6]~8_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[168]~332_combout\);

-- Location: LCCOMB_X22_Y17_N6
\inst3|Div0|auto_generated|divider|divider|StageOut[167]~333\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[167]~333_combout\ = (!\inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~14_combout\ & \inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~14_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[5]~6_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[167]~333_combout\);

-- Location: LCCOMB_X22_Y17_N0
\inst3|Div0|auto_generated|divider|divider|StageOut[166]~334\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[166]~334_combout\ = (!\inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~14_combout\ & \inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~14_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[4]~4_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[166]~334_combout\);

-- Location: LCCOMB_X22_Y17_N14
\inst3|Div0|auto_generated|divider|divider|StageOut[165]~335\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[165]~335_combout\ = (!\inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~14_combout\ & \inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~14_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[3]~2_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[165]~335_combout\);

-- Location: LCCOMB_X22_Y17_N4
\inst3|Div0|auto_generated|divider|divider|StageOut[164]~336\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[164]~336_combout\ = (!\inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~14_combout\ & \inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~14_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[2]~0_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[164]~336_combout\);

-- Location: LCCOMB_X23_Y17_N16
\inst3|Div0|auto_generated|divider|divider|StageOut[163]~337\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[163]~337_combout\ = (\inst3|Add2~2_combout\ & \inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Add2~2_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[163]~337_combout\);

-- Location: LCCOMB_X23_Y17_N18
\inst3|Div0|auto_generated|divider|divider|StageOut[163]~338\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[163]~338_combout\ = (\inst3|Add2~2_combout\ & !\inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Add2~2_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[163]~338_combout\);

-- Location: LCCOMB_X22_Y12_N28
\inst7|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Equal0~3_combout\ = (\inst7|Equal0~2_combout\) # ((\inst7|Equal0~1_combout\) # (\inst7|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal0~2_combout\,
	datab => \inst7|Equal0~1_combout\,
	datad => \inst7|Equal0~0_combout\,
	combout => \inst7|Equal0~3_combout\);

-- Location: LCCOMB_X23_Y14_N18
\inst7|pos_actual[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|pos_actual[3]~0_combout\ = ((!\inst7|Equal0~3_combout\ & ((\inst7|LessThan1~14_combout\) # (\inst7|LessThan0~14_combout\)))) # (!\RESET~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \inst7|Equal0~3_combout\,
	datac => \inst7|LessThan1~14_combout\,
	datad => \inst7|LessThan0~14_combout\,
	combout => \inst7|pos_actual[3]~0_combout\);

-- Location: LCCOMB_X23_Y14_N24
\inst7|pos_actual[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|pos_actual[7]~1_combout\ = (\inst7|pos_actual[3]~0_combout\ & (\RESET~input_o\ & (!\inst7|Add0~14_combout\))) # (!\inst7|pos_actual[3]~0_combout\ & (((\inst7|pos_actual\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \inst7|Add0~14_combout\,
	datac => \inst7|pos_actual\(7),
	datad => \inst7|pos_actual[3]~0_combout\,
	combout => \inst7|pos_actual[7]~1_combout\);

-- Location: FF_X25_Y10_N5
\inst|acumulado[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|acumulado~1_combout\,
	ena => \inst|acumulado[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|acumulado\(7));

-- Location: LCCOMB_X25_Y10_N2
\inst|numero~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|numero~0_combout\ = (\inst|acumulado\(7) & \RESET~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|acumulado\(7),
	datac => \RESET~input_o\,
	combout => \inst|numero~0_combout\);

-- Location: FF_X28_Y10_N13
\inst9|bufferRx[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst9|registroRx\(2),
	sload => VCC,
	ena => \inst9|bufferRx[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|bufferRx\(2));

-- Location: FF_X28_Y10_N7
\inst9|bufferRx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst9|registroRx\(0),
	sload => VCC,
	ena => \inst9|bufferRx[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|bufferRx\(0));

-- Location: FF_X28_Y10_N11
\inst9|bufferRx[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst9|registroRx\(1),
	sload => VCC,
	ena => \inst9|bufferRx[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|bufferRx\(1));

-- Location: LCCOMB_X28_Y10_N6
\inst|conv~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv~0_combout\ = (\inst9|bufferRx\(2) & (\inst9|bufferRx\(0) & !\inst9|bufferRx\(1))) # (!\inst9|bufferRx\(2) & (!\inst9|bufferRx\(0) & \inst9|bufferRx\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|bufferRx\(2),
	datac => \inst9|bufferRx\(0),
	datad => \inst9|bufferRx\(1),
	combout => \inst|conv~0_combout\);

-- Location: FF_X28_Y9_N29
\inst9|bufferRx[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst9|registroRx\(3),
	sload => VCC,
	ena => \inst9|bufferRx[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|bufferRx\(3));

-- Location: FF_X28_Y9_N3
\inst9|bufferRx[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst9|bufferRx[6]~feeder_combout\,
	ena => \inst9|bufferRx[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|bufferRx\(6));

-- Location: FF_X28_Y9_N9
\inst9|bufferRx[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst9|registroRx\(7),
	sload => VCC,
	ena => \inst9|bufferRx[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|bufferRx\(7));

-- Location: FF_X28_Y9_N7
\inst9|bufferRx[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst9|bufferRx[4]~feeder_combout\,
	ena => \inst9|bufferRx[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|bufferRx\(4));

-- Location: LCCOMB_X28_Y9_N24
\inst|conv~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv~1_combout\ = (!\inst9|bufferRx\(4) & (!\inst9|bufferRx\(6) & (!\inst9|bufferRx\(7) & \inst9|bufferRx\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|bufferRx\(4),
	datab => \inst9|bufferRx\(6),
	datac => \inst9|bufferRx\(7),
	datad => \inst9|bufferRx\(3),
	combout => \inst|conv~1_combout\);

-- Location: FF_X28_Y9_N23
\inst9|bufferRx[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst9|registroRx\(5),
	sload => VCC,
	ena => \inst9|bufferRx[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|bufferRx\(5));

-- Location: LCCOMB_X29_Y10_N26
\inst|numero[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|numero[2]~1_combout\ = (!\inst9|bufferRx\(5) & (\inst9|dato_listo~q\ & (\inst|conv~0_combout\ & \inst|conv~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|bufferRx\(5),
	datab => \inst9|dato_listo~q\,
	datac => \inst|conv~0_combout\,
	datad => \inst|conv~1_combout\,
	combout => \inst|numero[2]~1_combout\);

-- Location: LCCOMB_X29_Y10_N8
\inst|numero[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|numero[2]~2_combout\ = ((\inst|hay_cifras~q\ & (\inst|numero[2]~1_combout\ & !\inst|descartar~q\))) # (!\RESET~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \inst|hay_cifras~q\,
	datac => \inst|numero[2]~1_combout\,
	datad => \inst|descartar~q\,
	combout => \inst|numero[2]~2_combout\);

-- Location: FF_X25_Y10_N9
\inst|acumulado[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|acumulado~3_combout\,
	ena => \inst|acumulado[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|acumulado\(6));

-- Location: LCCOMB_X25_Y10_N26
\inst|numero~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|numero~3_combout\ = (!\inst|acumulado\(6) & \RESET~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|acumulado\(6),
	datac => \RESET~input_o\,
	combout => \inst|numero~3_combout\);

-- Location: FF_X29_Y10_N19
\inst|acumulado[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|acumulado~4_combout\,
	ena => \inst|acumulado[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|acumulado\(5));

-- Location: LCCOMB_X29_Y14_N24
\inst|numero~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|numero~4_combout\ = (\inst|acumulado\(5) & \RESET~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|acumulado\(5),
	datad => \RESET~input_o\,
	combout => \inst|numero~4_combout\);

-- Location: FF_X25_Y10_N21
\inst|acumulado[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|acumulado~5_combout\,
	ena => \inst|acumulado[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|acumulado\(4));

-- Location: LCCOMB_X25_Y10_N10
\inst|numero~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|numero~5_combout\ = (\RESET~input_o\ & !\inst|acumulado\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RESET~input_o\,
	datad => \inst|acumulado\(4),
	combout => \inst|numero~5_combout\);

-- Location: FF_X25_Y10_N17
\inst|acumulado[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|acumulado~6_combout\,
	ena => \inst|acumulado[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|acumulado\(2));

-- Location: LCCOMB_X25_Y10_N18
\inst|numero~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|numero~6_combout\ = (\RESET~input_o\ & \inst|acumulado\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RESET~input_o\,
	datad => \inst|acumulado\(2),
	combout => \inst|numero~6_combout\);

-- Location: FF_X29_Y10_N25
\inst|acumulado[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|acumulado~7_combout\,
	ena => \inst|acumulado[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|acumulado\(3));

-- Location: LCCOMB_X29_Y10_N6
\inst|numero~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|numero~7_combout\ = (\RESET~input_o\ & !\inst|acumulado\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datad => \inst|acumulado\(3),
	combout => \inst|numero~7_combout\);

-- Location: FF_X29_Y10_N29
\inst|acumulado[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|acumulado~8_combout\,
	ena => \inst|acumulado[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|acumulado\(0));

-- Location: LCCOMB_X26_Y10_N4
\inst|numero~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|numero~8_combout\ = (\RESET~input_o\ & \inst|acumulado\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RESET~input_o\,
	datad => \inst|acumulado\(0),
	combout => \inst|numero~8_combout\);

-- Location: FF_X29_Y10_N23
\inst|acumulado[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|acumulado~9_combout\,
	ena => \inst|acumulado[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|acumulado\(1));

-- Location: LCCOMB_X29_Y10_N12
\inst|numero~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|numero~9_combout\ = (\RESET~input_o\ & !\inst|acumulado\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datac => \inst|acumulado\(1),
	combout => \inst|numero~9_combout\);

-- Location: LCCOMB_X28_Y9_N4
\inst|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~0_combout\ = \inst9|bufferRx\(7) $ (((\inst9|bufferRx\(6)) # ((\inst9|bufferRx\(4) & \inst9|bufferRx\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|bufferRx\(4),
	datab => \inst9|bufferRx\(7),
	datac => \inst9|bufferRx\(5),
	datad => \inst9|bufferRx\(6),
	combout => \inst|Add1~0_combout\);

-- Location: LCCOMB_X28_Y9_N10
\inst|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~1_combout\ = \inst9|bufferRx\(6) $ (((\inst9|bufferRx\(4) & \inst9|bufferRx\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|bufferRx\(4),
	datac => \inst9|bufferRx\(5),
	datad => \inst9|bufferRx\(6),
	combout => \inst|Add1~1_combout\);

-- Location: LCCOMB_X28_Y10_N4
\inst|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~2_combout\ = \inst9|bufferRx\(4) $ (\inst9|bufferRx\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|bufferRx\(4),
	datad => \inst9|bufferRx\(5),
	combout => \inst|Add1~2_combout\);

-- Location: LCCOMB_X28_Y9_N12
\inst|Add1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~3_combout\ = (\inst9|bufferRx\(7)) # ((\inst9|bufferRx\(6)) # ((\inst9|bufferRx\(4) & \inst9|bufferRx\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|bufferRx\(4),
	datab => \inst9|bufferRx\(7),
	datac => \inst9|bufferRx\(5),
	datad => \inst9|bufferRx\(6),
	combout => \inst|Add1~3_combout\);

-- Location: LCCOMB_X28_Y10_N8
\inst|acumulado[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|acumulado[6]~0_combout\ = (\inst|Add2~20_combout\) # ((\inst|Add2~18_combout\) # ((\inst|Add2~16_combout\) # (\inst|Add2~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~20_combout\,
	datab => \inst|Add2~18_combout\,
	datac => \inst|Add2~16_combout\,
	datad => \inst|Add2~14_combout\,
	combout => \inst|acumulado[6]~0_combout\);

-- Location: LCCOMB_X28_Y9_N18
\inst|conv~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv~2_combout\ = ((\inst9|bufferRx\(7)) # ((\inst9|bufferRx\(6)) # (!\inst9|bufferRx\(5)))) # (!\inst9|bufferRx\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|bufferRx\(4),
	datab => \inst9|bufferRx\(7),
	datac => \inst9|bufferRx\(5),
	datad => \inst9|bufferRx\(6),
	combout => \inst|conv~2_combout\);

-- Location: LCCOMB_X28_Y10_N0
\inst|conv~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv~3_combout\ = (\inst|conv~2_combout\) # ((\inst9|bufferRx\(3) & ((\inst9|bufferRx\(2)) # (\inst9|bufferRx\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|bufferRx\(2),
	datab => \inst9|bufferRx\(3),
	datac => \inst|conv~2_combout\,
	datad => \inst9|bufferRx\(1),
	combout => \inst|conv~3_combout\);

-- Location: LCCOMB_X25_Y10_N4
\inst|acumulado~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|acumulado~1_combout\ = (!\inst|conv~3_combout\ & (\RESET~input_o\ & ((\inst|acumulado[6]~0_combout\) # (\inst|Add2~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|acumulado[6]~0_combout\,
	datab => \inst|conv~3_combout\,
	datac => \RESET~input_o\,
	datad => \inst|Add2~12_combout\,
	combout => \inst|acumulado~1_combout\);

-- Location: LCCOMB_X29_Y10_N10
\inst|conv~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|conv~4_combout\ = (!\inst9|bufferRx\(5) & (\inst|conv~0_combout\ & \inst|conv~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|bufferRx\(5),
	datab => \inst|conv~0_combout\,
	datad => \inst|conv~1_combout\,
	combout => \inst|conv~4_combout\);

-- Location: LCCOMB_X29_Y10_N20
\inst|acumulado[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|acumulado[6]~2_combout\ = ((\inst9|dato_listo~q\ & ((\inst|conv~4_combout\) # (!\inst|conv~3_combout\)))) # (!\RESET~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \inst9|dato_listo~q\,
	datac => \inst|conv~3_combout\,
	datad => \inst|conv~4_combout\,
	combout => \inst|acumulado[6]~2_combout\);

-- Location: LCCOMB_X29_Y10_N0
\inst|descartar~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|descartar~0_combout\ = (\inst|conv~3_combout\ & ((\inst9|dato_listo~q\ & ((!\inst|conv~4_combout\))) # (!\inst9|dato_listo~q\ & (\inst|descartar~q\)))) # (!\inst|conv~3_combout\ & (((\inst|descartar~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|conv~3_combout\,
	datab => \inst9|dato_listo~q\,
	datac => \inst|descartar~q\,
	datad => \inst|conv~4_combout\,
	combout => \inst|descartar~0_combout\);

-- Location: FF_X25_Y9_N25
\inst9|proximoRx.recibiendo_stop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst9|proximoRx~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|proximoRx.recibiendo_stop~q\);

-- Location: LCCOMB_X24_Y9_N20
\inst9|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|LessThan1~0_combout\ = (!\inst9|contadorPulsos\(2) & (!\inst9|contadorPulsos\(1) & (!\inst9|contadorPulsos\(3) & !\inst9|contadorPulsos\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|contadorPulsos\(2),
	datab => \inst9|contadorPulsos\(1),
	datac => \inst9|contadorPulsos\(3),
	datad => \inst9|contadorPulsos\(0),
	combout => \inst9|LessThan1~0_combout\);

-- Location: LCCOMB_X24_Y9_N24
\inst9|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|LessThan1~1_combout\ = (!\inst9|contadorPulsos\(6) & (((\inst9|LessThan1~0_combout\) # (!\inst9|contadorPulsos\(5))) # (!\inst9|contadorPulsos\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|contadorPulsos\(4),
	datab => \inst9|LessThan1~0_combout\,
	datac => \inst9|contadorPulsos\(6),
	datad => \inst9|contadorPulsos\(5),
	combout => \inst9|LessThan1~1_combout\);

-- Location: LCCOMB_X24_Y10_N16
\inst9|bufferRx[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|bufferRx[2]~0_combout\ = (\inst9|contadorPulsos\(7) & (\inst9|contadorPulsos\(8) & (\inst9|proximoRx.recibiendo_stop~q\ & !\inst9|LessThan1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|contadorPulsos\(7),
	datab => \inst9|contadorPulsos\(8),
	datac => \inst9|proximoRx.recibiendo_stop~q\,
	datad => \inst9|LessThan1~1_combout\,
	combout => \inst9|bufferRx[2]~0_combout\);

-- Location: FF_X28_Y9_N1
\inst9|registroRx[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst9|registroRx\(3),
	sload => VCC,
	ena => \inst9|registroRx[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|registroRx\(2));

-- Location: LCCOMB_X29_Y10_N30
\inst9|bufferRx[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|bufferRx[2]~1_combout\ = (\RESET~input_o\ & \inst9|bufferRx[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datad => \inst9|bufferRx[2]~0_combout\,
	combout => \inst9|bufferRx[2]~1_combout\);

-- Location: FF_X28_Y10_N5
\inst9|registroRx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst9|registroRx\(1),
	sload => VCC,
	ena => \inst9|registroRx[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|registroRx\(0));

-- Location: FF_X28_Y10_N3
\inst9|registroRx[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst9|registroRx\(2),
	sload => VCC,
	ena => \inst9|registroRx[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|registroRx\(1));

-- Location: FF_X28_Y9_N15
\inst9|registroRx[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst9|registroRx[3]~feeder_combout\,
	ena => \inst9|registroRx[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|registroRx\(3));

-- Location: FF_X28_Y9_N21
\inst9|registroRx[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst9|registroRx\(7),
	sload => VCC,
	ena => \inst9|registroRx[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|registroRx\(6));

-- Location: FF_X28_Y9_N31
\inst9|registroRx[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Rdx~input_o\,
	sload => VCC,
	ena => \inst9|registroRx[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|registroRx\(7));

-- Location: FF_X28_Y9_N17
\inst9|registroRx[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst9|registroRx\(5),
	sload => VCC,
	ena => \inst9|registroRx[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|registroRx\(4));

-- Location: FF_X28_Y9_N27
\inst9|registroRx[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst9|registroRx[5]~feeder_combout\,
	ena => \inst9|registroRx[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|registroRx\(5));

-- Location: LCCOMB_X29_Y10_N16
\inst|hay_cifras~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|hay_cifras~0_combout\ = (\inst|numero[2]~1_combout\ & (!\inst|conv~3_combout\ & ((\inst9|dato_listo~q\)))) # (!\inst|numero[2]~1_combout\ & ((\inst|hay_cifras~q\) # ((!\inst|conv~3_combout\ & \inst9|dato_listo~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|numero[2]~1_combout\,
	datab => \inst|conv~3_combout\,
	datac => \inst|hay_cifras~q\,
	datad => \inst9|dato_listo~q\,
	combout => \inst|hay_cifras~0_combout\);

-- Location: LCCOMB_X25_Y10_N8
\inst|acumulado~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|acumulado~3_combout\ = (!\inst|conv~3_combout\ & (\RESET~input_o\ & ((\inst|acumulado[6]~0_combout\) # (\inst|Add2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|acumulado[6]~0_combout\,
	datab => \inst|conv~3_combout\,
	datac => \RESET~input_o\,
	datad => \inst|Add2~10_combout\,
	combout => \inst|acumulado~3_combout\);

-- Location: LCCOMB_X29_Y10_N18
\inst|acumulado~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|acumulado~4_combout\ = (\RESET~input_o\ & (!\inst|conv~3_combout\ & ((\inst|Add2~8_combout\) # (\inst|acumulado[6]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \inst|Add2~8_combout\,
	datac => \inst|conv~3_combout\,
	datad => \inst|acumulado[6]~0_combout\,
	combout => \inst|acumulado~4_combout\);

-- Location: LCCOMB_X25_Y10_N20
\inst|acumulado~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|acumulado~5_combout\ = (!\inst|conv~3_combout\ & (\RESET~input_o\ & ((\inst|acumulado[6]~0_combout\) # (\inst|Add2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|acumulado[6]~0_combout\,
	datab => \inst|conv~3_combout\,
	datac => \RESET~input_o\,
	datad => \inst|Add2~6_combout\,
	combout => \inst|acumulado~5_combout\);

-- Location: LCCOMB_X25_Y10_N16
\inst|acumulado~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|acumulado~6_combout\ = (!\inst|conv~3_combout\ & (\RESET~input_o\ & ((\inst|acumulado[6]~0_combout\) # (\inst|Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|acumulado[6]~0_combout\,
	datab => \inst|conv~3_combout\,
	datac => \RESET~input_o\,
	datad => \inst|Add2~2_combout\,
	combout => \inst|acumulado~6_combout\);

-- Location: LCCOMB_X29_Y10_N24
\inst|acumulado~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|acumulado~7_combout\ = (\RESET~input_o\ & (!\inst|conv~3_combout\ & ((\inst|Add2~4_combout\) # (\inst|acumulado[6]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \inst|Add2~4_combout\,
	datac => \inst|conv~3_combout\,
	datad => \inst|acumulado[6]~0_combout\,
	combout => \inst|acumulado~7_combout\);

-- Location: LCCOMB_X29_Y10_N28
\inst|acumulado~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|acumulado~8_combout\ = (\RESET~input_o\ & (!\inst|conv~3_combout\ & ((\inst9|bufferRx\(0)) # (\inst|acumulado[6]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \inst9|bufferRx\(0),
	datac => \inst|conv~3_combout\,
	datad => \inst|acumulado[6]~0_combout\,
	combout => \inst|acumulado~8_combout\);

-- Location: LCCOMB_X29_Y10_N22
\inst|acumulado~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|acumulado~9_combout\ = (\RESET~input_o\ & (!\inst|conv~3_combout\ & ((\inst|Add2~0_combout\) # (\inst|acumulado[6]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \inst|Add2~0_combout\,
	datac => \inst|conv~3_combout\,
	datad => \inst|acumulado[6]~0_combout\,
	combout => \inst|acumulado~9_combout\);

-- Location: FF_X24_Y12_N29
\inst9|contadorBits[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst9|Selector1~1_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|contadorBits\(2));

-- Location: FF_X25_Y9_N27
\inst9|contadorBits[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst9|Selector3~0_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|contadorBits\(0));

-- Location: FF_X24_Y12_N31
\inst9|contadorBits[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst9|Selector2~0_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|contadorBits\(1));

-- Location: FF_X24_Y12_N1
\inst9|contadorBits[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst9|Selector0~1_combout\,
	ena => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|contadorBits\(3));

-- Location: LCCOMB_X25_Y12_N26
\inst9|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Equal0~0_combout\ = (!\inst9|contadorBits\(3) & (\inst9|contadorBits\(2) & (\inst9|contadorBits\(0) & \inst9|contadorBits\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|contadorBits\(3),
	datab => \inst9|contadorBits\(2),
	datac => \inst9|contadorBits\(0),
	datad => \inst9|contadorBits\(1),
	combout => \inst9|Equal0~0_combout\);

-- Location: FF_X25_Y9_N13
\inst9|proximoRx.recibiendo_bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst9|proximoRx.recibiendo_bit~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|proximoRx.recibiendo_bit~q\);

-- Location: LCCOMB_X24_Y9_N22
\inst9|registroRx[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|registroRx[2]~0_combout\ = (!\inst9|LessThan1~1_combout\ & (\inst9|contadorPulsos\(7) & (\inst9|proximoRx.recibiendo_bit~q\ & \inst9|contadorPulsos\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|LessThan1~1_combout\,
	datab => \inst9|contadorPulsos\(7),
	datac => \inst9|proximoRx.recibiendo_bit~q\,
	datad => \inst9|contadorPulsos\(8),
	combout => \inst9|registroRx[2]~0_combout\);

-- Location: LCCOMB_X26_Y10_N30
\inst9|registroRx[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|registroRx[2]~1_combout\ = (\RESET~input_o\ & \inst9|registroRx[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RESET~input_o\,
	datad => \inst9|registroRx[2]~0_combout\,
	combout => \inst9|registroRx[2]~1_combout\);

-- Location: FF_X25_Y9_N23
\inst9|proximoRx.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst9|proximoRx~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|proximoRx.idle~q\);

-- Location: LCCOMB_X25_Y9_N4
\inst9|proximoRx~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|proximoRx~10_combout\ = ((!\Rdx~input_o\ & !\inst9|proximoRx.idle~q\)) # (!\RESET~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \Rdx~input_o\,
	datac => \inst9|proximoRx.idle~q\,
	combout => \inst9|proximoRx~10_combout\);

-- Location: LCCOMB_X24_Y9_N28
\inst9|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|LessThan1~2_combout\ = ((\inst9|LessThan1~1_combout\) # (!\inst9|contadorPulsos\(7))) # (!\inst9|contadorPulsos\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|contadorPulsos\(8),
	datac => \inst9|LessThan1~1_combout\,
	datad => \inst9|contadorPulsos\(7),
	combout => \inst9|LessThan1~2_combout\);

-- Location: LCCOMB_X24_Y9_N30
\inst9|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|LessThan0~0_combout\ = ((!\inst9|contadorPulsos\(5) & ((!\inst9|contadorPulsos\(3)) # (!\inst9|contadorPulsos\(4))))) # (!\inst9|contadorPulsos\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|contadorPulsos\(4),
	datab => \inst9|contadorPulsos\(6),
	datac => \inst9|contadorPulsos\(3),
	datad => \inst9|contadorPulsos\(5),
	combout => \inst9|LessThan0~0_combout\);

-- Location: LCCOMB_X24_Y9_N0
\inst9|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|LessThan0~1_combout\ = (!\inst9|contadorPulsos\(8) & ((\inst9|LessThan0~0_combout\) # (!\inst9|contadorPulsos\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|contadorPulsos\(8),
	datac => \inst9|LessThan0~0_combout\,
	datad => \inst9|contadorPulsos\(7),
	combout => \inst9|LessThan0~1_combout\);

-- Location: FF_X25_Y9_N7
\inst9|proximoRx.validando_start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst9|proximoRx~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|proximoRx.validando_start~q\);

-- Location: LCCOMB_X25_Y9_N8
\inst9|proximoRx~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|proximoRx~11_combout\ = (\inst9|proximoRx.recibiendo_stop~q\ & (((\inst9|LessThan1~2_combout\)))) # (!\inst9|proximoRx.recibiendo_stop~q\ & (((\inst9|LessThan0~1_combout\)) # (!\inst9|proximoRx.validando_start~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|proximoRx.validando_start~q\,
	datab => \inst9|LessThan1~2_combout\,
	datac => \inst9|LessThan0~1_combout\,
	datad => \inst9|proximoRx.recibiendo_stop~q\,
	combout => \inst9|proximoRx~11_combout\);

-- Location: LCCOMB_X25_Y9_N18
\inst9|proximoRx~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|proximoRx~12_combout\ = ((\inst9|proximoRx~10_combout\) # ((\inst9|registroRx[2]~0_combout\ & \inst9|Equal0~0_combout\))) # (!\inst9|proximoRx~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|registroRx[2]~0_combout\,
	datab => \inst9|proximoRx~11_combout\,
	datac => \inst9|proximoRx~10_combout\,
	datad => \inst9|Equal0~0_combout\,
	combout => \inst9|proximoRx~12_combout\);

-- Location: LCCOMB_X25_Y9_N24
\inst9|proximoRx~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|proximoRx~13_combout\ = (\inst9|registroRx[2]~1_combout\ & ((\inst9|Equal0~0_combout\) # ((!\inst9|proximoRx~12_combout\ & \inst9|proximoRx.recibiendo_stop~q\)))) # (!\inst9|registroRx[2]~1_combout\ & (!\inst9|proximoRx~12_combout\ & 
-- (\inst9|proximoRx.recibiendo_stop~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|registroRx[2]~1_combout\,
	datab => \inst9|proximoRx~12_combout\,
	datac => \inst9|proximoRx.recibiendo_stop~q\,
	datad => \inst9|Equal0~0_combout\,
	combout => \inst9|proximoRx~13_combout\);

-- Location: LCCOMB_X25_Y9_N0
\inst9|contadorPulsos[0]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|contadorPulsos[0]~25_combout\ = ((\inst9|proximoRx.validando_start~q\ & ((!\inst9|LessThan0~1_combout\))) # (!\inst9|proximoRx.validando_start~q\ & (!\inst9|LessThan1~2_combout\))) # (!\inst9|proximoRx.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|proximoRx.idle~q\,
	datab => \inst9|LessThan1~2_combout\,
	datac => \inst9|LessThan0~1_combout\,
	datad => \inst9|proximoRx.validando_start~q\,
	combout => \inst9|contadorPulsos[0]~25_combout\);

-- Location: LCCOMB_X24_Y12_N2
\inst9|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Add1~0_combout\ = \inst9|contadorBits\(2) $ (((\inst9|contadorBits\(0) & \inst9|contadorBits\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|contadorBits\(0),
	datac => \inst9|contadorBits\(1),
	datad => \inst9|contadorBits\(2),
	combout => \inst9|Add1~0_combout\);

-- Location: LCCOMB_X25_Y9_N30
\inst9|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Selector1~0_combout\ = (\inst9|proximoRx.recibiendo_stop~q\) # ((\inst9|proximoRx.validando_start~q\) # ((\inst9|proximoRx.recibiendo_bit~q\ & \inst9|LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|proximoRx.recibiendo_bit~q\,
	datab => \inst9|proximoRx.recibiendo_stop~q\,
	datac => \inst9|proximoRx.validando_start~q\,
	datad => \inst9|LessThan1~2_combout\,
	combout => \inst9|Selector1~0_combout\);

-- Location: LCCOMB_X24_Y12_N28
\inst9|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Selector1~1_combout\ = (\inst9|Selector1~0_combout\ & ((\inst9|contadorBits\(2)) # ((\inst9|registroRx[2]~0_combout\ & \inst9|Add1~0_combout\)))) # (!\inst9|Selector1~0_combout\ & (\inst9|registroRx[2]~0_combout\ & ((\inst9|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Selector1~0_combout\,
	datab => \inst9|registroRx[2]~0_combout\,
	datac => \inst9|contadorBits\(2),
	datad => \inst9|Add1~0_combout\,
	combout => \inst9|Selector1~1_combout\);

-- Location: LCCOMB_X25_Y9_N16
\inst9|proximoRx~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|proximoRx~14_combout\ = (\inst9|proximoRx.recibiendo_stop~q\) # (\inst9|proximoRx.validando_start~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|proximoRx.recibiendo_stop~q\,
	datad => \inst9|proximoRx.validando_start~q\,
	combout => \inst9|proximoRx~14_combout\);

-- Location: LCCOMB_X25_Y9_N26
\inst9|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Selector3~0_combout\ = (\inst9|contadorBits\(0) & ((\inst9|proximoRx~14_combout\) # ((\inst9|proximoRx.recibiendo_bit~q\ & \inst9|LessThan1~2_combout\)))) # (!\inst9|contadorBits\(0) & (\inst9|proximoRx.recibiendo_bit~q\ & 
-- (!\inst9|LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|proximoRx.recibiendo_bit~q\,
	datab => \inst9|LessThan1~2_combout\,
	datac => \inst9|contadorBits\(0),
	datad => \inst9|proximoRx~14_combout\,
	combout => \inst9|Selector3~0_combout\);

-- Location: LCCOMB_X24_Y12_N30
\inst9|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Selector2~0_combout\ = (\inst9|contadorBits\(1) & ((\inst9|Selector1~0_combout\) # ((\inst9|registroRx[2]~0_combout\ & !\inst9|contadorBits\(0))))) # (!\inst9|contadorBits\(1) & (((\inst9|registroRx[2]~0_combout\ & \inst9|contadorBits\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Selector1~0_combout\,
	datab => \inst9|registroRx[2]~0_combout\,
	datac => \inst9|contadorBits\(1),
	datad => \inst9|contadorBits\(0),
	combout => \inst9|Selector2~0_combout\);

-- Location: LCCOMB_X24_Y12_N4
\inst9|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Selector0~0_combout\ = (\inst9|contadorBits\(3) & (((!\inst9|contadorBits\(1)) # (!\inst9|contadorBits\(2))) # (!\inst9|contadorBits\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|contadorBits\(0),
	datab => \inst9|contadorBits\(2),
	datac => \inst9|contadorBits\(1),
	datad => \inst9|contadorBits\(3),
	combout => \inst9|Selector0~0_combout\);

-- Location: LCCOMB_X24_Y12_N0
\inst9|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Selector0~1_combout\ = (\inst9|Selector1~0_combout\ & ((\inst9|contadorBits\(3)) # ((\inst9|Selector0~0_combout\ & \inst9|registroRx[2]~0_combout\)))) # (!\inst9|Selector1~0_combout\ & (\inst9|Selector0~0_combout\ & 
-- ((\inst9|registroRx[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Selector1~0_combout\,
	datab => \inst9|Selector0~0_combout\,
	datac => \inst9|contadorBits\(3),
	datad => \inst9|registroRx[2]~0_combout\,
	combout => \inst9|Selector0~1_combout\);

-- Location: LCCOMB_X25_Y9_N10
\inst9|proximoRx~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|proximoRx~15_combout\ = (!\inst9|proximoRx.idle~q\ & !\Rdx~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|proximoRx.idle~q\,
	datac => \Rdx~input_o\,
	combout => \inst9|proximoRx~15_combout\);

-- Location: LCCOMB_X24_Y9_N26
\inst9|proximoRx~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|proximoRx~16_combout\ = (\inst9|proximoRx.validando_start~q\ & ((\inst9|contadorPulsos\(8)) # ((\inst9|contadorPulsos\(7) & !\inst9|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|proximoRx.validando_start~q\,
	datab => \inst9|contadorPulsos\(7),
	datac => \inst9|LessThan0~0_combout\,
	datad => \inst9|contadorPulsos\(8),
	combout => \inst9|proximoRx~16_combout\);

-- Location: LCCOMB_X25_Y9_N20
\inst9|proximoRx~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|proximoRx~17_combout\ = (\inst9|proximoRx.recibiendo_bit~q\ & (\inst9|Equal0~0_combout\ & ((!\inst9|proximoRx.idle~q\) # (!\inst9|LessThan1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|proximoRx.recibiendo_bit~q\,
	datab => \inst9|LessThan1~2_combout\,
	datac => \inst9|proximoRx.idle~q\,
	datad => \inst9|Equal0~0_combout\,
	combout => \inst9|proximoRx~17_combout\);

-- Location: LCCOMB_X25_Y9_N2
\inst9|proximoRx~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|proximoRx~18_combout\ = (!\inst9|proximoRx~17_combout\ & (!\inst9|proximoRx~16_combout\ & ((\inst9|proximoRx.recibiendo_bit~q\) # (!\inst9|proximoRx~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|proximoRx~15_combout\,
	datab => \inst9|proximoRx~17_combout\,
	datac => \inst9|proximoRx~16_combout\,
	datad => \inst9|proximoRx.recibiendo_bit~q\,
	combout => \inst9|proximoRx~18_combout\);

-- Location: LCCOMB_X25_Y9_N28
\inst9|proximoRx.recibiendo_bit~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|proximoRx.recibiendo_bit~0_combout\ = (\inst9|proximoRx~16_combout\ & (((\inst9|proximoRx~18_combout\ & \inst9|proximoRx.recibiendo_bit~q\)) # (!\Rdx~input_o\))) # (!\inst9|proximoRx~16_combout\ & (\inst9|proximoRx~18_combout\ & 
-- ((\inst9|proximoRx.recibiendo_bit~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|proximoRx~16_combout\,
	datab => \inst9|proximoRx~18_combout\,
	datac => \Rdx~input_o\,
	datad => \inst9|proximoRx.recibiendo_bit~q\,
	combout => \inst9|proximoRx.recibiendo_bit~0_combout\);

-- Location: LCCOMB_X25_Y9_N12
\inst9|proximoRx.recibiendo_bit~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|proximoRx.recibiendo_bit~1_combout\ = (\RESET~input_o\ & (!\inst9|bufferRx[2]~0_combout\ & \inst9|proximoRx.recibiendo_bit~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datac => \inst9|bufferRx[2]~0_combout\,
	datad => \inst9|proximoRx.recibiendo_bit~0_combout\,
	combout => \inst9|proximoRx.recibiendo_bit~1_combout\);

-- Location: LCCOMB_X25_Y9_N14
\inst9|proximoRx~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|proximoRx~19_combout\ = (\inst9|bufferRx[2]~0_combout\) # (((\inst9|proximoRx~18_combout\ & !\inst9|proximoRx.idle~q\)) # (!\RESET~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|bufferRx[2]~0_combout\,
	datab => \inst9|proximoRx~18_combout\,
	datac => \inst9|proximoRx.idle~q\,
	datad => \RESET~input_o\,
	combout => \inst9|proximoRx~19_combout\);

-- Location: LCCOMB_X25_Y9_N22
\inst9|proximoRx~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|proximoRx~20_combout\ = (!\inst9|proximoRx~19_combout\ & ((!\Rdx~input_o\) # (!\inst9|proximoRx~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|proximoRx~16_combout\,
	datab => \inst9|proximoRx~19_combout\,
	datac => \Rdx~input_o\,
	combout => \inst9|proximoRx~20_combout\);

-- Location: LCCOMB_X25_Y9_N6
\inst9|proximoRx~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|proximoRx~21_combout\ = (\RESET~input_o\ & ((\inst9|proximoRx~15_combout\) # ((!\inst9|proximoRx~12_combout\ & \inst9|proximoRx.validando_start~q\)))) # (!\RESET~input_o\ & (!\inst9|proximoRx~12_combout\ & (\inst9|proximoRx.validando_start~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \inst9|proximoRx~12_combout\,
	datac => \inst9|proximoRx.validando_start~q\,
	datad => \inst9|proximoRx~15_combout\,
	combout => \inst9|proximoRx~21_combout\);

-- Location: LCCOMB_X25_Y11_N0
\inst7|Div0|auto_generated|divider|divider|StageOut[88]~225\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[88]~225_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_14~18_combout\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[78]~260_combout\) # 
-- ((!\inst7|Div0|auto_generated|divider|divider|op_13~18_combout\ & \inst7|Div0|auto_generated|divider|divider|op_13~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[78]~260_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|op_14~18_combout\,
	datac => \inst7|Div0|auto_generated|divider|divider|op_13~18_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|op_13~12_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[88]~225_combout\);

-- Location: LCCOMB_X24_Y11_N16
\inst7|Div0|auto_generated|divider|divider|StageOut[87]~226\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[87]~226_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_14~18_combout\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[77]~261_combout\) # 
-- ((!\inst7|Div0|auto_generated|divider|divider|op_13~18_combout\ & \inst7|Div0|auto_generated|divider|divider|op_13~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|op_14~18_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[77]~261_combout\,
	datac => \inst7|Div0|auto_generated|divider|divider|op_13~18_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|op_13~10_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[87]~226_combout\);

-- Location: LCCOMB_X24_Y11_N6
\inst7|Div0|auto_generated|divider|divider|StageOut[86]~227\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[86]~227_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_14~18_combout\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[76]~262_combout\) # 
-- ((!\inst7|Div0|auto_generated|divider|divider|op_13~18_combout\ & \inst7|Div0|auto_generated|divider|divider|op_13~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|op_14~18_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[76]~262_combout\,
	datac => \inst7|Div0|auto_generated|divider|divider|op_13~18_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|op_13~8_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[86]~227_combout\);

-- Location: LCCOMB_X25_Y12_N28
\inst7|Div0|auto_generated|divider|divider|StageOut[85]~228\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[85]~228_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_14~18_combout\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[75]~263_combout\) # 
-- ((\inst7|Div0|auto_generated|divider|divider|op_13~6_combout\ & !\inst7|Div0|auto_generated|divider|divider|op_13~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[75]~263_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|op_13~6_combout\,
	datac => \inst7|Div0|auto_generated|divider|divider|op_14~18_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|op_13~18_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[85]~228_combout\);

-- Location: LCCOMB_X25_Y11_N26
\inst7|Div0|auto_generated|divider|divider|StageOut[84]~229\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[84]~229_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_14~18_combout\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[74]~264_combout\) # 
-- ((!\inst7|Div0|auto_generated|divider|divider|op_13~18_combout\ & \inst7|Div0|auto_generated|divider|divider|op_13~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[74]~264_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|op_14~18_combout\,
	datac => \inst7|Div0|auto_generated|divider|divider|op_13~18_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|op_13~4_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[84]~229_combout\);

-- Location: LCCOMB_X25_Y12_N22
\inst7|Div0|auto_generated|divider|divider|StageOut[83]~230\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[83]~230_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_14~18_combout\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[73]~265_combout\) # 
-- ((\inst7|Div0|auto_generated|divider|divider|op_13~2_combout\ & !\inst7|Div0|auto_generated|divider|divider|op_13~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|op_13~2_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[73]~265_combout\,
	datac => \inst7|Div0|auto_generated|divider|divider|op_14~18_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|op_13~18_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[83]~230_combout\);

-- Location: LCCOMB_X24_Y11_N12
\inst7|Div0|auto_generated|divider|divider|StageOut[97]~231\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[97]~231_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_1~18_combout\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[87]~226_combout\) # 
-- ((!\inst7|Div0|auto_generated|divider|divider|op_14~18_combout\ & \inst7|Div0|auto_generated|divider|divider|op_14~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|op_14~18_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[87]~226_combout\,
	datac => \inst7|Div0|auto_generated|divider|divider|op_1~18_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|op_14~12_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[97]~231_combout\);

-- Location: LCCOMB_X24_Y11_N2
\inst7|Div0|auto_generated|divider|divider|StageOut[96]~232\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[96]~232_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_1~18_combout\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[86]~227_combout\) # 
-- ((\inst7|Div0|auto_generated|divider|divider|op_14~10_combout\ & !\inst7|Div0|auto_generated|divider|divider|op_14~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|op_14~10_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[86]~227_combout\,
	datac => \inst7|Div0|auto_generated|divider|divider|op_1~18_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|op_14~18_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[96]~232_combout\);

-- Location: LCCOMB_X22_Y11_N16
\inst7|Div0|auto_generated|divider|divider|StageOut[95]~233\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[95]~233_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_1~18_combout\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[85]~228_combout\) # 
-- ((\inst7|Div0|auto_generated|divider|divider|op_14~8_combout\ & !\inst7|Div0|auto_generated|divider|divider|op_14~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|op_1~18_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|op_14~8_combout\,
	datac => \inst7|Div0|auto_generated|divider|divider|op_14~18_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|StageOut[85]~228_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[95]~233_combout\);

-- Location: LCCOMB_X22_Y11_N6
\inst7|Div0|auto_generated|divider|divider|StageOut[94]~234\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[94]~234_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_1~18_combout\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[84]~229_combout\) # 
-- ((!\inst7|Div0|auto_generated|divider|divider|op_14~18_combout\ & \inst7|Div0|auto_generated|divider|divider|op_14~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|op_1~18_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|op_14~18_combout\,
	datac => \inst7|Div0|auto_generated|divider|divider|StageOut[84]~229_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|op_14~6_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[94]~234_combout\);

-- Location: LCCOMB_X24_Y11_N0
\inst7|Div0|auto_generated|divider|divider|StageOut[93]~235\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[93]~235_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_1~18_combout\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[83]~230_combout\) # 
-- ((!\inst7|Div0|auto_generated|divider|divider|op_14~18_combout\ & \inst7|Div0|auto_generated|divider|divider|op_14~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|op_14~18_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|op_14~4_combout\,
	datac => \inst7|Div0|auto_generated|divider|divider|op_1~18_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|StageOut[83]~230_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[93]~235_combout\);

-- Location: LCCOMB_X25_Y11_N24
\inst7|Div0|auto_generated|divider|divider|StageOut[92]~236\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[92]~236_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_1~18_combout\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[82]~266_combout\) # 
-- ((!\inst7|Div0|auto_generated|divider|divider|op_14~18_combout\ & \inst7|Div0|auto_generated|divider|divider|op_14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[82]~266_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|op_1~18_combout\,
	datac => \inst7|Div0|auto_generated|divider|divider|op_14~18_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|op_14~2_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[92]~236_combout\);

-- Location: LCCOMB_X24_Y11_N10
\inst7|Div0|auto_generated|divider|divider|StageOut[106]~237\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[106]~237_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_2~18_combout\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[96]~232_combout\) # 
-- ((!\inst7|Div0|auto_generated|divider|divider|op_1~18_combout\ & \inst7|Div0|auto_generated|divider|divider|op_1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|op_1~18_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|op_2~18_combout\,
	datac => \inst7|Div0|auto_generated|divider|divider|op_1~12_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|StageOut[96]~232_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[106]~237_combout\);

-- Location: LCCOMB_X22_Y11_N28
\inst7|Div0|auto_generated|divider|divider|StageOut[105]~238\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[105]~238_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_2~18_combout\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[95]~233_combout\) # 
-- ((\inst7|Div0|auto_generated|divider|divider|op_1~10_combout\ & !\inst7|Div0|auto_generated|divider|divider|op_1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|op_1~10_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|op_2~18_combout\,
	datac => \inst7|Div0|auto_generated|divider|divider|op_1~18_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|StageOut[95]~233_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[105]~238_combout\);

-- Location: LCCOMB_X22_Y11_N2
\inst7|Div0|auto_generated|divider|divider|StageOut[104]~239\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[104]~239_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_2~18_combout\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[94]~234_combout\) # 
-- ((!\inst7|Div0|auto_generated|divider|divider|op_1~18_combout\ & \inst7|Div0|auto_generated|divider|divider|op_1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[94]~234_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|op_2~18_combout\,
	datac => \inst7|Div0|auto_generated|divider|divider|op_1~18_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|op_1~8_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[104]~239_combout\);

-- Location: LCCOMB_X23_Y11_N4
\inst7|Div0|auto_generated|divider|divider|StageOut[103]~240\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[103]~240_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_2~18_combout\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[93]~235_combout\) # 
-- ((!\inst7|Div0|auto_generated|divider|divider|op_1~18_combout\ & \inst7|Div0|auto_generated|divider|divider|op_1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|op_1~18_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[93]~235_combout\,
	datac => \inst7|Div0|auto_generated|divider|divider|op_2~18_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|op_1~6_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[103]~240_combout\);

-- Location: LCCOMB_X23_Y11_N2
\inst7|Div0|auto_generated|divider|divider|StageOut[102]~241\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[102]~241_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_2~18_combout\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[92]~236_combout\) # 
-- ((!\inst7|Div0|auto_generated|divider|divider|op_1~18_combout\ & \inst7|Div0|auto_generated|divider|divider|op_1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|op_1~18_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[92]~236_combout\,
	datac => \inst7|Div0|auto_generated|divider|divider|op_2~18_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|op_1~4_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[102]~241_combout\);

-- Location: LCCOMB_X22_Y11_N24
\inst7|Div0|auto_generated|divider|divider|StageOut[101]~242\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[101]~242_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_2~18_combout\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[91]~267_combout\) # 
-- ((!\inst7|Div0|auto_generated|divider|divider|op_1~18_combout\ & \inst7|Div0|auto_generated|divider|divider|op_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[91]~267_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|op_2~18_combout\,
	datac => \inst7|Div0|auto_generated|divider|divider|op_1~18_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|op_1~2_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[101]~242_combout\);

-- Location: LCCOMB_X22_Y11_N22
\inst7|Div0|auto_generated|divider|divider|StageOut[115]~243\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[115]~243_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_3~18_combout\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[105]~238_combout\) # 
-- ((\inst7|Div0|auto_generated|divider|divider|op_2~12_combout\ & !\inst7|Div0|auto_generated|divider|divider|op_2~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[105]~238_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|op_3~18_combout\,
	datac => \inst7|Div0|auto_generated|divider|divider|op_2~12_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|op_2~18_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[115]~243_combout\);

-- Location: LCCOMB_X22_Y11_N8
\inst7|Div0|auto_generated|divider|divider|StageOut[114]~244\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[114]~244_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_3~18_combout\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[104]~239_combout\) # 
-- ((!\inst7|Div0|auto_generated|divider|divider|op_2~18_combout\ & \inst7|Div0|auto_generated|divider|divider|op_2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|op_3~18_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|op_2~18_combout\,
	datac => \inst7|Div0|auto_generated|divider|divider|StageOut[104]~239_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|op_2~10_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[114]~244_combout\);

-- Location: LCCOMB_X18_Y11_N24
\inst7|Div0|auto_generated|divider|divider|StageOut[113]~245\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[113]~245_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_3~18_combout\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[103]~240_combout\) # 
-- ((\inst7|Div0|auto_generated|divider|divider|op_2~8_combout\ & !\inst7|Div0|auto_generated|divider|divider|op_2~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|op_2~8_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|StageOut[103]~240_combout\,
	datac => \inst7|Div0|auto_generated|divider|divider|op_2~18_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|op_3~18_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[113]~245_combout\);

-- Location: LCCOMB_X18_Y11_N30
\inst7|Div0|auto_generated|divider|divider|StageOut[112]~246\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[112]~246_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_3~18_combout\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[102]~241_combout\) # 
-- ((!\inst7|Div0|auto_generated|divider|divider|op_2~18_combout\ & \inst7|Div0|auto_generated|divider|divider|op_2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|op_2~18_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|op_3~18_combout\,
	datac => \inst7|Div0|auto_generated|divider|divider|StageOut[102]~241_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|op_2~6_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[112]~246_combout\);

-- Location: LCCOMB_X18_Y11_N20
\inst7|Div0|auto_generated|divider|divider|StageOut[111]~247\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[111]~247_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_3~18_combout\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[101]~242_combout\) # 
-- ((!\inst7|Div0|auto_generated|divider|divider|op_2~18_combout\ & \inst7|Div0|auto_generated|divider|divider|op_2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[101]~242_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|op_3~18_combout\,
	datac => \inst7|Div0|auto_generated|divider|divider|op_2~18_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|op_2~4_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[111]~247_combout\);

-- Location: LCCOMB_X21_Y11_N26
\inst7|Div0|auto_generated|divider|divider|StageOut[110]~248\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[110]~248_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_3~18_combout\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[100]~268_combout\) # 
-- ((\inst7|Div0|auto_generated|divider|divider|op_2~2_combout\ & !\inst7|Div0|auto_generated|divider|divider|op_2~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|op_2~2_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|op_2~18_combout\,
	datac => \inst7|Div0|auto_generated|divider|divider|op_3~18_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|StageOut[100]~268_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[110]~248_combout\);

-- Location: LCCOMB_X18_Y11_N6
\inst7|Div0|auto_generated|divider|divider|StageOut[108]~249\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[108]~249_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_3~18_combout\ & (\inst7|pos_actual\(2) $ (((!\inst7|pos_actual\(0) & \inst7|pos_actual\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|pos_actual\(2),
	datab => \inst7|Div0|auto_generated|divider|divider|op_3~18_combout\,
	datac => \inst7|pos_actual\(0),
	datad => \inst7|pos_actual\(1),
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[108]~249_combout\);

-- Location: LCCOMB_X19_Y11_N12
\inst7|Div0|auto_generated|divider|divider|StageOut[124]~250\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[124]~250_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_4~18_combout\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[114]~244_combout\) # 
-- ((!\inst7|Div0|auto_generated|divider|divider|op_3~18_combout\ & \inst7|Div0|auto_generated|divider|divider|op_3~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|op_3~18_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|op_3~12_combout\,
	datac => \inst7|Div0|auto_generated|divider|divider|op_4~18_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|StageOut[114]~244_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[124]~250_combout\);

-- Location: LCCOMB_X16_Y11_N18
\inst7|Div0|auto_generated|divider|divider|StageOut[123]~251\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[123]~251_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_4~18_combout\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[113]~245_combout\) # 
-- ((\inst7|Div0|auto_generated|divider|divider|op_3~10_combout\ & !\inst7|Div0|auto_generated|divider|divider|op_3~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[113]~245_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|op_4~18_combout\,
	datac => \inst7|Div0|auto_generated|divider|divider|op_3~10_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|op_3~18_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[123]~251_combout\);

-- Location: LCCOMB_X18_Y11_N0
\inst7|Div0|auto_generated|divider|divider|StageOut[122]~252\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[122]~252_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_4~18_combout\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[112]~246_combout\) # 
-- ((!\inst7|Div0|auto_generated|divider|divider|op_3~18_combout\ & \inst7|Div0|auto_generated|divider|divider|op_3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[112]~246_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|op_3~18_combout\,
	datac => \inst7|Div0|auto_generated|divider|divider|op_3~8_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|op_4~18_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[122]~252_combout\);

-- Location: LCCOMB_X18_Y11_N18
\inst7|Div0|auto_generated|divider|divider|StageOut[121]~253\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[121]~253_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_4~18_combout\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[111]~247_combout\) # 
-- ((\inst7|Div0|auto_generated|divider|divider|op_3~6_combout\ & !\inst7|Div0|auto_generated|divider|divider|op_3~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|op_3~6_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|op_3~18_combout\,
	datac => \inst7|Div0|auto_generated|divider|divider|StageOut[111]~247_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|op_4~18_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[121]~253_combout\);

-- Location: LCCOMB_X17_Y11_N22
\inst7|Div0|auto_generated|divider|divider|StageOut[120]~254\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[120]~254_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_4~18_combout\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[110]~248_combout\) # 
-- ((!\inst7|Div0|auto_generated|divider|divider|op_3~18_combout\ & \inst7|Div0|auto_generated|divider|divider|op_3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|op_3~18_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|op_3~4_combout\,
	datac => \inst7|Div0|auto_generated|divider|divider|StageOut[110]~248_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|op_4~18_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[120]~254_combout\);

-- Location: LCCOMB_X18_Y11_N16
\inst7|Div0|auto_generated|divider|divider|StageOut[119]~255\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[119]~255_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_4~18_combout\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[109]~269_combout\) # 
-- ((\inst7|Div0|auto_generated|divider|divider|op_3~2_combout\ & !\inst7|Div0|auto_generated|divider|divider|op_3~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|StageOut[109]~269_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|op_4~18_combout\,
	datac => \inst7|Div0|auto_generated|divider|divider|op_3~2_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|op_3~18_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[119]~255_combout\);

-- Location: LCCOMB_X18_Y11_N10
\inst7|Div0|auto_generated|divider|divider|StageOut[118]~256\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[118]~256_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_4~18_combout\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[108]~249_combout\) # 
-- ((\inst7|Div0|auto_generated|divider|divider|op_3~0_combout\ & !\inst7|Div0|auto_generated|divider|divider|op_3~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|op_3~0_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|op_4~18_combout\,
	datac => \inst7|Div0|auto_generated|divider|divider|StageOut[108]~249_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|op_3~18_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[118]~256_combout\);

-- Location: LCCOMB_X17_Y11_N28
\inst7|Div0|auto_generated|divider|divider|StageOut[117]~257\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[117]~257_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_4~18_combout\ & (\inst7|pos_actual\(1) $ (\inst7|pos_actual\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Div0|auto_generated|divider|divider|op_4~18_combout\,
	datac => \inst7|pos_actual\(1),
	datad => \inst7|pos_actual\(0),
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[117]~257_combout\);

-- Location: LCCOMB_X18_Y12_N26
\inst7|Div0|auto_generated|divider|divider|StageOut[133]~258\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[133]~258_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_5~18_combout\ & ((\inst7|Div0|auto_generated|divider|divider|StageOut[123]~251_combout\) # 
-- ((\inst7|Div0|auto_generated|divider|divider|op_4~12_combout\ & !\inst7|Div0|auto_generated|divider|divider|op_4~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|op_4~12_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|op_4~18_combout\,
	datac => \inst7|Div0|auto_generated|divider|divider|op_5~18_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|StageOut[123]~251_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[133]~258_combout\);

-- Location: LCCOMB_X26_Y15_N4
\inst3|Div0|auto_generated|divider|divider|StageOut[88]~339\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[88]~339_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[78]~381_combout\) # 
-- ((!\inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|StageOut[78]~381_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[88]~339_combout\);

-- Location: LCCOMB_X26_Y15_N30
\inst3|Div0|auto_generated|divider|divider|StageOut[87]~340\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[87]~340_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[77]~382_combout\) # 
-- ((\inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\ & !\inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|StageOut[77]~382_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[87]~340_combout\);

-- Location: LCCOMB_X25_Y16_N2
\inst3|Div0|auto_generated|divider|divider|StageOut[86]~341\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[86]~341_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[76]~383_combout\) # 
-- ((\inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\ & !\inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[76]~383_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[86]~341_combout\);

-- Location: LCCOMB_X25_Y16_N8
\inst3|Div0|auto_generated|divider|divider|StageOut[85]~342\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[85]~342_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[75]~384_combout\) # 
-- ((\inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\ & !\inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|StageOut[75]~384_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[85]~342_combout\);

-- Location: LCCOMB_X26_Y18_N24
\inst3|Div0|auto_generated|divider|divider|StageOut[97]~343\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[97]~343_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[87]~340_combout\) # 
-- ((!\inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\ & \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~8_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|StageOut[87]~340_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[97]~343_combout\);

-- Location: LCCOMB_X25_Y16_N26
\inst3|Div0|auto_generated|divider|divider|StageOut[96]~344\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[96]~344_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[86]~341_combout\) # 
-- ((\inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~6_combout\ & !\inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~6_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|StageOut[86]~341_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[96]~344_combout\);

-- Location: LCCOMB_X26_Y18_N22
\inst3|Div0|auto_generated|divider|divider|StageOut[95]~345\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[95]~345_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[85]~342_combout\) # 
-- ((\inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~4_combout\ & !\inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~4_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[85]~342_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[95]~345_combout\);

-- Location: LCCOMB_X26_Y18_N28
\inst3|Div0|auto_generated|divider|divider|StageOut[94]~346\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[94]~346_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[84]~260_combout\) # 
-- ((\inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~2_combout\ & !\inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~2_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[84]~260_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[94]~346_combout\);

-- Location: LCCOMB_X25_Y18_N24
\inst3|Div0|auto_generated|divider|divider|StageOut[106]~347\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[106]~347_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[96]~344_combout\) # 
-- ((\inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~8_combout\ & !\inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~8_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|StageOut[96]~344_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[106]~347_combout\);

-- Location: LCCOMB_X25_Y18_N22
\inst3|Div0|auto_generated|divider|divider|StageOut[105]~348\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[105]~348_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[95]~345_combout\) # 
-- ((\inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~6_combout\ & !\inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~6_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|StageOut[95]~345_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[105]~348_combout\);

-- Location: LCCOMB_X26_Y18_N30
\inst3|Div0|auto_generated|divider|divider|StageOut[104]~349\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[104]~349_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[94]~346_combout\) # 
-- ((\inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~4_combout\ & !\inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~4_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|StageOut[94]~346_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[104]~349_combout\);

-- Location: LCCOMB_X25_Y17_N0
\inst3|Div0|auto_generated|divider|divider|StageOut[103]~350\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[103]~350_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[93]~395_combout\) # 
-- ((!\inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\ & \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[93]~395_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~2_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[103]~350_combout\);

-- Location: LCCOMB_X24_Y18_N10
\inst3|Div0|auto_generated|divider|divider|StageOut[115]~351\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[115]~351_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[105]~348_combout\) # 
-- ((!\inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\ & \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[105]~348_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~8_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[115]~351_combout\);

-- Location: LCCOMB_X24_Y18_N4
\inst3|Div0|auto_generated|divider|divider|StageOut[114]~352\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[114]~352_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[104]~349_combout\) # 
-- ((\inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~6_combout\ & !\inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~6_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|StageOut[104]~349_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[114]~352_combout\);

-- Location: LCCOMB_X25_Y17_N14
\inst3|Div0|auto_generated|divider|divider|StageOut[113]~353\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[113]~353_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[103]~350_combout\) # 
-- ((\inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~4_combout\ & !\inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~4_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|StageOut[103]~350_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[113]~353_combout\);

-- Location: LCCOMB_X19_Y18_N14
\inst3|Div0|auto_generated|divider|divider|StageOut[112]~354\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[112]~354_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[102]~396_combout\) # 
-- ((\inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~2_combout\ & !\inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~2_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|StageOut[102]~396_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[112]~354_combout\);

-- Location: LCCOMB_X25_Y17_N4
\inst3|Div0|auto_generated|divider|divider|StageOut[111]~355\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[111]~355_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[101]~387_combout\) # 
-- ((\inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~0_combout\ & !\inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~0_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|StageOut[101]~387_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[111]~355_combout\);

-- Location: LCCOMB_X24_Y18_N6
\inst3|Div0|auto_generated|divider|divider|StageOut[124]~356\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[124]~356_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~14_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[114]~352_combout\) # 
-- ((!\inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\ & \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[114]~352_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~8_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[124]~356_combout\);

-- Location: LCCOMB_X23_Y18_N14
\inst3|Div0|auto_generated|divider|divider|StageOut[123]~357\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[123]~357_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~14_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[113]~353_combout\) # 
-- ((\inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~6_combout\ & !\inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~6_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|StageOut[113]~353_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[123]~357_combout\);

-- Location: LCCOMB_X19_Y18_N0
\inst3|Div0|auto_generated|divider|divider|StageOut[122]~358\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[122]~358_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~14_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[112]~354_combout\) # 
-- ((!\inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\ & \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~4_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|StageOut[112]~354_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[122]~358_combout\);

-- Location: LCCOMB_X25_Y17_N30
\inst3|Div0|auto_generated|divider|divider|StageOut[121]~359\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[121]~359_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~14_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[111]~355_combout\) # 
-- ((!\inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\ & \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~2_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|StageOut[111]~355_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[121]~359_combout\);

-- Location: LCCOMB_X22_Y18_N26
\inst3|Div0|auto_generated|divider|divider|StageOut[133]~360\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[133]~360_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[9]~14_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[123]~357_combout\) # 
-- ((\inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~8_combout\ & !\inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~8_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[123]~357_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[9]~14_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[133]~360_combout\);

-- Location: LCCOMB_X22_Y18_N0
\inst3|Div0|auto_generated|divider|divider|StageOut[132]~361\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[132]~361_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[9]~14_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[122]~358_combout\) # 
-- ((!\inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~14_combout\ & \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~14_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[122]~358_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[9]~14_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~6_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[132]~361_combout\);

-- Location: LCCOMB_X22_Y18_N2
\inst3|Div0|auto_generated|divider|divider|StageOut[131]~362\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[131]~362_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[9]~14_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[121]~359_combout\) # 
-- ((\inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~4_combout\ & !\inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~4_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~14_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[9]~14_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|StageOut[121]~359_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[131]~362_combout\);

-- Location: LCCOMB_X19_Y18_N22
\inst3|Div0|auto_generated|divider|divider|StageOut[130]~363\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[130]~363_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[9]~14_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[120]~397_combout\) # 
-- ((!\inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~14_combout\ & \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~14_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~2_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|StageOut[120]~397_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[130]~363_combout\);

-- Location: LCCOMB_X21_Y18_N24
\inst3|Div0|auto_generated|divider|divider|StageOut[142]~364\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[142]~364_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[9]~14_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[132]~361_combout\) # 
-- ((!\inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[9]~14_combout\ & \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[9]~14_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[6]~8_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|StageOut[132]~361_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[142]~364_combout\);

-- Location: LCCOMB_X21_Y18_N26
\inst3|Div0|auto_generated|divider|divider|StageOut[141]~365\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[141]~365_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[9]~14_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[131]~362_combout\) # 
-- ((!\inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[9]~14_combout\ & \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[131]~362_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[9]~14_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[5]~6_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[141]~365_combout\);

-- Location: LCCOMB_X19_Y18_N20
\inst3|Div0|auto_generated|divider|divider|StageOut[140]~366\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[140]~366_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[9]~14_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[130]~363_combout\) # 
-- ((\inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~4_combout\ & !\inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[4]~4_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[9]~14_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|StageOut[130]~363_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[140]~366_combout\);

-- Location: LCCOMB_X19_Y18_N30
\inst3|Div0|auto_generated|divider|divider|StageOut[139]~367\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[139]~367_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[9]~14_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[129]~398_combout\) # 
-- ((!\inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[9]~14_combout\ & \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[129]~398_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[9]~14_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[3]~2_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[139]~367_combout\);

-- Location: LCCOMB_X21_Y17_N28
\inst3|Div0|auto_generated|divider|divider|StageOut[151]~368\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[151]~368_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[9]~14_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[141]~365_combout\) # 
-- ((!\inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[9]~14_combout\ & \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[141]~365_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[9]~14_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[6]~8_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[151]~368_combout\);

-- Location: LCCOMB_X21_Y17_N30
\inst3|Div0|auto_generated|divider|divider|StageOut[150]~369\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[150]~369_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[9]~14_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[140]~366_combout\) # 
-- ((\inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~6_combout\ & !\inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[5]~6_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[9]~14_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|StageOut[140]~366_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[150]~369_combout\);

-- Location: LCCOMB_X23_Y17_N24
\inst3|Div0|auto_generated|divider|divider|StageOut[149]~370\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[149]~370_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[9]~14_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[139]~367_combout\) # 
-- ((\inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~4_combout\ & !\inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[4]~4_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[9]~14_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|StageOut[139]~367_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[149]~370_combout\);

-- Location: LCCOMB_X21_Y16_N10
\inst3|Div0|auto_generated|divider|divider|StageOut[148]~371\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[148]~371_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[9]~14_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[138]~399_combout\) # 
-- ((!\inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[9]~14_combout\ & \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[9]~14_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[138]~399_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[3]~2_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[148]~371_combout\);

-- Location: LCCOMB_X22_Y17_N2
\inst3|Div0|auto_generated|divider|divider|StageOut[160]~372\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[160]~372_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[9]~14_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[150]~369_combout\) # 
-- ((\inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[6]~8_combout\ & !\inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[6]~8_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[9]~14_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|StageOut[150]~369_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[160]~372_combout\);

-- Location: LCCOMB_X23_Y17_N10
\inst3|Div0|auto_generated|divider|divider|StageOut[159]~373\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[159]~373_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[9]~14_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[149]~370_combout\) # 
-- ((!\inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[9]~14_combout\ & \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[9]~14_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[149]~370_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[5]~6_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[159]~373_combout\);

-- Location: LCCOMB_X21_Y16_N20
\inst3|Div0|auto_generated|divider|divider|StageOut[158]~374\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[158]~374_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[9]~14_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[148]~371_combout\) # 
-- ((!\inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[9]~14_combout\ & \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[148]~371_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[9]~14_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[9]~14_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[4]~4_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[158]~374_combout\);

-- Location: LCCOMB_X23_Y17_N4
\inst3|Div0|auto_generated|divider|divider|StageOut[157]~375\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[157]~375_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[9]~14_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[147]~400_combout\) # 
-- ((!\inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[9]~14_combout\ & \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[9]~14_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[147]~400_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[3]~2_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[157]~375_combout\);

-- Location: LCCOMB_X23_Y17_N22
\inst3|Div0|auto_generated|divider|divider|StageOut[169]~376\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[169]~376_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~14_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[159]~373_combout\) # 
-- ((!\inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[9]~14_combout\ & \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[6]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[159]~373_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[9]~14_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[6]~8_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[169]~376_combout\);

-- Location: LCCOMB_X21_Y16_N6
\inst3|Div0|auto_generated|divider|divider|StageOut[168]~377\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[168]~377_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~14_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[158]~374_combout\) # 
-- ((\inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[5]~6_combout\ & !\inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[5]~6_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[9]~14_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~14_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|StageOut[158]~374_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[168]~377_combout\);

-- Location: LCCOMB_X23_Y17_N28
\inst3|Div0|auto_generated|divider|divider|StageOut[167]~378\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[167]~378_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~14_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[157]~375_combout\) # 
-- ((\inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[4]~4_combout\ & !\inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[4]~4_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[9]~14_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|StageOut[157]~375_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[167]~378_combout\);

-- Location: LCCOMB_X23_Y17_N30
\inst3|Div0|auto_generated|divider|divider|StageOut[166]~379\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[166]~379_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~14_combout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[156]~401_combout\) # 
-- ((!\inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[9]~14_combout\ & \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[9]~14_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[3]~2_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|StageOut[156]~401_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[166]~379_combout\);

-- Location: LCCOMB_X23_Y13_N28
\inst7|Div0|auto_generated|divider|divider|StageOut[79]~259\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[79]~259_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_13~18_combout\ & ((\inst7|Div0|auto_generated|divider|divider|op_12~16_combout\ & 
-- ((\inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\))) # (!\inst7|Div0|auto_generated|divider|divider|op_12~16_combout\ & (\inst7|Div0|auto_generated|divider|divider|op_12~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|op_13~18_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|op_12~12_combout\,
	datac => \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|op_12~16_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[79]~259_combout\);

-- Location: LCCOMB_X24_Y13_N10
\inst7|Div0|auto_generated|divider|divider|StageOut[78]~260\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[78]~260_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_13~18_combout\ & ((\inst7|Div0|auto_generated|divider|divider|op_12~16_combout\ & 
-- ((\inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\))) # (!\inst7|Div0|auto_generated|divider|divider|op_12~16_combout\ & (\inst7|Div0|auto_generated|divider|divider|op_12~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|op_12~10_combout\,
	datab => \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\,
	datac => \inst7|Div0|auto_generated|divider|divider|op_12~16_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|op_13~18_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[78]~260_combout\);

-- Location: LCCOMB_X23_Y13_N30
\inst7|Div0|auto_generated|divider|divider|StageOut[77]~261\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[77]~261_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_13~18_combout\ & ((\inst7|Div0|auto_generated|divider|divider|op_12~16_combout\ & 
-- (\inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\)) # (!\inst7|Div0|auto_generated|divider|divider|op_12~16_combout\ & ((\inst7|Div0|auto_generated|divider|divider|op_12~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|op_12~16_combout\,
	datac => \inst7|Div0|auto_generated|divider|divider|op_13~18_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|op_12~8_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[77]~261_combout\);

-- Location: LCCOMB_X23_Y13_N20
\inst7|Div0|auto_generated|divider|divider|StageOut[76]~262\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[76]~262_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_13~18_combout\ & ((\inst7|Div0|auto_generated|divider|divider|op_12~16_combout\ & 
-- ((\inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\))) # (!\inst7|Div0|auto_generated|divider|divider|op_12~16_combout\ & (\inst7|Div0|auto_generated|divider|divider|op_12~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|op_13~18_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|op_12~16_combout\,
	datac => \inst7|Div0|auto_generated|divider|divider|op_12~6_combout\,
	datad => \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[76]~262_combout\);

-- Location: LCCOMB_X24_Y13_N28
\inst7|Div0|auto_generated|divider|divider|StageOut[75]~263\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[75]~263_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_13~18_combout\ & ((\inst7|Div0|auto_generated|divider|divider|op_12~16_combout\ & 
-- (\inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\)) # (!\inst7|Div0|auto_generated|divider|divider|op_12~16_combout\ & ((\inst7|Div0|auto_generated|divider|divider|op_12~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|op_12~16_combout\,
	datab => \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	datac => \inst7|Div0|auto_generated|divider|divider|op_12~4_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|op_13~18_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[75]~263_combout\);

-- Location: LCCOMB_X23_Y13_N22
\inst7|Div0|auto_generated|divider|divider|StageOut[74]~264\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[74]~264_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_13~18_combout\ & ((\inst7|Div0|auto_generated|divider|divider|op_12~16_combout\ & 
-- (\inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\)) # (!\inst7|Div0|auto_generated|divider|divider|op_12~16_combout\ & ((\inst7|Div0|auto_generated|divider|divider|op_12~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|op_12~2_combout\,
	datac => \inst7|Div0|auto_generated|divider|divider|op_13~18_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|op_12~16_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[74]~264_combout\);

-- Location: LCCOMB_X24_Y13_N22
\inst7|Div0|auto_generated|divider|divider|StageOut[73]~265\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[73]~265_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_13~18_combout\ & ((\inst7|Div0|auto_generated|divider|divider|op_12~16_combout\ & 
-- ((\inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\))) # (!\inst7|Div0|auto_generated|divider|divider|op_12~16_combout\ & (\inst7|Div0|auto_generated|divider|divider|op_12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|op_12~0_combout\,
	datab => \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	datac => \inst7|Div0|auto_generated|divider|divider|op_12~16_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|op_13~18_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[73]~265_combout\);

-- Location: LCCOMB_X25_Y13_N28
\inst7|Div0|auto_generated|divider|divider|StageOut[82]~266\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[82]~266_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_14~18_combout\ & ((\inst7|Div0|auto_generated|divider|divider|op_13~18_combout\ & 
-- ((\inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\))) # (!\inst7|Div0|auto_generated|divider|divider|op_13~18_combout\ & (\inst7|Div0|auto_generated|divider|divider|op_13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|op_13~18_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|op_13~0_combout\,
	datac => \inst7|Div0|auto_generated|divider|divider|op_14~18_combout\,
	datad => \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[82]~266_combout\);

-- Location: LCCOMB_X24_Y11_N20
\inst7|Div0|auto_generated|divider|divider|StageOut[91]~267\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[91]~267_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_1~18_combout\ & ((\inst7|Div0|auto_generated|divider|divider|op_14~18_combout\ & 
-- (\inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\)) # (!\inst7|Div0|auto_generated|divider|divider|op_14~18_combout\ & ((\inst7|Div0|auto_generated|divider|divider|op_14~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|op_14~18_combout\,
	datab => \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	datac => \inst7|Div0|auto_generated|divider|divider|op_1~18_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|op_14~0_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[91]~267_combout\);

-- Location: LCCOMB_X25_Y11_N22
\inst7|Div0|auto_generated|divider|divider|StageOut[100]~268\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[100]~268_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_2~18_combout\ & ((\inst7|Div0|auto_generated|divider|divider|op_1~18_combout\ & 
-- ((\inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\))) # (!\inst7|Div0|auto_generated|divider|divider|op_1~18_combout\ & (\inst7|Div0|auto_generated|divider|divider|op_1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|op_1~0_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|op_1~18_combout\,
	datac => \inst7|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	datad => \inst7|Div0|auto_generated|divider|divider|op_2~18_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[100]~268_combout\);

-- Location: LCCOMB_X22_Y11_N26
\inst7|Div0|auto_generated|divider|divider|StageOut[109]~269\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Div0|auto_generated|divider|divider|StageOut[109]~269_combout\ = (\inst7|Div0|auto_generated|divider|divider|op_3~18_combout\ & ((\inst7|Div0|auto_generated|divider|divider|op_2~18_combout\ & ((\inst7|Mult0|mult_core|romout[0][4]~12_combout\))) # 
-- (!\inst7|Div0|auto_generated|divider|divider|op_2~18_combout\ & (\inst7|Div0|auto_generated|divider|divider|op_2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Div0|auto_generated|divider|divider|op_3~18_combout\,
	datab => \inst7|Div0|auto_generated|divider|divider|op_2~18_combout\,
	datac => \inst7|Div0|auto_generated|divider|divider|op_2~0_combout\,
	datad => \inst7|Mult0|mult_core|romout[0][4]~12_combout\,
	combout => \inst7|Div0|auto_generated|divider|divider|StageOut[109]~269_combout\);

-- Location: LCCOMB_X25_Y15_N6
\inst3|Div0|auto_generated|divider|divider|StageOut[79]~380\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[79]~380_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & ((\inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- (\inst3|Add2~34_combout\)) # (!\inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add2~34_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[79]~380_combout\);

-- Location: LCCOMB_X25_Y15_N28
\inst3|Div0|auto_generated|divider|divider|StageOut[78]~381\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[78]~381_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & ((\inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- (\inst3|Add2~32_combout\)) # (!\inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add2~32_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[78]~381_combout\);

-- Location: LCCOMB_X25_Y15_N2
\inst3|Div0|auto_generated|divider|divider|StageOut[77]~382\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[77]~382_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & ((\inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- (\inst3|Add2~30_combout\)) # (!\inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \inst3|Add2~30_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[77]~382_combout\);

-- Location: LCCOMB_X25_Y16_N20
\inst3|Div0|auto_generated|divider|divider|StageOut[76]~383\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[76]~383_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & ((\inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- (\inst3|Add2~28_combout\)) # (!\inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add2~28_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[76]~383_combout\);

-- Location: LCCOMB_X25_Y16_N30
\inst3|Div0|auto_generated|divider|divider|StageOut[75]~384\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[75]~384_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & ((\inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- (\inst3|Add2~26_combout\)) # (!\inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add2~26_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[75]~384_combout\);

-- Location: LCCOMB_X24_Y15_N12
\inst3|Div0|auto_generated|divider|divider|StageOut[83]~385\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[83]~385_combout\ = (\inst3|Add2~22_combout\ & \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Add2~22_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[83]~385_combout\);

-- Location: LCCOMB_X25_Y17_N12
\inst3|Div0|auto_generated|divider|divider|StageOut[92]~386\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[92]~386_combout\ = (\inst3|Add2~20_combout\ & \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Add2~20_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[92]~386_combout\);

-- Location: LCCOMB_X25_Y17_N10
\inst3|Div0|auto_generated|divider|divider|StageOut[101]~387\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[101]~387_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\ & ((\inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\ & 
-- (\inst3|Add2~18_combout\)) # (!\inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\ & ((\inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\,
	datab => \inst3|Add2~18_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~16_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[101]~387_combout\);

-- Location: LCCOMB_X24_Y17_N0
\inst3|Div0|auto_generated|divider|divider|StageOut[110]~388\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[110]~388_combout\ = (\inst3|Add2~16_combout\ & \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add2~16_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[110]~388_combout\);

-- Location: LCCOMB_X19_Y18_N16
\inst3|Div0|auto_generated|divider|divider|StageOut[119]~389\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[119]~389_combout\ = (\inst3|Add2~14_combout\ & \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Add2~14_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[119]~389_combout\);

-- Location: LCCOMB_X23_Y17_N0
\inst3|Div0|auto_generated|divider|divider|StageOut[128]~390\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[128]~390_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[9]~14_combout\ & \inst3|Add2~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[9]~14_combout\,
	datad => \inst3|Add2~12_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[128]~390_combout\);

-- Location: LCCOMB_X19_Y18_N6
\inst3|Div0|auto_generated|divider|divider|StageOut[137]~391\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[137]~391_combout\ = (\inst3|Add2~10_combout\ & \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Add2~10_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[137]~391_combout\);

-- Location: LCCOMB_X21_Y16_N0
\inst3|Div0|auto_generated|divider|divider|StageOut[146]~392\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[146]~392_combout\ = (\inst3|Add2~8_combout\ & \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add2~8_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[146]~392_combout\);

-- Location: LCCOMB_X23_Y17_N26
\inst3|Div0|auto_generated|divider|divider|StageOut[155]~393\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[155]~393_combout\ = (\inst3|Add2~6_combout\ & \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Add2~6_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[155]~393_combout\);

-- Location: LCCOMB_X21_Y14_N6
\inst3|Div0|auto_generated|divider|divider|StageOut[164]~394\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[164]~394_combout\ = (\inst3|Add2~4_combout\ & \inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Add2~4_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[164]~394_combout\);

-- Location: LCCOMB_X22_Y16_N0
\inst3|grados[4]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|grados[4]~10_combout\ = ((\inst|numero\(7) & !\inst|numero\(6))) # (!\inst|numero\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|numero\(7),
	datab => \inst|numero\(4),
	datad => \inst|numero\(6),
	combout => \inst3|grados[4]~10_combout\);

-- Location: LCCOMB_X25_Y17_N16
\inst3|Div0|auto_generated|divider|divider|StageOut[93]~395\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[93]~395_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\ & ((\inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\ & 
-- (\inst3|Add2~22_combout\)) # (!\inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\ & ((\inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add2~22_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~0_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[93]~395_combout\);

-- Location: LCCOMB_X26_Y17_N6
\inst3|Div0|auto_generated|divider|divider|StageOut[102]~396\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[102]~396_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\ & ((\inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\ & 
-- ((\inst3|Add2~20_combout\))) # (!\inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\ & (\inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~0_combout\,
	datab => \inst3|Add2~20_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[102]~396_combout\);

-- Location: LCCOMB_X19_Y18_N4
\inst3|Div0|auto_generated|divider|divider|StageOut[120]~397\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[120]~397_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~14_combout\ & ((\inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\ & 
-- (\inst3|Add2~16_combout\)) # (!\inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\ & ((\inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add2~16_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~0_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[120]~397_combout\);

-- Location: LCCOMB_X19_Y18_N10
\inst3|Div0|auto_generated|divider|divider|StageOut[129]~398\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[129]~398_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[9]~14_combout\ & ((\inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~14_combout\ & 
-- ((\inst3|Add2~14_combout\))) # (!\inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~14_combout\ & (\inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~0_combout\,
	datab => \inst3|Add2~14_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~14_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[129]~398_combout\);

-- Location: LCCOMB_X21_Y16_N14
\inst3|Div0|auto_generated|divider|divider|StageOut[138]~399\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[138]~399_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[9]~14_combout\ & ((\inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[9]~14_combout\ & 
-- (\inst3|Add2~12_combout\)) # (!\inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[9]~14_combout\ & ((\inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add2~12_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[2]~0_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_14_result_int[9]~14_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[138]~399_combout\);

-- Location: LCCOMB_X23_Y17_N20
\inst3|Div0|auto_generated|divider|divider|StageOut[147]~400\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[147]~400_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[9]~14_combout\ & ((\inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[9]~14_combout\ & 
-- (\inst3|Add2~10_combout\)) # (!\inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[9]~14_combout\ & ((\inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add2~10_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[2]~0_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_15_result_int[9]~14_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[147]~400_combout\);

-- Location: LCCOMB_X23_Y17_N14
\inst3|Div0|auto_generated|divider|divider|StageOut[156]~401\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[156]~401_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[9]~14_combout\ & ((\inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[9]~14_combout\ & 
-- (\inst3|Add2~8_combout\)) # (!\inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[9]~14_combout\ & ((\inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[2]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[9]~14_combout\,
	datab => \inst3|Add2~8_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_16_result_int[2]~0_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[156]~401_combout\);

-- Location: LCCOMB_X21_Y14_N0
\inst3|Div0|auto_generated|divider|divider|StageOut[165]~402\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[165]~402_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~14_combout\ & ((\inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[9]~14_combout\ & 
-- (\inst3|Add2~6_combout\)) # (!\inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[9]~14_combout\ & ((\inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[2]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[9]~14_combout\,
	datab => \inst3|Add2~6_combout\,
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_17_result_int[2]~0_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_18_result_int[9]~14_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[165]~402_combout\);

-- Location: LCCOMB_X21_Y12_N24
\inst7|ancho[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|ancho[7]~1_combout\ = !\inst7|Add2~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Add2~14_combout\,
	combout => \inst7|ancho[7]~1_combout\);

-- Location: LCCOMB_X21_Y12_N26
\inst7|ancho[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|ancho[4]~2_combout\ = !\inst7|Add2~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|Add2~8_combout\,
	combout => \inst7|ancho[4]~2_combout\);

-- Location: LCCOMB_X21_Y12_N0
\inst7|ancho[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|ancho[2]~3_combout\ = !\inst7|Add2~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|Add2~4_combout\,
	combout => \inst7|ancho[2]~3_combout\);

-- Location: LCCOMB_X21_Y12_N2
\inst7|ancho[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|ancho[1]~4_combout\ = !\inst7|Add2~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|Add2~2_combout\,
	combout => \inst7|ancho[1]~4_combout\);

-- Location: IOIBUF_X0_Y11_N8
\Rdx~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rdx,
	o => \Rdx~input_o\);

-- Location: CLKCTRL_G3
\CLK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X29_Y10_N2
\inst9|dato_listo~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|dato_listo~feeder_combout\ = \inst9|bufferRx[2]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst9|bufferRx[2]~0_combout\,
	combout => \inst9|dato_listo~feeder_combout\);

-- Location: LCCOMB_X28_Y9_N2
\inst9|bufferRx[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|bufferRx[6]~feeder_combout\ = \inst9|registroRx\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst9|registroRx\(6),
	combout => \inst9|bufferRx[6]~feeder_combout\);

-- Location: LCCOMB_X28_Y9_N26
\inst9|registroRx[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|registroRx[5]~feeder_combout\ = \inst9|registroRx\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst9|registroRx\(6),
	combout => \inst9|registroRx[5]~feeder_combout\);

-- Location: LCCOMB_X28_Y9_N6
\inst9|bufferRx[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|bufferRx[4]~feeder_combout\ = \inst9|registroRx\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst9|registroRx\(4),
	combout => \inst9|bufferRx[4]~feeder_combout\);

-- Location: LCCOMB_X28_Y9_N14
\inst9|registroRx[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|registroRx[3]~feeder_combout\ = \inst9|registroRx\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst9|registroRx\(4),
	combout => \inst9|registroRx[3]~feeder_combout\);

-- Location: IOOBUF_X30_Y24_N23
\PWM~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|salida~q\,
	devoe => ww_devoe,
	o => ww_PWM);

-- Location: IOIBUF_X0_Y11_N15
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: PLL_1
\inst5|altpll_component|auto_generated|pll1\ : cycloneive_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 6,
	c0_initial => 1,
	c0_low => 6,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 250,
	c1_initial => 1,
	c1_low => 250,
	c1_mode => "even",
	c1_ph => 0,
	c1_use_casc_in => "on",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c1",
	clk0_divide_by => 500,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 1,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 12,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	pll_compensation_delay => 6749,
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 208,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	fbin => \inst5|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \inst5|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \inst5|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \inst5|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G4
\inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X23_Y12_N8
\inst7|cnt[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|cnt[0]~11_combout\ = \inst7|cnt\(0) $ (VCC)
-- \inst7|cnt[0]~12\ = CARRY(\inst7|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|cnt\(0),
	datad => VCC,
	combout => \inst7|cnt[0]~11_combout\,
	cout => \inst7|cnt[0]~12\);

-- Location: LCCOMB_X23_Y12_N12
\inst7|cnt[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|cnt[2]~15_combout\ = (\inst7|cnt\(2) & (\inst7|cnt[1]~14\ $ (GND))) # (!\inst7|cnt\(2) & (!\inst7|cnt[1]~14\ & VCC))
-- \inst7|cnt[2]~16\ = CARRY((\inst7|cnt\(2) & !\inst7|cnt[1]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cnt\(2),
	datad => VCC,
	cin => \inst7|cnt[1]~14\,
	combout => \inst7|cnt[2]~15_combout\,
	cout => \inst7|cnt[2]~16\);

-- Location: FF_X23_Y12_N13
\inst7|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst7|cnt[2]~15_combout\,
	sclr => \inst7|cnt[10]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|cnt\(2));

-- Location: LCCOMB_X23_Y12_N10
\inst7|cnt[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|cnt[1]~13_combout\ = (\inst7|cnt\(1) & (!\inst7|cnt[0]~12\)) # (!\inst7|cnt\(1) & ((\inst7|cnt[0]~12\) # (GND)))
-- \inst7|cnt[1]~14\ = CARRY((!\inst7|cnt[0]~12\) # (!\inst7|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cnt\(1),
	datad => VCC,
	cin => \inst7|cnt[0]~12\,
	combout => \inst7|cnt[1]~13_combout\,
	cout => \inst7|cnt[1]~14\);

-- Location: FF_X23_Y12_N11
\inst7|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst7|cnt[1]~13_combout\,
	sclr => \inst7|cnt[10]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|cnt\(1));

-- Location: LCCOMB_X22_Y12_N0
\inst7|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Equal0~1_combout\ = (((!\inst7|cnt\(3)) # (!\inst7|cnt\(1))) # (!\inst7|cnt\(2))) # (!\inst7|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cnt\(0),
	datab => \inst7|cnt\(2),
	datac => \inst7|cnt\(1),
	datad => \inst7|cnt\(3),
	combout => \inst7|Equal0~1_combout\);

-- Location: IOIBUF_X34_Y7_N8
\RESET~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: LCCOMB_X23_Y12_N22
\inst7|cnt[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|cnt[7]~25_combout\ = (\inst7|cnt\(7) & (!\inst7|cnt[6]~24\)) # (!\inst7|cnt\(7) & ((\inst7|cnt[6]~24\) # (GND)))
-- \inst7|cnt[7]~26\ = CARRY((!\inst7|cnt[6]~24\) # (!\inst7|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cnt\(7),
	datad => VCC,
	cin => \inst7|cnt[6]~24\,
	combout => \inst7|cnt[7]~25_combout\,
	cout => \inst7|cnt[7]~26\);

-- Location: FF_X23_Y12_N23
\inst7|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst7|cnt[7]~25_combout\,
	sclr => \inst7|cnt[10]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|cnt\(7));

-- Location: LCCOMB_X23_Y12_N6
\inst7|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Equal0~0_combout\ = (((!\inst7|cnt\(8)) # (!\inst7|cnt\(7))) # (!\inst7|cnt\(10))) # (!\inst7|cnt\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cnt\(9),
	datab => \inst7|cnt\(10),
	datac => \inst7|cnt\(7),
	datad => \inst7|cnt\(8),
	combout => \inst7|Equal0~0_combout\);

-- Location: LCCOMB_X22_Y12_N8
\inst7|cnt[10]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|cnt[10]~27_combout\ = ((!\inst7|Equal0~2_combout\ & (!\inst7|Equal0~1_combout\ & !\inst7|Equal0~0_combout\))) # (!\RESET~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal0~2_combout\,
	datab => \inst7|Equal0~1_combout\,
	datac => \RESET~input_o\,
	datad => \inst7|Equal0~0_combout\,
	combout => \inst7|cnt[10]~27_combout\);

-- Location: FF_X23_Y12_N9
\inst7|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst7|cnt[0]~11_combout\,
	sclr => \inst7|cnt[10]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|cnt\(0));

-- Location: LCCOMB_X23_Y12_N14
\inst7|cnt[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|cnt[3]~17_combout\ = (\inst7|cnt\(3) & (!\inst7|cnt[2]~16\)) # (!\inst7|cnt\(3) & ((\inst7|cnt[2]~16\) # (GND)))
-- \inst7|cnt[3]~18\ = CARRY((!\inst7|cnt[2]~16\) # (!\inst7|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|cnt\(3),
	datad => VCC,
	cin => \inst7|cnt[2]~16\,
	combout => \inst7|cnt[3]~17_combout\,
	cout => \inst7|cnt[3]~18\);

-- Location: FF_X23_Y12_N15
\inst7|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst7|cnt[3]~17_combout\,
	sclr => \inst7|cnt[10]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|cnt\(3));

-- Location: LCCOMB_X23_Y12_N16
\inst7|cnt[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|cnt[4]~19_combout\ = (\inst7|cnt\(4) & (\inst7|cnt[3]~18\ $ (GND))) # (!\inst7|cnt\(4) & (!\inst7|cnt[3]~18\ & VCC))
-- \inst7|cnt[4]~20\ = CARRY((\inst7|cnt\(4) & !\inst7|cnt[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|cnt\(4),
	datad => VCC,
	cin => \inst7|cnt[3]~18\,
	combout => \inst7|cnt[4]~19_combout\,
	cout => \inst7|cnt[4]~20\);

-- Location: FF_X23_Y12_N17
\inst7|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst7|cnt[4]~19_combout\,
	sclr => \inst7|cnt[10]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|cnt\(4));

-- Location: LCCOMB_X23_Y12_N18
\inst7|cnt[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|cnt[5]~21_combout\ = (\inst7|cnt\(5) & (!\inst7|cnt[4]~20\)) # (!\inst7|cnt\(5) & ((\inst7|cnt[4]~20\) # (GND)))
-- \inst7|cnt[5]~22\ = CARRY((!\inst7|cnt[4]~20\) # (!\inst7|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|cnt\(5),
	datad => VCC,
	cin => \inst7|cnt[4]~20\,
	combout => \inst7|cnt[5]~21_combout\,
	cout => \inst7|cnt[5]~22\);

-- Location: FF_X23_Y12_N19
\inst7|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst7|cnt[5]~21_combout\,
	sclr => \inst7|cnt[10]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|cnt\(5));

-- Location: LCCOMB_X23_Y12_N20
\inst7|cnt[6]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|cnt[6]~23_combout\ = (\inst7|cnt\(6) & (\inst7|cnt[5]~22\ $ (GND))) # (!\inst7|cnt\(6) & (!\inst7|cnt[5]~22\ & VCC))
-- \inst7|cnt[6]~24\ = CARRY((\inst7|cnt\(6) & !\inst7|cnt[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|cnt\(6),
	datad => VCC,
	cin => \inst7|cnt[5]~22\,
	combout => \inst7|cnt[6]~23_combout\,
	cout => \inst7|cnt[6]~24\);

-- Location: FF_X23_Y12_N21
\inst7|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst7|cnt[6]~23_combout\,
	sclr => \inst7|cnt[10]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|cnt\(6));

-- Location: LCCOMB_X23_Y12_N24
\inst7|cnt[8]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|cnt[8]~28_combout\ = (\inst7|cnt\(8) & (\inst7|cnt[7]~26\ $ (GND))) # (!\inst7|cnt\(8) & (!\inst7|cnt[7]~26\ & VCC))
-- \inst7|cnt[8]~29\ = CARRY((\inst7|cnt\(8) & !\inst7|cnt[7]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|cnt\(8),
	datad => VCC,
	cin => \inst7|cnt[7]~26\,
	combout => \inst7|cnt[8]~28_combout\,
	cout => \inst7|cnt[8]~29\);

-- Location: FF_X23_Y12_N25
\inst7|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst7|cnt[8]~28_combout\,
	sclr => \inst7|cnt[10]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|cnt\(8));

-- Location: LCCOMB_X23_Y12_N26
\inst7|cnt[9]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|cnt[9]~30_combout\ = (\inst7|cnt\(9) & (!\inst7|cnt[8]~29\)) # (!\inst7|cnt\(9) & ((\inst7|cnt[8]~29\) # (GND)))
-- \inst7|cnt[9]~31\ = CARRY((!\inst7|cnt[8]~29\) # (!\inst7|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cnt\(9),
	datad => VCC,
	cin => \inst7|cnt[8]~29\,
	combout => \inst7|cnt[9]~30_combout\,
	cout => \inst7|cnt[9]~31\);

-- Location: LCCOMB_X23_Y12_N28
\inst7|cnt[10]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|cnt[10]~32_combout\ = \inst7|cnt[9]~31\ $ (!\inst7|cnt\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst7|cnt\(10),
	cin => \inst7|cnt[9]~31\,
	combout => \inst7|cnt[10]~32_combout\);

-- Location: FF_X23_Y12_N29
\inst7|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst7|cnt[10]~32_combout\,
	sclr => \inst7|cnt[10]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|cnt\(10));

-- Location: FF_X23_Y12_N27
\inst7|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst7|cnt[9]~30_combout\,
	sclr => \inst7|cnt[10]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|cnt\(9));

-- Location: LCCOMB_X23_Y12_N0
\inst7|LessThan2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LessThan2~16_combout\ = (\inst7|LessThan2~14_combout\ & (!\inst7|cnt\(10) & (!\inst7|cnt\(9) & !\inst7|cnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan2~14_combout\,
	datab => \inst7|cnt\(10),
	datac => \inst7|cnt\(9),
	datad => \inst7|cnt\(8),
	combout => \inst7|LessThan2~16_combout\);

-- Location: FF_X23_Y12_N1
\inst7|salida\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst7|LessThan2~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|salida~q\);
END structure;


