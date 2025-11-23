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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "07/03/2024 19:48:08"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          lab4top
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY lab4top_vhd_vec_tst IS
END lab4top_vhd_vec_tst;
ARCHITECTURE lab4top_arch OF lab4top_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a1 : STD_LOGIC;
SIGNAL a2 : STD_LOGIC;
SIGNAL AC : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL ALU : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL AR : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Auto : STD_LOGIC;
SIGNAL b1 : STD_LOGIC;
SIGNAL b2 : STD_LOGIC;
SIGNAL BusSel : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL c1 : STD_LOGIC;
SIGNAL c2 : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL d1 : STD_LOGIC;
SIGNAL d2 : STD_LOGIC;
SIGNAL DataBus : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL DIP0 : STD_LOGIC;
SIGNAL DIP1 : STD_LOGIC;
SIGNAL DIP2 : STD_LOGIC;
SIGNAL DIP3 : STD_LOGIC;
SIGNAL DIP4 : STD_LOGIC;
SIGNAL DIP5 : STD_LOGIC;
SIGNAL DIP6 : STD_LOGIC;
SIGNAL DIP7 : STD_LOGIC;
SIGNAL DR : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL e1 : STD_LOGIC;
SIGNAL e2 : STD_LOGIC;
SIGNAL f1 : STD_LOGIC;
SIGNAL f2 : STD_LOGIC;
SIGNAL F_chk : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL g1 : STD_LOGIC;
SIGNAL g2 : STD_LOGIC;
SIGNAL Halt : STD_LOGIC;
SIGNAL IR : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL MEMOUT : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL PC : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL SC : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL SC_Clear : STD_LOGIC;
SIGNAL step_instruction : STD_LOGIC;
SIGNAL Stop : STD_LOGIC;
SIGNAL sum_chk : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL T5 : STD_LOGIC;
SIGNAL T9 : STD_LOGIC;
COMPONENT lab4top
	PORT (
	a1 : OUT STD_LOGIC;
	a2 : OUT STD_LOGIC;
	AC : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	ALU : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	AR : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	Auto : IN STD_LOGIC;
	b1 : OUT STD_LOGIC;
	b2 : OUT STD_LOGIC;
	BusSel : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	c1 : OUT STD_LOGIC;
	c2 : OUT STD_LOGIC;
	clk : IN STD_LOGIC;
	d1 : OUT STD_LOGIC;
	d2 : OUT STD_LOGIC;
	DataBus : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	DIP0 : IN STD_LOGIC;
	DIP1 : IN STD_LOGIC;
	DIP2 : IN STD_LOGIC;
	DIP3 : IN STD_LOGIC;
	DIP4 : IN STD_LOGIC;
	DIP5 : IN STD_LOGIC;
	DIP6 : IN STD_LOGIC;
	DIP7 : IN STD_LOGIC;
	DR : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	e1 : OUT STD_LOGIC;
	e2 : OUT STD_LOGIC;
	f1 : OUT STD_LOGIC;
	f2 : OUT STD_LOGIC;
	F_chk : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	g1 : OUT STD_LOGIC;
	g2 : OUT STD_LOGIC;
	Halt : OUT STD_LOGIC;
	IR : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	MEMOUT : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	PC : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	SC : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	SC_Clear : OUT STD_LOGIC;
	step_instruction : IN STD_LOGIC;
	Stop : OUT STD_LOGIC;
	sum_chk : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	T5 : OUT STD_LOGIC;
	T9 : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : lab4top
	PORT MAP (
-- list connections between master ports and signals
	a1 => a1,
	a2 => a2,
	AC => AC,
	ALU => ALU,
	AR => AR,
	Auto => Auto,
	b1 => b1,
	b2 => b2,
	BusSel => BusSel,
	c1 => c1,
	c2 => c2,
	clk => clk,
	d1 => d1,
	d2 => d2,
	DataBus => DataBus,
	DIP0 => DIP0,
	DIP1 => DIP1,
	DIP2 => DIP2,
	DIP3 => DIP3,
	DIP4 => DIP4,
	DIP5 => DIP5,
	DIP6 => DIP6,
	DIP7 => DIP7,
	DR => DR,
	e1 => e1,
	e2 => e2,
	f1 => f1,
	f2 => f2,
	F_chk => F_chk,
	g1 => g1,
	g2 => g2,
	Halt => Halt,
	IR => IR,
	MEMOUT => MEMOUT,
	PC => PC,
	SC => SC,
	SC_Clear => SC_Clear,
	step_instruction => step_instruction,
	Stop => Stop,
	sum_chk => sum_chk,
	T5 => T5,
	T9 => T9
	);

-- Auto
t_prcs_Auto: PROCESS
BEGIN
	Auto <= '1';
WAIT;
END PROCESS t_prcs_Auto;

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 1000 ps;
	clk <= '1';
	WAIT FOR 1000 ps;
	IF (NOW >= 2300000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- step_instruction
t_prcs_step_instruction: PROCESS
BEGIN
	step_instruction <= '0';
WAIT;
END PROCESS t_prcs_step_instruction;
END lab4top_arch;
