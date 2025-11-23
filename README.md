# CEG2136 - Lab 4: Control Unit

## Overview

This project implements the CPU for **CEG2136 Lab 4** (Control Unit design) and contains the files you were provided plus the completed control logic for the lab controller. The CPU is a small RISC-like, hardwired-control machine implemented and simulated in **Quartus II**.

---

## CPU Features

* Reduced Instruction Set (RISC) architecture
* Hardwired Control Unit (one-hot SC + decoder)
* 256 × 8-bit memory (program + data)
* Full instruction set required by the lab (memory-reference and register-reference)

---

## Repository structure

```
/ (repo root)
├─ lab4_controller.bdf         # Your completed Control Unit schematic
├─ memorycontents8.mif         # Initial memory (program + data)
├─ *.bdf                       # Provided component schematics (datapath blocks)
├─ README.md                   # This file
├─ Test1.vwf                   # Waveform file used for simulation demo
├─ simulation/                  # (optional) scripts or models for simulation
└─ reports/                     # screenshots, boolean tables, lab report files
```

---

## Instruction set (summary)

* Memory-reference instructions (IR[7]=0): LDD, AND, ADD, SUB, LDA, STA, BUN, ISZ

  * Direct addressing (IR[6]=0) and indirect addressing (IR[6]=1)
  * Memory-reference instructions are **16-bit** (two 8-bit reads)
* Register-reference instructions (IR[7]=1): CLA, CMA, ASL, ASR, INC, HLT

  * Register-reference instructions are **8-bit** (single read)

See the lab handout for complete opcode mapping and binary/hex values.

---

## What I added / implemented

1. Completed the control-signal spreadsheet and derived Boolean expressions for all CU outputs (BusSel[2:0], ALU_Sel[2:0], MemWrite, AR_Load, PC_Load, PC_INC, DR_Load, DR_INC, IR_Load, AC_Clear, AC_Load, AC_INC, OUTD_Load, SC_Clear, HALT).
2. Implemented the combinational Instruction Decoder (Xi and Yj signals) and the CU λ/δ logic in `lab4_controller.bdf`.
3. Compiled project in Quartus II and fixed schematic wiring/virtual nets.
4. Ran simulation with `Test1.vwf` and verified checker signals (F_chk and sum_chk) — screenshots and waveform files are in `reports/`.

---

## How to run (Quartus II)

1. Open Quartus II and load the project file (.qpf) or open the top-level `.bdf`.
2. Make sure `memorycontents8.mif` is in the project and attached to the `ram256x8` block.
3. Compile the project. Fix any missing virtual-nets by using the same wire names used in the schematics.
4. Open the simulator and load `Test1.vwf`. Run the simulation for ~400 clock cycles to observe program completion and checker signals.
5. Observe `F_chk` and `sum_chk` signals asserted when Fibonacci values and sum are written.

---

## Expected program behavior (provided test program)

* The program computes Fibonacci values and stores the first 7 values at `F[0..6]` (addresses `0xF8`..)
* Expected memory values at the end (addresses `0xF8`..): `01, 01, 02, 03, 05, 08, 0D` (hex)
* The testbench/checker asserts `F_chk` and `sum_chk` accordingly when these writes occur.

---

## Deliverables (what to include in the lab submission)

* Completed control-signal spreadsheet with truth conditions and Boolean expressions (CSV/XLSX).
* `lab4_controller.bdf` schematic (screenshot and `.bdf` file).
* Waveform capture showing correct CPU execution and checker signals (`Test1.vwf`, screenshots).
* A short lab report describing the design decisions and how you verified correctness.

---

## Notes & tips

* Use virtual wire names liberally to keep the schematics readable and avoid spaghetti wiring.
* If you plan to program the DE2-115 board (bonus), choose device `EP4CE115F29C7` and follow the pin assignment table from the handout.
* The program will take ~400 clock cycles — use the simulator run-time accordingly.

---

If you want, I can also:

* generate the control-signal spreadsheet (CSV) from the Boolean expressions,
* produce a concise lab report template with placeholders for screenshots and boolean tables,
* or tweak the README wording for submission formatting (PDF/ZIP).
