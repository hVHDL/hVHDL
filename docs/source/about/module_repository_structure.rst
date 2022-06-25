Module Repository Structure
===========================

Repository structure with the modules follow the following pattern. The interfaces through which the modules are used will be in interface/ folder. This folder has test benches with functional tests for the interfaces. These interface tests are the specification for the behavior of the interfaces. The tests are very vague and lacking details by design as we want to have the possibility for changing any part of the code behind the interfaces. These tests are the only ones that are not ment to changed.

Since all modules are ment to be used as submodules, these interface tests allow us to use any version of the code as long as we use the code through these interfaces. These interfaces also allow us to develop the code in the submodules independently of the application code where they are used. This separation of module from the application is very important to allow code being reused and still retain the ability to modify it.

In VHDL abstract interfaces are created using functions and procedures as well as a record. In order to change the specifics of the code we can use records in records. The way we introduce modifiability to the insides of these records and subroutines we use packages and libraries. These are further explained in the page about :ref:`interfaces`. 

