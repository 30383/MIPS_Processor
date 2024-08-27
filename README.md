# MIPS Processor Implementation in Verilog

## Overview

This project implements a 5-stage pipelined MIPS processor in Verilog, designed to be synthesized and simulated using Xilinx Vivado. The processor includes the following pipeline stages:

1. **Instruction Fetch (IF)**
2. **Instruction Decode (ID)**
3. **Execution (EX)**
4. **Memory Access (MEM)**
5. **Write Back (WB)**

In addition to the basic pipeline stages, the processor includes hazard detection and data forwarding units to handle pipeline hazards efficiently.

## Project Structure

The project consists of several Verilog modules, each representing different components of the MIPS processor:

- **IF Stage:** Manages the program counter (PC) and instruction memory.
- **ID Stage:** Decodes instructions and handles register file access.
- **EX Stage:** Executes ALU operations and computes memory addresses.
- **MEM Stage:** Performs data memory operations.
- **WB Stage:** Writes results back to the register file.
- **Hazard Detection Unit:** Identifies and manages hazards in the pipeline to prevent incorrect instruction execution.
- **Data Forwarding Unit:** Resolves data hazards by forwarding data between pipeline stages.

## Getting Started

### Prerequisites

- **Xilinx Vivado:** This project is designed to be synthesized and simulated in Xilinx Vivado. Make sure you have Vivado installed and properly configured.
Certainly! Here’s the full README text in plain text format:

### Setup Instructions

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/30383/MIPS_Processor.git
   cd MIPS_Processor

2. **Open Vivado:**
   Launch Xilinx Vivado and create a new project.

3. **Add Verilog Files:**
   Add the Verilog files from the `src/` directory to your Vivado project.

4. **Run Simulation:**
   Use the testbench provided in the `tb/` directory to simulate the MIPS processor. This will allow you to verify the functionality of the processor.

5. **Synthesize and Implement:**
   Once the design is verified via simulation, synthesize and implement the design on a supported FPGA device.

### Directory Structure

- `src/`: Contains the Verilog source files for the MIPS processor.
- `tb/`: Contains testbench files for simulating and verifying the design.
- `constraints/`: Xilinx Vivado constraint files for FPGA implementation.

## Features

- **5-Stage Pipeline:** Implements a 5-stage pipeline typical of MIPS processors.
- **Hazard Detection:** Includes logic to detect and manage hazards to ensure correct instruction execution.
- **Data Forwarding:** Implements data forwarding to mitigate data hazards, allowing instructions to proceed without unnecessary stalls.

## Contributing

Contributions to the project are welcome! Please follow the standard GitHub fork and pull request workflow.

## License

This project is licensed under the MIT License. See the `LICENSE` file for more details.

## Contact

For any questions or suggestions, feel free to open an issue on the repository or contact [psv30383@gmail.com].
```
