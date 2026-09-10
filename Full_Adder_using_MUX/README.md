# Full Adder & Half Adder Implemented Using Multiplexers (MUX) in Verilog

This repository contains a Verilog HDL implementation of **Half Adder** and **Full Adder** circuits built entirely using multiplexer (MUX) logic. By leveraging a standard multiplexer as a universal logic building block (`Standard_MUX.v`), the design demonstrates how complex arithmetic logic can be realized directly through data-selection routing rather than traditional boolean gates.

---

## 🛠 Features

- **Gate-Level MUX Synthesis:** Implements standard logic functions and adders structurally using multiplexers.
- **Hierarchical Design:** Builds a Full Adder using Half Adders and/or multiplexer-based logic blocks.
- **Dual Testbench Support:** Includes separate testbenches for validating both the underlying MUX logic behavior (`tb_Standard_MUX.v`) and the complete adder arithmetic functionality (`tb_Adder.v`).
- **Simulation Scripts:** Automated ModelSim / QuestaSim execution scripts (`run.do` and `run_adder.do`).

---

## 📁 File Structure

```text
├── Full_Adder.v           # Core Full Adder module built using MUX components
├── Half_Adder.v           # Half Adder implementation using MUX logic
├── Standard_MUX.v         # Universal multiplexer module acting as the fundamental gate building block
├── run.do                 # Simulation script for the standard MUX testbench
├── run_adder.do           # Simulation script for the adder circuits testbench
├── tb_Adder.v             # Testbench verifying Full and Half Adder truth tables
└── tb_Standard_MUX.v      # Testbench verifying the underlying multiplexer operations
