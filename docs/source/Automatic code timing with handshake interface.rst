Automatic code timing with handshake interfaces
===============================================

The way we allow any code to be allow to be changed is by using a handshake mechanism. This handshaking allows the application code to remain insensitive towards the timing of the code. This is very important, as without this feature the entire code is depending on there being no changes to the latencies and pipeline cycles. With this hanshaking we can only use the design through the behavioral description and we can change any part of a code and it's latency without it affecting the users.

Backpressure instead of timing
------------------------------

The huge benefit of using the concept of backpressure, or handshake is that the code it self manages timing relation between  modules. This is absolutely mandatory to allow for the code to be changed later. The is_ready function also makes writing tests exceptionally simple as we can easily combine together multiple modules with differing latencies.

Adding backpressure to sequential / blocking function
-----------------------------------------------------

Adding a ready functionality to a sequential module is done by assinging the output to a signal at the same time as the module is ready. For an easy example, we have a counter which flags a true for one clock cycle upon the count being ready. Since this ready flag is added in the same clock edge as the counter is incremented, the module is ready returns true at the same time as the counter is 0. Thus we can check for the module running by checking whether the counter is zero and checking that it is done by checking the boolean.

.. literalinclude:: ../vhdl_sources/backpressure_to_sequential_module.vhd
   :caption: example of a ready flag in a sequential module
   :language: vhdl
   

Adding backpressure to pipelined function
-----------------------------------------

The difference between a blocking function and pipelined function is that a pipelined function can be called every clock cycle. The module takes some number of clock cycles for the result to be ready, but we can add a new instruction to the pipeline every clock cycle. 


Adding ability to do backpressure to a IP module
------------------------------------------------

It is very common for an IP module not to have a ready-request interface. However we can add this to the IP module along with the inteface wrapper. A simple example of this is a RAM IP. This is pipelined function, that is we can request a new register from ram every clock cycle. 
