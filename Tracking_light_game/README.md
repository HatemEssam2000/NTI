# FPGA Reaction/Timing Game on Intel DE10-Standard

This repository contains a Verilog HDL implementation of a single-level reaction/timing game designed for the **Intel Cyclone V DE10-Standard FPGA Board**. In this game, a light moves across the board's LEDs, and the player must time their input using the correct switch when the target LED is lit. Success increments the score, while an incorrect switch resets the score to zero and displays a loss state.

---

## 🛠 Features

- **Interactive LED Game Play:** A moving light pattern controlled by shift registers on the hardware LEDs.
- **Input Detection & Edge Triggering:** Uses Mealy rising edge detection and input handling modules to capture player button/switch presses cleanly.
- **Score Tracking & Display:** Converts binary scores using a Double Dabble BCD algorithm to display current values on the on-board 7-segment displays.
- **Win/Loss Logic:** Dynamically updates state indicators based on correct or incorrect user timing.
- **Hardware Pin Assignment & Simulation:** Includes a TCL pin assignment script for the DE10-Standard board and a ModelSim simulation script (`run.do`).

---

## 📁 File Structure

```text
├── BCD_Double_Dabble_Algorithm.v  # Converts binary scores into BCD format for display
├── Clock_Divider.v                 # Divides the system clock for game speed and timing
├── Input_detection.v               # Detects and synchronizes player switch inputs
├── Mealy_Rising_Edge.v             # Mealy FSM edge detector for clean trigger inputs
├── Seven_Segment.v                 # Controls 7-segment LED drivers
├── Seven_Segment_Decoder.v         # Decodes values for numerical or text output
├── Shift_Register.v                # Manages the moving light pattern across LEDs
├── Top_Module.v                    # Top-level entity integrating game logic, inputs, and outputs
├── Updated_Shift_Reg.v             # Alternative or advanced shift register module
├── bin_to_7seg.v                   # Binary-to-7-segment pattern converter
├── pin_assignments.tcl             # Tcl script mapping hardware ports to the DE10-Standard FPGA
├── run.do                          # Automated simulation script for ModelSim / QuestaSim
└── tb_shift_reg.v                  # Testbench verifying shift register and game timing behavior
