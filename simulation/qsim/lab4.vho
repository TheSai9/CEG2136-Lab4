-- Copyright (C) 2021  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 21.1.0 Build 842 10/21/2021 SJ Lite Edition"

-- DATE "07/03/2024 19:48:09"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lab4top IS
    PORT (
	SC_Clear : OUT std_logic;
	IR : OUT std_logic_vector(7 DOWNTO 0);
	clk : IN std_logic;
	DataBus : OUT std_logic_vector(7 DOWNTO 0);
	MEMOUT : OUT std_logic_vector(7 DOWNTO 0);
	AR : OUT std_logic_vector(7 DOWNTO 0);
	PC : OUT std_logic_vector(7 DOWNTO 0);
	DR : OUT std_logic_vector(7 DOWNTO 0);
	AC : OUT std_logic_vector(7 DOWNTO 0);
	DIP7 : IN std_logic;
	DIP6 : IN std_logic;
	DIP5 : IN std_logic;
	DIP4 : IN std_logic;
	DIP3 : IN std_logic;
	DIP2 : IN std_logic;
	DIP1 : IN std_logic;
	DIP0 : IN std_logic;
	BusSel : OUT std_logic_vector(2 DOWNTO 0);
	Stop : OUT std_logic;
	Halt : OUT std_logic;
	Auto : IN std_logic;
	step_instruction : IN std_logic;
	SC : OUT std_logic_vector(3 DOWNTO 0);
	T9 : OUT std_logic;
	T5 : OUT std_logic;
	a1 : OUT std_logic;
	b1 : OUT std_logic;
	c1 : OUT std_logic;
	d1 : OUT std_logic;
	e1 : OUT std_logic;
	f1 : OUT std_logic;
	g1 : OUT std_logic;
	a2 : OUT std_logic;
	b2 : OUT std_logic;
	c2 : OUT std_logic;
	d2 : OUT std_logic;
	e2 : OUT std_logic;
	f2 : OUT std_logic;
	g2 : OUT std_logic;
	ALU : OUT std_logic_vector(7 DOWNTO 0);
	F_chk : OUT std_logic_vector(6 DOWNTO 0);
	sum_chk : OUT std_logic_vector(5 DOWNTO 0)
	);
END lab4top;

-- Design Ports Information
-- SC_Clear	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[7]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[6]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[5]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[4]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[3]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[2]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[1]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[0]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataBus[7]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataBus[6]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataBus[5]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataBus[4]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataBus[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataBus[2]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataBus[1]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataBus[0]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEMOUT[7]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEMOUT[6]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEMOUT[5]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEMOUT[4]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEMOUT[3]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEMOUT[2]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEMOUT[1]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEMOUT[0]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AR[7]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AR[6]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AR[5]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AR[4]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AR[3]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AR[2]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AR[1]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AR[0]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[7]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[6]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[5]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[4]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[2]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[1]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[0]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DR[7]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DR[6]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DR[5]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DR[4]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DR[3]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DR[2]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DR[1]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DR[0]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC[7]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC[6]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC[5]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC[4]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC[3]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC[2]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC[0]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusSel[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusSel[1]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusSel[0]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Stop	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Halt	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SC[3]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SC[2]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SC[1]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SC[0]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T9	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T5	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a1	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b1	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c1	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e1	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f1	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g1	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a2	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b2	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c2	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e2	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f2	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g2	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU[7]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU[6]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU[5]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU[4]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU[3]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU[2]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU[1]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU[0]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F_chk[6]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F_chk[5]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F_chk[4]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F_chk[3]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F_chk[2]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F_chk[1]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F_chk[0]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum_chk[5]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum_chk[4]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum_chk[3]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum_chk[2]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum_chk[1]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum_chk[0]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP7	=>  Location: PIN_J28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP6	=>  Location: PIN_J27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP5	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP4	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP3	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP2	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP1	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIP0	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Auto	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- step_instruction	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab4top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SC_Clear : std_logic;
SIGNAL ww_IR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_DataBus : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_MEMOUT : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_AR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_PC : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_DR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_AC : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_DIP7 : std_logic;
SIGNAL ww_DIP6 : std_logic;
SIGNAL ww_DIP5 : std_logic;
SIGNAL ww_DIP4 : std_logic;
SIGNAL ww_DIP3 : std_logic;
SIGNAL ww_DIP2 : std_logic;
SIGNAL ww_DIP1 : std_logic;
SIGNAL ww_DIP0 : std_logic;
SIGNAL ww_BusSel : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Stop : std_logic;
SIGNAL ww_Halt : std_logic;
SIGNAL ww_Auto : std_logic;
SIGNAL ww_step_instruction : std_logic;
SIGNAL ww_SC : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_T9 : std_logic;
SIGNAL ww_T5 : std_logic;
SIGNAL ww_a1 : std_logic;
SIGNAL ww_b1 : std_logic;
SIGNAL ww_c1 : std_logic;
SIGNAL ww_d1 : std_logic;
SIGNAL ww_e1 : std_logic;
SIGNAL ww_f1 : std_logic;
SIGNAL ww_g1 : std_logic;
SIGNAL ww_a2 : std_logic;
SIGNAL ww_b2 : std_logic;
SIGNAL ww_c2 : std_logic;
SIGNAL ww_d2 : std_logic;
SIGNAL ww_e2 : std_logic;
SIGNAL ww_f2 : std_logic;
SIGNAL ww_g2 : std_logic;
SIGNAL ww_ALU : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_F_chk : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_sum_chk : std_logic_vector(5 DOWNTO 0);
SIGNAL \104|lpm_ram_dq_component|sram|ram_block|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \104|lpm_ram_dq_component|sram|ram_block|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \104|lpm_ram_dq_component|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SC_Clear~output_o\ : std_logic;
SIGNAL \IR[7]~output_o\ : std_logic;
SIGNAL \IR[6]~output_o\ : std_logic;
SIGNAL \IR[5]~output_o\ : std_logic;
SIGNAL \IR[4]~output_o\ : std_logic;
SIGNAL \IR[3]~output_o\ : std_logic;
SIGNAL \IR[2]~output_o\ : std_logic;
SIGNAL \IR[1]~output_o\ : std_logic;
SIGNAL \IR[0]~output_o\ : std_logic;
SIGNAL \DataBus[7]~output_o\ : std_logic;
SIGNAL \DataBus[6]~output_o\ : std_logic;
SIGNAL \DataBus[5]~output_o\ : std_logic;
SIGNAL \DataBus[4]~output_o\ : std_logic;
SIGNAL \DataBus[3]~output_o\ : std_logic;
SIGNAL \DataBus[2]~output_o\ : std_logic;
SIGNAL \DataBus[1]~output_o\ : std_logic;
SIGNAL \DataBus[0]~output_o\ : std_logic;
SIGNAL \MEMOUT[7]~output_o\ : std_logic;
SIGNAL \MEMOUT[6]~output_o\ : std_logic;
SIGNAL \MEMOUT[5]~output_o\ : std_logic;
SIGNAL \MEMOUT[4]~output_o\ : std_logic;
SIGNAL \MEMOUT[3]~output_o\ : std_logic;
SIGNAL \MEMOUT[2]~output_o\ : std_logic;
SIGNAL \MEMOUT[1]~output_o\ : std_logic;
SIGNAL \MEMOUT[0]~output_o\ : std_logic;
SIGNAL \AR[7]~output_o\ : std_logic;
SIGNAL \AR[6]~output_o\ : std_logic;
SIGNAL \AR[5]~output_o\ : std_logic;
SIGNAL \AR[4]~output_o\ : std_logic;
SIGNAL \AR[3]~output_o\ : std_logic;
SIGNAL \AR[2]~output_o\ : std_logic;
SIGNAL \AR[1]~output_o\ : std_logic;
SIGNAL \AR[0]~output_o\ : std_logic;
SIGNAL \PC[7]~output_o\ : std_logic;
SIGNAL \PC[6]~output_o\ : std_logic;
SIGNAL \PC[5]~output_o\ : std_logic;
SIGNAL \PC[4]~output_o\ : std_logic;
SIGNAL \PC[3]~output_o\ : std_logic;
SIGNAL \PC[2]~output_o\ : std_logic;
SIGNAL \PC[1]~output_o\ : std_logic;
SIGNAL \PC[0]~output_o\ : std_logic;
SIGNAL \DR[7]~output_o\ : std_logic;
SIGNAL \DR[6]~output_o\ : std_logic;
SIGNAL \DR[5]~output_o\ : std_logic;
SIGNAL \DR[4]~output_o\ : std_logic;
SIGNAL \DR[3]~output_o\ : std_logic;
SIGNAL \DR[2]~output_o\ : std_logic;
SIGNAL \DR[1]~output_o\ : std_logic;
SIGNAL \DR[0]~output_o\ : std_logic;
SIGNAL \AC[7]~output_o\ : std_logic;
SIGNAL \AC[6]~output_o\ : std_logic;
SIGNAL \AC[5]~output_o\ : std_logic;
SIGNAL \AC[4]~output_o\ : std_logic;
SIGNAL \AC[3]~output_o\ : std_logic;
SIGNAL \AC[2]~output_o\ : std_logic;
SIGNAL \AC[1]~output_o\ : std_logic;
SIGNAL \AC[0]~output_o\ : std_logic;
SIGNAL \BusSel[2]~output_o\ : std_logic;
SIGNAL \BusSel[1]~output_o\ : std_logic;
SIGNAL \BusSel[0]~output_o\ : std_logic;
SIGNAL \Stop~output_o\ : std_logic;
SIGNAL \Halt~output_o\ : std_logic;
SIGNAL \SC[3]~output_o\ : std_logic;
SIGNAL \SC[2]~output_o\ : std_logic;
SIGNAL \SC[1]~output_o\ : std_logic;
SIGNAL \SC[0]~output_o\ : std_logic;
SIGNAL \T9~output_o\ : std_logic;
SIGNAL \T5~output_o\ : std_logic;
SIGNAL \a1~output_o\ : std_logic;
SIGNAL \b1~output_o\ : std_logic;
SIGNAL \c1~output_o\ : std_logic;
SIGNAL \d1~output_o\ : std_logic;
SIGNAL \e1~output_o\ : std_logic;
SIGNAL \f1~output_o\ : std_logic;
SIGNAL \g1~output_o\ : std_logic;
SIGNAL \a2~output_o\ : std_logic;
SIGNAL \b2~output_o\ : std_logic;
SIGNAL \c2~output_o\ : std_logic;
SIGNAL \d2~output_o\ : std_logic;
SIGNAL \e2~output_o\ : std_logic;
SIGNAL \f2~output_o\ : std_logic;
SIGNAL \g2~output_o\ : std_logic;
SIGNAL \ALU[7]~output_o\ : std_logic;
SIGNAL \ALU[6]~output_o\ : std_logic;
SIGNAL \ALU[5]~output_o\ : std_logic;
SIGNAL \ALU[4]~output_o\ : std_logic;
SIGNAL \ALU[3]~output_o\ : std_logic;
SIGNAL \ALU[2]~output_o\ : std_logic;
SIGNAL \ALU[1]~output_o\ : std_logic;
SIGNAL \ALU[0]~output_o\ : std_logic;
SIGNAL \F_chk[6]~output_o\ : std_logic;
SIGNAL \F_chk[5]~output_o\ : std_logic;
SIGNAL \F_chk[4]~output_o\ : std_logic;
SIGNAL \F_chk[3]~output_o\ : std_logic;
SIGNAL \F_chk[2]~output_o\ : std_logic;
SIGNAL \F_chk[1]~output_o\ : std_logic;
SIGNAL \F_chk[0]~output_o\ : std_logic;
SIGNAL \sum_chk[5]~output_o\ : std_logic;
SIGNAL \sum_chk[4]~output_o\ : std_logic;
SIGNAL \sum_chk[3]~output_o\ : std_logic;
SIGNAL \sum_chk[2]~output_o\ : std_logic;
SIGNAL \sum_chk[1]~output_o\ : std_logic;
SIGNAL \sum_chk[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \step_instruction~input_o\ : std_logic;
SIGNAL \Auto~input_o\ : std_logic;
SIGNAL \inst3|inst8~0_combout\ : std_logic;
SIGNAL \98|33|1~0_combout\ : std_logic;
SIGNAL \98|33|1~q\ : std_logic;
SIGNAL \98|34|15~0_combout\ : std_logic;
SIGNAL \98|35|1~0_combout\ : std_logic;
SIGNAL \98|35|1~q\ : std_logic;
SIGNAL \98|36|1~0_combout\ : std_logic;
SIGNAL \98|36|1~q\ : std_logic;
SIGNAL \99|33~6_combout\ : std_logic;
SIGNAL \98|34|1~0_combout\ : std_logic;
SIGNAL \98|34|1~q\ : std_logic;
SIGNAL \99|33~0_combout\ : std_logic;
SIGNAL \99|33~5_combout\ : std_logic;
SIGNAL \inst7|inst32~0_combout\ : std_logic;
SIGNAL \101|102~q\ : std_logic;
SIGNAL \59|49|1~0_combout\ : std_logic;
SIGNAL \59|49|1~q\ : std_logic;
SIGNAL \59|48|1~1_combout\ : std_logic;
SIGNAL \59|48|1~0_combout\ : std_logic;
SIGNAL \DIP1~input_o\ : std_logic;
SIGNAL \65|24|1~feeder_combout\ : std_logic;
SIGNAL \65|24|1~q\ : std_logic;
SIGNAL \59|51|15~combout\ : std_logic;
SIGNAL \60|49|1~0_combout\ : std_logic;
SIGNAL \60|49|1~q\ : std_logic;
SIGNAL \60|48|15~0_combout\ : std_logic;
SIGNAL \DIP2~input_o\ : std_logic;
SIGNAL \65|25|1~feeder_combout\ : std_logic;
SIGNAL \65|25|1~q\ : std_logic;
SIGNAL \59|47|1~0_combout\ : std_logic;
SIGNAL \59|47|1~q\ : std_logic;
SIGNAL \67|Y[2]~24_combout\ : std_logic;
SIGNAL \99|33~7_combout\ : std_logic;
SIGNAL \101|6~q\ : std_logic;
SIGNAL \64|29|1~q\ : std_logic;
SIGNAL \99|33~1_combout\ : std_logic;
SIGNAL \inst7|inst37~combout\ : std_logic;
SIGNAL \101|99~q\ : std_logic;
SIGNAL \64|25|1~q\ : std_logic;
SIGNAL \64|24|1~q\ : std_logic;
SIGNAL \inst7|inst52~0_combout\ : std_logic;
SIGNAL \inst7|inst67~2_combout\ : std_logic;
SIGNAL \101|8~q\ : std_logic;
SIGNAL \58|49|1~0_combout\ : std_logic;
SIGNAL \inst7|inst46~1_combout\ : std_logic;
SIGNAL \inst7|inst57~0_combout\ : std_logic;
SIGNAL \inst7|inst57~1_combout\ : std_logic;
SIGNAL \101|93~q\ : std_logic;
SIGNAL \inst7|inst50~combout\ : std_logic;
SIGNAL \101|91~q\ : std_logic;
SIGNAL \47|9|1|sub|81~1_combout\ : std_logic;
SIGNAL \inst7|inst46~0_combout\ : std_logic;
SIGNAL \inst7|inst49~0_combout\ : std_logic;
SIGNAL \101|88~q\ : std_logic;
SIGNAL \47|9|1|sub|81~0_combout\ : std_logic;
SIGNAL \47|9|1|sub|81~2_combout\ : std_logic;
SIGNAL \47|9|1|sub|81~3_combout\ : std_logic;
SIGNAL \inst7|inst34~combout\ : std_logic;
SIGNAL \101|7~q\ : std_logic;
SIGNAL \58|49|1~1_combout\ : std_logic;
SIGNAL \58|49|1~q\ : std_logic;
SIGNAL \58|48|1~1_combout\ : std_logic;
SIGNAL \58|48|1~0_combout\ : std_logic;
SIGNAL \47|10|1|sub|81~2_combout\ : std_logic;
SIGNAL \47|11|1|sub|81~2_combout\ : std_logic;
SIGNAL \47|11|1|sub|81~3_combout\ : std_logic;
SIGNAL \47|2|27~0_combout\ : std_logic;
SIGNAL \47|10|21|6~combout\ : std_logic;
SIGNAL \47|10|1|sub|81~3_combout\ : std_logic;
SIGNAL \47|10|1|sub|69~0_combout\ : std_logic;
SIGNAL \47|10|1|sub|81~4_combout\ : std_logic;
SIGNAL \47|10|1|sub|81~5_combout\ : std_logic;
SIGNAL \58|48|1~q\ : std_logic;
SIGNAL \58|48|15~0_combout\ : std_logic;
SIGNAL \58|48|15~combout\ : std_logic;
SIGNAL \47|12|1|sub|69~0_combout\ : std_logic;
SIGNAL \47|11|18~combout\ : std_logic;
SIGNAL \47|12|21|1~combout\ : std_logic;
SIGNAL \47|12|21|6~0_combout\ : std_logic;
SIGNAL \47|10|21|13~combout\ : std_logic;
SIGNAL \47|10|21|1~combout\ : std_logic;
SIGNAL \47|12|21|6~1_combout\ : std_logic;
SIGNAL \47|12|21|6~2_combout\ : std_logic;
SIGNAL \47|12|1|sub|81~3_combout\ : std_logic;
SIGNAL \47|12|1|sub|81~4_combout\ : std_logic;
SIGNAL \58|46|15~combout\ : std_logic;
SIGNAL \58|53|1~1_combout\ : std_logic;
SIGNAL \47|11|1|sub|81~4_combout\ : std_logic;
SIGNAL \58|50|15~combout\ : std_logic;
SIGNAL \58|52|1~4_combout\ : std_logic;
SIGNAL \58|53|1~0_combout\ : std_logic;
SIGNAL \47|13|1|sub|81~4_combout\ : std_logic;
SIGNAL \47|13|1|sub|81~8_combout\ : std_logic;
SIGNAL \47|13|1|sub|81~7_combout\ : std_logic;
SIGNAL \59|46|15~combout\ : std_logic;
SIGNAL \59|50|1~0_combout\ : std_logic;
SIGNAL \59|50|1~q\ : std_logic;
SIGNAL \47|16|18~combout\ : std_logic;
SIGNAL \47|15|21|1~combout\ : std_logic;
SIGNAL \47|22~0_combout\ : std_logic;
SIGNAL \47|11|21|1~combout\ : std_logic;
SIGNAL \47|2|24~0_combout\ : std_logic;
SIGNAL \47|2|24~1_combout\ : std_logic;
SIGNAL \47|2|24~2_combout\ : std_logic;
SIGNAL \47|23~combout\ : std_logic;
SIGNAL \47|21|27~0_combout\ : std_logic;
SIGNAL \47|13|1|sub|81~10_combout\ : std_logic;
SIGNAL \47|13|1|sub|81~5_combout\ : std_logic;
SIGNAL \47|13|1|sub|81~6_combout\ : std_logic;
SIGNAL \47|13|1|sub|81~9_combout\ : std_logic;
SIGNAL \58|53|1~2_combout\ : std_logic;
SIGNAL \58|53|1~3_combout\ : std_logic;
SIGNAL \58|53|1~q\ : std_logic;
SIGNAL \47|14|1|sub|81~2_combout\ : std_logic;
SIGNAL \58|52|1~6_combout\ : std_logic;
SIGNAL \47|14|1|sub|69~0_combout\ : std_logic;
SIGNAL \47|15|21|13~combout\ : std_logic;
SIGNAL \47|14|21|6~0_combout\ : std_logic;
SIGNAL \47|14|21|6~1_combout\ : std_logic;
SIGNAL \47|14|21|6~2_combout\ : std_logic;
SIGNAL \47|14|1|sub|81~3_combout\ : std_logic;
SIGNAL \47|14|1|sub|81~4_combout\ : std_logic;
SIGNAL \58|52|1~5_combout\ : std_logic;
SIGNAL \58|52|1~q\ : std_logic;
SIGNAL \47|15|1|sub|81~2_combout\ : std_logic;
SIGNAL \47|15|21|6~combout\ : std_logic;
SIGNAL \47|15|1|sub|81~3_combout\ : std_logic;
SIGNAL \47|15|1|sub|69~0_combout\ : std_logic;
SIGNAL \47|15|1|sub|81~4_combout\ : std_logic;
SIGNAL \47|15|1|sub|81~5_combout\ : std_logic;
SIGNAL \58|51|1~4_combout\ : std_logic;
SIGNAL \58|51|1~5_combout\ : std_logic;
SIGNAL \58|51|1~q\ : std_logic;
SIGNAL \47|16|1|sub|81~2_combout\ : std_logic;
SIGNAL \47|16|1|sub|69~0_combout\ : std_logic;
SIGNAL \47|16|21|6~combout\ : std_logic;
SIGNAL \47|16|1|sub|81~3_combout\ : std_logic;
SIGNAL \47|16|1|sub|81~4_combout\ : std_logic;
SIGNAL \58|50|1~0_combout\ : std_logic;
SIGNAL \58|50|1~1_combout\ : std_logic;
SIGNAL \58|50|1~q\ : std_logic;
SIGNAL \47|12|1|sub|81~2_combout\ : std_logic;
SIGNAL \47|12|1|sub|81~5_combout\ : std_logic;
SIGNAL \58|46|1~0_combout\ : std_logic;
SIGNAL \58|46|1~1_combout\ : std_logic;
SIGNAL \58|46|1~q\ : std_logic;
SIGNAL \47|11|1|sub|81~5_combout\ : std_logic;
SIGNAL \47|11|1|sub|69~0_combout\ : std_logic;
SIGNAL \47|2|29~0_combout\ : std_logic;
SIGNAL \47|11|21|6~combout\ : std_logic;
SIGNAL \47|11|1|sub|81~6_combout\ : std_logic;
SIGNAL \47|11|1|sub|81~7_combout\ : std_logic;
SIGNAL \47|11|1|sub|81~8_combout\ : std_logic;
SIGNAL \58|47|1~0_combout\ : std_logic;
SIGNAL \58|47|1~1_combout\ : std_logic;
SIGNAL \58|47|1~q\ : std_logic;
SIGNAL \inst7|inst15~0_combout\ : std_logic;
SIGNAL \101|1~q\ : std_logic;
SIGNAL \69|23|1~feeder_combout\ : std_logic;
SIGNAL \inst7|inst21~2_combout\ : std_logic;
SIGNAL \inst7|inst21~3_combout\ : std_logic;
SIGNAL \101|2~q\ : std_logic;
SIGNAL \69|23|1~q\ : std_logic;
SIGNAL \69|24|1~q\ : std_logic;
SIGNAL \69|25|1~q\ : std_logic;
SIGNAL \69|26|1~q\ : std_logic;
SIGNAL \69|27|1~q\ : std_logic;
SIGNAL \69|28|1~q\ : std_logic;
SIGNAL \69|29|1~q\ : std_logic;
SIGNAL \69|30|1~q\ : std_logic;
SIGNAL \67|Y[2]~22_combout\ : std_logic;
SIGNAL \67|Y[2]~23_combout\ : std_logic;
SIGNAL \67|Y[2]~25_combout\ : std_logic;
SIGNAL \60|47|1~0_combout\ : std_logic;
SIGNAL \60|47|1~q\ : std_logic;
SIGNAL \60|47|15~combout\ : std_logic;
SIGNAL \60|46|1~0_combout\ : std_logic;
SIGNAL \60|46|1~q\ : std_logic;
SIGNAL \60|46|15~combout\ : std_logic;
SIGNAL \60|50|1~0_combout\ : std_logic;
SIGNAL \60|50|1~q\ : std_logic;
SIGNAL \67|Y[4]~16_combout\ : std_logic;
SIGNAL \DIP4~input_o\ : std_logic;
SIGNAL \65|27|1~feeder_combout\ : std_logic;
SIGNAL \65|27|1~q\ : std_logic;
SIGNAL \67|Y[4]~14_combout\ : std_logic;
SIGNAL \67|Y[4]~15_combout\ : std_logic;
SIGNAL \67|Y[4]~17_combout\ : std_logic;
SIGNAL \64|27|1~q\ : std_logic;
SIGNAL \99|33~2_combout\ : std_logic;
SIGNAL \inst7|inst40~combout\ : std_logic;
SIGNAL \101|3~q\ : std_logic;
SIGNAL \60|50|15~combout\ : std_logic;
SIGNAL \60|51|1~0_combout\ : std_logic;
SIGNAL \60|51|1~q\ : std_logic;
SIGNAL \60|51|15~combout\ : std_logic;
SIGNAL \60|52|1~0_combout\ : std_logic;
SIGNAL \60|52|1~q\ : std_logic;
SIGNAL \67|Y[6]~8_combout\ : std_logic;
SIGNAL \DIP6~input_o\ : std_logic;
SIGNAL \65|29|1~q\ : std_logic;
SIGNAL \67|Y[6]~6_combout\ : std_logic;
SIGNAL \67|Y[6]~7_combout\ : std_logic;
SIGNAL \67|Y[6]~9_combout\ : std_logic;
SIGNAL \59|52|1~0_combout\ : std_logic;
SIGNAL \59|52|1~q\ : std_logic;
SIGNAL \inst7|inst47~1_combout\ : std_logic;
SIGNAL \inst7|inst29~0_combout\ : std_logic;
SIGNAL \inst7|inst47~2_combout\ : std_logic;
SIGNAL \99|33~8_combout\ : std_logic;
SIGNAL \inst7|inst44~combout\ : std_logic;
SIGNAL \101|134~q\ : std_logic;
SIGNAL \inst1|14~0_combout\ : std_logic;
SIGNAL \inst1|14~1_combout\ : std_logic;
SIGNAL \inst1|1~q\ : std_logic;
SIGNAL \inst7|inst74~0_combout\ : std_logic;
SIGNAL \inst7|inst47~0_combout\ : std_logic;
SIGNAL \inst7|inst74~1_combout\ : std_logic;
SIGNAL \101|4~q\ : std_logic;
SIGNAL \60|48|1~1_combout\ : std_logic;
SIGNAL \60|48|1~0_combout\ : std_logic;
SIGNAL \60|48|1~q\ : std_logic;
SIGNAL \67|Y[1]~26_combout\ : std_logic;
SIGNAL \67|Y[1]~27_combout\ : std_logic;
SIGNAL \67|Y[1]~28_combout\ : std_logic;
SIGNAL \67|Y[1]~29_combout\ : std_logic;
SIGNAL \59|48|1~q\ : std_logic;
SIGNAL \59|48|15~0_combout\ : std_logic;
SIGNAL \59|47|15~combout\ : std_logic;
SIGNAL \59|46|1~0_combout\ : std_logic;
SIGNAL \59|46|1~q\ : std_logic;
SIGNAL \59|50|15~combout\ : std_logic;
SIGNAL \59|51|1~0_combout\ : std_logic;
SIGNAL \59|51|1~q\ : std_logic;
SIGNAL \DIP5~input_o\ : std_logic;
SIGNAL \65|28|1~feeder_combout\ : std_logic;
SIGNAL \65|28|1~q\ : std_logic;
SIGNAL \67|Y[5]~10_combout\ : std_logic;
SIGNAL \67|Y[5]~11_combout\ : std_logic;
SIGNAL \67|Y[5]~12_combout\ : std_logic;
SIGNAL \67|Y[5]~13_combout\ : std_logic;
SIGNAL \64|28|1~q\ : std_logic;
SIGNAL \99|33~4_combout\ : std_logic;
SIGNAL \inst7|inst25~2_combout\ : std_logic;
SIGNAL \inst7|inst58~2_combout\ : std_logic;
SIGNAL \inst7|inst58~3_combout\ : std_logic;
SIGNAL \101|128~q\ : std_logic;
SIGNAL \inst7|inst25~0_combout\ : std_logic;
SIGNAL \inst7|inst72~0_combout\ : std_logic;
SIGNAL \inst7|inst25~1_combout\ : std_logic;
SIGNAL \101|81~q\ : std_logic;
SIGNAL \67|Y[4]~0_combout\ : std_logic;
SIGNAL \DIP3~input_o\ : std_logic;
SIGNAL \65|26|1~feeder_combout\ : std_logic;
SIGNAL \65|26|1~q\ : std_logic;
SIGNAL \67|Y[3]~18_combout\ : std_logic;
SIGNAL \67|Y[3]~19_combout\ : std_logic;
SIGNAL \67|Y[3]~20_combout\ : std_logic;
SIGNAL \67|Y[3]~21_combout\ : std_logic;
SIGNAL \64|26|1~q\ : std_logic;
SIGNAL \inst7|inst70~combout\ : std_logic;
SIGNAL \101|84~q\ : std_logic;
SIGNAL \67|Y[4]~3_combout\ : std_logic;
SIGNAL \DIP0~input_o\ : std_logic;
SIGNAL \65|23|1~feeder_combout\ : std_logic;
SIGNAL \65|23|1~q\ : std_logic;
SIGNAL \67|Y[0]~32_combout\ : std_logic;
SIGNAL \67|Y[0]~30_combout\ : std_logic;
SIGNAL \67|Y[0]~31_combout\ : std_logic;
SIGNAL \67|Y[0]~33_combout\ : std_logic;
SIGNAL \64|23|1~feeder_combout\ : std_logic;
SIGNAL \64|23|1~q\ : std_logic;
SIGNAL \inst7|inst42~3_combout\ : std_logic;
SIGNAL \inst7|inst31~0_combout\ : std_logic;
SIGNAL \101|5~q\ : std_logic;
SIGNAL \59|53|1~0_combout\ : std_logic;
SIGNAL \59|53|1~1_combout\ : std_logic;
SIGNAL \59|53|1~q\ : std_logic;
SIGNAL \DIP7~input_o\ : std_logic;
SIGNAL \65|30|1~q\ : std_logic;
SIGNAL \60|53|1~0_combout\ : std_logic;
SIGNAL \60|53|1~1_combout\ : std_logic;
SIGNAL \60|53|1~q\ : std_logic;
SIGNAL \67|Y[7]~1_combout\ : std_logic;
SIGNAL \67|Y[7]~2_combout\ : std_logic;
SIGNAL \67|Y[7]~4_combout\ : std_logic;
SIGNAL \67|Y[7]~5_combout\ : std_logic;
SIGNAL \64|30|1~feeder_combout\ : std_logic;
SIGNAL \64|30|1~q\ : std_logic;
SIGNAL \inst7|inst44~0_combout\ : std_logic;
SIGNAL \99|33~3_combout\ : std_logic;
SIGNAL \inst7|inst42~0_combout\ : std_logic;
SIGNAL \inst7|inst42~1_combout\ : std_logic;
SIGNAL \inst7|inst42~2_combout\ : std_logic;
SIGNAL \101|133~q\ : std_logic;
SIGNAL \99|33~9_combout\ : std_logic;
SIGNAL \101|96~q\ : std_logic;
SIGNAL \70|29|1~q\ : std_logic;
SIGNAL \70|30|1~q\ : std_logic;
SIGNAL \70|28|1~q\ : std_logic;
SIGNAL \70|27|1~q\ : std_logic;
SIGNAL \inst4|1|S[0]~0_combout\ : std_logic;
SIGNAL \inst4|1|S[1]~1_combout\ : std_logic;
SIGNAL \inst4|1|S[2]~2_combout\ : std_logic;
SIGNAL \inst4|1|S[3]~3_combout\ : std_logic;
SIGNAL \inst4|1|S[4]~4_combout\ : std_logic;
SIGNAL \inst4|1|S[5]~5_combout\ : std_logic;
SIGNAL \inst4|1|S[6]~6_combout\ : std_logic;
SIGNAL \70|25|1~q\ : std_logic;
SIGNAL \70|26|1~q\ : std_logic;
SIGNAL \70|23|1~q\ : std_logic;
SIGNAL \70|24|1~q\ : std_logic;
SIGNAL \inst4|2|S[0]~0_combout\ : std_logic;
SIGNAL \inst4|2|S[1]~1_combout\ : std_logic;
SIGNAL \inst4|2|S[2]~2_combout\ : std_logic;
SIGNAL \inst4|2|S[3]~3_combout\ : std_logic;
SIGNAL \inst4|2|S[4]~4_combout\ : std_logic;
SIGNAL \inst4|2|S[5]~5_combout\ : std_logic;
SIGNAL \inst4|2|S[6]~6_combout\ : std_logic;
SIGNAL \47|13|1|sub|81~11_combout\ : std_logic;
SIGNAL \47|14|1|sub|81~5_combout\ : std_logic;
SIGNAL \47|16|1|sub|81~5_combout\ : std_logic;
SIGNAL \inst2|F_chk[2]~4_combout\ : std_logic;
SIGNAL \inst2|F_chk[5]~2_combout\ : std_logic;
SIGNAL \inst2|F_chk[0]~0_combout\ : std_logic;
SIGNAL \inst2|F_chk[5]~1_combout\ : std_logic;
SIGNAL \inst2|F_chk[5]~3_combout\ : std_logic;
SIGNAL \inst2|F_chk[5]~5_combout\ : std_logic;
SIGNAL \inst2|F_chk[4]~6_combout\ : std_logic;
SIGNAL \inst2|Equal2~0_combout\ : std_logic;
SIGNAL \inst2|Equal2~1_combout\ : std_logic;
SIGNAL \inst2|F_chk[2]~7_combout\ : std_logic;
SIGNAL \inst2|F_chk[3]~8_combout\ : std_logic;
SIGNAL \inst2|Equal4~0_combout\ : std_logic;
SIGNAL \inst2|F_chk[5]~9_combout\ : std_logic;
SIGNAL \inst2|always0~0_combout\ : std_logic;
SIGNAL \inst2|always0~1_combout\ : std_logic;
SIGNAL \inst2|sum_chk[5]~2_combout\ : std_logic;
SIGNAL \inst2|sum_chk[4]~3_combout\ : std_logic;
SIGNAL \inst2|sum_chk[2]~4_combout\ : std_logic;
SIGNAL \104|lpm_ram_dq_component|sram|ram_block|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|F_chk\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst2|sum_chk\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst4|2|ALT_INV_S[6]~6_combout\ : std_logic;
SIGNAL \inst4|2|ALT_INV_S[2]~2_combout\ : std_logic;
SIGNAL \inst4|1|ALT_INV_S[6]~6_combout\ : std_logic;
SIGNAL \inst4|1|ALT_INV_S[2]~2_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

SC_Clear <= ww_SC_Clear;
IR <= ww_IR;
ww_clk <= clk;
DataBus <= ww_DataBus;
MEMOUT <= ww_MEMOUT;
AR <= ww_AR;
PC <= ww_PC;
DR <= ww_DR;
AC <= ww_AC;
ww_DIP7 <= DIP7;
ww_DIP6 <= DIP6;
ww_DIP5 <= DIP5;
ww_DIP4 <= DIP4;
ww_DIP3 <= DIP3;
ww_DIP2 <= DIP2;
ww_DIP1 <= DIP1;
ww_DIP0 <= DIP0;
BusSel <= ww_BusSel;
Stop <= ww_Stop;
Halt <= ww_Halt;
ww_Auto <= Auto;
ww_step_instruction <= step_instruction;
SC <= ww_SC;
T9 <= ww_T9;
T5 <= ww_T5;
a1 <= ww_a1;
b1 <= ww_b1;
c1 <= ww_c1;
d1 <= ww_d1;
e1 <= ww_e1;
f1 <= ww_f1;
g1 <= ww_g1;
a2 <= ww_a2;
b2 <= ww_b2;
c2 <= ww_c2;
d2 <= ww_d2;
e2 <= ww_e2;
f2 <= ww_f2;
g2 <= ww_g2;
ALU <= ww_ALU;
F_chk <= ww_F_chk;
sum_chk <= ww_sum_chk;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\104|lpm_ram_dq_component|sram|ram_block|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \67|Y[7]~5_combout\ & \67|Y[6]~9_combout\ & \67|Y[5]~13_combout\ & \67|Y[4]~17_combout\ & 
\67|Y[3]~21_combout\ & \67|Y[2]~25_combout\ & \67|Y[1]~29_combout\ & \67|Y[0]~33_combout\);

\104|lpm_ram_dq_component|sram|ram_block|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\69|30|1~q\ & \69|29|1~q\ & \69|28|1~q\ & \69|27|1~q\ & \69|26|1~q\ & \69|25|1~q\ & \69|24|1~q\ & \69|23|1~q\);

\104|lpm_ram_dq_component|sram|ram_block|auto_generated|q_a\(0) <= \104|lpm_ram_dq_component|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\104|lpm_ram_dq_component|sram|ram_block|auto_generated|q_a\(1) <= \104|lpm_ram_dq_component|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\104|lpm_ram_dq_component|sram|ram_block|auto_generated|q_a\(2) <= \104|lpm_ram_dq_component|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\104|lpm_ram_dq_component|sram|ram_block|auto_generated|q_a\(3) <= \104|lpm_ram_dq_component|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\104|lpm_ram_dq_component|sram|ram_block|auto_generated|q_a\(4) <= \104|lpm_ram_dq_component|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\104|lpm_ram_dq_component|sram|ram_block|auto_generated|q_a\(5) <= \104|lpm_ram_dq_component|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\104|lpm_ram_dq_component|sram|ram_block|auto_generated|q_a\(6) <= \104|lpm_ram_dq_component|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\104|lpm_ram_dq_component|sram|ram_block|auto_generated|q_a\(7) <= \104|lpm_ram_dq_component|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_clk~inputclkctrl_outclk\ <= NOT \clk~inputclkctrl_outclk\;
\inst4|2|ALT_INV_S[6]~6_combout\ <= NOT \inst4|2|S[6]~6_combout\;
\inst4|2|ALT_INV_S[2]~2_combout\ <= NOT \inst4|2|S[2]~2_combout\;
\inst4|1|ALT_INV_S[6]~6_combout\ <= NOT \inst4|1|S[6]~6_combout\;
\inst4|1|ALT_INV_S[2]~2_combout\ <= NOT \inst4|1|S[2]~2_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X11_Y73_N16
\SC_Clear~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \101|133~q\,
	devoe => ww_devoe,
	o => \SC_Clear~output_o\);

