Fixed point math
================

Fixed point math library allows high level access to basic mathematical functions. These include Multiplier, divider, sine and cosine, abc to dq and dq to abc transforms, PI controller and a first order filter. The modules are found at https://github.com/hVHDL/hVHDL_math_library



Multiplier
----------

The multiplier allows radix multiplication. The significance here is that if we want to multiply 10000 with 1.5, we can do this by multiplying it first with 3 and then dividing by 2. We can also multiply by 6 and divide by 4, 12 and divide by 8 and so on. FPGAs have hardware for integer multiplication and division by 2 simply means shift bits left by 2. The multiplier module does this with function and procedure calls. 

To add multiplier into your design you need to include the multiplier package and a word length configuration in the same library. The configuration package allows changing the required word lengths as well as number of pipeline cycles if needed. There are ready made configuration packages for 18x18, 22x22 and 26x26 bit multipliers.

The shift and rounding logic is in the get_multiplier_result function. 

.. literalinclude:: ../vhdl_sources/multiplier_example.vhd
   :caption: example of using a single multiplier for several multiplications
   :language: vhdl

Divider
-------

.. literalinclude:: ../vhdl_sources/header_example.vhd
   :caption: High level code example
   :language: vhdl


Divider divides

Sine and Cosine
---------------

PI controller
---------------

synchronous coordinate transforms
---------------------------------
