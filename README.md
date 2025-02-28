# Verilog for Practice 

A collection of Verilog HDL implementations for various digital design concepts. This repository serves as a learning resource for practicing Verilog coding, covering essential topics such as combinational and sequential circuits, finite state machines (FSMs), and more.

##  Repository Structure

The repository contains different Verilog projects and modules categorized based on their functionality:

- **Basic Circuits**: AND, OR, XOR gates, Multiplexers, Decoders, etc.
- **Combinational Logic**: Adders, Subtractors, Multipliers, ALU designs.
- **Sequential Circuits**: Flip-flops, Counters, Shift Registers, Latches.

Each folder contains:
- `.v` files with Verilog source code.
- `testbench` files for simulation.
- Simulation results (waveforms, logs).

## Setup Instructions

To run and simulate the Verilog code in this repository, follow these steps:

1. **Install a Verilog Simulator**:
   - Icarus Verilog (`iverilog`) for open-source simulation.
   - ModelSim or Questa for professional-grade simulation.

2. **Clone the Repository**:
   ```sh
   git clone https://github.com/Skandakm29/Verilog-for-practice.git
   cd Verilog-for-practice
   ```
3.  **Compile and Simulate using Icarus Verilog**:

   ```sh
    iverilog -o output_file testbench.v
    vvp output_file
   ```
4.**Output waveform**:

```sh
gtkwave waveform.vcd
```
***Connect with Me***


GitHub: [Skandakm29](https://github.com/Skandakm29)

 LinkedIn: [K M Skanda](https://www.linkedin.com/in/k-m-skanda-541a02291/) 

Email: kmskanda29@gmail.com
