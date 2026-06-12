# Simple 32-Bit CPU Design in Verilog

A modular **32-bit Single-Cycle CPU** implemented in Verilog HDL. This project demonstrates the fundamental architecture of a processor by integrating a **Control Unit**, **Register File**, **Arithmetic Logic Unit (ALU)**, and **Program Counter (PC)**.

---

## 📖 Project Overview

This CPU executes instructions by performing the following stages:

1. **Instruction Fetch** – Receives a 32-bit instruction.
2. **Instruction Decode** – Control Unit generates control signals based on opcode.
3. **Operand Fetch** – Register File provides source operands.
4. **Execute** – ALU performs arithmetic or logical operations.
5. **Write Back** – Result is stored in the destination register.
6. **Program Counter Update** – PC advances to the next instruction.

This project is designed for learning:

* Computer Organization and Architecture
* Digital System Design
* FPGA and ASIC Design Flow
* Verilog HDL Programming

---

## 🏗 Architecture

```text
                +------------------+
                |   Instruction    |
                +--------+---------+
                         |
                         v
                +------------------+
                |   Control Unit   |
                +------------------+
                         |
                         v
+-----------+     +-------------+     +---------+
| Register  |---->|     ALU     |---->| Result  |
|   File    |     +-------------+     +---------+
+-----------+            ^
                         |
                    +---------+
                    |   PC    |
                    +---------+
```

---

## 📂 Project Structure

```text
CPU_Project/
│
├── CPU.v
├── ControlUnit.v
├── RegisterFile.v
├── ALU.v
├── PC.v
├── CPU_tb.v
└── README.md
```

---

## 📋 Modules

### CPU.v

Top-level module integrating all processor components.

### ControlUnit.v

Generates:

* ALUOp
* RegWrite
* MemRead
* MemWrite
* Branch
* Jump

based on instruction opcode.

### RegisterFile.v

* 32-bit registers
* Two read ports
* One write port

### ALU.v

Supports operations such as:

* ADD
* SUB
* AND
* OR
* XOR
* SLT

### PC.v

Maintains the current instruction address and increments by 4 every clock cycle.

---

## ⚙ Inputs and Outputs

### Inputs

| Signal      | Width | Description       |
| ----------- | ----- | ----------------- |
| clk         | 1     | System Clock      |
| reset       | 1     | Active High Reset |
| instruction | 32    | Instruction Input |

### Outputs

| Signal | Width | Description       |
| ------ | ----- | ----------------- |
| result | 32    | ALU Output Result |

---

## 🔬 Simulation

### Testbench

The project includes:

```text
CPU_tb.v
```

which verifies:

* Reset functionality
* ALU operations
* Register access
* Program Counter updates

---

## ▶ Running Simulation

### Using Icarus Verilog

```bash
iverilog -o cpu_sim \
CPU.v \
ControlUnit.v \
RegisterFile.v \
ALU.v \
PC.v \
CPU_tb.v

vvp cpu_sim
```

### Generate Waveforms

Add the following lines in the testbench:

```verilog
initial begin
    $dumpfile("cpu.vcd");
    $dumpvars(0, CPU_tb);
end
```

Run:

```bash
gtkwave cpu.vcd
```

---

## 🛠 Tools Used

* Verilog HDL
* ModelSim
* Vivado Simulator
* QuestaSim
* GTKWave
* Icarus Verilog
* Visual Studio Code

---

## 🎯 Learning Outcomes

Through this project, you will understand:

* Processor Architecture
* Control Signal Generation
* ALU Design
* Register File Design
* Program Counter Operation
* RTL Design Methodology
* Digital Logic Verification

---

## 🚀 Future Enhancements

* Data Memory Integration
* Instruction Memory
* Pipeline Architecture
* Hazard Detection Unit
* Forwarding Unit
* Cache Memory
* RISC-V Instruction Support
* FPGA Implementation

---

## 📊 Applications

* Computer Architecture Education
* FPGA Learning Projects
* VLSI Design Practice
* RTL Verification Training
* Processor Design Fundamentals

---

## 👩‍💻 Author

**Sushmitha Sakthivel**

* Electronics and Communication Engineering
* Embedded Systems Enthusiast
* Java Backend Developer
* VLSI & Digital Design Learner

---

## ⭐ Repository Highlights

✔ Modular Verilog Design
✔ Easy to Understand Architecture
✔ Simulation Ready
✔ Beginner Friendly CPU Project
✔ Suitable for Academic and Portfolio Use

