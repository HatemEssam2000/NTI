# Generic Parameterized Decoder (Verilog)

A flexible, parameterized N-to-2^N generic decoder implemented in Verilog, featuring an automated verification suite for Siemens Questa Sim (ModelSim).

## Features

- Parameterized Architecture: Easily adjust input address width (`N`) to generate decoders of any required size (2^N outputs).
- Automated Verification: Comprehensive testbench generating dynamic test vectors across all output states.
- One-Click Questa Sim Automation: Included DO script (`.do`) to compile, simulate, and format waveforms automatically.

---

## Repository Structure

| File | Description |
| :--- | :--- |
| `Param_Decoder.v` | Top-level generic decoder RTL source. |
| `tb_Param_Decoder.v` | Verilog testbench for automated functional verification. |
| `run.do` | Questa Sim macro script for command-line/GUI simulation automation. |

---

## Getting Started

### Prerequisites

- **Siemens Questa Sim** or **ModelSim** installed and added to your system PATH.

### Running Simulation via Questa Sim

#### Method 1: Using the GUI
1. Launch Questa Sim.
2. Change the working directory to the project folder:
   ```tcl
   cd /path/to/repository
