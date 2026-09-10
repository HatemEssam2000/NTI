# Full Adder Using 4 Verilog Coding Styles

This repository contains a comprehensive Verilog HDL implementation of a **Full Adder** demonstrated across the **four standard Verilog hardware description coding styles**. It provides a clear comparative example of how the same arithmetic logic circuit can be described structurally, dataflow-wise, and behaviorally.

---

## 🛠 Features

- **Four Verilog Coding Styles:** Implements the full adder using:
  1. *Gate-Level Modeling* (Structural primitives like `and`, `xor`, `or`)
  2. *Dataflow Modeling* (Continuous assignments using Boolean operators like `&`, `|`, `^`)
  3. *Structural Modeling (Procedural with Truth Table)* using Half_Adder_Structure 
  4. *Behavioral Modeling (Arithmetic)* (`always` block using standard arithmetic operators `+`)
- **Comprehensive Testbench:** Includes `tb_Full_Adder.v` to verify and compare all styling modules against the standard full adder truth table.
- **Simulation Ready:** Automated execution script (`run.do`) for ModelSim / QuestaSim.

---

## 📁 File Structure

```text
├── Full_Adder.v       # Contains the Full Adder module implemented via 4 different coding styles
├── run.do             # Automated simulation script for ModelSim / QuestaSim
└── tb_Full_Adder.v    # Testbench verifying functionality across all styles
