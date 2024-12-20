# Manchester Baby Simulator and Assembler

## Overview

This project simulates the **Manchester Small Scale Experimental Machine (SSEM)**, also known as the **Manchester Baby**, which was the world's first stored-program computer built in 1948. The main objective of this project was to simulate the Baby's hardware and build an assembler to convert assembly language programs into machine code, which could then be executed on the simulator. The project is composed of two parts: the **Hardware Simulator** and the **Assembler**.

## Features

### Hardware Simulator

The simulator mimics the key components of the Manchester Baby:
- **Memory:** The Baby's memory consists of 32 individually addressable lines, each capable of holding 32 bits of data.
- **Fetch-Execute Cycle:** The simulator steps through each line of the binary machine code program, fetching, decoding, and executing the instructions.
- **State Representation:** The program outputs the state of the Baby's hardware, including the memory, registers, and I/O devices, after each cycle.

### Assembler

The assembler takes a **text file** containing assembly language code and converts it into binary machine code, which is compatible with the Baby hardware simulator.
- **Symbol Table:** The assembler supports variable names and labels, which are converted into memory addresses.
- **Error Handling:** The assembler checks for errors in the assembly language code, such as incorrect instructions or undeclared variables.

## Setup

To get started, follow these steps:

1. **Clone or Download the Repository:**
   Clone the repository or download the project files to your local machine.

2. **Build the Project:**
   If you're on Linux, open a terminal and navigate to the project directory. Run the following command to compile the program using `make`:

3. **Run the Simulator:**
The simulator takes a binary machine code file as input. To run the simulator, use the following command:

./simulator sample_program.txt


This will execute the machine code in the file `sample_mc1.txt`, stepping through each instruction and displaying the state of the Baby's hardware.

4. **Assemble an Assembly Program:**
To convert an assembly program to binary machine code, use the assembler with the following command:

./assembler sample_assembly.txt


This will generate a binary file containing the corresponding machine code, which can be loaded and run on the simulator.





