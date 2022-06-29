Fixed point math
================

Fixed point math library allows high level access to basic mathematical functions. These include Multiplier, divider, sine and cosine, abc to dq and dq to abc transforms, PI controller and a first order filter. The modules are found at https://github.com/hVHDL/hVHDL_math_library



Multiplier
----------

The multiplier allows radix multiplication. The significance here is that if we want to multiply 10000 with 1.5, we can do this by multiplying it first with 3 and then dividing by 2. We can also multiply by 6 and divide by 4, 12 and divide by 8 and so on. FPGAs have hardware for integer multiplication and division by 2 simply means shift bits left by 2. The multiplier module does this with function and procedure calls. 

To add multiplier into your design you need to include the multiplier package and a word length configuration in the same library. The configuration package allows changing the required word lengths as well as number of pipeline cycles if needed. There are ready made configuration packages for 18x18, 22x22 and 26x26 bit multipliers.

The shift and rounding logic is in the get_multiplier_result function. 

.. literalinclude:: fixed_point_math_vhdl_sources/multiplier_example.vhd
   :caption: example of using a single multiplier for several multiplications
   :language: vhdl

Divider
-------

In addition to the sources in the division folder, divider also requires a multiplier. The divider is based on inverting the divider and then multiplying the result. The divider has a range reduction function which allows the inverting and resulting multiplication to work with numbers in [0.5, 1] range. A more thorough explanation of the divider is given in https://hardwaredescriptions.com/conquer-the-divide/

.. literalinclude:: fixed_point_math_vhdl_sources/divider_example.vhd
   :caption: example of using divider
   :language: vhdl

Sine and Cosine
---------------

PI controller
---------------

synchronous coordinate transforms
---------------------------------
