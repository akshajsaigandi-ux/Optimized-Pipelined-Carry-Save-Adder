# Optimized Pipelined Carry-Save Adder (PCSA) for 16-Bit Cryptographic Arithmetic Units

> Design and FPGA Implementation of a High-Throughput 16-bit Pipelined Carry-Save Adder for Cryptographic Arithmetic

<p align="left">
  <img src="https://img.shields.io/badge/Language-Verilog-blue" alt="Verilog">
  <img src="https://img.shields.io/badge/Tool-Xilinx_Vivado-red" alt="Vivado">
  <img src="https://img.shields.io/badge/Target-Artix--7-green" alt="Artix-7">
  <img src="https://img.shields.io/badge/Status-Completed-brightgreen" alt="Completed">
  <img src="https://img.shields.io/badge/License-MIT-yellow" alt="MIT License">
</p>

---

## Overview

This project presents the design and implementation of an **Optimized Pipelined Carry-Save Adder (PCSA)** for **16-bit cryptographic arithmetic units**. The architecture improves computational throughput by combining **Carry-Save Addition (CSA)** with a **single-stage pipelined architecture**, reducing the critical path before the final carry propagation stage.

The design was developed using **Verilog HDL**, verified through **behavioral simulation**, and synthesized using **Xilinx Vivado 2025.2** targeting the **Xilinx Artix-7 FPGA** family.

This work also resulted in a **published Indian Patent** and was presented at **ETCC 2026**, an IEEE-associated international conference.

---

## Project Impact

- 🇮🇳 **Published Indian Patent** based on the PCSA architecture.
- 🎤 **Presented at ETCC 2026**, an IEEE-associated International Conference.
- ⚡ Demonstrates the complete FPGA design flow from RTL design to synthesis and timing analysis.
- 🔒 Serves as a reusable arithmetic building block for cryptographic hardware.

---

## Table of Contents

