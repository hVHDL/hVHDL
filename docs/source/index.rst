Welcome to high level synthesizable VHDL project (hVHDL) documentation!
=======================================================================

**hVHDL** is a set of coding patterns for standard VHDL that are designed to greatly increase abstraction level of VHDL source code using standard synthesis tools. The coding patterns are designed to support incremental design, testing and development of the VHDL source code. All code has been tested with an FPGA using Xilinx Vivado, ISE, Intel Quartus or Efinix Efinity tools.

The key idea behind the patterns are 1) all code should be shareable 2) all code should be changeable when needed.
To accomplish these two almost opposite ideas we have designed specific patterns for coding 
   - all functionality should be behind abstract interfaces
   - all code modules should have the possibility to exert backpressure - there should be no need to time code
   - Use any IP from any vendor, add abstract interface if not already given by vendor 

Check out the :doc:`usage` section for further information, including
how to :ref:`installation` the project. Also :ref:`recordobjects`

.. note::

   This project is under active development.

Contents
--------

.. toctree::
   usage
   api
   high level interfaces in VHDL
   Automatic code timing with handshake interface
   Using libraries in VHDL
