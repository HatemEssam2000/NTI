# Edge Detector using Finite State Machines (FSM)

This repository contains Verilog implementations of **Edge Detectors** designed using both **Mealy** and **Moore** Finite State Machine (FSM) architectures. The design includes detection capabilities for **Rising Edge**, **Falling Edge**, and **Both Edges** (dual edge detection).

---

## 🛠 Features

- **Mealy Machine Implementations:** Fast-response edge detection where outputs depend on the current state and the current input signal.
- **Moore Machine Implementations:** Glitch-free, state-synchronous edge detection where outputs depend solely on the current state.
- **Comprehensive Edge Types:**
  - **Rising Edge Detection:** Generates a single clock cycle pulse on a $0 \rightarrow 1$ transition.
  - **Falling Edge Detection:** Generates a single clock cycle pulse on a $1 \rightarrow 0$ transition.
  - **Dual Edge Detection:** Detects both rising and falling transitions.
- **Simulation Ready:** Includes a comprehensive Verilog testbench (`tb_Edge_Detector.v`) and a automated simulation execution script (`run.do`) for ModelSim / QuestaSim.

---

## 📁 File Structure

```text
├── Mealy_Edge_Detector.v   # Mealy FSM for dual (rising and falling) edge detection
├── Mealy_Falling_Edge.v    # Mealy FSM dedicated to falling-edge detection
├── Mealy_Rising_Edge.v     # Mealy FSM dedicated to rising-edge detection
├── Moore_Edge_Detector.v   # Moore FSM for dual (rising and falling) edge detection
├── Moore_Falling_Edge.v    # Moore FSM dedicated to falling-edge detection
├── Moore_Rising_Edge.v     # Moore FSM dedicated to rising-edge detection
├── run.do                  # Simulation script for ModelSim / QuestaSim
└── tb_Edge_Detector.v      # Testbench verifying all Mealy and Moore modules
