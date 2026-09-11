# Digital Logic Gate Implementations in Verilog

This repository contains Verilog implementations of various digital logic gates constructed using alternative universal gates (NAND/NOR) and configurable XOR gate configurations.



## Repository Structure

The repository consists of the following three files:

* **`Standard_gates.v`**: The core Verilog source file containing the structural and gate-level module definitions.
* **`tb_Standard_Gate.v`**: The testbench file used to apply stimulus and verify the functionality of all implemented modules.
* **`run.do`**: The simulation macro script used to automate compilation and execution in simulation tools like ModelSim or QuestaSim.



## Implemented Modules

The `Standard_gates.v` file includes the following hardware modules:

* **`AND_USING_NAND`** - Implements an AND gate using NAND logic primitives.
* **`OR_USING_NAND`** - Implements an OR gate using NAND logic primitives.
* **`AND_USING_NOR`** - Implements an AND gate using NOR logic primitives.
* **`OR_USING_NOR`** - Implements an OR gate using NOR logic primitives.
* **`XOR_as_Buffer`** - Configures an XOR gate to act as a digital buffer (\(out = in \oplus 0\)).
* **`XOR_as_Inverter`** - Configures an XOR gate to act as a NOT gate / inverter (\(out = in \oplus 1\)).
