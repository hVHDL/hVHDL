Usage
=====

.. _installation:

Installation
------------

The repositories are developed as independently as possible as long as there is no need to repeat code. To add a repository to your project, use of submodules is recommended. To add the fixed point math library as submodule into your project, use

.. code-block:: console

   git submodule add -b main https://github.com/hlsVHDL/hlsVHDL_fixed_point_math

Creating recipes
----------------

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

