example of a high level vhdl use
================================

There is an example project that includes build scripts for building the project using Efinix Efinity, Lattice Diamond, Intel Quartus, Xilinx ISE/PlanAhead and Xilinx Vivado.

The project can be used as an example how to include and use hVHDL sources to your own project. The project includes 2 modules that calculate in fixed point a sine wave and adds a noise component to it. Then this reference signal is filtered using a bandpass filter.

There is also a floating point implementation of the filter found in own module.

There is minimal internal bus implementation which allows access to the registers from uart. 


see example here :
https://github.com/hVHDL/hVHDL_example_project
