# FPGA 8x1 Multiplexer Project

This repository contains a VHDL implementation of a hierarchical **8x1 multiplexer**, built using basic **2x1 multiplexers**.

The design demonstrates:
- Modular and hierarchical digital design in VHDL
- Use of 2x1 multiplexer modules to construct more complex logic
- A top-level FPGA design that connects input switches to an 8x1 mux and displays results on LEDs

## Files Included

- `mux_2x1.vhd` — 2-to-1 multiplexer module  
- `mux_8x1.vhd` — 8-to-1 multiplexer constructed from multiple 2x1 modules  
- `top_module.vhd` — Top-level FPGA integration  
- `Nexys-A7-100T-Master.xdc` — Constraint file for the Digilent Nexys A7 FPGA board  

## Design Overview

The 8x1 multiplexer uses **seven 2x1 mux instances** arranged in a hierarchical structure. This shows how small digital building blocks can be combined into larger functional units.

For a detailed visual explanation of the mux hierarchy and implementation logic, see the included PDF:

[View the 8x1 MUX Design Explanation (PDF)](Design_of_8x1_Mux_from_2x1_Mux.pdf)

## Tools

- Language: VHDL  
- FPGA: Xilinx Vivado (any compatible version)  
- Board: Digilent Nexys A7-100T
