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
   
This record object is then added to a project by simply adding a signal of this record type. Since the entire functionality of a multiplier is encapsulated in this one signal of record type, we only need to instantiate a signal of this multiplier_record type.

Subroutines
-----------

The magic happens when we use inout as the access type to the signal that is input to the module. With the inout declaration, we can put any multi cycle logic into a record.

.. literalinclude:: ../vhdl_sources/multiplier_subroutine_example_pkg.vhd
   :caption: example of a VHDL subroutine interface
   :language: vhdl
   

Using a simple interface
------------------------

The way we use these high level objects is through the subroutine interface. These interfaces are used with the signal of object record type as the argument. This way all of the specifics of the code remain in one place and therefore any changes in the code are also propagated to everywhere the code is used. Because of this we can modify code inside the abstracted interface and changes are propagated everywhere the code is being used.


.. image:: ../figures/test_figure.PNG
   :caption: test a caption

Adding an abstract interface to any IP module
=============================================

We also should instantiate any IP modules that do not have an interface inside a wrapper layer
