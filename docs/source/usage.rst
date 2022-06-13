Usage
=====

.. _installation:

Installation
------------

The repositories are developed as independently as possible as long as there is no need to repeat code. To add a repository to your project, use of submodules is recommended. To add the fixed point math library as submodule into your project, use

.. code-block:: console

   git submodule add -b main https://github.com/hlsVHDL/hlsVHDL_fixed_point_math
   
After this you can run the VUnit script to run all testbenches found in the module and save the simulations into gtkwave wave format using

.. code-block:: console

   python vunit_run.py -p 8 --gtkwave-fmt ghw

Using the sources in your project
---------------------------------

After the module is added to your project, you need to add the sources you need into your project and optionally specify to which VHDL library the sources are added. All references to packages in the repositories are made without specifying the library using work.package.all so there is no need to have a special library for the code.

To retrieve a list of random ingredients,
you can use the ``lumache.get_random_ingredients()`` function:

.. autofunction:: lumache.get_random_ingredients

The ``kind`` parameter should be either ``"meat"``, ``"fish"``,
or ``"veggies"``. Otherwise, :py:func:`lumache.get_random_ingredients`
will raise an exception.

.. autoexception:: lumache.InvalidKindError

For example:

>>> import lumache
>>> lumache.get_random_ingredients()
['shells', 'gorgonzola', 'parsley']

