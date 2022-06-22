Sharing hardware resources
==========================

There are many different resources that need to be shared accross designs like memories, multiplier, communication lines etc. 

Sharing hw resouces inside a procedure
--------------------------------------

This is exceptionally simple to do. Due to the created interfaces, we can simply call the same request functionality from a created object as many times as required.

.. literalinclude:: ../vhdl_sources/bus_pattern.vhd
   :caption: example of using a single multiplier for several multiplications
   :language: vhdl

Sharing hardware accross processes with a bus pattern
-----------------------------------------------------

When we reuse hardware accross processes, we need to create a way to access the same resource from two places. VHDL does not allow us to simply have two processes driving a signal, thus we need to create a way to do this. This is called a bus pattern. The idea is very simple, just OR/AND together the input record signal of a port signal. We do need to use three records, the two that are combined as the input and one for the output. However with this combined bus, we now can access the data from two processes.

This simple way of creating buses allows us to access a shared resource from multiple processes thus gives the possibility for accessing shared resouce

.. literalinclude:: ../vhdl_sources/bus_pattern.vhd
   :caption: example of a bus pattern
   :language: vhdl
