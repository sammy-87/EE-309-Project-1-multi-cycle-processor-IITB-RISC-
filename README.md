# EE-309-Project-1-multi-cycle-processor-IITB-RISC-
Repository for Codes made for IITB-RISC microprocessor (RISC DLX architetcure) project of EE 309 (Microprocessors) course.
The machine is a 16-bit system, designed completely using VHDL.
- The components used for our version of a RISC microprocessor are

1. ALU(for add,NAND and compare) 
2. Register File-R0-R7
3. Memory-32B
4. Sign Extenders-SE6,SE9
5. Shift7
6. Priority Encoder
7. Miscellaneous Registers- T1,T2,T3,PEN,IR

- There are 38 control bits and 17 states(including reset state) in our design.
- The datapath and the hardware flowcharts have been provided as PDF files in repo.
- The top level entity is [up](https://github.com/sammy-87/EE-309-Project-1-multi-cycle-processor-IITB-RISC-/tree/master/uP). The design was verified using RTL simulation and Signal Tap Analyzer.

# Team Members:
- Pranil Joshi       (16D070008)
- Tanmay Patil       (16D070020)
- Anirudh Singhal    (16D070032)
- Sanyyam Khandelwal (16D070038)
- Kratvesh Pandey    (16D070048)
