Using libraries and packages to abstract VHDL
=============================================

.. autosummary::
   :toctree: generated

Libraries in VHDL play a special role. Together with the abstracted interfaces libraries allow us to abstract code even further. With libraries we can change the insides of a record. This way we can change both the data and the interface with which the data is being accessed.

We commonly add the same sources to multiple libraries when we are reusing code. This is because this allows us to change things inside code like functions, procedures and records.

A few examples of this is for example using lookup tables. Here we have an example of a lookup table generator.

.. literalinclude:: ../vhdl_sources/sine_rom_example_pkg.vhd
   :caption: example of a VHDL object record where all registers needed for a functionality are in one record
   :language: vhdl

.. literalinclude:: ../vhdl_sources/sine_lut_generator_pkg.vhd
   :caption: example of a VHDL object record where all registers needed for a functionality are in one record
   :language: vhdl

.. literalinclude:: ../vhdl_sources/sine_lut_generator_w_harmonics_pkg.vhd
   :caption: example of a VHDL object record where all registers needed for a functionality are in one record
   :language: vhdl

The specialty of use work.package
---------------------------------

The mechanism in VHDL that allows us to do this is the work libray. Referencing package through work library allows us to leave the library undefined. Thus we can use this as an interface for the insides of the records and functions. By compiling a module together with a package which defines some functions and records, we can change the package which we compile it with and thus change the implementation.

This allows us to create abstract interfaces that only define a behavior, like a function is called with an integer and when it is ready it returns an integer. We do not need know if the module uses one clock cycle or multiple clock cyles.
