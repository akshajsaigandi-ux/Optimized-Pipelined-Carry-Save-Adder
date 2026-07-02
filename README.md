# Optimized Pipelined Carry-Save Adder (PCSA) for 16-Bit Cryptographic Arithmetic Units

![Verilog](https://img.shields.io/badge/Language-Verilog-blue)
![Vivado](https://img.shields.io/badge/Tool-Xilinx%20Vivado-red)
![FPGA](https://img.shields.io/badge/Target-Xilinx%20Artix--7-green)
![Status](https://img.shields.io/badge/Status-Completed-brightgreen)
![License](https://img.shields.io/badge/License-MIT-yellow)

## Overview

This project presents the design and implementation of an **Optimized Pipelined Carry-Save Adder (PCSA)** for 16-bit cryptographic arithmetic units. The architecture is designed to improve computational throughput and reduce propagation delay by combining carry-save addition with a multi-stage pipelined structure.

The design was developed using **Verilog HDL** and implemented using **Xilinx Vivado** targeting a **Xilinx Artix-7 FPGA**.

---

## Motivation

Arithmetic operations are the backbone of modern cryptographic systems. Traditional Ripple Carry Adders suffer from large carry propagation delays, while conventional Carry Save Adders still require a final carry propagation stage.

This project introduces a pipelined CSA architecture that improves operating frequency and throughput while maintaining efficient hardware utilization.

---

## Features

- 16-bit Carry-Save Adder architecture
- Multi-stage pipelined design
- Reduced critical path delay
- Higher throughput
- FPGA implementation using Xilinx Vivado
- Optimized for cryptographic arithmetic operations
- Performance comparison with RCA and conventional CSA

---

## Architecture

The proposed architecture consists of five major stages:

1. Input Register Stage
2. Carry Save Adder Stage 1
3. Pipeline Register
4. Carry Save Adder Stage 2
5. Final Carry Propagate Adder (Ripple Carry Adder)

The pipelined approach allows multiple operands to be processed simultaneously, significantly improving throughput.

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
├── simulation/
├── diagrams/
├── images/
├── reports/
├── docs/
├── README.md
└── LICENSE
```

---

## Performance Summary

| Parameter | RCA | CSA | Proposed PCSA |
|-----------|------|------|---------------|
| Delay | 12.8 ns | 7.2 ns | 3.5 ns |
| Frequency | ~78 MHz | ~138 MHz | >280 MHz |
| Throughput | Low | Moderate | High |

---

## Applications

- Cryptographic processors
- Modular arithmetic
- FPGA accelerators
- High-speed arithmetic units
- Digital signal processing

---

## Future Improvements

- 32-bit implementation
- 64-bit implementation
- Carry Lookahead based final adder
- ASIC implementation
- UVM verification environment

---

## Author

**Akshaj Gandi**

Electronics and Communication Engineering

SRM Institute of Science and Technology

---

## License

This project is released under the MIT License.