-- Location: IOOBUF_X33_Y73_N2
\IR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \64|30|1~q\,
	devoe => ww_devoe,
	o => \IR[7]~output_o\);

-- Location: IOOBUF_X58_Y73_N23
\IR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \64|29|1~q\,
	devoe => ww_devoe,
	o => \IR[6]~output_o\);

-- Location: IOOBUF_X35_Y73_N16
\IR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \64|28|1~q\,
	devoe => ww_devoe,
	o => \IR[5]~output_o\);

-- Location: IOOBUF_X18_Y73_N16
\IR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \64|27|1~q\,
	devoe => ww_devoe,
	o => \IR[4]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\IR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \64|26|1~q\,
	devoe => ww_devoe,
	o => \IR[3]~output_o\);

-- Location: IOOBUF_X18_Y73_N23
\IR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \64|25|1~q\,
	devoe => ww_devoe,
	o => \IR[2]~output_o\);

-- Location: IOOBUF_X20_Y73_N23
\IR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \64|24|1~q\,
	devoe => ww_devoe,
	o => \IR[1]~output_o\);

-- Location: IOOBUF_X38_Y73_N23
\IR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \64|23|1~q\,
	devoe => ww_devoe,
	o => \IR[0]~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\DataBus[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \67|Y[7]~5_combout\,
	devoe => ww_devoe,
	o => \DataBus[7]~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\DataBus[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \67|Y[6]~9_combout\,
	devoe => ww_devoe,
	o => \DataBus[6]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\DataBus[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \67|Y[5]~13_combout\,
	devoe => ww_devoe,
	o => \DataBus[5]~output_o\);

-- Location: IOOBUF_X40_Y73_N9
\DataBus[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \67|Y[4]~17_combout\,
	devoe => ww_devoe,
	o => \DataBus[4]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\DataBus[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \67|Y[3]~21_combout\,
	devoe => ww_devoe,
	o => \DataBus[3]~output_o\);

-- Location: IOOBUF_X40_Y73_N2
\DataBus[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \67|Y[2]~25_combout\,
	devoe => ww_devoe,
	o => \DataBus[2]~output_o\);

-- Location: IOOBUF_X38_Y73_N16
\DataBus[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \67|Y[1]~29_combout\,
	devoe => ww_devoe,
	o => \DataBus[1]~output_o\);

-- Location: IOOBUF_X45_Y73_N9
\DataBus[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \67|Y[0]~33_combout\,
	devoe => ww_devoe,
	o => \DataBus[0]~output_o\);

-- Location: IOOBUF_X0_Y68_N16
\MEMOUT[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \104|lpm_ram_dq_component|sram|ram_block|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => \MEMOUT[7]~output_o\);

-- Location: IOOBUF_X62_Y73_N16
\MEMOUT[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \104|lpm_ram_dq_component|sram|ram_block|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => \MEMOUT[6]~output_o\);

-- Location: IOOBUF_X58_Y73_N9
\MEMOUT[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \104|lpm_ram_dq_component|sram|ram_block|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => \MEMOUT[5]~output_o\);

-- Location: IOOBUF_X0_Y63_N23
\MEMOUT[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \104|lpm_ram_dq_component|sram|ram_block|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => \MEMOUT[4]~output_o\);

-- Location: IOOBUF_X0_Y67_N16
\MEMOUT[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \104|lpm_ram_dq_component|sram|ram_block|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => \MEMOUT[3]~output_o\);

-- Location: IOOBUF_X11_Y73_N23
\MEMOUT[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \104|lpm_ram_dq_component|sram|ram_block|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => \MEMOUT[2]~output_o\);

-- Location: IOOBUF_X58_Y73_N16
\MEMOUT[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \104|lpm_ram_dq_component|sram|ram_block|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => \MEMOUT[1]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\MEMOUT[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \104|lpm_ram_dq_component|sram|ram_block|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => \MEMOUT[0]~output_o\);

-- Location: IOOBUF_X60_Y73_N9
\AR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \69|30|1~q\,
	devoe => ww_devoe,
	o => \AR[7]~output_o\);

-- Location: IOOBUF_X60_Y73_N2
\AR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \69|29|1~q\,
	devoe => ww_devoe,
	o => \AR[6]~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\AR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \69|28|1~q\,
	devoe => ww_devoe,
	o => \AR[5]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\AR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \69|27|1~q\,
	devoe => ww_devoe,
	o => \AR[4]~output_o\);

-- Location: IOOBUF_X0_Y68_N9
\AR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \69|26|1~q\,
	devoe => ww_devoe,
	o => \AR[3]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\AR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \69|25|1~q\,
	devoe => ww_devoe,
	o => \AR[2]~output_o\);

-- Location: IOOBUF_X45_Y73_N2
\AR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \69|24|1~q\,
	devoe => ww_devoe,
	o => \AR[1]~output_o\);

-- Location: IOOBUF_X52_Y73_N23
\AR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \69|23|1~q\,
	devoe => ww_devoe,
	o => \AR[0]~output_o\);

-- Location: IOOBUF_X0_Y64_N2
\PC[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \60|53|1~q\,
	devoe => ww_devoe,
	o => \PC[7]~output_o\);

-- Location: IOOBUF_X0_Y65_N16
\PC[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \60|52|1~q\,
	devoe => ww_devoe,
	o => \PC[6]~output_o\);

-- Location: IOOBUF_X0_Y61_N23
\PC[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \60|51|1~q\,
	devoe => ww_devoe,
	o => \PC[5]~output_o\);

-- Location: IOOBUF_X0_Y67_N23
\PC[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \60|50|1~q\,
	devoe => ww_devoe,
	o => \PC[4]~output_o\);

-- Location: IOOBUF_X0_Y63_N16
\PC[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \60|46|1~q\,
	devoe => ww_devoe,
	o => \PC[3]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\PC[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \60|47|1~q\,
	devoe => ww_devoe,
	o => \PC[2]~output_o\);

-- Location: IOOBUF_X0_Y62_N16
\PC[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \60|48|1~q\,
	devoe => ww_devoe,
	o => \PC[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\PC[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \60|49|1~q\,
	devoe => ww_devoe,
	o => \PC[0]~output_o\);

-- Location: IOOBUF_X13_Y73_N9
\DR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \59|53|1~q\,
	devoe => ww_devoe,
	o => \DR[7]~output_o\);

-- Location: IOOBUF_X25_Y73_N16
\DR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \59|52|1~q\,
	devoe => ww_devoe,
	o => \DR[6]~output_o\);

-- Location: IOOBUF_X23_Y73_N23
\DR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \59|51|1~q\,
	devoe => ww_devoe,
	o => \DR[5]~output_o\);

-- Location: IOOBUF_X5_Y73_N23
\DR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \59|50|1~q\,
	devoe => ww_devoe,
	o => \DR[4]~output_o\);

-- Location: IOOBUF_X27_Y73_N23
\DR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \59|46|1~q\,
	devoe => ww_devoe,
	o => \DR[3]~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\DR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \59|47|1~q\,
	devoe => ww_devoe,
	o => \DR[2]~output_o\);

-- Location: IOOBUF_X31_Y73_N2
\DR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \59|48|1~q\,
	devoe => ww_devoe,
	o => \DR[1]~output_o\);

-- Location: IOOBUF_X35_Y73_N23
\DR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \59|49|1~q\,
	devoe => ww_devoe,
	o => \DR[0]~output_o\);

-- Location: IOOBUF_X27_Y73_N9
\AC[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \58|53|1~q\,
	devoe => ww_devoe,
	o => \AC[7]~output_o\);

-- Location: IOOBUF_X27_Y73_N16
\AC[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \58|52|1~q\,
	devoe => ww_devoe,
	o => \AC[6]~output_o\);

-- Location: IOOBUF_X20_Y73_N9
\AC[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \58|51|1~q\,
	devoe => ww_devoe,
	o => \AC[5]~output_o\);

-- Location: IOOBUF_X25_Y73_N23
\AC[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \58|50|1~q\,
	devoe => ww_devoe,
	o => \AC[4]~output_o\);

-- Location: IOOBUF_X20_Y73_N2
\AC[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \58|46|1~q\,
	devoe => ww_devoe,
	o => \AC[3]~output_o\);

-- Location: IOOBUF_X20_Y73_N16
\AC[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \58|47|1~q\,
	devoe => ww_devoe,
	o => \AC[2]~output_o\);

-- Location: IOOBUF_X31_Y73_N9
\AC[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \58|48|1~q\,
	devoe => ww_devoe,
	o => \AC[1]~output_o\);

-- Location: IOOBUF_X29_Y73_N2
\AC[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \58|49|1~q\,
	devoe => ww_devoe,
	o => \AC[0]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\BusSel[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \101|84~q\,
	devoe => ww_devoe,
	o => \BusSel[2]~output_o\);

-- Location: IOOBUF_X0_Y66_N16
\BusSel[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \101|81~q\,
	devoe => ww_devoe,
	o => \BusSel[1]~output_o\);

-- Location: IOOBUF_X29_Y73_N9
\BusSel[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \101|128~q\,
	devoe => ww_devoe,
	o => \BusSel[0]~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\Stop~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|1~q\,
	devoe => ww_devoe,
	o => \Stop~output_o\);

-- Location: IOOBUF_X0_Y69_N9
\Halt~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \101|134~q\,
	devoe => ww_devoe,
	o => \Halt~output_o\);

-- Location: IOOBUF_X47_Y73_N16
\SC[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \98|36|1~q\,
	devoe => ww_devoe,
	o => \SC[3]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\SC[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \98|35|1~q\,
	devoe => ww_devoe,
	o => \SC[2]~output_o\);

-- Location: IOOBUF_X79_Y73_N9
\SC[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \98|34|1~q\,
	devoe => ww_devoe,
	o => \SC[1]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\SC[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \98|33|1~q\,
	devoe => ww_devoe,
	o => \SC[0]~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\T9~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \99|33~0_combout\,
	devoe => ww_devoe,
	o => \T9~output_o\);

-- Location: IOOBUF_X13_Y73_N16
\T5~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \99|33~1_combout\,
	devoe => ww_devoe,
	o => \T5~output_o\);

-- Location: IOOBUF_X11_Y73_N2
\a1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|1|S[0]~0_combout\,
	devoe => ww_devoe,
	o => \a1~output_o\);

