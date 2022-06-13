Automatic code timing with handshake interfaces
===============================================

The way we allow any code to be allow to be changed is by using a handshake mechanism.

Backpressure instead of timing
------------------------------

The huge benefit of using the concept of backpressure, or handshake is that the code it self manages timing relation between  modules. This also makes writing tests exceptionally simple.

Adding backpressure to pipelined function
-----------------------------------------

Adding backpressure to sequential or blocking function
------------------------------------------------------

Adding ability to do backpressure to a IP module
------------------------------------------------
