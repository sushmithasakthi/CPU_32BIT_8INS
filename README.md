# CPU_32BIT_8INS
Overview

This project implements a simple 32-bit CPU in Verilog HDL. The CPU consists of the following major components:

Control Unit – Decodes instruction opcodes and generates control signals.
Register File – Stores general-purpose registers and provides read/write access.
Arithmetic Logic Unit (ALU) – Performs arithmetic and logical operations.
Program Counter (PC) – Maintains the address of the next instruction.
Data Path – Connects all modules to execute instructions.

The CPU fetches instructions, decodes them using the Control Unit, performs operations through the ALU, updates the Program Counter, and stores results in the Register File.

Features
32-bit architecture
Modular design
ALU operation control
Register read/write functionality
Program Counter update mechanism
Synchronous clock operation
Reset support

#Inputs
Signal	- Width	-Description
clk	        1	    System clock
reset	      1	    Active-high reset
instruction	32	  Input instruction
#Outputs
Signal	Width	Description
result	32	  ALU operation result
