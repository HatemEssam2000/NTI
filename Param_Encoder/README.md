# Generic Parameterized Priority Encoder (Verilog)

A flexible, parameterized 2^N-to-N generic priority encoder implemented in Verilog, featuring an automated verification suite for Siemens Questa Sim (ModelSim).

## Features

- Parameterized Architecture: Easily adjust output bit-width (`N`) to handle any 2^N input vector size.
- Automated Verification: Comprehensive testbench generating dynamic test vectors across all input configurations.
- One-Click Questa Sim Automation: Included DO script (`.do`) to compile, simulate, and format waveforms automatically.

---

## Repository Structure

| File | Description |
| :--- | :--- |
| `Param_Encoder` | Top-level generic priority encoder RTL source. |
| `tb_Param_Encoder` | Verilog testbench for automated functional verification. |
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
