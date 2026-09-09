# FPGA Digital Clock on Intel DE10-Standard

This repository contains a Verilog HDL implementation of a Digital Clock designed for the **Intel Cyclone V DE10-Standard FPGA Board**. The design utilizes a modular architecture to manage clock division, time counting, binary-to-BCD conversion, and 7-segment display control.

---

## 🛠 Features

- **Real-Time Clock Counting:** Displays time in [HH:MM:SS / MM:SS] format on the on-board 7-segment displays.
- **Clock Divider Module:** Converts the high-frequency FPGA system clock (50 MHz) down to a 1 Hz tick signal.
- **Double Dabble Algorithm:** Converts binary time values to Binary-Coded Decimal (BCD) for multi-digit decimal representation.
- **Reset Signal:** Hardware reset functionality to clear or initialize time counting.
- **Simulation Ready:** Includes a ModelSim / Questasim simulation script (`run.do`).

---

## 📁 File Structure

```text
├── BCD_Double_Dabble_Algorithm.v  # Converts binary values into Binary-Coded Decimal (BCD)
├── Clock_Divider.v                 # Divides system clock down to 1 Hz signal
├── Digital_Clock.v                 # Core logic for seconds, minutes, and hours counters
├── Seven_Segment.v                 # Decodes 4-bit BCD values to 7-segment display signals
├── Top_Module.v                    # Top-level module interconnecting all components
├── bin_to_7seg.v                   # Wrapper/decoder for binary to 7-segment driving
├── pin_assignments.tcl             # Tcl script to assign FPGA pins for DE10-Standard
└── run.do                          # Simulation script for ModelSim / Questasim
