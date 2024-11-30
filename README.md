# 5-Bit Full Adder Implementation in VHDL

This project implements a **5-bit full adder** in VHDL using both **structural** and **behavioral** approaches. A 5-bit full adder performs binary addition on two 5-bit numbers (`A` and `B`) along with a carry-in (`Cin`), and outputs a 5-bit sum (`Sum`) and a carry-out (`Cout`).

## Features
- **Structural Approach**: Uses a 1-bit full adder as a building block and cascades it to create a 5-bit full adder.
- **Behavioral Approach**: Implements the functionality directly using a process block.
- Verified through simulation with multiple test cases.


## How It Works
1. **Structural Approach**:
   - Cascades 1-bit full adders to form a 5-bit full adder.
   - The carry-out of each bit is connected to the carry-in of the next bit.

2. **Behavioral Approach**:
   - Describes the 5-bit adder using a single equation with a process block for clarity.

## Simulation and Testing
- The design has been tested using a testbench to verify functionality across various scenarios:
  - No carry propagation
  - Carry propagation across bits
  - Overflow with carry-out
  - Edge cases like all zeros or maximum inputs.

## Example Inputs and Outputs
| A        | B        | Cin | Sum      | Cout |
|----------|----------|-----|----------|------|
| 01010    | 00101    | 0   | 01111    | 0    |
| 11110    | 00011    | 1   | 00010    | 1    |
| 11111    | 11111    | 0   | 11110    | 1    |
| 00000    | 00000    | 0   | 00000    | 0    |

## Tools Used
- **VHDL**: Hardware description language.
- **ModelSim/QuestaSim**: For simulation.

## How to Run
1. Clone this repository:
   ```bash
   git clone https://github.com/ahmedyoussef11/Five_Bit_Adder.git

