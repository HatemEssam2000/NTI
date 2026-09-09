# VGA Image Display Driver on Intel DE10-Standard FPGA

This repository contains a Verilog HDL implementation of a **VGA Video Display Driver** designed for the **Intel Cyclone V DE10-Standard FPGA Board**. The project generates standard VGA timing signals and controls pixel color data to display images or frame sequences directly onto a VGA-compatible monitor.

---

## 🛠 Features

- **Standard VGA Controller:** Generates precise horizontal (`HSYNC`) and vertical (`VSYNC`) synchronization signals.
- **Intel DE10-Standard Pin Mapping:** Includes a Tcl script for automatic pin assignment matching the DE10-Standard VGA DAC hardware.

---

## 📁 File Structure

```text
├── Frame_counter.v                  # Tracks refresh frames for timing and image selection logic
├── VGA_Circuit.png                  # Hardware circuit diagram / block diagram for reference
├── VGA_sync.v                       # Core VGA controller generating HSYNC, VSYNC, and pixel coordinates
└── pin_assignments_image_view.tcl  # Tcl script mapping VGA signals to DE10-Standard FPGA pins
