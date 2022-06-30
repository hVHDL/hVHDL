Welcome to high level synthesizable VHDL project (hVHDL) documentation!
=======================================================================

.. note::

   This project is under active development.


.. literalinclude:: ../vhdl_sources/header_example.vhd
   :caption: High level code example
   :language: vhdl

**hVHDL** is a set of coding patterns for standard VHDL that are designed manage complexity of digital system design in VHDL. Complexity is managed by dividing large systems into small individual pieces that can be designed, tested and updated in isolation from each other. The coding patterns allow us to support incremental design, testing and development of the VHDL source code and to increase the level of abstraction. All code has been tested with an FPGA using Xilinx Vivado, ISE, Intel Quartus or Efinix Efinity tools and simulated with GHDL.

https://github.com/hVHDL

.. toctree::
    :caption: About
    :hidden:

    about/what_is_hvhdl.rst
    about/usage
    about/module_repository_structure

.. toctree::
    :caption: High level VHDL modules
    :hidden:

    hvhdl_repositories/fixed_point_math_repository
    hvhdl_repositories/floating_point
    hvhdl_repositories/memory_module
    hvhdl_repositories/fpga_interconnect
    hvhdl_repositories/dynamic_verification
    hvhdl_repositories/gigabit_ethernet
    hvhdl_repositories/uart

.. toctree::
    :caption: Examples
    :hidden:

    example of a high level vhdl use

.. toctree::
    :caption: Interfaces
    :hidden:

    interfaces/high_level_interfaces_in_VHDL 
    interfaces/Using libraries in VHDL
    interfaces/Automatic code timing with handshake interface
    interfaces/real_numbers_in_synthesizable_VHDL.rst

.. toctree::
    :caption: High Level Coding Patterns
    :hidden:

    high_level_coding_patterns/code_reuse
    high_level_coding_patterns/high level coding patterns in VHDL
    high_level_coding_patterns/sharing_hw_resources

.. toctree::
    :caption: Numerical methods with VHDL
    :hidden:

    numerical_methods/solving_differential_equations