-- Location: IOOBUF_X16_Y73_N2
\b1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|1|S[1]~1_combout\,
	devoe => ww_devoe,
	o => \b1~output_o\);

-- Location: IOOBUF_X13_Y73_N2
\c1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|1|ALT_INV_S[2]~2_combout\,
	devoe => ww_devoe,
	o => \c1~output_o\);

-- Location: IOOBUF_X16_Y73_N23
\d1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|1|S[3]~3_combout\,
	devoe => ww_devoe,
	o => \d1~output_o\);

-- Location: IOOBUF_X11_Y73_N9
\e1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|1|S[4]~4_combout\,
	devoe => ww_devoe,
	o => \e1~output_o\);

-- Location: IOOBUF_X16_Y73_N9
\f1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|1|S[5]~5_combout\,
	devoe => ww_devoe,
	o => \f1~output_o\);

-- Location: IOOBUF_X16_Y73_N16
\g1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|1|ALT_INV_S[6]~6_combout\,
	devoe => ww_devoe,
	o => \g1~output_o\);

-- Location: IOOBUF_X7_Y73_N16
\a2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|2|S[0]~0_combout\,
	devoe => ww_devoe,
	o => \a2~output_o\);

-- Location: IOOBUF_X7_Y73_N23
\b2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|2|S[1]~1_combout\,
	devoe => ww_devoe,
	o => \b2~output_o\);

-- Location: IOOBUF_X9_Y73_N2
\c2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|2|ALT_INV_S[2]~2_combout\,
	devoe => ww_devoe,
	o => \c2~output_o\);

-- Location: IOOBUF_X5_Y73_N2
\d2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|2|S[3]~3_combout\,
	devoe => ww_devoe,
	o => \d2~output_o\);

-- Location: IOOBUF_X1_Y73_N16
\e2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|2|S[4]~4_combout\,
	devoe => ww_devoe,
	o => \e2~output_o\);

-- Location: IOOBUF_X9_Y73_N9
\f2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|2|S[5]~5_combout\,
	devoe => ww_devoe,
	o => \f2~output_o\);

-- Location: IOOBUF_X5_Y73_N9
\g2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|2|ALT_INV_S[6]~6_combout\,
	devoe => ww_devoe,
	o => \g2~output_o\);

-- Location: IOOBUF_X23_Y73_N9
\ALU[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \47|13|1|sub|81~11_combout\,
	devoe => ww_devoe,
	o => \ALU[7]~output_o\);

-- Location: IOOBUF_X3_Y73_N2
\ALU[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \47|14|1|sub|81~5_combout\,
	devoe => ww_devoe,
	o => \ALU[6]~output_o\);

-- Location: IOOBUF_X23_Y73_N2
\ALU[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \47|15|1|sub|81~5_combout\,
	devoe => ww_devoe,
	o => \ALU[5]~output_o\);

-- Location: IOOBUF_X1_Y73_N9
\ALU[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \47|16|1|sub|81~5_combout\,
	devoe => ww_devoe,
	o => \ALU[4]~output_o\);

-- Location: IOOBUF_X3_Y73_N9
\ALU[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \47|12|1|sub|81~5_combout\,
	devoe => ww_devoe,
	o => \ALU[3]~output_o\);

-- Location: IOOBUF_X23_Y73_N16
\ALU[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \47|11|1|sub|81~8_combout\,
	devoe => ww_devoe,
	o => \ALU[2]~output_o\);

-- Location: IOOBUF_X1_Y73_N23
\ALU[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \47|10|1|sub|81~5_combout\,
	devoe => ww_devoe,
	o => \ALU[1]~output_o\);

-- Location: IOOBUF_X1_Y73_N2
\ALU[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \47|9|1|sub|81~3_combout\,
	devoe => ww_devoe,
	o => \ALU[0]~output_o\);

