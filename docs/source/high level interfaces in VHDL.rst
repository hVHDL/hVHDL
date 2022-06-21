high level interfaces in VHDL
=============================

.. autosummary::
   :toctree: generated

Records as abstract data types in VHDL
--------------------------------------

The main abstract data type in VHDL is called a record. Records are aggregates of any other types. Thus they can be made from anything you can make a signal from. This includes all types like arrays of records.

.. literalinclude:: ../vhdl_sources/multiplier_example_pkg.vhd
   :caption: example of a VHDL object record where all registers needed for a functionality are in one record
   :language: vhdl
   
This record object is then added to a project by simply adding a signal of this record type

Subroutines
-----------

The magic happens when we use inout as the access type to the signal that is input to the module. With the inout declaration, we can put any multi cycle logic into a record.

Creating a simple interface
---------------------------

another thing

Adding an abstract interface to any IP module
=============================================

We also should instantiate any IP modules that do not have an interface inside a wrapper layer
test webhook
