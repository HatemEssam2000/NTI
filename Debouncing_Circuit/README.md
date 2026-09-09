# Button Debouncing Circuit in Verilog

This repository contains a Verilog HDL implementation of a **Debouncing Circuit** paired with a counter module. Mechanical push buttons and switches suffer from contact bounce, which can introduce rapid, unwanted logic transitions. This design filters out mechanical noise and glitches to generate a clean, stable single-pulse trigger signal.

---

## 🛠 Features

- **Noise & Bounce Filtering:** Suppresses high-frequency mechanical switch bounce using a counter-based delay/sampling mechanism.
- **Stable Trigger Output:** Produces a clean, single-pulse output whenever a valid button press or switch toggles.
- **Integrated Counter Test Module:** Uses an internal counter module to demonstrate clean increments driven strictly by debounced pulses.
- **Simulation Environment:** Includes a dedicated testbench simulating realistic noisy mechanical bounces alongside an automated ModelSim execution script (`run.do`).

---

## 📁 File Structure

```text
├── Counter.v                 # Demonstrates stable count increments using the debounced output signal
├── Debouncing_Circuit.v      # Core debouncing logic using timing delay / filtering counters
├── run.do                    # Script for running simulation in ModelSim / QuestaSim
└── tb_Debouncing_Circuit.v   # Testbench generating mechanical noise/glitches to test filtering
