Usage
=====

Repository structure with the modules follow the same pattern. The interfaces through which the modules are used will be in interface/ folder. This folder has test benches with functional tests for the interfaces. These interface tests are the specification for the behavior of the interfaces. The tests are very vague and lacking details by design as we want to have the possibility for changing any part of the code behind the interfaces. These tests are the only ones that are not ment to changed.

Since all modules are ment to be used as submodules, these interface tests allow us to use any version of the code as long as we use the code through these interfaces. These interfaces also allow us to develop the code in the submodules independently of the application code where they are used. This separation of module from the application is very important to allow code being reused and still retain the ability to modify it.

In VHDL abstract interfaces are created using functions and procedures as well as a record. In order to change the specifics of the code we can use records in records. The way we introduce modifiability to the insides of these records and subroutines we use packages and libraries. These are further explained in the page about `interfaces`. 

.. _installation:

Installation
------------

The repositories are developed as independently as possible as long as there is no need to repeat code. To add a repository to your project just add them as a submodule. For example adding the fixed point math library as submodule into your project though console

.. code-block:: console

   git submodule add -b main https://github.com/hVHDL/hVHDL_math_library.git
   
After this you can run the VUnit script to run all testbenches found in the module and save the simulations into gtkwave wave format using

.. code-block:: console

   python vunit_run.py -p 8 --gtkwave-fmt ghw

Using the sources in your project
---------------------------------

After the module is added to your project, you need to add the sources you need into your project and optionally specify to which VHDL library the sources are added. All references to packages in the repositories are made without specifying the library using work.package.all so there is no need to have a special library for the code.