-- Location: IOOBUF_X0_Y60_N16
\F_chk[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|F_chk\(6),
	devoe => ww_devoe,
	o => \F_chk[6]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\F_chk[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|F_chk\(5),
	devoe => ww_devoe,
	o => \F_chk[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\F_chk[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|F_chk\(4),
	devoe => ww_devoe,
	o => \F_chk[4]~output_o\);

-- Location: IOOBUF_X49_Y73_N16
\F_chk[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|F_chk\(3),
	devoe => ww_devoe,
	o => \F_chk[3]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\F_chk[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|F_chk\(2),
	devoe => ww_devoe,
	o => \F_chk[2]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\F_chk[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|F_chk\(1),
	devoe => ww_devoe,
	o => \F_chk[1]~output_o\);

-- Location: IOOBUF_X49_Y73_N23
\F_chk[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|F_chk\(0),
	devoe => ww_devoe,
	o => \F_chk[0]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\sum_chk[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|sum_chk\(5),
	devoe => ww_devoe,
	o => \sum_chk[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\sum_chk[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|sum_chk\(4),
	devoe => ww_devoe,
	o => \sum_chk[4]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\sum_chk[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|sum_chk\(3),
	devoe => ww_devoe,
	o => \sum_chk[3]~output_o\);

-- Location: IOOBUF_X47_Y73_N2
\sum_chk[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|sum_chk\(2),
	devoe => ww_devoe,
	o => \sum_chk[2]~output_o\);

-- Location: IOOBUF_X52_Y73_N9
\sum_chk[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|sum_chk\(1),
	devoe => ww_devoe,
	o => \sum_chk[1]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\sum_chk[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|sum_chk\(0),
	devoe => ww_devoe,
	o => \sum_chk[0]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X13_Y73_N22
\step_instruction~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_step_instruction,
	o => \step_instruction~input_o\);

-- Location: IOIBUF_X69_Y73_N1
\Auto~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Auto,
	o => \Auto~input_o\);

-- Location: LCCOMB_X40_Y69_N0
\inst3|inst8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst8~0_combout\ = (\Auto~input_o\ & (\101|133~q\)) # (!\Auto~input_o\ & ((\step_instruction~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \101|133~q\,
	datac => \step_instruction~input_o\,
	datad => \Auto~input_o\,
	combout => \inst3|inst8~0_combout\);

-- Location: LCCOMB_X40_Y69_N20
\98|33|1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \98|33|1~0_combout\ = (!\inst3|inst8~0_combout\ & (\99|33~6_combout\ $ (!\98|33|1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \99|33~6_combout\,
	datac => \98|33|1~q\,
	datad => \inst3|inst8~0_combout\,
	combout => \98|33|1~0_combout\);

-- Location: FF_X40_Y69_N21
\98|33|1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \98|33|1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \98|33|1~q\);

-- Location: LCCOMB_X40_Y69_N18
\98|34|15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \98|34|15~0_combout\ = (\98|34|1~q\ & (!\inst3|inst8~0_combout\ & (!\99|33~6_combout\ & \98|33|1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \98|34|1~q\,
	datab => \inst3|inst8~0_combout\,
	datac => \99|33~6_combout\,
	datad => \98|33|1~q\,
	combout => \98|34|15~0_combout\);

-- Location: LCCOMB_X40_Y69_N16
\98|35|1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \98|35|1~0_combout\ = (\98|34|15~0_combout\ & (!\98|35|1~q\)) # (!\98|34|15~0_combout\ & (\98|35|1~q\ & !\inst3|inst8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \98|34|15~0_combout\,
	datac => \98|35|1~q\,
	datad => \inst3|inst8~0_combout\,
	combout => \98|35|1~0_combout\);

-- Location: FF_X40_Y69_N17
\98|35|1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \98|35|1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \98|35|1~q\);

-- Location: LCCOMB_X40_Y69_N6
\98|36|1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \98|36|1~0_combout\ = (\98|36|1~q\ & (!\inst3|inst8~0_combout\ & ((!\98|34|15~0_combout\) # (!\98|35|1~q\)))) # (!\98|36|1~q\ & (\98|35|1~q\ & (\98|34|15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \98|35|1~q\,
	datab => \98|34|15~0_combout\,
	datac => \98|36|1~q\,
	datad => \inst3|inst8~0_combout\,
	combout => \98|36|1~0_combout\);

-- Location: FF_X40_Y69_N7
\98|36|1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \98|36|1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \98|36|1~q\);

-- Location: LCCOMB_X40_Y69_N22
\99|33~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \99|33~6_combout\ = (\98|34|1~q\ & (\98|33|1~q\ & (\98|35|1~q\ & \98|36|1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \98|34|1~q\,
	datab => \98|33|1~q\,
	datac => \98|35|1~q\,
	datad => \98|36|1~q\,
	combout => \99|33~6_combout\);

-- Location: LCCOMB_X40_Y69_N2
\98|34|1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \98|34|1~0_combout\ = (!\inst3|inst8~0_combout\ & (\98|34|1~q\ $ (((!\99|33~6_combout\ & \98|33|1~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \99|33~6_combout\,
	datab => \inst3|inst8~0_combout\,
	datac => \98|34|1~q\,
	datad => \98|33|1~q\,
	combout => \98|34|1~0_combout\);

-- Location: FF_X40_Y69_N3
\98|34|1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \98|34|1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \98|34|1~q\);

-- Location: LCCOMB_X39_Y69_N16
\99|33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \99|33~0_combout\ = (!\98|34|1~q\ & (!\98|35|1~q\ & (\98|33|1~q\ & \98|36|1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \98|34|1~q\,
	datab => \98|35|1~q\,
	datac => \98|33|1~q\,
	datad => \98|36|1~q\,
	combout => \99|33~0_combout\);

-- Location: LCCOMB_X39_Y69_N24
\99|33~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \99|33~5_combout\ = (!\98|34|1~q\ & (!\98|35|1~q\ & (!\98|33|1~q\ & !\98|36|1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \98|34|1~q\,
	datab => \98|35|1~q\,
	datac => \98|33|1~q\,
	datad => \98|36|1~q\,
	combout => \99|33~5_combout\);

-- Location: LCCOMB_X39_Y68_N4
\inst7|inst32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst32~0_combout\ = (!\64|30|1~q\ & (\99|33~0_combout\ & \64|28|1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \64|30|1~q\,
	datab => \99|33~0_combout\,
	datad => \64|28|1~q\,
	combout => \inst7|inst32~0_combout\);

-- Location: FF_X39_Y68_N5
\101|102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|inst32~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \101|102~q\);

-- Location: LCCOMB_X39_Y68_N12
\59|49|1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \59|49|1~0_combout\ = (\101|5~q\ & (((\67|Y[0]~33_combout\)))) # (!\101|5~q\ & (\101|102~q\ $ ((\59|49|1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \101|102~q\,
	datab => \101|5~q\,
	datac => \59|49|1~q\,
	datad => \67|Y[0]~33_combout\,
	combout => \59|49|1~0_combout\);

-- Location: FF_X39_Y68_N13
\59|49|1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \59|49|1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \59|49|1~q\);

-- Location: LCCOMB_X39_Y68_N26
\59|48|1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \59|48|1~1_combout\ = \59|49|1~q\ $ (\59|48|1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \59|49|1~q\,
	datac => \59|48|1~q\,
	combout => \59|48|1~1_combout\);

-- Location: LCCOMB_X38_Y68_N20
\59|48|1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \59|48|1~0_combout\ = (\101|102~q\ & ((\59|48|1~1_combout\))) # (!\101|102~q\ & (\59|48|1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \101|102~q\,
	datac => \59|48|1~q\,
	datad => \59|48|1~1_combout\,
	combout => \59|48|1~0_combout\);

-- Location: IOIBUF_X74_Y73_N15
\DIP1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIP1,
	o => \DIP1~input_o\);

-- Location: LCCOMB_X43_Y68_N12
\65|24|1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \65|24|1~feeder_combout\ = \DIP1~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DIP1~input_o\,
	combout => \65|24|1~feeder_combout\);

-- Location: FF_X43_Y68_N13
\65|24|1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \65|24|1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \65|24|1~q\);

-- Location: LCCOMB_X35_Y68_N20
\59|51|15\ : cycloneive_lcell_comb
-- Equation(s):
-- \59|51|15~combout\ = (\59|50|15~combout\ & \59|51|1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \59|50|15~combout\,
	datad => \59|51|1~q\,
	combout => \59|51|15~combout\);

-- Location: LCCOMB_X39_Y68_N30
\60|49|1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \60|49|1~0_combout\ = (\101|3~q\ & (((\67|Y[0]~33_combout\)))) # (!\101|3~q\ & (\101|4~q\ $ ((\60|49|1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \101|4~q\,
	datab => \101|3~q\,
	datac => \60|49|1~q\,
	datad => \67|Y[0]~33_combout\,
	combout => \60|49|1~0_combout\);

-- Location: FF_X39_Y68_N31
\60|49|1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \60|49|1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \60|49|1~q\);

-- Location: LCCOMB_X39_Y68_N20
\60|48|15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \60|48|15~0_combout\ = (\101|4~q\ & (!\101|3~q\ & (\60|49|1~q\ & \60|48|1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \101|4~q\,
	datab => \101|3~q\,
	datac => \60|49|1~q\,
	datad => \60|48|1~q\,
	combout => \60|48|15~0_combout\);

-- Location: IOIBUF_X62_Y73_N22
\DIP2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIP2,
	o => \DIP2~input_o\);

-- Location: LCCOMB_X38_Y68_N26
\65|25|1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \65|25|1~feeder_combout\ = \DIP2~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DIP2~input_o\,
	combout => \65|25|1~feeder_combout\);

-- Location: FF_X38_Y68_N27
\65|25|1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \65|25|1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \65|25|1~q\);

-- Location: LCCOMB_X38_Y68_N8
\59|47|1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \59|47|1~0_combout\ = (\59|48|15~0_combout\ & (((!\59|47|1~q\)))) # (!\59|48|15~0_combout\ & ((\101|5~q\ & ((\67|Y[2]~25_combout\))) # (!\101|5~q\ & (\59|47|1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \59|48|15~0_combout\,
	datab => \101|5~q\,
	datac => \59|47|1~q\,
	datad => \67|Y[2]~25_combout\,
	combout => \59|47|1~0_combout\);

-- Location: FF_X38_Y68_N9
\59|47|1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \59|47|1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \59|47|1~q\);

-- Location: LCCOMB_X38_Y68_N28
\67|Y[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \67|Y[2]~24_combout\ = (\67|Y[4]~3_combout\ & (((\67|Y[4]~0_combout\)))) # (!\67|Y[4]~3_combout\ & ((\67|Y[4]~0_combout\ & ((\59|47|1~q\))) # (!\67|Y[4]~0_combout\ & (\60|47|1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \67|Y[4]~3_combout\,
	datab => \60|47|1~q\,
	datac => \59|47|1~q\,
	datad => \67|Y[4]~0_combout\,
	combout => \67|Y[2]~24_combout\);

-- Location: LCCOMB_X40_Y69_N30
\99|33~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \99|33~7_combout\ = (\98|34|1~q\ & (\98|33|1~q\ & (!\98|35|1~q\ & !\98|36|1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \98|34|1~q\,
	datab => \98|33|1~q\,
	datac => \98|35|1~q\,
	datad => \98|36|1~q\,
	combout => \99|33~7_combout\);

-- Location: FF_X40_Y69_N31
\101|6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \99|33~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \101|6~q\);

-- Location: FF_X36_Y68_N23
\64|29|1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \67|Y[6]~9_combout\,
	sload => VCC,
	ena => \101|6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \64|29|1~q\);

-- Location: LCCOMB_X39_Y69_N26
\99|33~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \99|33~1_combout\ = (!\98|34|1~q\ & (\98|35|1~q\ & (\98|33|1~q\ & !\98|36|1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \98|34|1~q\,
	datab => \98|35|1~q\,
	datac => \98|33|1~q\,
	datad => \98|36|1~q\,
	combout => \99|33~1_combout\);

-- Location: LCCOMB_X34_Y69_N24
\inst7|inst37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst37~combout\ = (\64|30|1~q\ & (!\64|29|1~q\ & (\99|33~1_combout\ & \64|27|1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \64|30|1~q\,
	datab => \64|29|1~q\,
	datac => \99|33~1_combout\,
	datad => \64|27|1~q\,
	combout => \inst7|inst37~combout\);

-- Location: FF_X34_Y69_N25
\101|99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|inst37~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \101|99~q\);

-- Location: FF_X36_Y68_N19
\64|25|1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \67|Y[2]~25_combout\,
	sload => VCC,
	ena => \101|6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \64|25|1~q\);

-- Location: FF_X40_Y68_N5
\64|24|1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \67|Y[1]~29_combout\,
	sload => VCC,
	ena => \101|6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \64|24|1~q\);

-- Location: LCCOMB_X35_Y69_N28
\inst7|inst52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst52~0_combout\ = (\inst7|inst44~0_combout\ & ((\64|25|1~q\) # ((\64|24|1~q\) # (\64|26|1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \64|25|1~q\,
	datab => \64|24|1~q\,
	datac => \inst7|inst44~0_combout\,
	datad => \64|26|1~q\,
	combout => \inst7|inst52~0_combout\);

-- Location: LCCOMB_X34_Y69_N12
\inst7|inst67~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst67~2_combout\ = (\inst7|inst52~0_combout\) # ((!\64|30|1~q\ & (\99|33~0_combout\ & !\inst7|inst42~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \64|30|1~q\,
	datab => \inst7|inst52~0_combout\,
	datac => \99|33~0_combout\,
	datad => \inst7|inst42~3_combout\,
	combout => \inst7|inst67~2_combout\);

-- Location: FF_X34_Y69_N13
\101|8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|inst67~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \101|8~q\);

-- Location: LCCOMB_X34_Y69_N28
\58|49|1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \58|49|1~0_combout\ = (!\101|8~q\ & (\58|49|1~q\ $ (\101|99~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \101|8~q\,
	datac => \58|49|1~q\,
	datad => \101|99~q\,
	combout => \58|49|1~0_combout\);

-- Location: LCCOMB_X34_Y69_N14
\inst7|inst46~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst46~1_combout\ = (\99|33~0_combout\ & !\64|30|1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \99|33~0_combout\,
	datad => \64|30|1~q\,
	combout => \inst7|inst46~1_combout\);

-- Location: LCCOMB_X35_Y69_N6
\inst7|inst57~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst57~0_combout\ = (\64|25|1~q\) # ((\64|23|1~q\ & !\64|24|1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \64|23|1~q\,
	datac => \64|24|1~q\,
	datad => \64|25|1~q\,
	combout => \inst7|inst57~0_combout\);

-- Location: LCCOMB_X35_Y69_N2
\inst7|inst57~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst57~1_combout\ = (\inst7|inst46~1_combout\ & ((\inst7|inst57~0_combout\) # ((\inst7|inst44~0_combout\ & \64|24|1~q\)))) # (!\inst7|inst46~1_combout\ & (\inst7|inst44~0_combout\ & (\64|24|1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst46~1_combout\,
	datab => \inst7|inst44~0_combout\,
	datac => \64|24|1~q\,
	datad => \inst7|inst57~0_combout\,
	combout => \inst7|inst57~1_combout\);

-- Location: FF_X35_Y69_N3
\101|93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|inst57~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \101|93~q\);

-- Location: LCCOMB_X34_Y69_N0
\inst7|inst50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst50~combout\ = (\inst7|inst52~0_combout\) # ((\64|25|1~q\ & (\99|33~0_combout\ & !\64|30|1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \64|25|1~q\,
	datab => \inst7|inst52~0_combout\,
	datac => \99|33~0_combout\,
	datad => \64|30|1~q\,
	combout => \inst7|inst50~combout\);

-- Location: FF_X34_Y69_N1
\101|91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|inst50~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \101|91~q\);

-- Location: LCCOMB_X34_Y69_N16
\47|9|1|sub|81~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \47|9|1|sub|81~1_combout\ = (\101|93~q\ & (\59|49|1~q\ & ((\58|49|1~q\) # (\101|91~q\)))) # (!\101|93~q\ & (!\101|91~q\ & (\58|49|1~q\ $ (\59|49|1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \58|49|1~q\,
	datab => \101|93~q\,
	datac => \101|91~q\,
	datad => \59|49|1~q\,
	combout => \47|9|1|sub|81~1_combout\);

-- Location: LCCOMB_X35_Y69_N24
\inst7|inst46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst46~0_combout\ = (\64|23|1~q\ & (!\64|30|1~q\ & (\64|24|1~q\ & \99|33~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \64|23|1~q\,
	datab => \64|30|1~q\,
	datac => \64|24|1~q\,
	datad => \99|33~0_combout\,
	combout => \inst7|inst46~0_combout\);

-- Location: LCCOMB_X35_Y69_N0
\inst7|inst49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst49~0_combout\ = (\inst7|inst46~0_combout\) # ((\inst7|inst44~0_combout\ & ((\64|24|1~q\) # (\64|26|1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst46~0_combout\,
	datab => \64|24|1~q\,
	datac => \inst7|inst44~0_combout\,
	datad => \64|26|1~q\,
	combout => \inst7|inst49~0_combout\);

-- Location: FF_X35_Y69_N1
\101|88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|inst49~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \101|88~q\);

-- Location: LCCOMB_X34_Y69_N22
\47|9|1|sub|81~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \47|9|1|sub|81~0_combout\ = (\101|88~q\ & ((\58|48|1~q\) # (\101|93~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \58|48|1~q\,
	datab => \101|93~q\,
	datac => \101|88~q\,
	combout => \47|9|1|sub|81~0_combout\);

-- Location: LCCOMB_X34_Y69_N18
\47|9|1|sub|81~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \47|9|1|sub|81~2_combout\ = \101|91~q\ $ (((\101|93~q\ & (\58|49|1~q\ $ (\59|49|1~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \58|49|1~q\,
	datab => \101|93~q\,
	datac => \101|91~q\,
	datad => \59|49|1~q\,
	combout => \47|9|1|sub|81~2_combout\);

-- Location: LCCOMB_X34_Y69_N8
\47|9|1|sub|81~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \47|9|1|sub|81~3_combout\ = \47|9|1|sub|81~1_combout\ $ (((\47|9|1|sub|81~0_combout\ & \47|9|1|sub|81~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \47|9|1|sub|81~1_combout\,
	datac => \47|9|1|sub|81~0_combout\,
	datad => \47|9|1|sub|81~2_combout\,
	combout => \47|9|1|sub|81~3_combout\);

-- Location: LCCOMB_X34_Y69_N10
\inst7|inst34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst34~combout\ = (\64|30|1~q\ & (!\64|29|1~q\ & (\99|33~1_combout\ & \64|23|1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \64|30|1~q\,
	datab => \64|29|1~q\,
	datac => \99|33~1_combout\,
	datad => \64|23|1~q\,
	combout => \inst7|inst34~combout\);

-- Location: FF_X34_Y69_N11
\101|7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|inst34~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \101|7~q\);

-- Location: LCCOMB_X34_Y69_N26
\58|49|1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \58|49|1~1_combout\ = (!\101|7~q\ & ((\58|49|1~0_combout\) # ((\101|8~q\ & \47|9|1|sub|81~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \101|8~q\,
	datab => \58|49|1~0_combout\,
	datac => \47|9|1|sub|81~3_combout\,
	datad => \101|7~q\,
	combout => \58|49|1~1_combout\);

-- Location: FF_X34_Y69_N27
\58|49|1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \58|49|1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \58|49|1~q\);

-- Location: LCCOMB_X34_Y69_N2
\58|48|1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \58|48|1~1_combout\ = \58|48|1~q\ $ (\101|99~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \58|48|1~q\,
	datad => \101|99~q\,
	combout => \58|48|1~1_combout\);

-- Location: LCCOMB_X33_Y69_N0
\58|48|1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \58|48|1~0_combout\ = (\58|49|1~q\ & ((\58|48|1~1_combout\))) # (!\58|49|1~q\ & (\58|48|1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \58|49|1~q\,
	datac => \58|48|1~q\,
	datad => \58|48|1~1_combout\,
	combout => \58|48|1~0_combout\);

-- Location: LCCOMB_X33_Y69_N8
\47|10|1|sub|81~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \47|10|1|sub|81~2_combout\ = (\101|88~q\ & ((\58|47|1~q\))) # (!\101|88~q\ & (\58|49|1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \58|49|1~q\,
	datab => \58|47|1~q\,
	datac => \101|88~q\,
	combout => \47|10|1|sub|81~2_combout\);

-- Location: LCCOMB_X34_Y70_N12
\47|11|1|sub|81~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \47|11|1|sub|81~2_combout\ = (\101|93~q\ & ((\101|88~q\) # (!\101|91~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \101|91~q\,
	datac => \101|88~q\,
	datad => \101|93~q\,
	combout => \47|11|1|sub|81~2_combout\);

-- Location: LCCOMB_X33_Y70_N28
\47|11|1|sub|81~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \47|11|1|sub|81~3_combout\ = (\101|91~q\ & \101|93~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \101|91~q\,
	datad => \101|93~q\,
	combout => \47|11|1|sub|81~3_combout\);

-- Location: LCCOMB_X35_Y70_N2
\47|2|27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \47|2|27~0_combout\ = (\59|49|1~q\ & ((\58|49|1~q\))) # (!\59|49|1~q\ & (\101|88~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \101|88~q\,
	datac => \58|49|1~q\,
	datad => \59|49|1~q\,
	combout => \47|2|27~0_combout\);

-- Location: LCCOMB_X34_Y70_N22
\47|10|21|6\ : cycloneive_lcell_comb
-- Equation(s):
-- \47|10|21|6~combout\ = \59|48|1~q\ $ (\58|48|1~q\ $ (\101|88~q\ $ (\47|2|27~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \59|48|1~q\,
	datab => \58|48|1~q\,
	datac => \101|88~q\,
	datad => \47|2|27~0_combout\,
	combout => \47|10|21|6~combout\);

-- Location: LCCOMB_X34_Y70_N4
\47|10|1|sub|81~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \47|10|1|sub|81~3_combout\ = (\47|11|1|sub|81~2_combout\ & (\47|11|1|sub|81~3_combout\)) # (!\47|11|1|sub|81~2_combout\ & ((\47|11|1|sub|81~3_combout\ & ((\59|48|1~q\))) # (!\47|11|1|sub|81~3_combout\ & (\47|10|21|6~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \47|11|1|sub|81~2_combout\,
	datab => \47|11|1|sub|81~3_combout\,
	datac => \47|10|21|6~combout\,
	datad => \59|48|1~q\,
	combout => \47|10|1|sub|81~3_combout\);

-- Location: LCCOMB_X34_Y70_N18
\47|10|1|sub|69~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \47|10|1|sub|69~0_combout\ = (\101|88~q\ & ((\58|48|1~q\) # (\59|48|1~q\))) # (!\101|88~q\ & (\58|48|1~q\ & \59|48|1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \101|88~q\,
	datab => \58|48|1~q\,
	datad => \59|48|1~q\,
	combout => \47|10|1|sub|69~0_combout\);

-- Location: LCCOMB_X34_Y70_N6
\47|10|1|sub|81~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \47|10|1|sub|81~4_combout\ = (\47|11|1|sub|81~2_combout\ & ((\47|10|1|sub|81~3_combout\ & (!\58|48|1~q\)) # (!\47|10|1|sub|81~3_combout\ & ((\47|10|1|sub|69~0_combout\))))) # (!\47|11|1|sub|81~2_combout\ & (((\47|10|1|sub|81~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \47|11|1|sub|81~2_combout\,
	datab => \58|48|1~q\,
	datac => \47|10|1|sub|81~3_combout\,
	datad => \47|10|1|sub|69~0_combout\,
	combout => \47|10|1|sub|81~4_combout\);

-- Location: LCCOMB_X33_Y69_N14
\47|10|1|sub|81~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \47|10|1|sub|81~5_combout\ = (\101|93~q\ & (((\47|10|1|sub|81~4_combout\)))) # (!\101|93~q\ & ((\101|91~q\ & (\47|10|1|sub|81~2_combout\)) # (!\101|91~q\ & ((\47|10|1|sub|81~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \101|93~q\,
	datab => \101|91~q\,
	datac => \47|10|1|sub|81~2_combout\,
	datad => \47|10|1|sub|81~4_combout\,
	combout => \47|10|1|sub|81~5_combout\);

-- Location: FF_X33_Y69_N1
\58|48|1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \58|48|1~0_combout\,
	asdata => \47|10|1|sub|81~5_combout\,
	sclr => \101|7~q\,
	sload => \101|8~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \58|48|1~q\);

-- Location: LCCOMB_X33_Y69_N18
\58|48|15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \58|48|15~0_combout\ = (!\101|7~q\ & !\101|8~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \101|7~q\,
	datac => \101|8~q\,
	combout => \58|48|15~0_combout\);

-- Location: LCCOMB_X33_Y69_N12
\58|48|15\ : cycloneive_lcell_comb
-- Equation(s):
-- \58|48|15~combout\ = (\101|99~q\ & (\58|48|1~q\ & (\58|49|1~q\ & \58|48|15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \101|99~q\,
	datab => \58|48|1~q\,
	datac => \58|49|1~q\,
	datad => \58|48|15~0_combout\,
	combout => \58|48|15~combout\);

-- Location: LCCOMB_X34_Y70_N28
\47|12|1|sub|69~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \47|12|1|sub|69~0_combout\ = (\59|46|1~q\ & ((\101|88~q\) # (\58|46|1~q\))) # (!\59|46|1~q\ & (\101|88~q\ & \58|46|1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \59|46|1~q\,
	datac => \101|88~q\,
	datad => \58|46|1~q\,
	combout => \47|12|1|sub|69~0_combout\);

-- Location: LCCOMB_X35_Y70_N0
\47|11|18\ : cycloneive_lcell_comb
-- Equation(s):
-- \47|11|18~combout\ = \59|47|1~q\ $ (\101|88~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \59|47|1~q\,
	datad => \101|88~q\,
	combout => \47|11|18~combout\);

-- Location: LCCOMB_X35_Y70_N14
\47|12|21|1\ : cycloneive_lcell_comb
-- Equation(s):
-- \47|12|21|1~combout\ = \101|88~q\ $ (\59|46|1~q\ $ (\58|46|1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \101|88~q\,
	datac => \59|46|1~q\,
	datad => \58|46|1~q\,
	combout => \47|12|21|1~combout\);

-- Location: LCCOMB_X35_Y70_N16
\47|12|21|6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \47|12|21|6~0_combout\ = (\59|49|1~q\ & ((\58|49|1~q\))) # (!\59|49|1~q\ & (\101|88~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \101|88~q\,
	datac => \58|49|1~q\,
	datad => \59|49|1~q\,
	combout => \47|12|21|6~0_combout\);

-- Location: LCCOMB_X35_Y70_N22
\47|10|21|13\ : cycloneive_lcell_comb
-- Equation(s):
-- \47|10|21|13~combout\ = (\58|48|1~q\ & (\101|88~q\ $ (\59|48|1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \101|88~q\,
	datac => \58|48|1~q\,
	datad => \59|48|1~q\,
	combout => \47|10|21|13~combout\);

-- Location: LCCOMB_X35_Y70_N18
\47|10|21|1\ : cycloneive_lcell_comb
-- Equation(s):
-- \47|10|21|1~combout\ = \101|88~q\ $ (\58|48|1~q\ $ (\59|48|1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \101|88~q\,
	datac => \58|48|1~q\,
	datad => \59|48|1~q\,
	combout => \47|10|21|1~combout\);

-- Location: LCCOMB_X35_Y70_N10
\47|12|21|6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \47|12|21|6~1_combout\ = (\47|10|21|13~combout\) # ((\47|12|21|6~0_combout\ & \47|10|21|1~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \47|12|21|6~0_combout\,
	datac => \47|10|21|13~combout\,
	datad => \47|10|21|1~combout\,
	combout => \47|12|21|6~1_combout\);

-- Location: LCCOMB_X35_Y70_N4
\47|12|21|6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \47|12|21|6~2_combout\ = \47|12|21|1~combout\ $ (((\58|47|1~q\ & (!\47|11|18~combout\ & !\47|12|21|6~1_combout\)) # (!\58|47|1~q\ & ((!\47|12|21|6~1_combout\) # (!\47|11|18~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \58|47|1~q\,
	datab => \47|11|18~combout\,
	datac => \47|12|21|1~combout\,
	datad => \47|12|21|6~1_combout\,
	combout => \47|12|21|6~2_combout\);

-- Location: LCCOMB_X34_Y70_N30
\47|12|1|sub|81~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \47|12|1|sub|81~3_combout\ = (\47|11|1|sub|81~2_combout\ & (\47|11|1|sub|81~3_combout\)) # (!\47|11|1|sub|81~2_combout\ & ((\47|11|1|sub|81~3_combout\ & (\59|46|1~q\)) # (!\47|11|1|sub|81~3_combout\ & ((!\47|12|21|6~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \47|11|1|sub|81~2_combout\,
	datab => \47|11|1|sub|81~3_combout\,
	datac => \59|46|1~q\,
	datad => \47|12|21|6~2_combout\,
	combout => \47|12|1|sub|81~3_combout\);

-- Location: LCCOMB_X34_Y70_N20
\47|12|1|sub|81~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \47|12|1|sub|81~4_combout\ = (\47|11|1|sub|81~2_combout\ & ((\47|12|1|sub|81~3_combout\ & ((!\58|46|1~q\))) # (!\47|12|1|sub|81~3_combout\ & (\47|12|1|sub|69~0_combout\)))) # (!\47|11|1|sub|81~2_combout\ & (((\47|12|1|sub|81~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \47|11|1|sub|81~2_combout\,
	datab => \47|12|1|sub|69~0_combout\,
	datac => \47|12|1|sub|81~3_combout\,
	datad => \58|46|1~q\,
	combout => \47|12|1|sub|81~4_combout\);

-- Location: LCCOMB_X33_Y69_N22
\58|46|15\ : cycloneive_lcell_comb
-- Equation(s):
-- \58|46|15~combout\ = (\58|48|15~combout\ & (\58|46|1~q\ & \58|47|1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \58|48|15~combout\,
	datab => \58|46|1~q\,
	datad => \58|47|1~q\,
	combout => \58|46|15~combout\);

-- Location: LCCOMB_X32_Y69_N16
\58|53|1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \58|53|1~1_combout\ = (!\101|7~q\ & \101|8~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \101|7~q\,
	datac => \101|8~q\,
	combout => \58|53|1~1_combout\);

-- Location: LCCOMB_X32_Y69_N22
\47|11|1|sub|81~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \47|11|1|sub|81~4_combout\ = (!\101|93~q\ & \101|91~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \101|93~q\,
	datac => \101|91~q\,
	combout => \47|11|1|sub|81~4_combout\);

-- Location: LCCOMB_X33_Y69_N6
\58|50|15\ : cycloneive_lcell_comb
-- Equation(s):
-- \58|50|15~combout\ = (\58|48|15~combout\ & (\58|46|1~q\ & (\58|50|1~q\ & \58|47|1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \58|48|15~combout\,
	datab => \58|46|1~q\,
	datac => \58|50|1~q\,
	datad => \58|47|1~q\,
	combout => \58|50|15~combout\);

-- Location: LCCOMB_X32_Y69_N0
\58|52|1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \58|52|1~4_combout\ = (\58|52|1~q\ & (\58|48|15~0_combout\ & ((!\58|51|1~q\) # (!\58|50|15~combout\)))) # (!\58|52|1~q\ & (\58|50|15~combout\ & (\58|51|1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \58|50|15~combout\,
	datab => \58|51|1~q\,
	datac => \58|52|1~q\,
	datad => \58|48|15~0_combout\,
	combout => \58|52|1~4_combout\);

-- Location: LCCOMB_X32_Y69_N6
\58|53|1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \58|53|1~0_combout\ = (\58|51|1~q\ & (\58|52|1~q\ & \58|50|15~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \58|51|1~q\,
	datac => \58|52|1~q\,
	datad => \58|50|15~combout\,
	combout => \58|53|1~0_combout\);

-- Location: LCCOMB_X31_Y69_N12
\47|13|1|sub|81~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \47|13|1|sub|81~4_combout\ = (\101|88~q\ & ((\58|53|1~q\))) # (!\101|88~q\ & (\58|52|1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \101|88~q\,
	datac => \58|52|1~q\,
	datad => \58|53|1~q\,
	combout => \47|13|1|sub|81~4_combout\);

-- Location: LCCOMB_X32_Y70_N18
\47|13|1|sub|81~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \47|13|1|sub|81~8_combout\ = (\47|11|1|sub|81~3_combout\ & (((!\47|11|1|sub|81~2_combout\)))) # (!\47|11|1|sub|81~3_combout\ & (\47|11|1|sub|81~2_combout\ & (\101|88~q\ $ (!\59|53|1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \101|88~q\,
	datab => \47|11|1|sub|81~3_combout\,
	datac => \47|11|1|sub|81~2_combout\,
	datad => \59|53|1~q\,
	combout => \47|13|1|sub|81~8_combout\);

-- Location: LCCOMB_X32_Y70_N4
\47|13|1|sub|81~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \47|13|1|sub|81~7_combout\ = (\47|11|1|sub|81~2_combout\ & ((\47|11|1|sub|81~3_combout\) # ((\101|88~q\ & \59|53|1~q\)))) # (!\47|11|1|sub|81~2_combout\ & (((\59|53|1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \101|88~q\,
	datab => \47|11|1|sub|81~3_combout\,
	datac => \47|11|1|sub|81~2_combout\,
	datad => \59|53|1~q\,
	combout => \47|13|1|sub|81~7_combout\);

-- Location: LCCOMB_X34_Y68_N16
\59|46|15\ : cycloneive_lcell_comb
-- Equation(s):
-- \59|46|15~combout\ = (\59|46|1~q\ & (\59|48|15~0_combout\ & \59|47|1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \59|46|1~q\,
	datac => \59|48|15~0_combout\,
	datad => \59|47|1~q\,
	combout => \59|46|15~combout\);

-- Location: LCCOMB_X34_Y68_N0
\59|50|1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \59|50|1~0_combout\ = (\59|46|15~combout\ & (((!\59|50|1~q\)))) # (!\59|46|15~combout\ & ((\101|5~q\ & ((\67|Y[4]~17_combout\))) # (!\101|5~q\ & (\59|50|1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \101|5~q\,
	datab => \59|46|15~combout\,
	datac => \59|50|1~q\,
	datad => \67|Y[4]~17_combout\,
	combout => \59|50|1~0_combout\);

-- Location: FF_X34_Y68_N1
\59|50|1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \59|50|1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \59|50|1~q\);

-- Location: LCCOMB_X30_Y69_N30
\47|16|18\ : cycloneive_lcell_comb
-- Equation(s):
-- \47|16|18~combout\ = \101|88~q\ $ (\59|50|1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \101|88~q\,
	datad => \59|50|1~q\,
	combout => \47|16|18~combout\);

-- Location: LCCOMB_X30_Y69_N8
\47|15|21|1\ : cycloneive_lcell_comb
-- Equation(s):
-- \47|15|21|1~combout\ = \101|88~q\ $ (\58|51|1~q\ $ (\59|51|1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \101|88~q\,
	datac => \58|51|1~q\,
	datad => \59|51|1~q\,
	combout => \47|15|21|1~combout\);

-- Location: LCCOMB_X35_Y70_N12
\47|22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \47|22~0_combout\ = (\101|88~q\ & (\47|10|21|1~combout\ & (\59|49|1~q\ $ (!\58|49|1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \59|49|1~q\,
	datab => \101|88~q\,
	datac => \58|49|1~q\,
	datad => \47|10|21|1~combout\,
	combout => \47|22~0_combout\);

-- Location: LCCOMB_X35_Y70_N28
\47|11|21|1\ : cycloneive_lcell_comb
-- Equation(s):
-- \47|11|21|1~combout\ = \59|47|1~q\ $ (\58|47|1~q\ $ (\101|88~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \59|47|1~q\,
	datac => \58|47|1~q\,
	datad => \101|88~q\,
	combout => \47|11|21|1~combout\);

-- Location: LCCOMB_X35_Y70_N20
\47|2|24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \47|2|24~0_combout\ = (\58|49|1~q\ & (\47|10|21|1~combout\ & (\59|49|1~q\ $ (\101|88~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \59|49|1~q\,
	datab => \101|88~q\,
	datac => \58|49|1~q\,
	datad => \47|10|21|1~combout\,
	combout => \47|2|24~0_combout\);

-- Location: LCCOMB_X35_Y70_N6
\47|2|24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \47|2|24~1_combout\ = (\58|47|1~q\ & ((\47|11|18~combout\) # ((\47|10|21|13~combout\) # (\47|2|24~0_combout\)))) # (!\58|47|1~q\ & (\47|11|18~combout\ & ((\47|10|21|13~combout\) # (\47|2|24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \58|47|1~q\,
	datab => \47|11|18~combout\,
	datac => \47|10|21|13~combout\,
	datad => \47|2|24~0_combout\,
	combout => \47|2|24~1_combout\);

-- Location: LCCOMB_X35_Y70_N24
\47|2|24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \47|2|24~2_combout\ = (\58|46|1~q\ & (!\47|2|24~1_combout\ & (\101|88~q\ $ (!\59|46|1~q\)))) # (!\58|46|1~q\ & ((\101|88~q\ $ (!\59|46|1~q\)) # (!\47|2|24~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000111010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \58|46|1~q\,
	datab => \101|88~q\,
	datac => \59|46|1~q\,
	datad => \47|2|24~1_combout\,
	combout => \47|2|24~2_combout\);

-- Location: LCCOMB_X35_Y70_N30
\47|23\ : cycloneive_lcell_comb
-- Equation(s):
-- \47|23~combout\ = ((\47|22~0_combout\ & (\47|11|21|1~combout\ & \47|12|21|1~combout\))) # (!\47|2|24~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \47|22~0_combout\,
	datab => \47|11|21|1~combout\,
	datac => \47|12|21|1~combout\,
	datad => \47|2|24~2_combout\,
	combout => \47|23~combout\);

-- Location: LCCOMB_X30_Y69_N10
\47|21|27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \47|21|27~0_combout\ = ((\47|16|18~combout\ & (!\58|50|1~q\ & !\47|23~combout\)) # (!\47|16|18~combout\ & ((!\47|23~combout\) # (!\58|50|1~q\)))) # (!\47|15|21|1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \47|16|18~combout\,
	datab => \58|50|1~q\,
	datac => \47|15|21|1~combout\,
	datad => \47|23~combout\,
	combout => \47|21|27~0_combout\);

-- Location: LCCOMB_X30_Y69_N14
\47|13|1|sub|81~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \47|13|1|sub|81~10_combout\ = (\47|21|27~0_combout\ & ((\59|51|1~q\ $ (!\101|88~q\)) # (!\58|51|1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \59|51|1~q\,
	datab => \101|88~q\,
	datac => \58|51|1~q\,
	datad => \47|21|27~0_combout\,
	combout => \47|13|1|sub|81~10_combout\);

-- Location: LCCOMB_X31_Y69_N18
\47|13|1|sub|81~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \47|13|1|sub|81~5_combout\ = (\58|52|1~q\ & ((\47|13|1|sub|81~10_combout\ & ((\59|52|1~q\))) # (!\47|13|1|sub|81~10_combout\ & (!\101|88~q\)))) # (!\58|52|1~q\ & ((\47|13|1|sub|81~10_combout\ & (\101|88~q\)) # (!\47|13|1|sub|81~10_combout\ & 
-- ((\59|52|1~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \101|88~q\,
	datab => \59|52|1~q\,
	datac => \58|52|1~q\,
	datad => \47|13|1|sub|81~10_combout\,
	combout => \47|13|1|sub|81~5_combout\);

-- Location: LCCOMB_X31_Y69_N4
\47|13|1|sub|81~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \47|13|1|sub|81~6_combout\ = \58|53|1~q\ $ (((!\47|11|1|sub|81~2_combout\ & \47|13|1|sub|81~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \58|53|1~q\,
	datac => \47|11|1|sub|81~2_combout\,
	datad => \47|13|1|sub|81~5_combout\,
	combout => \47|13|1|sub|81~6_combout\);

-- Location: LCCOMB_X32_Y70_N28
\47|13|1|sub|81~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \47|13|1|sub|81~9_combout\ = \47|13|1|sub|81~7_combout\ $ (((!\47|13|1|sub|81~8_combout\ & \47|13|1|sub|81~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \47|13|1|sub|81~8_combout\,
	datac => \47|13|1|sub|81~7_combout\,
	datad => \47|13|1|sub|81~6_combout\,
	combout => \47|13|1|sub|81~9_combout\);

-- Location: LCCOMB_X32_Y69_N10
\58|53|1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \58|53|1~2_combout\ = (\58|53|1~1_combout\ & ((\47|11|1|sub|81~4_combout\ & (\47|13|1|sub|81~4_combout\)) # (!\47|11|1|sub|81~4_combout\ & ((\47|13|1|sub|81~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \47|13|1|sub|81~4_combout\,
	datab => \58|53|1~1_combout\,
	datac => \47|11|1|sub|81~4_combout\,
	datad => \47|13|1|sub|81~9_combout\,
	combout => \58|53|1~2_combout\);

-- Location: LCCOMB_X32_Y69_N4
\58|53|1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \58|53|1~3_combout\ = (\58|53|1~2_combout\) # ((\58|53|1~0_combout\ & ((!\58|53|1~q\))) # (!\58|53|1~0_combout\ & (\58|48|15~0_combout\ & \58|53|1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \58|53|1~0_combout\,
	datab => \58|48|15~0_combout\,
	datac => \58|53|1~q\,
	datad => \58|53|1~2_combout\,
	combout => \58|53|1~3_combout\);

-- Location: FF_X32_Y69_N5
\58|53|1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \58|53|1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \58|53|1~q\);

-- Location: LCCOMB_X32_Y69_N12
\47|14|1|sub|81~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \47|14|1|sub|81~2_combout\ = (\101|88~q\ & ((\58|53|1~q\))) # (!\101|88~q\ & (\58|51|1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \58|51|1~q\,
	datac => \101|88~q\,
	datad => \58|53|1~q\,
	combout => \47|14|1|sub|81~2_combout\);

-- Location: LCCOMB_X32_Y69_N8
\58|52|1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \58|52|1~6_combout\ = (\101|8~q\ & (!\101|7~q\ & ((\47|14|1|sub|81~2_combout\) # (!\47|11|1|sub|81~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \47|11|1|sub|81~4_combout\,
	datab => \101|8~q\,
	datac => \101|7~q\,
	datad => \47|14|1|sub|81~2_combout\,
	combout => \58|52|1~6_combout\);

-- Location: LCCOMB_X31_Y69_N14
\47|14|1|sub|69~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \47|14|1|sub|69~0_combout\ = (\101|88~q\ & ((\58|52|1~q\) # (\59|52|1~q\))) # (!\101|88~q\ & (\58|52|1~q\ & \59|52|1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \101|88~q\,
	datac => \58|52|1~q\,
	datad => \59|52|1~q\,
	combout => \47|14|1|sub|69~0_combout\);

-- Location: LCCOMB_X30_Y69_N4
\47|15|21|13\ : cycloneive_lcell_comb
-- Equation(s):
-- \47|15|21|13~combout\ = (\58|51|1~q\ & (\101|88~q\ $ (\59|51|1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \101|88~q\,
	datac => \58|51|1~q\,
	datad => \59|51|1~q\,
	combout => \47|15|21|13~combout\);

-- Location: LCCOMB_X30_Y69_N0
\47|14|21|6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \47|14|21|6~0_combout\ = (\47|15|21|13~combout\) # ((\47|16|18~combout\ & ((\58|50|1~q\) # (\47|23~combout\))) # (!\47|16|18~combout\ & (\58|50|1~q\ & \47|23~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \47|16|18~combout\,
	datab => \58|50|1~q\,
	datac => \47|15|21|13~combout\,
	datad => \47|23~combout\,
	combout => \47|14|21|6~0_combout\);

-- Location: LCCOMB_X30_Y69_N26
\47|14|21|6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \47|14|21|6~1_combout\ = (\47|14|21|6~0_combout\ & ((\58|51|1~q\ & (!\101|88~q\)) # (!\58|51|1~q\ & ((\59|51|1~q\))))) # (!\47|14|21|6~0_combout\ & (((\101|88~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \58|51|1~q\,
	datab => \47|14|21|6~0_combout\,
	datac => \101|88~q\,
	datad => \59|51|1~q\,
	combout => \47|14|21|6~1_combout\);

-- Location: LCCOMB_X31_Y69_N16
\47|14|21|6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \47|14|21|6~2_combout\ = \58|52|1~q\ $ (\47|14|21|6~1_combout\ $ (!\59|52|1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \58|52|1~q\,
	datac => \47|14|21|6~1_combout\,
	datad => \59|52|1~q\,
	combout => \47|14|21|6~2_combout\);

-- Location: LCCOMB_X32_Y69_N26
\47|14|1|sub|81~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \47|14|1|sub|81~3_combout\ = (\47|11|1|sub|81~3_combout\ & (((\47|11|1|sub|81~2_combout\)))) # (!\47|11|1|sub|81~3_combout\ & ((\47|11|1|sub|81~2_combout\ & (\47|14|1|sub|69~0_combout\)) # (!\47|11|1|sub|81~2_combout\ & ((!\47|14|21|6~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \47|14|1|sub|69~0_combout\,
	datab => \47|11|1|sub|81~3_combout\,
	datac => \47|14|21|6~2_combout\,
	datad => \47|11|1|sub|81~2_combout\,
	combout => \47|14|1|sub|81~3_combout\);

-- Location: LCCOMB_X32_Y69_N28
\47|14|1|sub|81~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \47|14|1|sub|81~4_combout\ = (\47|14|1|sub|81~3_combout\ & (((!\47|11|1|sub|81~3_combout\) # (!\58|52|1~q\)))) # (!\47|14|1|sub|81~3_combout\ & (\59|52|1~q\ & ((\47|11|1|sub|81~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \59|52|1~q\,
	datab => \58|52|1~q\,
	datac => \47|14|1|sub|81~3_combout\,
	datad => \47|11|1|sub|81~3_combout\,
	combout => \47|14|1|sub|81~4_combout\);

-- Location: LCCOMB_X32_Y69_N14
\58|52|1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \58|52|1~5_combout\ = (\58|52|1~4_combout\) # ((\58|52|1~6_combout\ & ((\47|11|1|sub|81~4_combout\) # (\47|14|1|sub|81~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \47|11|1|sub|81~4_combout\,
	datab => \58|52|1~4_combout\,
	datac => \58|52|1~6_combout\,
	datad => \47|14|1|sub|81~4_combout\,
	combout => \58|52|1~5_combout\);

-- Location: FF_X32_Y69_N15
\58|52|1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \58|52|1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \58|52|1~q\);

-- Location: LCCOMB_X33_Y69_N20
\47|15|1|sub|81~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \47|15|1|sub|81~2_combout\ = (\101|88~q\ & (\58|52|1~q\)) # (!\101|88~q\ & ((\58|50|1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \58|52|1~q\,
	datab => \101|88~q\,
	datac => \58|50|1~q\,
	combout => \47|15|1|sub|81~2_combout\);

-- Location: LCCOMB_X30_Y69_N2
\47|15|21|6\ : cycloneive_lcell_comb
-- Equation(s):
-- \47|15|21|6~combout\ = \47|15|21|1~combout\ $ (((\47|16|18~combout\ & (!\58|50|1~q\ & !\47|23~combout\)) # (!\47|16|18~combout\ & ((!\47|23~combout\) # (!\58|50|1~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \47|16|18~combout\,
	datab => \58|50|1~q\,
	datac => \47|15|21|1~combout\,
	datad => \47|23~combout\,
	combout => \47|15|21|6~combout\);

-- Location: LCCOMB_X30_Y69_N28
\47|15|1|sub|81~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \47|15|1|sub|81~3_combout\ = (\47|11|1|sub|81~3_combout\ & (((\47|11|1|sub|81~2_combout\) # (\59|51|1~q\)))) # (!\47|11|1|sub|81~3_combout\ & (!\47|15|21|6~combout\ & (!\47|11|1|sub|81~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \47|11|1|sub|81~3_combout\,
	datab => \47|15|21|6~combout\,
	datac => \47|11|1|sub|81~2_combout\,
	datad => \59|51|1~q\,
	combout => \47|15|1|sub|81~3_combout\);

-- Location: LCCOMB_X30_Y69_N24
\47|15|1|sub|69~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \47|15|1|sub|69~0_combout\ = (\101|88~q\ & ((\58|51|1~q\) # (\59|51|1~q\))) # (!\101|88~q\ & (\58|51|1~q\ & \59|51|1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \101|88~q\,
	datac => \58|51|1~q\,
	datad => \59|51|1~q\,
	combout => \47|15|1|sub|69~0_combout\);

-- Location: LCCOMB_X30_Y69_N18
\47|15|1|sub|81~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \47|15|1|sub|81~4_combout\ = (\47|15|1|sub|81~3_combout\ & (((!\47|11|1|sub|81~2_combout\)) # (!\58|51|1~q\))) # (!\47|15|1|sub|81~3_combout\ & (((\47|11|1|sub|81~2_combout\ & \47|15|1|sub|69~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \58|51|1~q\,
	datab => \47|15|1|sub|81~3_combout\,
	datac => \47|11|1|sub|81~2_combout\,
	datad => \47|15|1|sub|69~0_combout\,
	combout => \47|15|1|sub|81~4_combout\);

-- Location: LCCOMB_X32_Y69_N30
\47|15|1|sub|81~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \47|15|1|sub|81~5_combout\ = (\101|91~q\ & ((\101|93~q\ & ((\47|15|1|sub|81~4_combout\))) # (!\101|93~q\ & (\47|15|1|sub|81~2_combout\)))) # (!\101|91~q\ & (((\47|15|1|sub|81~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \47|15|1|sub|81~2_combout\,
	datab => \101|91~q\,
	datac => \101|93~q\,
	datad => \47|15|1|sub|81~4_combout\,
	combout => \47|15|1|sub|81~5_combout\);

-- Location: LCCOMB_X32_Y69_N2
\58|51|1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \58|51|1~4_combout\ = (\58|50|15~combout\ & (((!\58|51|1~q\)))) # (!\58|50|15~combout\ & (!\101|8~q\ & (!\101|7~q\ & \58|51|1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \58|50|15~combout\,
	datab => \101|8~q\,
	datac => \101|7~q\,
	datad => \58|51|1~q\,
	combout => \58|51|1~4_combout\);

-- Location: LCCOMB_X32_Y69_N24
\58|51|1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \58|51|1~5_combout\ = (\58|51|1~4_combout\) # ((\47|15|1|sub|81~5_combout\ & (\101|8~q\ & !\101|7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \47|15|1|sub|81~5_combout\,
	datab => \101|8~q\,
	datac => \101|7~q\,
	datad => \58|51|1~4_combout\,
	combout => \58|51|1~5_combout\);

-- Location: FF_X32_Y69_N25
\58|51|1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \58|51|1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \58|51|1~q\);

-- Location: LCCOMB_X33_Y69_N26
\47|16|1|sub|81~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \47|16|1|sub|81~2_combout\ = (\101|88~q\ & (\58|51|1~q\)) # (!\101|88~q\ & ((\58|46|1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \58|51|1~q\,
	datac => \101|88~q\,
	datad => \58|46|1~q\,
	combout => \47|16|1|sub|81~2_combout\);

-- Location: LCCOMB_X30_Y69_N16
\47|16|1|sub|69~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \47|16|1|sub|69~0_combout\ = (\59|50|1~q\ & ((\101|88~q\) # (\58|50|1~q\))) # (!\59|50|1~q\ & (\101|88~q\ & \58|50|1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \59|50|1~q\,
	datac => \101|88~q\,
	datad => \58|50|1~q\,
	combout => \47|16|1|sub|69~0_combout\);

-- Location: LCCOMB_X30_Y69_N12
\47|16|21|6\ : cycloneive_lcell_comb
-- Equation(s):
-- \47|16|21|6~combout\ = \47|23~combout\ $ (\59|50|1~q\ $ (\101|88~q\ $ (\58|50|1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \47|23~combout\,
	datab => \59|50|1~q\,
	datac => \101|88~q\,
	datad => \58|50|1~q\,
	combout => \47|16|21|6~combout\);

-- Location: LCCOMB_X30_Y69_N22
\47|16|1|sub|81~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \47|16|1|sub|81~3_combout\ = (\47|11|1|sub|81~3_combout\ & (((\47|11|1|sub|81~2_combout\)))) # (!\47|11|1|sub|81~3_combout\ & ((\47|11|1|sub|81~2_combout\ & (\47|16|1|sub|69~0_combout\)) # (!\47|11|1|sub|81~2_combout\ & ((\47|16|21|6~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \47|11|1|sub|81~3_combout\,
	datab => \47|16|1|sub|69~0_combout\,
	datac => \47|11|1|sub|81~2_combout\,
	datad => \47|16|21|6~combout\,
	combout => \47|16|1|sub|81~3_combout\);

-- Location: LCCOMB_X30_Y69_N20
\47|16|1|sub|81~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \47|16|1|sub|81~4_combout\ = (\47|11|1|sub|81~3_combout\ & ((\47|16|1|sub|81~3_combout\ & (!\58|50|1~q\)) # (!\47|16|1|sub|81~3_combout\ & ((\59|50|1~q\))))) # (!\47|11|1|sub|81~3_combout\ & (((\47|16|1|sub|81~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \47|11|1|sub|81~3_combout\,
	datab => \58|50|1~q\,
	datac => \47|16|1|sub|81~3_combout\,
	datad => \59|50|1~q\,
	combout => \47|16|1|sub|81~4_combout\);

-- Location: LCCOMB_X33_Y69_N16
\58|50|1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \58|50|1~0_combout\ = (\58|53|1~1_combout\ & ((\47|11|1|sub|81~4_combout\ & (\47|16|1|sub|81~2_combout\)) # (!\47|11|1|sub|81~4_combout\ & ((\47|16|1|sub|81~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \58|53|1~1_combout\,
	datab => \47|11|1|sub|81~4_combout\,
	datac => \47|16|1|sub|81~2_combout\,
	datad => \47|16|1|sub|81~4_combout\,
	combout => \58|50|1~0_combout\);

-- Location: LCCOMB_X33_Y69_N30
\58|50|1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \58|50|1~1_combout\ = (\58|50|1~0_combout\) # ((\58|46|15~combout\ & (!\58|50|1~q\)) # (!\58|46|15~combout\ & (\58|50|1~q\ & \58|48|15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \58|46|15~combout\,
	datab => \58|50|1~0_combout\,
	datac => \58|50|1~q\,
	datad => \58|48|15~0_combout\,
	combout => \58|50|1~1_combout\);

-- Location: FF_X33_Y69_N31
\58|50|1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \58|50|1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \58|50|1~q\);

-- Location: LCCOMB_X34_Y70_N26
\47|12|1|sub|81~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \47|12|1|sub|81~2_combout\ = (\101|88~q\ & ((\58|50|1~q\))) # (!\101|88~q\ & (\58|47|1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \58|47|1~q\,
	datab => \58|50|1~q\,
	datac => \101|88~q\,
	combout => \47|12|1|sub|81~2_combout\);

-- Location: LCCOMB_X33_Y70_N30
\47|12|1|sub|81~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \47|12|1|sub|81~5_combout\ = (\101|91~q\ & ((\101|93~q\ & (\47|12|1|sub|81~4_combout\)) # (!\101|93~q\ & ((\47|12|1|sub|81~2_combout\))))) # (!\101|91~q\ & (\47|12|1|sub|81~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \47|12|1|sub|81~4_combout\,
	datab => \47|12|1|sub|81~2_combout\,
	datac => \101|91~q\,
	datad => \101|93~q\,
	combout => \47|12|1|sub|81~5_combout\);

-- Location: LCCOMB_X33_Y69_N28
\58|46|1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \58|46|1~0_combout\ = (\101|7~q\ & (((\58|46|1~q\)))) # (!\101|7~q\ & (\101|8~q\ & (\47|12|1|sub|81~5_combout\ $ (\58|46|1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \47|12|1|sub|81~5_combout\,
	datab => \101|7~q\,
	datac => \101|8~q\,
	datad => \58|46|1~q\,
	combout => \58|46|1~0_combout\);

-- Location: LCCOMB_X33_Y69_N24
\58|46|1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \58|46|1~1_combout\ = \58|46|1~q\ $ (((\58|46|1~0_combout\) # ((\58|48|15~combout\ & \58|47|1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \58|48|15~combout\,
	datab => \58|47|1~q\,
	datac => \58|46|1~q\,
	datad => \58|46|1~0_combout\,
	combout => \58|46|1~1_combout\);

-- Location: FF_X33_Y69_N25
\58|46|1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \58|46|1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \58|46|1~q\);

-- Location: LCCOMB_X34_Y70_N14
\47|11|1|sub|81~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \47|11|1|sub|81~5_combout\ = (\101|88~q\ & ((\58|46|1~q\))) # (!\101|88~q\ & (\58|48|1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \58|48|1~q\,
	datac => \101|88~q\,
	datad => \58|46|1~q\,
	combout => \47|11|1|sub|81~5_combout\);

-- Location: LCCOMB_X34_Y70_N8
\47|11|1|sub|69~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \47|11|1|sub|69~0_combout\ = (\101|88~q\ & ((\59|47|1~q\) # (\58|47|1~q\))) # (!\101|88~q\ & (\59|47|1~q\ & \58|47|1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \101|88~q\,
	datab => \59|47|1~q\,
	datac => \58|47|1~q\,
	combout => \47|11|1|sub|69~0_combout\);

-- Location: LCCOMB_X35_Y70_N8
\47|2|29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \47|2|29~0_combout\ = (!\58|48|1~q\ & (\101|88~q\ $ (!\59|48|1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \101|88~q\,
	datac => \58|48|1~q\,
	datad => \59|48|1~q\,
	combout => \47|2|29~0_combout\);

-- Location: LCCOMB_X35_Y70_N26
\47|11|21|6\ : cycloneive_lcell_comb
-- Equation(s):
-- \47|11|21|6~combout\ = \47|11|21|1~combout\ $ (((\47|2|29~0_combout\) # ((!\47|10|21|13~combout\ & !\47|2|27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \47|10|21|13~combout\,
	datab => \47|11|21|1~combout\,
	datac => \47|2|29~0_combout\,
	datad => \47|2|27~0_combout\,
	combout => \47|11|21|6~combout\);

-- Location: LCCOMB_X34_Y70_N10
\47|11|1|sub|81~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \47|11|1|sub|81~6_combout\ = (\47|11|1|sub|81~2_combout\ & ((\47|11|1|sub|81~3_combout\) # ((\47|11|1|sub|69~0_combout\)))) # (!\47|11|1|sub|81~2_combout\ & (!\47|11|1|sub|81~3_combout\ & ((!\47|11|21|6~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \47|11|1|sub|81~2_combout\,
	datab => \47|11|1|sub|81~3_combout\,
	datac => \47|11|1|sub|69~0_combout\,
	datad => \47|11|21|6~combout\,
	combout => \47|11|1|sub|81~6_combout\);

-- Location: LCCOMB_X34_Y70_N24
\47|11|1|sub|81~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \47|11|1|sub|81~7_combout\ = (\47|11|1|sub|81~3_combout\ & ((\47|11|1|sub|81~6_combout\ & (!\58|47|1~q\)) # (!\47|11|1|sub|81~6_combout\ & ((\59|47|1~q\))))) # (!\47|11|1|sub|81~3_combout\ & (((\47|11|1|sub|81~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \58|47|1~q\,
	datab => \47|11|1|sub|81~3_combout\,
	datac => \59|47|1~q\,
	datad => \47|11|1|sub|81~6_combout\,
	combout => \47|11|1|sub|81~7_combout\);

-- Location: LCCOMB_X34_Y70_N16
\47|11|1|sub|81~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \47|11|1|sub|81~8_combout\ = (\101|93~q\ & (((\47|11|1|sub|81~7_combout\)))) # (!\101|93~q\ & ((\101|91~q\ & (\47|11|1|sub|81~5_combout\)) # (!\101|91~q\ & ((\47|11|1|sub|81~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \101|93~q\,
	datab => \101|91~q\,
	datac => \47|11|1|sub|81~5_combout\,
	datad => \47|11|1|sub|81~7_combout\,
	combout => \47|11|1|sub|81~8_combout\);

-- Location: LCCOMB_X33_Y69_N10
\58|47|1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \58|47|1~0_combout\ = (\101|8~q\ & ((\47|11|1|sub|81~8_combout\))) # (!\101|8~q\ & (\58|47|1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \58|47|1~q\,
	datac => \101|8~q\,
	datad => \47|11|1|sub|81~8_combout\,
	combout => \58|47|1~0_combout\);

-- Location: LCCOMB_X33_Y69_N2
\58|47|1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \58|47|1~1_combout\ = (\58|48|15~combout\ & (((!\58|47|1~q\)))) # (!\58|48|15~combout\ & (!\101|7~q\ & ((\58|47|1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \58|48|15~combout\,
	datab => \101|7~q\,
	datac => \58|47|1~q\,
	datad => \58|47|1~0_combout\,
	combout => \58|47|1~1_combout\);

-- Location: FF_X33_Y69_N3
\58|47|1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \58|47|1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \58|47|1~q\);

-- Location: LCCOMB_X35_Y69_N8
\inst7|inst15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst15~0_combout\ = (!\64|30|1~q\ & ((\inst7|inst25~2_combout\) # ((\64|26|1~q\ & \99|33~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst25~2_combout\,
	datab => \64|26|1~q\,
	datac => \64|30|1~q\,
	datad => \99|33~0_combout\,
	combout => \inst7|inst15~0_combout\);

-- Location: FF_X35_Y69_N9
\101|1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|inst15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \101|1~q\);

-- Location: LCCOMB_X40_Y68_N12
\69|23|1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \69|23|1~feeder_combout\ = \67|Y[0]~33_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \67|Y[0]~33_combout\,
	combout => \69|23|1~feeder_combout\);

-- Location: LCCOMB_X39_Y69_N22
\inst7|inst21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst21~2_combout\ = (!\64|30|1~q\ & ((\98|33|1~q\ & ((\64|29|1~q\) # (!\98|34|1~q\))) # (!\98|33|1~q\ & ((\98|34|1~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \64|29|1~q\,
	datab => \64|30|1~q\,
	datac => \98|33|1~q\,
	datad => \98|34|1~q\,
	combout => \inst7|inst21~2_combout\);

-- Location: LCCOMB_X39_Y69_N14
\inst7|inst21~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst21~3_combout\ = (!\98|36|1~q\ & ((\98|35|1~q\ & (\inst7|inst21~2_combout\)) # (!\98|35|1~q\ & ((!\98|33|1~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst21~2_combout\,
	datab => \98|35|1~q\,
	datac => \98|33|1~q\,
	datad => \98|36|1~q\,
	combout => \inst7|inst21~3_combout\);

-- Location: FF_X39_Y69_N15
\101|2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|inst21~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \101|2~q\);

-- Location: FF_X40_Y68_N13
\69|23|1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \69|23|1~feeder_combout\,
	ena => \101|2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \69|23|1~q\);

-- Location: FF_X40_Y68_N3
\69|24|1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \67|Y[1]~29_combout\,
	sload => VCC,
	ena => \101|2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \69|24|1~q\);

-- Location: FF_X40_Y68_N9
\69|25|1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \67|Y[2]~25_combout\,
	sload => VCC,
	ena => \101|2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \69|25|1~q\);

-- Location: FF_X36_Y68_N3
\69|26|1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \67|Y[3]~21_combout\,
	sload => VCC,
	ena => \101|2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \69|26|1~q\);

-- Location: FF_X36_Y68_N21
\69|27|1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \67|Y[4]~17_combout\,
	sload => VCC,
	ena => \101|2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \69|27|1~q\);

-- Location: FF_X36_Y68_N31
\69|28|1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \67|Y[5]~13_combout\,
	sload => VCC,
	ena => \101|2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \69|28|1~q\);

-- Location: FF_X36_Y68_N29
\69|29|1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \67|Y[6]~9_combout\,
	sload => VCC,
	ena => \101|2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \69|29|1~q\);

-- Location: FF_X36_Y68_N5
\69|30|1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \67|Y[7]~5_combout\,
	sload => VCC,
	ena => \101|2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \69|30|1~q\);

-- Location: M9K_X37_Y68_N0
\104|lpm_ram_dq_component|sram|ram_block|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000028000A00028000A00028000A0000AC0010003D00020003CC0008003C80002003CC0004003C40008003C80004003C00008003C40004003D400080024000F50001000F50012000F20002000F10000800F00001000F5000200090003D40004003D40048003C40004003D400080024000F50001000F30002000F10000800F50012000F00001000F5000200082002400090002400082003D00008002080090002400090003C40008003C000080024000F3000200081",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "memorycontents8.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram256x8:104|lpm_ram_dq:lpm_ram_dq_component|altram:sram|altsyncram:ram_block|altsyncram_7pa1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \101|1~q\,
	portare => VCC,
	clk0 => \ALT_INV_clk~inputclkctrl_outclk\,
	portadatain => \104|lpm_ram_dq_component|sram|ram_block|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \104|lpm_ram_dq_component|sram|ram_block|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \104|lpm_ram_dq_component|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X36_Y68_N6
\67|Y[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \67|Y[2]~22_combout\ = (\101|128~q\ & ((\101|84~q\) # ((\69|25|1~q\)))) # (!\101|128~q\ & (!\101|84~q\ & (\104|lpm_ram_dq_component|sram|ram_block|auto_generated|q_a\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \101|128~q\,
	datab => \101|84~q\,
	datac => \104|lpm_ram_dq_component|sram|ram_block|auto_generated|q_a\(2),
	datad => \69|25|1~q\,
	combout => \67|Y[2]~22_combout\);

-- Location: LCCOMB_X36_Y68_N18
\67|Y[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \67|Y[2]~23_combout\ = (\101|84~q\ & ((\67|Y[2]~22_combout\ & (\58|47|1~q\)) # (!\67|Y[2]~22_combout\ & ((\64|25|1~q\))))) # (!\101|84~q\ & (((\67|Y[2]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \58|47|1~q\,
	datab => \101|84~q\,
	datac => \64|25|1~q\,
	datad => \67|Y[2]~22_combout\,
	combout => \67|Y[2]~23_combout\);

-- Location: LCCOMB_X38_Y68_N24
\67|Y[2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \67|Y[2]~25_combout\ = (\67|Y[2]~24_combout\ & ((\65|25|1~q\) # ((!\67|Y[4]~3_combout\)))) # (!\67|Y[2]~24_combout\ & (((\67|Y[4]~3_combout\ & \67|Y[2]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \65|25|1~q\,
	datab => \67|Y[2]~24_combout\,
	datac => \67|Y[4]~3_combout\,
	datad => \67|Y[2]~23_combout\,
	combout => \67|Y[2]~25_combout\);

-- Location: LCCOMB_X38_Y68_N18
\60|47|1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \60|47|1~0_combout\ = (\60|48|15~0_combout\ & (((!\60|47|1~q\)))) # (!\60|48|15~0_combout\ & ((\101|3~q\ & ((\67|Y[2]~25_combout\))) # (!\101|3~q\ & (\60|47|1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \101|3~q\,
	datab => \60|48|15~0_combout\,
	datac => \60|47|1~q\,
	datad => \67|Y[2]~25_combout\,
	combout => \60|47|1~0_combout\);

-- Location: FF_X38_Y68_N19
\60|47|1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \60|47|1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \60|47|1~q\);

-- Location: LCCOMB_X38_Y68_N30
\60|47|15\ : cycloneive_lcell_comb
-- Equation(s):
-- \60|47|15~combout\ = (\60|47|1~q\ & \60|48|15~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \60|47|1~q\,
	datad => \60|48|15~0_combout\,
	combout => \60|47|15~combout\);

-- Location: LCCOMB_X38_Y68_N4
\60|46|1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \60|46|1~0_combout\ = (\60|47|15~combout\ & (((!\60|46|1~q\)))) # (!\60|47|15~combout\ & ((\101|3~q\ & ((\67|Y[3]~21_combout\))) # (!\101|3~q\ & (\60|46|1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \60|47|15~combout\,
	datab => \101|3~q\,
	datac => \60|46|1~q\,
	datad => \67|Y[3]~21_combout\,
	combout => \60|46|1~0_combout\);

-- Location: FF_X38_Y68_N5
\60|46|1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \60|46|1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \60|46|1~q\);

-- Location: LCCOMB_X36_Y68_N14
\60|46|15\ : cycloneive_lcell_comb
-- Equation(s):
-- \60|46|15~combout\ = (\60|47|1~q\ & (\60|46|1~q\ & \60|48|15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \60|47|1~q\,
	datac => \60|46|1~q\,
	datad => \60|48|15~0_combout\,
	combout => \60|46|15~combout\);

-- Location: LCCOMB_X34_Y68_N18
\60|50|1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \60|50|1~0_combout\ = (\60|46|15~combout\ & (((!\60|50|1~q\)))) # (!\60|46|15~combout\ & ((\101|3~q\ & ((\67|Y[4]~17_combout\))) # (!\101|3~q\ & (\60|50|1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \101|3~q\,
	datab => \60|46|15~combout\,
	datac => \60|50|1~q\,
	datad => \67|Y[4]~17_combout\,
	combout => \60|50|1~0_combout\);

-- Location: FF_X34_Y68_N19
\60|50|1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \60|50|1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \60|50|1~q\);

-- Location: LCCOMB_X34_Y68_N28
\67|Y[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \67|Y[4]~16_combout\ = (\67|Y[4]~3_combout\ & (\67|Y[4]~0_combout\)) # (!\67|Y[4]~3_combout\ & ((\67|Y[4]~0_combout\ & ((\59|50|1~q\))) # (!\67|Y[4]~0_combout\ & (\60|50|1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \67|Y[4]~3_combout\,
	datab => \67|Y[4]~0_combout\,
	datac => \60|50|1~q\,
	datad => \59|50|1~q\,
	combout => \67|Y[4]~16_combout\);

-- Location: IOIBUF_X3_Y73_N22
\DIP4~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIP4,
	o => \DIP4~input_o\);

-- Location: LCCOMB_X34_Y68_N26
\65|27|1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \65|27|1~feeder_combout\ = \DIP4~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DIP4~input_o\,
	combout => \65|27|1~feeder_combout\);

-- Location: FF_X34_Y68_N27
\65|27|1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \65|27|1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \65|27|1~q\);

-- Location: LCCOMB_X36_Y68_N20
\67|Y[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \67|Y[4]~14_combout\ = (\101|128~q\ & ((\101|84~q\) # ((\69|27|1~q\)))) # (!\101|128~q\ & (!\101|84~q\ & ((\104|lpm_ram_dq_component|sram|ram_block|auto_generated|q_a\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \101|128~q\,
	datab => \101|84~q\,
	datac => \69|27|1~q\,
	datad => \104|lpm_ram_dq_component|sram|ram_block|auto_generated|q_a\(4),
	combout => \67|Y[4]~14_combout\);

-- Location: LCCOMB_X36_Y68_N26
\67|Y[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \67|Y[4]~15_combout\ = (\101|84~q\ & ((\67|Y[4]~14_combout\ & (\58|50|1~q\)) # (!\67|Y[4]~14_combout\ & ((\64|27|1~q\))))) # (!\101|84~q\ & (((\67|Y[4]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \58|50|1~q\,
	datab => \101|84~q\,
	datac => \64|27|1~q\,
	datad => \67|Y[4]~14_combout\,
	combout => \67|Y[4]~15_combout\);

-- Location: LCCOMB_X34_Y68_N12
\67|Y[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \67|Y[4]~17_combout\ = (\67|Y[4]~3_combout\ & ((\67|Y[4]~16_combout\ & (\65|27|1~q\)) # (!\67|Y[4]~16_combout\ & ((\67|Y[4]~15_combout\))))) # (!\67|Y[4]~3_combout\ & (\67|Y[4]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \67|Y[4]~3_combout\,
	datab => \67|Y[4]~16_combout\,
	datac => \65|27|1~q\,
	datad => \67|Y[4]~15_combout\,
	combout => \67|Y[4]~17_combout\);

-- Location: FF_X36_Y68_N27
\64|27|1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \67|Y[4]~17_combout\,
	sload => VCC,
	ena => \101|6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \64|27|1~q\);

-- Location: LCCOMB_X39_Y69_N8
\99|33~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \99|33~2_combout\ = (!\98|34|1~q\ & (!\98|35|1~q\ & (!\98|33|1~q\ & \98|36|1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \98|34|1~q\,
	datab => \98|35|1~q\,
	datac => \98|33|1~q\,
	datad => \98|36|1~q\,
	combout => \99|33~2_combout\);

-- Location: LCCOMB_X35_Y69_N14
\inst7|inst40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst40~combout\ = (!\64|30|1~q\ & (\64|27|1~q\ & \99|33~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \64|30|1~q\,
	datac => \64|27|1~q\,
	datad => \99|33~2_combout\,
	combout => \inst7|inst40~combout\);

-- Location: FF_X35_Y69_N15
\101|3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|inst40~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \101|3~q\);

-- Location: LCCOMB_X36_Y68_N12
\60|50|15\ : cycloneive_lcell_comb
-- Equation(s):
-- \60|50|15~combout\ = (\60|50|1~q\ & (\60|48|15~0_combout\ & (\60|46|1~q\ & \60|47|1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \60|50|1~q\,
	datab => \60|48|15~0_combout\,
	datac => \60|46|1~q\,
	datad => \60|47|1~q\,
	combout => \60|50|15~combout\);

-- Location: LCCOMB_X35_Y68_N10
\60|51|1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \60|51|1~0_combout\ = (\60|50|15~combout\ & (((!\60|51|1~q\)))) # (!\60|50|15~combout\ & ((\101|3~q\ & ((\67|Y[5]~13_combout\))) # (!\101|3~q\ & (\60|51|1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \101|3~q\,
	datab => \60|50|15~combout\,
	datac => \60|51|1~q\,
	datad => \67|Y[5]~13_combout\,
	combout => \60|51|1~0_combout\);

-- Location: FF_X35_Y68_N11
\60|51|1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \60|51|1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \60|51|1~q\);

-- Location: LCCOMB_X35_Y68_N14
\60|51|15\ : cycloneive_lcell_comb
-- Equation(s):
-- \60|51|15~combout\ = (\60|50|15~combout\ & \60|51|1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \60|50|15~combout\,
	datad => \60|51|1~q\,
	combout => \60|51|15~combout\);

-- Location: LCCOMB_X35_Y68_N8
\60|52|1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \60|52|1~0_combout\ = (\60|51|15~combout\ & (((!\60|52|1~q\)))) # (!\60|51|15~combout\ & ((\101|3~q\ & ((\67|Y[6]~9_combout\))) # (!\101|3~q\ & (\60|52|1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \101|3~q\,
	datab => \60|51|15~combout\,
	datac => \60|52|1~q\,
	datad => \67|Y[6]~9_combout\,
	combout => \60|52|1~0_combout\);

-- Location: FF_X35_Y68_N9
\60|52|1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \60|52|1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \60|52|1~q\);

-- Location: LCCOMB_X35_Y68_N22
\67|Y[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \67|Y[6]~8_combout\ = (\67|Y[4]~3_combout\ & (((\67|Y[4]~0_combout\)))) # (!\67|Y[4]~3_combout\ & ((\67|Y[4]~0_combout\ & (\59|52|1~q\)) # (!\67|Y[4]~0_combout\ & ((\60|52|1~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \67|Y[4]~3_combout\,
	datab => \59|52|1~q\,
	datac => \60|52|1~q\,
	datad => \67|Y[4]~0_combout\,
	combout => \67|Y[6]~8_combout\);

-- Location: IOIBUF_X115_Y37_N1
\DIP6~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIP6,
	o => \DIP6~input_o\);

-- Location: FF_X35_Y68_N21
\65|29|1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \DIP6~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \65|29|1~q\);

-- Location: LCCOMB_X36_Y68_N28
\67|Y[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \67|Y[6]~6_combout\ = (\101|128~q\ & ((\101|84~q\) # ((\69|29|1~q\)))) # (!\101|128~q\ & (!\101|84~q\ & ((\104|lpm_ram_dq_component|sram|ram_block|auto_generated|q_a\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \101|128~q\,
	datab => \101|84~q\,
	datac => \69|29|1~q\,
	datad => \104|lpm_ram_dq_component|sram|ram_block|auto_generated|q_a\(6),
	combout => \67|Y[6]~6_combout\);

-- Location: LCCOMB_X36_Y68_N22
\67|Y[6]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \67|Y[6]~7_combout\ = (\101|84~q\ & ((\67|Y[6]~6_combout\ & (\58|52|1~q\)) # (!\67|Y[6]~6_combout\ & ((\64|29|1~q\))))) # (!\101|84~q\ & (((\67|Y[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \58|52|1~q\,
	datab => \101|84~q\,
	datac => \64|29|1~q\,
	datad => \67|Y[6]~6_combout\,
	combout => \67|Y[6]~7_combout\);

-- Location: LCCOMB_X35_Y68_N6
\67|Y[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \67|Y[6]~9_combout\ = (\67|Y[6]~8_combout\ & ((\65|29|1~q\) # ((!\67|Y[4]~3_combout\)))) # (!\67|Y[6]~8_combout\ & (((\67|Y[4]~3_combout\ & \67|Y[6]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \67|Y[6]~8_combout\,
	datab => \65|29|1~q\,
	datac => \67|Y[4]~3_combout\,
	datad => \67|Y[6]~7_combout\,
	combout => \67|Y[6]~9_combout\);

-- Location: LCCOMB_X35_Y68_N18
\59|52|1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \59|52|1~0_combout\ = (\59|51|15~combout\ & (((!\59|52|1~q\)))) # (!\59|51|15~combout\ & ((\101|5~q\ & ((\67|Y[6]~9_combout\))) # (!\101|5~q\ & (\59|52|1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \101|5~q\,
	datab => \59|51|15~combout\,
	datac => \59|52|1~q\,
	datad => \67|Y[6]~9_combout\,
	combout => \59|52|1~0_combout\);

-- Location: FF_X35_Y68_N19
\59|52|1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \59|52|1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \59|52|1~q\);

-- Location: LCCOMB_X34_Y68_N24
\inst7|inst47~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst47~1_combout\ = (!\59|51|1~q\ & (!\59|52|1~q\ & (!\59|50|1~q\ & !\59|46|1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \59|51|1~q\,
	datab => \59|52|1~q\,
	datac => \59|50|1~q\,
	datad => \59|46|1~q\,
	combout => \inst7|inst47~1_combout\);

-- Location: LCCOMB_X39_Y69_N4
\inst7|inst29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst29~0_combout\ = (\98|36|1~q\ & ((\98|34|1~q\ & (!\98|35|1~q\ & \98|33|1~q\)) # (!\98|34|1~q\ & (\98|35|1~q\ & !\98|33|1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \98|34|1~q\,
	datab => \98|35|1~q\,
	datac => \98|33|1~q\,
	datad => \98|36|1~q\,
	combout => \inst7|inst29~0_combout\);

-- Location: LCCOMB_X39_Y68_N16
\inst7|inst47~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst47~2_combout\ = (!\59|53|1~q\ & (!\59|48|1~q\ & \inst7|inst29~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \59|53|1~q\,
	datac => \59|48|1~q\,
	datad => \inst7|inst29~0_combout\,
	combout => \inst7|inst47~2_combout\);

-- Location: LCCOMB_X39_Y69_N0
\99|33~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \99|33~8_combout\ = (\98|34|1~q\ & (!\98|35|1~q\ & (!\98|33|1~q\ & !\98|36|1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \98|34|1~q\,
	datab => \98|35|1~q\,
	datac => \98|33|1~q\,
	datad => \98|36|1~q\,
	combout => \99|33~8_combout\);

-- Location: LCCOMB_X39_Y69_N2
\inst7|inst44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst44~combout\ = (\99|33~1_combout\ & (\64|28|1~q\ & (!\64|29|1~q\ & \64|30|1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \99|33~1_combout\,
	datab => \64|28|1~q\,
	datac => \64|29|1~q\,
	datad => \64|30|1~q\,
	combout => \inst7|inst44~combout\);

-- Location: FF_X39_Y69_N3
\101|134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|inst44~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \101|134~q\);

-- Location: LCCOMB_X40_Y69_N28
\inst1|14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|14~0_combout\ = (\inst1|1~q\) # ((\Auto~input_o\ & ((\101|134~q\))) # (!\Auto~input_o\ & (\101|133~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \101|133~q\,
	datab => \101|134~q\,
	datac => \inst1|1~q\,
	datad => \Auto~input_o\,
	combout => \inst1|14~0_combout\);

-- Location: LCCOMB_X40_Y69_N24
\inst1|14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|14~1_combout\ = (\inst1|14~0_combout\ & ((\Auto~input_o\) # (!\step_instruction~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|14~0_combout\,
	datac => \step_instruction~input_o\,
	datad => \Auto~input_o\,
	combout => \inst1|14~1_combout\);

-- Location: FF_X40_Y69_N25
\inst1|1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|14~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|1~q\);

-- Location: LCCOMB_X39_Y69_N30
\inst7|inst74~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst74~0_combout\ = (!\inst1|1~q\ & ((\99|33~8_combout\) # ((!\64|30|1~q\ & \99|33~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \64|30|1~q\,
	datab => \99|33~8_combout\,
	datac => \99|33~1_combout\,
	datad => \inst1|1~q\,
	combout => \inst7|inst74~0_combout\);

-- Location: LCCOMB_X39_Y68_N18
\inst7|inst47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst47~0_combout\ = (!\59|49|1~q\ & (\64|28|1~q\ & (!\59|47|1~q\ & !\64|30|1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \59|49|1~q\,
	datab => \64|28|1~q\,
	datac => \59|47|1~q\,
	datad => \64|30|1~q\,
	combout => \inst7|inst47~0_combout\);

-- Location: LCCOMB_X39_Y68_N10
\inst7|inst74~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst74~1_combout\ = (\inst7|inst74~0_combout\) # ((\inst7|inst47~1_combout\ & (\inst7|inst47~2_combout\ & \inst7|inst47~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst47~1_combout\,
	datab => \inst7|inst47~2_combout\,
	datac => \inst7|inst74~0_combout\,
	datad => \inst7|inst47~0_combout\,
	combout => \inst7|inst74~1_combout\);

-- Location: FF_X39_Y68_N11
\101|4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|inst74~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \101|4~q\);

-- Location: LCCOMB_X39_Y68_N0
\60|48|1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \60|48|1~1_combout\ = \60|49|1~q\ $ (\60|48|1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \60|49|1~q\,
	datad => \60|48|1~q\,
	combout => \60|48|1~1_combout\);

-- Location: LCCOMB_X39_Y68_N28
\60|48|1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \60|48|1~0_combout\ = (\101|4~q\ & ((\60|48|1~1_combout\))) # (!\101|4~q\ & (\60|48|1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \101|4~q\,
	datac => \60|48|1~q\,
	datad => \60|48|1~1_combout\,
	combout => \60|48|1~0_combout\);

-- Location: FF_X39_Y68_N29
\60|48|1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \60|48|1~0_combout\,
	asdata => \67|Y[1]~29_combout\,
	sload => \101|3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \60|48|1~q\);

-- Location: LCCOMB_X38_Y68_N2
\67|Y[1]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \67|Y[1]~26_combout\ = (\101|84~q\ & ((\64|24|1~q\) # ((\101|128~q\)))) # (!\101|84~q\ & (((!\101|128~q\ & \104|lpm_ram_dq_component|sram|ram_block|auto_generated|q_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \64|24|1~q\,
	datab => \101|84~q\,
	datac => \101|128~q\,
	datad => \104|lpm_ram_dq_component|sram|ram_block|auto_generated|q_a\(1),
	combout => \67|Y[1]~26_combout\);

-- Location: LCCOMB_X38_Y68_N16
\67|Y[1]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \67|Y[1]~27_combout\ = (\101|128~q\ & ((\67|Y[1]~26_combout\ & (\58|48|1~q\)) # (!\67|Y[1]~26_combout\ & ((\69|24|1~q\))))) # (!\101|128~q\ & (((\67|Y[1]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \58|48|1~q\,
	datab => \69|24|1~q\,
	datac => \101|128~q\,
	datad => \67|Y[1]~26_combout\,
	combout => \67|Y[1]~27_combout\);

-- Location: LCCOMB_X38_Y68_N14
\67|Y[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \67|Y[1]~28_combout\ = (\67|Y[4]~3_combout\ & (((\67|Y[4]~0_combout\) # (\67|Y[1]~27_combout\)))) # (!\67|Y[4]~3_combout\ & (\60|48|1~q\ & (!\67|Y[4]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \67|Y[4]~3_combout\,
	datab => \60|48|1~q\,
	datac => \67|Y[4]~0_combout\,
	datad => \67|Y[1]~27_combout\,
	combout => \67|Y[1]~28_combout\);

-- Location: LCCOMB_X39_Y68_N6
\67|Y[1]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \67|Y[1]~29_combout\ = (\67|Y[4]~0_combout\ & ((\67|Y[1]~28_combout\ & (\65|24|1~q\)) # (!\67|Y[1]~28_combout\ & ((\59|48|1~q\))))) # (!\67|Y[4]~0_combout\ & (((\67|Y[1]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \67|Y[4]~0_combout\,
	datab => \65|24|1~q\,
	datac => \59|48|1~q\,
	datad => \67|Y[1]~28_combout\,
	combout => \67|Y[1]~29_combout\);

-- Location: FF_X38_Y68_N21
\59|48|1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \59|48|1~0_combout\,
	asdata => \67|Y[1]~29_combout\,
	sload => \101|5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \59|48|1~q\);

-- Location: LCCOMB_X38_Y68_N12
\59|48|15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \59|48|15~0_combout\ = (\59|48|1~q\ & (\59|49|1~q\ & (!\101|5~q\ & \101|102~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \59|48|1~q\,
	datab => \59|49|1~q\,
	datac => \101|5~q\,
	datad => \101|102~q\,
	combout => \59|48|15~0_combout\);

-- Location: LCCOMB_X34_Y68_N22
\59|47|15\ : cycloneive_lcell_comb
-- Equation(s):
-- \59|47|15~combout\ = (\59|48|15~0_combout\ & \59|47|1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \59|48|15~0_combout\,
	datad => \59|47|1~q\,
	combout => \59|47|15~combout\);

-- Location: LCCOMB_X38_Y68_N10
\59|46|1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \59|46|1~0_combout\ = (\59|47|15~combout\ & (((!\59|46|1~q\)))) # (!\59|47|15~combout\ & ((\101|5~q\ & ((\67|Y[3]~21_combout\))) # (!\101|5~q\ & (\59|46|1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \59|47|15~combout\,
	datab => \101|5~q\,
	datac => \59|46|1~q\,
	datad => \67|Y[3]~21_combout\,
	combout => \59|46|1~0_combout\);

-- Location: FF_X38_Y68_N11
\59|46|1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \59|46|1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \59|46|1~q\);

-- Location: LCCOMB_X34_Y68_N6
\59|50|15\ : cycloneive_lcell_comb
-- Equation(s):
-- \59|50|15~combout\ = (\59|46|1~q\ & (\59|50|1~q\ & (\59|48|15~0_combout\ & \59|47|1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \59|46|1~q\,
	datab => \59|50|1~q\,
	datac => \59|48|15~0_combout\,
	datad => \59|47|1~q\,
	combout => \59|50|15~combout\);

-- Location: LCCOMB_X35_Y68_N0
\59|51|1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \59|51|1~0_combout\ = (\59|50|15~combout\ & (((!\59|51|1~q\)))) # (!\59|50|15~combout\ & ((\101|5~q\ & ((\67|Y[5]~13_combout\))) # (!\101|5~q\ & (\59|51|1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \101|5~q\,
	datab => \59|50|15~combout\,
	datac => \59|51|1~q\,
	datad => \67|Y[5]~13_combout\,
	combout => \59|51|1~0_combout\);

-- Location: FF_X35_Y68_N1
\59|51|1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \59|51|1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \59|51|1~q\);

-- Location: IOIBUF_X0_Y66_N22
\DIP5~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIP5,
	o => \DIP5~input_o\);

-- Location: LCCOMB_X31_Y68_N28
\65|28|1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \65|28|1~feeder_combout\ = \DIP5~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DIP5~input_o\,
	combout => \65|28|1~feeder_combout\);

-- Location: FF_X31_Y68_N29
\65|28|1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \65|28|1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \65|28|1~q\);

-- Location: LCCOMB_X36_Y68_N24
\67|Y[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \67|Y[5]~10_combout\ = (\101|128~q\ & (\101|84~q\)) # (!\101|128~q\ & ((\101|84~q\ & (\64|28|1~q\)) # (!\101|84~q\ & ((\104|lpm_ram_dq_component|sram|ram_block|auto_generated|q_a\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \101|128~q\,
	datab => \101|84~q\,
	datac => \64|28|1~q\,
	datad => \104|lpm_ram_dq_component|sram|ram_block|auto_generated|q_a\(5),
	combout => \67|Y[5]~10_combout\);

-- Location: LCCOMB_X36_Y68_N30
\67|Y[5]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \67|Y[5]~11_combout\ = (\101|128~q\ & ((\67|Y[5]~10_combout\ & (\58|51|1~q\)) # (!\67|Y[5]~10_combout\ & ((\69|28|1~q\))))) # (!\101|128~q\ & (((\67|Y[5]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \101|128~q\,
	datab => \58|51|1~q\,
	datac => \69|28|1~q\,
	datad => \67|Y[5]~10_combout\,
	combout => \67|Y[5]~11_combout\);

-- Location: LCCOMB_X35_Y68_N28
\67|Y[5]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \67|Y[5]~12_combout\ = (\67|Y[4]~0_combout\ & (((\67|Y[4]~3_combout\)))) # (!\67|Y[4]~0_combout\ & ((\67|Y[4]~3_combout\ & ((\67|Y[5]~11_combout\))) # (!\67|Y[4]~3_combout\ & (\60|51|1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \60|51|1~q\,
	datab => \67|Y[4]~0_combout\,
	datac => \67|Y[5]~11_combout\,
	datad => \67|Y[4]~3_combout\,
	combout => \67|Y[5]~12_combout\);

-- Location: LCCOMB_X35_Y68_N26
\67|Y[5]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \67|Y[5]~13_combout\ = (\67|Y[4]~0_combout\ & ((\67|Y[5]~12_combout\ & ((\65|28|1~q\))) # (!\67|Y[5]~12_combout\ & (\59|51|1~q\)))) # (!\67|Y[4]~0_combout\ & (((\67|Y[5]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \59|51|1~q\,
	datab => \67|Y[4]~0_combout\,
	datac => \65|28|1~q\,
	datad => \67|Y[5]~12_combout\,
	combout => \67|Y[5]~13_combout\);

-- Location: FF_X36_Y68_N25
\64|28|1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \67|Y[5]~13_combout\,
	sload => VCC,
	ena => \101|6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \64|28|1~q\);

-- Location: LCCOMB_X39_Y69_N18
\99|33~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \99|33~4_combout\ = (\98|34|1~q\ & (!\98|35|1~q\ & (!\98|33|1~q\ & \98|36|1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \98|34|1~q\,
	datab => \98|35|1~q\,
	datac => \98|33|1~q\,
	datad => \98|36|1~q\,
	combout => \99|33~4_combout\);

-- Location: LCCOMB_X35_Y69_N12
\inst7|inst25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst25~2_combout\ = (\64|28|1~q\ & \99|33~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \64|28|1~q\,
	datad => \99|33~4_combout\,
	combout => \inst7|inst25~2_combout\);

-- Location: LCCOMB_X35_Y69_N26
\inst7|inst58~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst58~2_combout\ = (\inst7|inst25~2_combout\) # ((\99|33~0_combout\ & ((\64|26|1~q\) # (\64|25|1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst25~2_combout\,
	datab => \64|26|1~q\,
	datac => \99|33~0_combout\,
	datad => \64|25|1~q\,
	combout => \inst7|inst58~2_combout\);

-- Location: LCCOMB_X35_Y69_N30
\inst7|inst58~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst58~3_combout\ = (!\64|30|1~q\ & ((\inst7|inst58~2_combout\) # ((\64|27|1~q\ & \99|33~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst58~2_combout\,
	datab => \64|30|1~q\,
	datac => \64|27|1~q\,
	datad => \99|33~2_combout\,
	combout => \inst7|inst58~3_combout\);

-- Location: FF_X35_Y69_N31
\101|128\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|inst58~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \101|128~q\);

-- Location: LCCOMB_X35_Y69_N10
\inst7|inst25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst25~0_combout\ = (\99|33~0_combout\ & ((\64|25|1~q\) # ((\64|28|1~q\ & \99|33~4_combout\)))) # (!\99|33~0_combout\ & (((\64|28|1~q\ & \99|33~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \99|33~0_combout\,
	datab => \64|25|1~q\,
	datac => \64|28|1~q\,
	datad => \99|33~4_combout\,
	combout => \inst7|inst25~0_combout\);

-- Location: LCCOMB_X39_Y69_N12
\inst7|inst72~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst72~0_combout\ = (!\98|35|1~q\ & (!\98|33|1~q\ & !\98|36|1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \98|35|1~q\,
	datac => \98|33|1~q\,
	datad => \98|36|1~q\,
	combout => \inst7|inst72~0_combout\);

-- Location: LCCOMB_X34_Y69_N20
\inst7|inst25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst25~1_combout\ = (\inst7|inst72~0_combout\) # ((!\64|30|1~q\ & ((\inst7|inst25~0_combout\) # (\99|33~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \64|30|1~q\,
	datab => \inst7|inst25~0_combout\,
	datac => \99|33~1_combout\,
	datad => \inst7|inst72~0_combout\,
	combout => \inst7|inst25~1_combout\);

-- Location: FF_X34_Y69_N21
\101|81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|inst25~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \101|81~q\);

-- Location: LCCOMB_X34_Y68_N20
\67|Y[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \67|Y[4]~0_combout\ = (\101|81~q\ & ((\101|128~q\) # (\101|84~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \101|128~q\,
	datab => \101|81~q\,
	datac => \101|84~q\,
	combout => \67|Y[4]~0_combout\);

-- Location: IOIBUF_X74_Y73_N22
\DIP3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIP3,
	o => \DIP3~input_o\);

-- Location: LCCOMB_X45_Y68_N20
\65|26|1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \65|26|1~feeder_combout\ = \DIP3~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DIP3~input_o\,
	combout => \65|26|1~feeder_combout\);

-- Location: FF_X45_Y68_N21
\65|26|1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \65|26|1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \65|26|1~q\);

-- Location: LCCOMB_X36_Y68_N0
\67|Y[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \67|Y[3]~18_combout\ = (\101|128~q\ & (\101|84~q\)) # (!\101|128~q\ & ((\101|84~q\ & (\64|26|1~q\)) # (!\101|84~q\ & ((\104|lpm_ram_dq_component|sram|ram_block|auto_generated|q_a\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \101|128~q\,
	datab => \101|84~q\,
	datac => \64|26|1~q\,
	datad => \104|lpm_ram_dq_component|sram|ram_block|auto_generated|q_a\(3),
	combout => \67|Y[3]~18_combout\);

-- Location: LCCOMB_X36_Y68_N2
\67|Y[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \67|Y[3]~19_combout\ = (\101|128~q\ & ((\67|Y[3]~18_combout\ & (\58|46|1~q\)) # (!\67|Y[3]~18_combout\ & ((\69|26|1~q\))))) # (!\101|128~q\ & (((\67|Y[3]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \101|128~q\,
	datab => \58|46|1~q\,
	datac => \69|26|1~q\,
	datad => \67|Y[3]~18_combout\,
	combout => \67|Y[3]~19_combout\);

-- Location: LCCOMB_X36_Y68_N16
\67|Y[3]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \67|Y[3]~20_combout\ = (\67|Y[4]~3_combout\ & (((\67|Y[4]~0_combout\) # (\67|Y[3]~19_combout\)))) # (!\67|Y[4]~3_combout\ & (\60|46|1~q\ & (!\67|Y[4]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \67|Y[4]~3_combout\,
	datab => \60|46|1~q\,
	datac => \67|Y[4]~0_combout\,
	datad => \67|Y[3]~19_combout\,
	combout => \67|Y[3]~20_combout\);

-- Location: LCCOMB_X38_Y68_N6
\67|Y[3]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \67|Y[3]~21_combout\ = (\67|Y[4]~0_combout\ & ((\67|Y[3]~20_combout\ & ((\65|26|1~q\))) # (!\67|Y[3]~20_combout\ & (\59|46|1~q\)))) # (!\67|Y[4]~0_combout\ & (((\67|Y[3]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \67|Y[4]~0_combout\,
	datab => \59|46|1~q\,
	datac => \65|26|1~q\,
	datad => \67|Y[3]~20_combout\,
	combout => \67|Y[3]~21_combout\);

-- Location: FF_X36_Y68_N1
\64|26|1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \67|Y[3]~21_combout\,
	sload => VCC,
	ena => \101|6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \64|26|1~q\);

-- Location: LCCOMB_X39_Y69_N20
\inst7|inst70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst70~combout\ = (\99|33~5_combout\) # ((\99|33~0_combout\ & (\64|26|1~q\ & !\64|30|1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \99|33~0_combout\,
	datab => \99|33~5_combout\,
	datac => \64|26|1~q\,
	datad => \64|30|1~q\,
	combout => \inst7|inst70~combout\);

-- Location: FF_X39_Y69_N21
\101|84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|inst70~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \101|84~q\);

-- Location: LCCOMB_X34_Y68_N30
\67|Y[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \67|Y[4]~3_combout\ = (\101|84~q\) # (!\101|81~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \101|84~q\,
	datad => \101|81~q\,
	combout => \67|Y[4]~3_combout\);

-- Location: IOIBUF_X0_Y68_N1
\DIP0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIP0,
	o => \DIP0~input_o\);

-- Location: LCCOMB_X39_Y68_N14
\65|23|1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \65|23|1~feeder_combout\ = \DIP0~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DIP0~input_o\,
	combout => \65|23|1~feeder_combout\);

-- Location: FF_X39_Y68_N15
\65|23|1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \65|23|1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \65|23|1~q\);

-- Location: LCCOMB_X39_Y68_N8
\67|Y[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \67|Y[0]~32_combout\ = (\67|Y[4]~3_combout\ & (((\67|Y[4]~0_combout\)))) # (!\67|Y[4]~3_combout\ & ((\67|Y[4]~0_combout\ & (\59|49|1~q\)) # (!\67|Y[4]~0_combout\ & ((\60|49|1~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \59|49|1~q\,
	datab => \67|Y[4]~3_combout\,
	datac => \60|49|1~q\,
	datad => \67|Y[4]~0_combout\,
	combout => \67|Y[0]~32_combout\);

-- Location: LCCOMB_X38_Y68_N0
\67|Y[0]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \67|Y[0]~30_combout\ = (\101|84~q\ & (((\101|128~q\)))) # (!\101|84~q\ & ((\101|128~q\ & (\69|23|1~q\)) # (!\101|128~q\ & ((\104|lpm_ram_dq_component|sram|ram_block|auto_generated|q_a\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \69|23|1~q\,
	datab => \101|84~q\,
	datac => \101|128~q\,
	datad => \104|lpm_ram_dq_component|sram|ram_block|auto_generated|q_a\(0),
	combout => \67|Y[0]~30_combout\);

-- Location: LCCOMB_X38_Y68_N22
\67|Y[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \67|Y[0]~31_combout\ = (\101|84~q\ & ((\67|Y[0]~30_combout\ & ((\58|49|1~q\))) # (!\67|Y[0]~30_combout\ & (\64|23|1~q\)))) # (!\101|84~q\ & (((\67|Y[0]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \64|23|1~q\,
	datab => \101|84~q\,
	datac => \58|49|1~q\,
	datad => \67|Y[0]~30_combout\,
	combout => \67|Y[0]~31_combout\);

-- Location: LCCOMB_X39_Y68_N24
\67|Y[0]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \67|Y[0]~33_combout\ = (\67|Y[4]~3_combout\ & ((\67|Y[0]~32_combout\ & (\65|23|1~q\)) # (!\67|Y[0]~32_combout\ & ((\67|Y[0]~31_combout\))))) # (!\67|Y[4]~3_combout\ & (((\67|Y[0]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \67|Y[4]~3_combout\,
	datab => \65|23|1~q\,
	datac => \67|Y[0]~32_combout\,
	datad => \67|Y[0]~31_combout\,
	combout => \67|Y[0]~33_combout\);

-- Location: LCCOMB_X40_Y68_N14
\64|23|1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \64|23|1~feeder_combout\ = \67|Y[0]~33_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \67|Y[0]~33_combout\,
	combout => \64|23|1~feeder_combout\);

-- Location: FF_X40_Y68_N15
\64|23|1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \64|23|1~feeder_combout\,
	ena => \101|6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \64|23|1~q\);

-- Location: LCCOMB_X35_Y69_N22
\inst7|inst42~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst42~3_combout\ = (!\64|23|1~q\ & (!\64|24|1~q\ & !\64|25|1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \64|23|1~q\,
	datac => \64|24|1~q\,
	datad => \64|25|1~q\,
	combout => \inst7|inst42~3_combout\);

-- Location: LCCOMB_X35_Y69_N20
\inst7|inst31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst31~0_combout\ = (!\64|30|1~q\ & (\99|33~2_combout\ & ((\64|28|1~q\) # (!\inst7|inst42~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst42~3_combout\,
	datab => \64|30|1~q\,
	datac => \64|28|1~q\,
	datad => \99|33~2_combout\,
	combout => \inst7|inst31~0_combout\);

-- Location: FF_X35_Y69_N21
\101|5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|inst31~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \101|5~q\);

-- Location: LCCOMB_X35_Y68_N2
\59|53|1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \59|53|1~0_combout\ = (\59|51|1~q\ & (\59|50|15~combout\ & \59|52|1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \59|51|1~q\,
	datab => \59|50|15~combout\,
	datad => \59|52|1~q\,
	combout => \59|53|1~0_combout\);

-- Location: LCCOMB_X35_Y68_N4
\59|53|1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \59|53|1~1_combout\ = (\59|53|1~0_combout\ & (((!\59|53|1~q\)))) # (!\59|53|1~0_combout\ & ((\101|5~q\ & ((\67|Y[7]~5_combout\))) # (!\101|5~q\ & (\59|53|1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \101|5~q\,
	datab => \59|53|1~0_combout\,
	datac => \59|53|1~q\,
	datad => \67|Y[7]~5_combout\,
	combout => \59|53|1~1_combout\);

-- Location: FF_X35_Y68_N5
\59|53|1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \59|53|1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \59|53|1~q\);

-- Location: IOIBUF_X115_Y37_N8
\DIP7~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIP7,
	o => \DIP7~input_o\);

-- Location: FF_X35_Y68_N3
\65|30|1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \DIP7~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \65|30|1~q\);

-- Location: LCCOMB_X35_Y68_N24
\60|53|1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \60|53|1~0_combout\ = (\60|52|1~q\ & (\60|50|15~combout\ & \60|51|1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \60|52|1~q\,
	datac => \60|50|15~combout\,
	datad => \60|51|1~q\,
	combout => \60|53|1~0_combout\);

-- Location: LCCOMB_X35_Y68_N30
\60|53|1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \60|53|1~1_combout\ = (\60|53|1~0_combout\ & (((!\60|53|1~q\)))) # (!\60|53|1~0_combout\ & ((\101|3~q\ & ((\67|Y[7]~5_combout\))) # (!\101|3~q\ & (\60|53|1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \101|3~q\,
	datab => \60|53|1~0_combout\,
	datac => \60|53|1~q\,
	datad => \67|Y[7]~5_combout\,
	combout => \60|53|1~1_combout\);

-- Location: FF_X35_Y68_N31
\60|53|1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \60|53|1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \60|53|1~q\);

-- Location: LCCOMB_X36_Y68_N10
\67|Y[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \67|Y[7]~1_combout\ = (\101|128~q\ & (((\101|84~q\)))) # (!\101|128~q\ & ((\101|84~q\ & (\64|30|1~q\)) # (!\101|84~q\ & ((\104|lpm_ram_dq_component|sram|ram_block|auto_generated|q_a\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \101|128~q\,
	datab => \64|30|1~q\,
	datac => \104|lpm_ram_dq_component|sram|ram_block|auto_generated|q_a\(7),
	datad => \101|84~q\,
	combout => \67|Y[7]~1_combout\);

-- Location: LCCOMB_X36_Y68_N4
\67|Y[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \67|Y[7]~2_combout\ = (\101|128~q\ & ((\67|Y[7]~1_combout\ & (\58|53|1~q\)) # (!\67|Y[7]~1_combout\ & ((\69|30|1~q\))))) # (!\101|128~q\ & (((\67|Y[7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \101|128~q\,
	datab => \58|53|1~q\,
	datac => \69|30|1~q\,
	datad => \67|Y[7]~1_combout\,
	combout => \67|Y[7]~2_combout\);

-- Location: LCCOMB_X35_Y68_N12
\67|Y[7]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \67|Y[7]~4_combout\ = (\67|Y[4]~0_combout\ & (((\67|Y[4]~3_combout\)))) # (!\67|Y[4]~0_combout\ & ((\67|Y[4]~3_combout\ & ((\67|Y[7]~2_combout\))) # (!\67|Y[4]~3_combout\ & (\60|53|1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \60|53|1~q\,
	datab => \67|Y[4]~0_combout\,
	datac => \67|Y[4]~3_combout\,
	datad => \67|Y[7]~2_combout\,
	combout => \67|Y[7]~4_combout\);

-- Location: LCCOMB_X35_Y68_N16
\67|Y[7]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \67|Y[7]~5_combout\ = (\67|Y[4]~0_combout\ & ((\67|Y[7]~4_combout\ & ((\65|30|1~q\))) # (!\67|Y[7]~4_combout\ & (\59|53|1~q\)))) # (!\67|Y[4]~0_combout\ & (((\67|Y[7]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \59|53|1~q\,
	datab => \67|Y[4]~0_combout\,
	datac => \65|30|1~q\,
	datad => \67|Y[7]~4_combout\,
	combout => \67|Y[7]~5_combout\);

-- Location: LCCOMB_X36_Y68_N8
\64|30|1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \64|30|1~feeder_combout\ = \67|Y[7]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \67|Y[7]~5_combout\,
	combout => \64|30|1~feeder_combout\);

-- Location: FF_X36_Y68_N9
\64|30|1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \64|30|1~feeder_combout\,
	ena => \101|6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \64|30|1~q\);

-- Location: LCCOMB_X34_Y69_N6
\inst7|inst44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst44~0_combout\ = (\64|30|1~q\ & (\99|33~1_combout\ & !\64|29|1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \64|30|1~q\,
	datac => \99|33~1_combout\,
	datad => \64|29|1~q\,
	combout => \inst7|inst44~0_combout\);

-- Location: LCCOMB_X39_Y69_N10
\99|33~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \99|33~3_combout\ = (!\98|34|1~q\ & (\98|35|1~q\ & (!\98|33|1~q\ & \98|36|1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \98|34|1~q\,
	datab => \98|35|1~q\,
	datac => \98|33|1~q\,
	datad => \98|36|1~q\,
	combout => \99|33~3_combout\);

-- Location: LCCOMB_X35_Y69_N4
\inst7|inst42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst42~0_combout\ = (\64|23|1~q\) # ((\64|25|1~q\) # ((\64|24|1~q\) # (\64|26|1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \64|23|1~q\,
	datab => \64|25|1~q\,
	datac => \64|24|1~q\,
	datad => \64|26|1~q\,
	combout => \inst7|inst42~0_combout\);

-- Location: LCCOMB_X35_Y69_N18
\inst7|inst42~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst42~1_combout\ = (\99|33~3_combout\ & ((\64|28|1~q\) # ((\inst7|inst42~0_combout\ & \99|33~0_combout\)))) # (!\99|33~3_combout\ & (\inst7|inst42~0_combout\ & ((\99|33~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \99|33~3_combout\,
	datab => \inst7|inst42~0_combout\,
	datac => \64|28|1~q\,
	datad => \99|33~0_combout\,
	combout => \inst7|inst42~1_combout\);

-- Location: LCCOMB_X35_Y69_N16
\inst7|inst42~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst42~2_combout\ = (\inst7|inst44~0_combout\) # ((\inst7|inst40~combout\) # ((!\64|30|1~q\ & \inst7|inst42~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst44~0_combout\,
	datab => \inst7|inst40~combout\,
	datac => \64|30|1~q\,
	datad => \inst7|inst42~1_combout\,
	combout => \inst7|inst42~2_combout\);

-- Location: FF_X35_Y69_N17
\101|133\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|inst42~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \101|133~q\);

-- Location: LCCOMB_X39_Y69_N28
\99|33~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \99|33~9_combout\ = (!\98|34|1~q\ & (!\98|35|1~q\ & (\98|33|1~q\ & !\98|36|1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \98|34|1~q\,
	datab => \98|35|1~q\,
	datac => \98|33|1~q\,
	datad => \98|36|1~q\,
	combout => \99|33~9_combout\);

-- Location: FF_X39_Y69_N29
\101|96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \99|33~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \101|96~q\);

-- Location: FF_X35_Y68_N7
\70|29|1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \67|Y[6]~9_combout\,
	ena => \101|96~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \70|29|1~q\);

-- Location: FF_X35_Y68_N17
\70|30|1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \67|Y[7]~5_combout\,
	ena => \101|96~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \70|30|1~q\);

-- Location: FF_X35_Y68_N27
\70|28|1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \67|Y[5]~13_combout\,
	ena => \101|96~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \70|28|1~q\);

-- Location: FF_X34_Y68_N13
\70|27|1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \67|Y[4]~17_combout\,
	ena => \101|96~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \70|27|1~q\);

-- Location: LCCOMB_X16_Y69_N0
\inst4|1|S[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|1|S[0]~0_combout\ = (\70|29|1~q\ & (!\70|28|1~q\ & (\70|30|1~q\ $ (!\70|27|1~q\)))) # (!\70|29|1~q\ & (\70|27|1~q\ & (\70|30|1~q\ $ (!\70|28|1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \70|29|1~q\,
	datab => \70|30|1~q\,
	datac => \70|28|1~q\,
	datad => \70|27|1~q\,
	combout => \inst4|1|S[0]~0_combout\);

-- Location: LCCOMB_X16_Y69_N22
\inst4|1|S[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|1|S[1]~1_combout\ = (\70|30|1~q\ & ((\70|27|1~q\ & ((\70|28|1~q\))) # (!\70|27|1~q\ & (\70|29|1~q\)))) # (!\70|30|1~q\ & (\70|29|1~q\ & (\70|28|1~q\ $ (\70|27|1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \70|29|1~q\,
	datab => \70|30|1~q\,
	datac => \70|28|1~q\,
	datad => \70|27|1~q\,
	combout => \inst4|1|S[1]~1_combout\);

-- Location: LCCOMB_X16_Y69_N8
\inst4|1|S[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|1|S[2]~2_combout\ = (\70|29|1~q\ & (((!\70|28|1~q\ & \70|27|1~q\)) # (!\70|30|1~q\))) # (!\70|29|1~q\ & ((\70|30|1~q\) # ((\70|27|1~q\) # (!\70|28|1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \70|29|1~q\,
	datab => \70|30|1~q\,
	datac => \70|28|1~q\,
	datad => \70|27|1~q\,
	combout => \inst4|1|S[2]~2_combout\);

-- Location: LCCOMB_X16_Y69_N2
\inst4|1|S[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|1|S[3]~3_combout\ = (\70|28|1~q\ & ((\70|29|1~q\ & ((\70|27|1~q\))) # (!\70|29|1~q\ & (\70|30|1~q\ & !\70|27|1~q\)))) # (!\70|28|1~q\ & (!\70|30|1~q\ & (\70|29|1~q\ $ (\70|27|1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \70|29|1~q\,
	datab => \70|30|1~q\,
	datac => \70|28|1~q\,
	datad => \70|27|1~q\,
	combout => \inst4|1|S[3]~3_combout\);

-- Location: LCCOMB_X16_Y69_N12
\inst4|1|S[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|1|S[4]~4_combout\ = (\70|28|1~q\ & (((!\70|30|1~q\ & \70|27|1~q\)))) # (!\70|28|1~q\ & ((\70|29|1~q\ & (!\70|30|1~q\)) # (!\70|29|1~q\ & ((\70|27|1~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \70|29|1~q\,
	datab => \70|30|1~q\,
	datac => \70|28|1~q\,
	datad => \70|27|1~q\,
	combout => \inst4|1|S[4]~4_combout\);

-- Location: LCCOMB_X16_Y69_N10
\inst4|1|S[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|1|S[5]~5_combout\ = (\70|29|1~q\ & (\70|27|1~q\ & (\70|30|1~q\ $ (\70|28|1~q\)))) # (!\70|29|1~q\ & (!\70|30|1~q\ & ((\70|28|1~q\) # (\70|27|1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \70|29|1~q\,
	datab => \70|30|1~q\,
	datac => \70|28|1~q\,
	datad => \70|27|1~q\,
	combout => \inst4|1|S[5]~5_combout\);

-- Location: LCCOMB_X16_Y69_N4
\inst4|1|S[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|1|S[6]~6_combout\ = (\70|27|1~q\ & ((\70|30|1~q\) # (\70|29|1~q\ $ (\70|28|1~q\)))) # (!\70|27|1~q\ & ((\70|28|1~q\) # (\70|29|1~q\ $ (\70|30|1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \70|29|1~q\,
	datab => \70|30|1~q\,
	datac => \70|28|1~q\,
	datad => \70|27|1~q\,
	combout => \inst4|1|S[6]~6_combout\);

-- Location: FF_X38_Y68_N25
\70|25|1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \67|Y[2]~25_combout\,
	ena => \101|96~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \70|25|1~q\);

-- Location: FF_X38_Y68_N7
\70|26|1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \67|Y[3]~21_combout\,
	ena => \101|96~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \70|26|1~q\);

-- Location: FF_X39_Y68_N25
\70|23|1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \67|Y[0]~33_combout\,
	ena => \101|96~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \70|23|1~q\);

-- Location: FF_X39_Y68_N7
\70|24|1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \67|Y[1]~29_combout\,
	ena => \101|96~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \70|24|1~q\);

-- Location: LCCOMB_X11_Y72_N0
\inst4|2|S[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|2|S[0]~0_combout\ = (\70|25|1~q\ & (!\70|24|1~q\ & (\70|26|1~q\ $ (!\70|23|1~q\)))) # (!\70|25|1~q\ & (\70|23|1~q\ & (\70|26|1~q\ $ (!\70|24|1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \70|25|1~q\,
	datab => \70|26|1~q\,
	datac => \70|23|1~q\,
	datad => \70|24|1~q\,
	combout => \inst4|2|S[0]~0_combout\);

-- Location: LCCOMB_X11_Y72_N22
\inst4|2|S[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|2|S[1]~1_combout\ = (\70|26|1~q\ & ((\70|23|1~q\ & ((\70|24|1~q\))) # (!\70|23|1~q\ & (\70|25|1~q\)))) # (!\70|26|1~q\ & (\70|25|1~q\ & (\70|23|1~q\ $ (\70|24|1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \70|25|1~q\,
	datab => \70|26|1~q\,
	datac => \70|23|1~q\,
	datad => \70|24|1~q\,
	combout => \inst4|2|S[1]~1_combout\);

-- Location: LCCOMB_X11_Y72_N8
\inst4|2|S[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|2|S[2]~2_combout\ = (\70|25|1~q\ & (((\70|23|1~q\ & !\70|24|1~q\)) # (!\70|26|1~q\))) # (!\70|25|1~q\ & ((\70|26|1~q\) # ((\70|23|1~q\) # (!\70|24|1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \70|25|1~q\,
	datab => \70|26|1~q\,
	datac => \70|23|1~q\,
	datad => \70|24|1~q\,
	combout => \inst4|2|S[2]~2_combout\);

-- Location: LCCOMB_X11_Y72_N26
\inst4|2|S[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|2|S[3]~3_combout\ = (\70|24|1~q\ & ((\70|25|1~q\ & ((\70|23|1~q\))) # (!\70|25|1~q\ & (\70|26|1~q\ & !\70|23|1~q\)))) # (!\70|24|1~q\ & (!\70|26|1~q\ & (\70|25|1~q\ $ (\70|23|1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \70|25|1~q\,
	datab => \70|26|1~q\,
	datac => \70|23|1~q\,
	datad => \70|24|1~q\,
	combout => \inst4|2|S[3]~3_combout\);

-- Location: LCCOMB_X11_Y72_N28
\inst4|2|S[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|2|S[4]~4_combout\ = (\70|24|1~q\ & (((!\70|26|1~q\ & \70|23|1~q\)))) # (!\70|24|1~q\ & ((\70|25|1~q\ & (!\70|26|1~q\)) # (!\70|25|1~q\ & ((\70|23|1~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \70|25|1~q\,
	datab => \70|26|1~q\,
	datac => \70|23|1~q\,
	datad => \70|24|1~q\,
	combout => \inst4|2|S[4]~4_combout\);

-- Location: LCCOMB_X11_Y72_N2
\inst4|2|S[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|2|S[5]~5_combout\ = (\70|25|1~q\ & (\70|23|1~q\ & (\70|26|1~q\ $ (\70|24|1~q\)))) # (!\70|25|1~q\ & (!\70|26|1~q\ & ((\70|23|1~q\) # (\70|24|1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \70|25|1~q\,
	datab => \70|26|1~q\,
	datac => \70|23|1~q\,
	datad => \70|24|1~q\,
	combout => \inst4|2|S[5]~5_combout\);

-- Location: LCCOMB_X11_Y72_N12
\inst4|2|S[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|2|S[6]~6_combout\ = (\70|23|1~q\ & ((\70|26|1~q\) # (\70|25|1~q\ $ (\70|24|1~q\)))) # (!\70|23|1~q\ & ((\70|24|1~q\) # (\70|25|1~q\ $ (\70|26|1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \70|25|1~q\,
	datab => \70|26|1~q\,
	datac => \70|23|1~q\,
	datad => \70|24|1~q\,
	combout => \inst4|2|S[6]~6_combout\);

-- Location: LCCOMB_X32_Y69_N18
\47|13|1|sub|81~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \47|13|1|sub|81~11_combout\ = (\101|91~q\ & ((\101|93~q\ & ((\47|13|1|sub|81~9_combout\))) # (!\101|93~q\ & (\47|13|1|sub|81~4_combout\)))) # (!\101|91~q\ & (((\47|13|1|sub|81~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \47|13|1|sub|81~4_combout\,
	datab => \101|91~q\,
	datac => \101|93~q\,
	datad => \47|13|1|sub|81~9_combout\,
	combout => \47|13|1|sub|81~11_combout\);

-- Location: LCCOMB_X32_Y69_N20
\47|14|1|sub|81~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \47|14|1|sub|81~5_combout\ = (\101|91~q\ & ((\101|93~q\ & ((\47|14|1|sub|81~4_combout\))) # (!\101|93~q\ & (\47|14|1|sub|81~2_combout\)))) # (!\101|91~q\ & (((\47|14|1|sub|81~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \47|14|1|sub|81~2_combout\,
	datab => \101|91~q\,
	datac => \101|93~q\,
	datad => \47|14|1|sub|81~4_combout\,
	combout => \47|14|1|sub|81~5_combout\);

-- Location: LCCOMB_X33_Y69_N4
\47|16|1|sub|81~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \47|16|1|sub|81~5_combout\ = (\101|91~q\ & ((\101|93~q\ & ((\47|16|1|sub|81~4_combout\))) # (!\101|93~q\ & (\47|16|1|sub|81~2_combout\)))) # (!\101|91~q\ & (((\47|16|1|sub|81~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \47|16|1|sub|81~2_combout\,
	datab => \47|16|1|sub|81~4_combout\,
	datac => \101|91~q\,
	datad => \101|93~q\,
	combout => \47|16|1|sub|81~5_combout\);

-- Location: LCCOMB_X40_Y68_N20
\inst2|F_chk[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|F_chk[2]~4_combout\ = (!\69|23|1~q\ & \69|24|1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \69|23|1~q\,
	datad => \69|24|1~q\,
	combout => \inst2|F_chk[2]~4_combout\);

-- Location: LCCOMB_X41_Y68_N28
\inst2|F_chk[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|F_chk[5]~2_combout\ = (!\67|Y[5]~13_combout\ & (!\67|Y[6]~9_combout\ & (!\67|Y[1]~29_combout\ & !\67|Y[7]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \67|Y[5]~13_combout\,
	datab => \67|Y[6]~9_combout\,
	datac => \67|Y[1]~29_combout\,
	datad => \67|Y[7]~5_combout\,
	combout => \inst2|F_chk[5]~2_combout\);

-- Location: LCCOMB_X39_Y68_N22
\inst2|F_chk[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|F_chk[0]~0_combout\ = (\69|29|1~q\ & (\69|27|1~q\ & (\69|28|1~q\ & \101|1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \69|29|1~q\,
	datab => \69|27|1~q\,
	datac => \69|28|1~q\,
	datad => \101|1~q\,
	combout => \inst2|F_chk[0]~0_combout\);

-- Location: LCCOMB_X40_Y68_N10
\inst2|F_chk[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|F_chk[5]~1_combout\ = (\69|26|1~q\ & (\69|25|1~q\ & (\69|30|1~q\ & \inst2|F_chk[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \69|26|1~q\,
	datab => \69|25|1~q\,
	datac => \69|30|1~q\,
	datad => \inst2|F_chk[0]~0_combout\,
	combout => \inst2|F_chk[5]~1_combout\);

-- Location: LCCOMB_X41_Y68_N18
\inst2|F_chk[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|F_chk[5]~3_combout\ = (!\67|Y[4]~17_combout\ & (\inst2|F_chk[5]~2_combout\ & (\67|Y[3]~21_combout\ & \inst2|F_chk[5]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \67|Y[4]~17_combout\,
	datab => \inst2|F_chk[5]~2_combout\,
	datac => \67|Y[3]~21_combout\,
	datad => \inst2|F_chk[5]~1_combout\,
	combout => \inst2|F_chk[5]~3_combout\);

-- Location: LCCOMB_X40_Y68_N8
\inst2|F_chk[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|F_chk\(6) = (\67|Y[0]~33_combout\ & (\inst2|F_chk[2]~4_combout\ & (\67|Y[2]~25_combout\ & \inst2|F_chk[5]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \67|Y[0]~33_combout\,
	datab => \inst2|F_chk[2]~4_combout\,
	datac => \67|Y[2]~25_combout\,
	datad => \inst2|F_chk[5]~3_combout\,
	combout => \inst2|F_chk\(6));

-- Location: LCCOMB_X40_Y68_N4
\inst2|F_chk[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|F_chk[5]~5_combout\ = (\69|23|1~q\ & !\69|24|1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \69|23|1~q\,
	datad => \69|24|1~q\,
	combout => \inst2|F_chk[5]~5_combout\);

-- Location: LCCOMB_X41_Y68_N8
\inst2|F_chk[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|F_chk\(5) = (!\67|Y[2]~25_combout\ & (!\67|Y[0]~33_combout\ & (\inst2|F_chk[5]~5_combout\ & \inst2|F_chk[5]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \67|Y[2]~25_combout\,
	datab => \67|Y[0]~33_combout\,
	datac => \inst2|F_chk[5]~5_combout\,
	datad => \inst2|F_chk[5]~3_combout\,
	combout => \inst2|F_chk\(5));

-- Location: LCCOMB_X41_Y68_N26
\inst2|F_chk[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|F_chk[4]~6_combout\ = (!\67|Y[1]~29_combout\ & (!\69|24|1~q\ & (\67|Y[2]~25_combout\ & !\69|23|1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \67|Y[1]~29_combout\,
	datab => \69|24|1~q\,
	datac => \67|Y[2]~25_combout\,
	datad => \69|23|1~q\,
	combout => \inst2|F_chk[4]~6_combout\);

-- Location: LCCOMB_X41_Y68_N2
\inst2|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal2~0_combout\ = (!\67|Y[4]~17_combout\ & (!\67|Y[3]~21_combout\ & (!\67|Y[6]~9_combout\ & !\67|Y[7]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \67|Y[4]~17_combout\,
	datab => \67|Y[3]~21_combout\,
	datac => \67|Y[6]~9_combout\,
	datad => \67|Y[7]~5_combout\,
	combout => \inst2|Equal2~0_combout\);

-- Location: LCCOMB_X41_Y68_N24
\inst2|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal2~1_combout\ = (!\67|Y[5]~13_combout\ & \inst2|Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \67|Y[5]~13_combout\,
	datad => \inst2|Equal2~0_combout\,
	combout => \inst2|Equal2~1_combout\);

-- Location: LCCOMB_X41_Y68_N0
\inst2|F_chk[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|F_chk\(4) = (\inst2|F_chk[5]~1_combout\ & (\67|Y[0]~33_combout\ & (\inst2|F_chk[4]~6_combout\ & \inst2|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|F_chk[5]~1_combout\,
	datab => \67|Y[0]~33_combout\,
	datac => \inst2|F_chk[4]~6_combout\,
	datad => \inst2|Equal2~1_combout\,
	combout => \inst2|F_chk\(4));

-- Location: LCCOMB_X40_Y68_N18
\inst2|F_chk[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|F_chk[2]~7_combout\ = (\69|26|1~q\ & (!\69|25|1~q\ & (\69|30|1~q\ & \inst2|F_chk[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \69|26|1~q\,
	datab => \69|25|1~q\,
	datac => \69|30|1~q\,
	datad => \inst2|F_chk[0]~0_combout\,
	combout => \inst2|F_chk[2]~7_combout\);

-- Location: LCCOMB_X40_Y68_N24
\inst2|F_chk[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|F_chk[3]~8_combout\ = (\67|Y[0]~33_combout\ & (\inst2|Equal2~1_combout\ & (!\67|Y[2]~25_combout\ & \inst2|F_chk[2]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \67|Y[0]~33_combout\,
	datab => \inst2|Equal2~1_combout\,
	datac => \67|Y[2]~25_combout\,
	datad => \inst2|F_chk[2]~7_combout\,
	combout => \inst2|F_chk[3]~8_combout\);

-- Location: LCCOMB_X41_Y68_N6
\inst2|F_chk[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|F_chk\(3) = (\67|Y[1]~29_combout\ & (\inst2|F_chk[3]~8_combout\ & (\69|24|1~q\ & \69|23|1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \67|Y[1]~29_combout\,
	datab => \inst2|F_chk[3]~8_combout\,
	datac => \69|24|1~q\,
	datad => \69|23|1~q\,
	combout => \inst2|F_chk\(3));

-- Location: LCCOMB_X40_Y68_N30
\inst2|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal4~0_combout\ = (\67|Y[1]~29_combout\ & (!\67|Y[2]~25_combout\ & !\67|Y[0]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \67|Y[1]~29_combout\,
	datac => \67|Y[2]~25_combout\,
	datad => \67|Y[0]~33_combout\,
	combout => \inst2|Equal4~0_combout\);

-- Location: LCCOMB_X40_Y68_N0
\inst2|F_chk[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|F_chk\(2) = (\inst2|Equal4~0_combout\ & (\inst2|F_chk[2]~7_combout\ & (\inst2|Equal2~1_combout\ & \inst2|F_chk[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal4~0_combout\,
	datab => \inst2|F_chk[2]~7_combout\,
	datac => \inst2|Equal2~1_combout\,
	datad => \inst2|F_chk[2]~4_combout\,
	combout => \inst2|F_chk\(2));

-- Location: LCCOMB_X40_Y68_N6
\inst2|F_chk[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|F_chk\(1) = (\69|23|1~q\ & (!\69|24|1~q\ & (!\67|Y[1]~29_combout\ & \inst2|F_chk[3]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \69|23|1~q\,
	datab => \69|24|1~q\,
	datac => \67|Y[1]~29_combout\,
	datad => \inst2|F_chk[3]~8_combout\,
	combout => \inst2|F_chk\(1));

-- Location: LCCOMB_X41_Y68_N12
\inst2|F_chk[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|F_chk\(0) = (!\67|Y[1]~29_combout\ & (\inst2|F_chk[3]~8_combout\ & (!\69|24|1~q\ & !\69|23|1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \67|Y[1]~29_combout\,
	datab => \inst2|F_chk[3]~8_combout\,
	datac => \69|24|1~q\,
	datad => \69|23|1~q\,
	combout => \inst2|F_chk\(0));

-- Location: LCCOMB_X41_Y68_N30
\inst2|F_chk[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|F_chk[5]~9_combout\ = (!\67|Y[6]~9_combout\ & (!\67|Y[1]~29_combout\ & !\67|Y[7]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \67|Y[6]~9_combout\,
	datac => \67|Y[1]~29_combout\,
	datad => \67|Y[7]~5_combout\,
	combout => \inst2|F_chk[5]~9_combout\);

-- Location: LCCOMB_X40_Y68_N28
\inst2|always0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|always0~0_combout\ = (!\69|26|1~q\ & (\69|24|1~q\ & (!\69|25|1~q\ & \69|23|1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \69|26|1~q\,
	datab => \69|24|1~q\,
	datac => \69|25|1~q\,
	datad => \69|23|1~q\,
	combout => \inst2|always0~0_combout\);

-- Location: LCCOMB_X40_Y68_N2
\inst2|always0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|always0~1_combout\ = (\69|30|1~q\ & (\inst2|F_chk[0]~0_combout\ & \inst2|always0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \69|30|1~q\,
	datab => \inst2|F_chk[0]~0_combout\,
	datad => \inst2|always0~0_combout\,
	combout => \inst2|always0~1_combout\);

-- Location: LCCOMB_X41_Y68_N20
\inst2|sum_chk[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|sum_chk[5]~2_combout\ = (!\67|Y[2]~25_combout\ & (\67|Y[0]~33_combout\ & (!\67|Y[3]~21_combout\ & !\67|Y[4]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \67|Y[2]~25_combout\,
	datab => \67|Y[0]~33_combout\,
	datac => \67|Y[3]~21_combout\,
	datad => \67|Y[4]~17_combout\,
	combout => \inst2|sum_chk[5]~2_combout\);

-- Location: LCCOMB_X41_Y68_N10
\inst2|sum_chk[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|sum_chk\(5) = (\67|Y[5]~13_combout\ & (\inst2|F_chk[5]~9_combout\ & (\inst2|always0~1_combout\ & \inst2|sum_chk[5]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \67|Y[5]~13_combout\,
	datab => \inst2|F_chk[5]~9_combout\,
	datac => \inst2|always0~1_combout\,
	datad => \inst2|sum_chk[5]~2_combout\,
	combout => \inst2|sum_chk\(5));

-- Location: LCCOMB_X40_Y68_N26
\inst2|sum_chk[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|sum_chk[4]~3_combout\ = (\inst2|always0~1_combout\ & (\67|Y[2]~25_combout\ & !\67|Y[0]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|always0~1_combout\,
	datac => \67|Y[2]~25_combout\,
	datad => \67|Y[0]~33_combout\,
	combout => \inst2|sum_chk[4]~3_combout\);

-- Location: LCCOMB_X41_Y68_N16
\inst2|sum_chk[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|sum_chk\(4) = (\67|Y[4]~17_combout\ & (\inst2|F_chk[5]~2_combout\ & (!\67|Y[3]~21_combout\ & \inst2|sum_chk[4]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \67|Y[4]~17_combout\,
	datab => \inst2|F_chk[5]~2_combout\,
	datac => \67|Y[3]~21_combout\,
	datad => \inst2|sum_chk[4]~3_combout\,
	combout => \inst2|sum_chk\(4));

-- Location: LCCOMB_X41_Y68_N14
\inst2|sum_chk[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|sum_chk\(3) = (!\67|Y[4]~17_combout\ & (\inst2|F_chk[5]~2_combout\ & (\67|Y[3]~21_combout\ & \inst2|sum_chk[4]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \67|Y[4]~17_combout\,
	datab => \inst2|F_chk[5]~2_combout\,
	datac => \67|Y[3]~21_combout\,
	datad => \inst2|sum_chk[4]~3_combout\,
	combout => \inst2|sum_chk\(3));

-- Location: LCCOMB_X40_Y68_N22
\inst2|sum_chk[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|sum_chk[2]~4_combout\ = (\67|Y[2]~25_combout\ & (\inst2|F_chk[0]~0_combout\ & (\69|30|1~q\ & \inst2|always0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \67|Y[2]~25_combout\,
	datab => \inst2|F_chk[0]~0_combout\,
	datac => \69|30|1~q\,
	datad => \inst2|always0~0_combout\,
	combout => \inst2|sum_chk[2]~4_combout\);

-- Location: LCCOMB_X40_Y68_N16
\inst2|sum_chk[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|sum_chk\(2) = (\inst2|sum_chk[2]~4_combout\ & (\inst2|Equal2~1_combout\ & (\67|Y[1]~29_combout\ & \67|Y[0]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|sum_chk[2]~4_combout\,
	datab => \inst2|Equal2~1_combout\,
	datac => \67|Y[1]~29_combout\,
	datad => \67|Y[0]~33_combout\,
	combout => \inst2|sum_chk\(2));

-- Location: LCCOMB_X41_Y68_N4
\inst2|sum_chk[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|sum_chk\(1) = (!\67|Y[5]~13_combout\ & (\inst2|sum_chk[4]~3_combout\ & (!\67|Y[1]~29_combout\ & \inst2|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \67|Y[5]~13_combout\,
	datab => \inst2|sum_chk[4]~3_combout\,
	datac => \67|Y[1]~29_combout\,
	datad => \inst2|Equal2~0_combout\,
	combout => \inst2|sum_chk\(1));

-- Location: LCCOMB_X41_Y68_N22
\inst2|sum_chk[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|sum_chk\(0) = (!\67|Y[5]~13_combout\ & (\inst2|Equal4~0_combout\ & (\inst2|always0~1_combout\ & \inst2|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \67|Y[5]~13_combout\,
	datab => \inst2|Equal4~0_combout\,
	datac => \inst2|always0~1_combout\,
	datad => \inst2|Equal2~0_combout\,
	combout => \inst2|sum_chk\(0));

ww_SC_Clear <= \SC_Clear~output_o\;

ww_IR(7) <= \IR[7]~output_o\;

ww_IR(6) <= \IR[6]~output_o\;

ww_IR(5) <= \IR[5]~output_o\;

ww_IR(4) <= \IR[4]~output_o\;

ww_IR(3) <= \IR[3]~output_o\;

ww_IR(2) <= \IR[2]~output_o\;

ww_IR(1) <= \IR[1]~output_o\;

ww_IR(0) <= \IR[0]~output_o\;

ww_DataBus(7) <= \DataBus[7]~output_o\;

ww_DataBus(6) <= \DataBus[6]~output_o\;

ww_DataBus(5) <= \DataBus[5]~output_o\;

ww_DataBus(4) <= \DataBus[4]~output_o\;

ww_DataBus(3) <= \DataBus[3]~output_o\;

ww_DataBus(2) <= \DataBus[2]~output_o\;

ww_DataBus(1) <= \DataBus[1]~output_o\;

ww_DataBus(0) <= \DataBus[0]~output_o\;

ww_MEMOUT(7) <= \MEMOUT[7]~output_o\;

ww_MEMOUT(6) <= \MEMOUT[6]~output_o\;

ww_MEMOUT(5) <= \MEMOUT[5]~output_o\;

ww_MEMOUT(4) <= \MEMOUT[4]~output_o\;

ww_MEMOUT(3) <= \MEMOUT[3]~output_o\;

ww_MEMOUT(2) <= \MEMOUT[2]~output_o\;

ww_MEMOUT(1) <= \MEMOUT[1]~output_o\;

ww_MEMOUT(0) <= \MEMOUT[0]~output_o\;

ww_AR(7) <= \AR[7]~output_o\;

ww_AR(6) <= \AR[6]~output_o\;

ww_AR(5) <= \AR[5]~output_o\;

ww_AR(4) <= \AR[4]~output_o\;

ww_AR(3) <= \AR[3]~output_o\;

ww_AR(2) <= \AR[2]~output_o\;

ww_AR(1) <= \AR[1]~output_o\;

ww_AR(0) <= \AR[0]~output_o\;

ww_PC(7) <= \PC[7]~output_o\;

ww_PC(6) <= \PC[6]~output_o\;

ww_PC(5) <= \PC[5]~output_o\;

ww_PC(4) <= \PC[4]~output_o\;

ww_PC(3) <= \PC[3]~output_o\;

ww_PC(2) <= \PC[2]~output_o\;

ww_PC(1) <= \PC[1]~output_o\;

ww_PC(0) <= \PC[0]~output_o\;

ww_DR(7) <= \DR[7]~output_o\;

ww_DR(6) <= \DR[6]~output_o\;

ww_DR(5) <= \DR[5]~output_o\;

ww_DR(4) <= \DR[4]~output_o\;

ww_DR(3) <= \DR[3]~output_o\;

ww_DR(2) <= \DR[2]~output_o\;

ww_DR(1) <= \DR[1]~output_o\;

ww_DR(0) <= \DR[0]~output_o\;

ww_AC(7) <= \AC[7]~output_o\;

ww_AC(6) <= \AC[6]~output_o\;

ww_AC(5) <= \AC[5]~output_o\;

ww_AC(4) <= \AC[4]~output_o\;

ww_AC(3) <= \AC[3]~output_o\;

ww_AC(2) <= \AC[2]~output_o\;

ww_AC(1) <= \AC[1]~output_o\;

ww_AC(0) <= \AC[0]~output_o\;

ww_BusSel(2) <= \BusSel[2]~output_o\;

ww_BusSel(1) <= \BusSel[1]~output_o\;

ww_BusSel(0) <= \BusSel[0]~output_o\;

ww_Stop <= \Stop~output_o\;

ww_Halt <= \Halt~output_o\;

ww_SC(3) <= \SC[3]~output_o\;

ww_SC(2) <= \SC[2]~output_o\;

ww_SC(1) <= \SC[1]~output_o\;

ww_SC(0) <= \SC[0]~output_o\;

ww_T9 <= \T9~output_o\;

ww_T5 <= \T5~output_o\;

ww_a1 <= \a1~output_o\;

ww_b1 <= \b1~output_o\;

ww_c1 <= \c1~output_o\;

ww_d1 <= \d1~output_o\;

ww_e1 <= \e1~output_o\;

ww_f1 <= \f1~output_o\;

ww_g1 <= \g1~output_o\;

ww_a2 <= \a2~output_o\;

ww_b2 <= \b2~output_o\;

ww_c2 <= \c2~output_o\;

ww_d2 <= \d2~output_o\;

ww_e2 <= \e2~output_o\;

ww_f2 <= \f2~output_o\;

ww_g2 <= \g2~output_o\;

ww_ALU(7) <= \ALU[7]~output_o\;

ww_ALU(6) <= \ALU[6]~output_o\;

ww_ALU(5) <= \ALU[5]~output_o\;

ww_ALU(4) <= \ALU[4]~output_o\;

ww_ALU(3) <= \ALU[3]~output_o\;

ww_ALU(2) <= \ALU[2]~output_o\;

ww_ALU(1) <= \ALU[1]~output_o\;

ww_ALU(0) <= \ALU[0]~output_o\;

ww_F_chk(6) <= \F_chk[6]~output_o\;

ww_F_chk(5) <= \F_chk[5]~output_o\;

ww_F_chk(4) <= \F_chk[4]~output_o\;

ww_F_chk(3) <= \F_chk[3]~output_o\;

ww_F_chk(2) <= \F_chk[2]~output_o\;

ww_F_chk(1) <= \F_chk[1]~output_o\;

ww_F_chk(0) <= \F_chk[0]~output_o\;

ww_sum_chk(5) <= \sum_chk[5]~output_o\;

ww_sum_chk(4) <= \sum_chk[4]~output_o\;

ww_sum_chk(3) <= \sum_chk[3]~output_o\;

ww_sum_chk(2) <= \sum_chk[2]~output_o\;

ww_sum_chk(1) <= \sum_chk[1]~output_o\;

ww_sum_chk(0) <= \sum_chk[0]~output_o\;
END structure;


