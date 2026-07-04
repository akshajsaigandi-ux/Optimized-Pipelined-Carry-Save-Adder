# Optimized Pipelined Carry-Save Adder (PCSA) for 16-Bit Cryptographic Arithmetic Units

![Verilog](https://img.shields.io/badge/Language-Verilog-blue)
![Vivado](https://img.shields.io/badge/Tool-Xilinx%20Vivado-red)
![FPGA](https://img.shields.io/badge/Target-Xilinx%20Artix--7-green)
![Status](https://img.shields.io/badge/Status-Completed-brightgreen)
![License](https://img.shields.io/badge/License-MIT-yellow)

## Overview

This project presents the design and implementation of an **Optimized Pipelined Carry-Save Adder (PCSA)** for 16-bit cryptographic arithmetic units. The architecture improves computational throughput by combining carry-save addition with a **single-stage pipelined architecture**, reducing the critical path before the final carry propagation stage.

The design was developed using Verilog HDL and verified through behavioral simulation and RTL synthesis in Xilinx Vivado. The implementation targets the Xilinx Artix-7 FPGA family.

## Motivation

Arithmetic operations are the backbone of modern cryptographic systems. Traditional Ripple Carry Adders suffer from large carry propagation delays, while conventional Carry Save Adders still require a final carry propagation stage.

This project introduces a pipelined CSA architecture that improves operating frequency and throughput while maintaining efficient hardware utilization.

---

## Features

- 16-bit Carry Save Adder
- Single-stage pipelined architecture
- Modular Verilog RTL implementation
- Behavioral simulation in Vivado
- RTL synthesis
- Resource utilization analysis
- Timing summary generation

---

## Project Status

| Stage | Status |
|--------|:------:|
| RTL Design | ✅ |
| Behavioral Simulation | ✅ |
| RTL Elaboration | ✅ |
| RTL Synthesis | ✅ |
| Documentation | ✅ |

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

---

## Technologies Used

- Verilog HDL
- Xilinx Vivado
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
├── docs/
│   └── images/
├── diagrams/
├── simulation/
├── README.md
└── LICENSE
```

---

## Synthesis Results

| Resource | Usage |
|----------|------:|
| Slice LUTs | 31 |
| Slice Registers | 31 |
| Bonded I/O | 67 |
| BUFGCTRL | 1 |

Behavioral simulation and RTL synthesis completed successfully in Vivado 2025.2.

---

> **Note:** No XDC timing constraints were specified for this project. The reported synthesis results confirm successful RTL synthesis, while timing metrics are not evaluated against a user-defined target clock.

## Simulation Results

The design was verified using behavioral simulation in Xilinx Vivado.

### Test Vectors

| A | B | C | Result |
|---:|---:|---:|---:|
|10|20|30|60|
|100|200|300|600|
|1024|2048|4096|7168|
|65535|1|0|Overflow|

## Applications

- Cryptographic processors
- Modular arithmetic
- FPGA accelerators
- High-speed arithmetic units
- Digital signal processing

---

## Verification

- ✔ Behavioral Simulation completed
- ✔ RTL Elaboration successful
- ✔ RTL Synthesis successful
- ✔ Resource Utilization generated
- ✔ Timing Summary generated
- ✔ No synthesis errors

## RTL Schematic

![RTL Schematic](docs/images/elaborated_design.png)

## Simulation Waveform

![Simulation Waveform](docs/images/simulation_waveform.png)

## Synthesized Design

![Synthesized Design](docs/images/synthesized_design.png)

## Resource Utilization

![Resource Utilization](docs/images/utilization.png)

## Timing Summary

![Timing Summary](docs/images/timing_summary.png)

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
8. Run **Synthesis**.

## Contributions

Contributions, issues, and feature requests are welcome.

If you find improvements, feel free to open an issue or submit a pull request.

## Future Improvements

- 32-bit implementation
- 64-bit implementation
- Carry Lookahead based final adder
- ASIC implementation
- UVM verification environment

---

## Conclusion

The proposed 16-bit Optimized Pipelined Carry-Save Adder was successfully designed, simulated, and synthesized using Verilog HDL in Xilinx Vivado. The modular architecture demonstrates improved throughput through pipelining while maintaining efficient FPGA resource utilization, making it suitable as a building block for high-speed arithmetic and cryptographic applications.

## Author

**Akshaj Gandi**

Electronics and Communication Engineering

SRM Institute of Science and Technology

---

## License

This project is released under the MIT License. See the LICENSE file for details.

## Support

If you found this project useful, consider giving the repository a ⭐.