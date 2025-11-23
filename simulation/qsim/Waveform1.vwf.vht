-- Copyright (C) 2020  Intel Corporation. All rights reserved.
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
-- Generated on "07/02/2021 20:29:16"
                                                             
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
SIGNAL AC : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL AR : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Auto : STD_LOGIC;
SIGNAL BusSel : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL DataBus : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL DR : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Halt : STD_LOGIC;
SIGNAL IR : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL MEMOUT : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL PC : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL SC : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL SC_Clear : STD_LOGIC;
SIGNAL Stop : STD_LOGIC;
COMPONENT lab4top
	PORT (
	AC : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	AR : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	Auto : IN STD_LOGIC;
	BusSel : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	clk : IN STD_LOGIC;
	DataBus : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	DR : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	Halt : OUT STD_LOGIC;
	IR : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	MEMOUT : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	PC : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	SC : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	SC_Clear : OUT STD_LOGIC;
	Stop : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : lab4top
	PORT MAP (
-- list connections between master ports and signals
	AC => AC,
	AR => AR,
	Auto => Auto,
	BusSel => BusSel,
	clk => clk,
	DataBus => DataBus,
	DR => DR,
	Halt => Halt,
	IR => IR,
	MEMOUT => MEMOUT,
	PC => PC,
	SC => SC,
	SC_Clear => SC_Clear,
	Stop => Stop
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- Auto
t_prcs_Auto: PROCESS
BEGIN
	Auto <= '0';
WAIT;
END PROCESS t_prcs_Auto;
END lab4top_arch;