- [Overview](#overview)
- [Project Impact](#project-impact)
- [Motivation](#motivation)
- [Features](#features)
- [Project Status](#project-status)
- [Architecture](#architecture)
- [Technologies Used](#technologies-used)
- [Repository Structure](#repository-structure)
- [Synthesis Results](#synthesis-results)
- [Simulation Results](#simulation-results)
- [Applications](#applications)
- [Verification](#verification)
- [RTL Schematic](#rtl-schematic)
- [Simulation Waveform](#simulation-waveform)
- [Synthesized Design](#synthesized-design)
- [Resource Utilization](#resource-utilization)
- [Timing Summary](#timing-summary)
- [Power Analysis](#power-analysis)
- [Recognition](#recognition)
- [Running the Project](#running-the-project)
- [Future Improvements](#future-improvements)
- [Reports](#reports)
- [Conclusion](#conclusion)
- [License](#license)

---

## Motivation

Arithmetic operations form the foundation of modern cryptographic systems. Traditional **Ripple Carry Adders (RCA)** suffer from long carry propagation delays, while conventional **Carry Save Adders (CSA)** still require a final carry propagation stage.

This project introduces a **single-stage pipelined CSA architecture** that improves throughput while maintaining efficient FPGA resource utilization.

---

## Features

- 16-bit Carry Save Adder architecture
- Single-stage pipelined datapath
- Modular Verilog RTL implementation
- Behavioral simulation in Xilinx Vivado
- RTL Elaboration
- RTL Synthesis
- FPGA resource utilization analysis
- Timing summary generation
- Hardware-oriented modular design

---

## Project Status

| Stage | Status |
|--------|:------:|
| RTL Design | ✅ |
| Behavioral Simulation | ✅ |
| RTL Elaboration | ✅ |
| RTL Synthesis | ✅ |
| Documentation | ✅ |

---

## Architecture

```text
          A
          B
          C
          │
          ▼
+----------------------+
| Carry Save Adder     |
+----------------------+
          │
          ▼
+----------------------+
| Pipeline Register    |
+----------------------+
          │
          ▼
+----------------------+
| Ripple Carry Adder   |
+----------------------+
          │
          ▼
      RESULT, COUT
```

The architecture performs partial addition using a Carry Save Adder, stores intermediate values in a pipeline register, and completes carry propagation through a Ripple Carry Adder to improve throughput.

---

## Technologies Used

- Verilog HDL
- Xilinx Vivado 2025.2
- Xilinx Artix-7 FPGA
- Digital Logic Design
- FPGA Design Flow

---

## Repository Structure

```text
Optimized-Pipelined-Carry-Save-Adder/
│
├── rtl/
├── testbench/
├── reports/
├── diagrams/
│   ├── rtl_schematic.png
│   ├── behavioral_waveform.png
│   ├── utilization.png
│   ├── timing_summary.png
│   └── power_summary.png
├── simulation/
├── elaborated_design.png
├── README.md
└── LICENSE
```

---

## Synthesis Results

The design was successfully synthesized in **Xilinx Vivado 2025.2** targeting the **Artix-7 FPGA**.

| Resource | Usage |
|----------|------:|
| Slice LUTs | **84** |
| Slice Registers | **30** |
| Slice | **31** |
| LUT as Logic | **40** |
| LUT as Memory | **44** |
| Bonded I/O | **98** |
| BUFGCTRL | **1** |

> **Note:** No XDC timing constraints were specified. The synthesis completed successfully, but timing results are reported without a user-defined target clock.

---

## Simulation Results

The design was verified using **behavioral simulation** in Xilinx Vivado.

### Test Vectors

| A | B | C | Result |
|---:|---:|---:|---:|
| 10 | 20 | 30 | 60 |
| 100 | 200 | 300 | 600 |
| 1024 | 2048 | 4096 | 7168 |
| 65535 | 1 | 0 | Overflow |

---

## Applications

- Cryptographic processors
- Modular arithmetic units
- FPGA accelerators
- High-speed arithmetic hardware
- Digital Signal Processing (DSP)

---

## Verification

The complete design flow was successfully verified.

- ✔ Behavioral Simulation completed
- ✔ RTL Elaboration successful
- ✔ RTL Synthesis successful
- ✔ Resource Utilization generated
- ✔ Timing Summary generated
- ✔ No synthesis errors

---

## RTL Schematic

<p align="center">
  <img src="diagrams/rtl_schematic.png" alt="RTL Schematic" width="100%">
</p>

*Figure 1. RTL schematic generated using Xilinx Vivado.*

---

## Simulation Waveform

<p align="center">
  <img src="diagrams/behavioral_waveform.png" alt="Simulation Waveform" width="100%">
</p>

*Figure 2. Behavioral simulation showing correct functional verification.*

---

## Synthesized Design

<p align="center">
  <img src="elaborated_design.png" alt="Elaborated RTL Design" width="100%">
</p>

*Figure 3. Elaborated RTL design.*

---

## Resource Utilization

<p align="center">
  <img src="diagrams/utilization.png" alt="Resource Utilization" width="100%">
</p>

*Figure 4. FPGA resource utilization after synthesis.*

### Key Observations

- Efficient utilization of FPGA resources.
- Minimal logic consumption.
- Suitable for lightweight arithmetic acceleration.

---

## Timing Summary

<p align="center">
  <img src="diagrams/timing_summary.png" alt="Timing Summary" width="100%">
</p>

*Figure 5. Vivado timing summary.*

### Timing Results

| Metric | Value |
|--------|------:|
| Worst Negative Slack (WNS) | **∞** |
| Total Negative Slack (TNS) | **0.000 ns** |
| Worst Hold Slack (WHS) | **∞** |
| Total Hold Slack (THS) | **0.000 ns** |
| Failing Endpoints | **0** |
| Total Endpoints | **462** |

The design completed synthesis without timing violations, although no user-defined timing constraints were applied.

---

## Power Analysis

<p align="center">
  <img src="diagrams/power_summary.png" alt="Power Analysis" width="100%">
</p>

*Figure 6. Vivado estimated power report.*

| Metric | Value |
|--------|------:|
| Total Estimated Power | **43.93 W** |
| Dynamic Power | **42.93 W** |
| Static Power | **1.00 W** |
| Junction Temperature | **107.1°C** |
| Ambient Temperature | **25°C** |

> **Note:** This power report is based on Vivado's vectorless power estimation. The unusually high I/O power is an estimation artifact and should not be interpreted as measured hardware power.

---

## 🏆 Recognition

### 🇮🇳 Published Indian Patent

This project resulted in a published Indian Patent.

| Item | Details |
|------|---------|
| **Patent Title** | Optimized Pipelined Carry-Save Adder (PCSA) |
| **Application No.** | 202641018710 |
| **Publication No.** | IN202641018710 A1 |

<p align="center">
  <img src="https://img.shields.io/badge/Indian-Patent-success?style=for-the-badge"/>
  <img src="https://img.shields.io/badge/Publication-IN202641018710_A1-blue?style=for-the-badge"/>
</p>

---

### 🎤 ETCC 2026 Conference Presentation

The research based on this project was presented at:

- **Conference:** ETCC 2026 – International Conference on Emerging Technologies in Computing and Communication
- **Host:** PES University EC Campus, Bengaluru
- **Technical Association:** IEEE Bangalore Section, IEEE Computer Society Bangalore Chapter, and IEEE Communications Society Bangalore Chapter

<p align="center">
  <img src="https://img.shields.io/badge/Conference-ETCC%202026-blue?style=for-the-badge"/>
  <img src="https://img.shields.io/badge/IEEE-Associated-00629B?style=for-the-badge&logo=ieee"/>
</p>

---

## Running the Project

### Requirements

- Xilinx Vivado 2025.2 (or compatible version)

### Steps

1. Clone the repository.
2. Open Xilinx Vivado.
3. Create a new RTL Project.
4. Add all files from the `rtl/` directory as **Design Sources**.
5. Add `testbench/pcsa_tb.v` as a **Simulation Source**.
6. Set `pcsa_top` as the **Top Module**.
7. Run **Behavioral Simulation**.
8. Run **RTL Elaboration**.
9. Run **Synthesis**.
10. Review utilization and timing reports.

---

## Contributions

Contributions, issues, and feature requests are welcome.

If you identify improvements, feel free to open an issue or submit a pull request.

---

## Future Improvements

- 32-bit implementation
- 64-bit implementation
- Carry Lookahead-based final adder
- ASIC implementation
- UVM verification environment

---

## Reports

The following synthesis reports are included in the `reports/` directory.

- `utilization_report.rpt`
- `timing_summary.rpt`

---

## Conclusion

The proposed **16-bit Optimized Pipelined Carry-Save Adder** was successfully designed, simulated, elaborated, and synthesized using **Verilog HDL** and **Xilinx Vivado**.

The modular pipelined architecture demonstrates improved computational throughput while maintaining efficient FPGA resource utilization. The project's impact extends beyond implementation through a **published Indian Patent** and an **ETCC 2026 conference presentation**, demonstrating its relevance to cryptographic hardware research and FPGA-based digital design.

---

## Author

**Akshaj Gandi**

Electronics and Communication Engineering

SRM Institute of Science and Technology

---

## License

This project is released under the **MIT License**. See the `LICENSE` file for details.

---

## Support

If you found this project useful, consider giving the repository a ⭐.

## Why this version is stronger

- Added a **Project Impact** section immediately after the overview.
- Added a **Recognition** section with only project-related achievements (Patent + ETCC 2026).
- Standardized image paths (`diagrams/...`) for better GitHub compatibility.
- Kept all synthesis, timing, power, and FPGA implementation data unchanged.
- Matches the professional style of your **RVV-Inspired RISC-V Vector Processor** and **Neuromorphic LIF Simulation** repositories, making your GitHub portfolio look consistent.
