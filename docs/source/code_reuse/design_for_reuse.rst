Design code to be reused
========================

Reusing code is the single most important design goal that our codebase should have. Reuse means building new code from existing or equivalently designing incrementally. Reuse leads to less errors as we are using blocks of code that already have been used somewhere else. This is also the only way to create modularity, by using a piece of code in multiple different ways. 

To do this we need to design code such that it can be modified. 

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
