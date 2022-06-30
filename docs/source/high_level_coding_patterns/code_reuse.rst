Reusing VHDL source code
========================

The most important feature of high level coding patterns is the possibility for code reuse. This means that we can design incrementally. By designing incrementally we can have many small modules that form more complex features. This way we can use only a small part of a functionality.

Packages
-------

In vhdl the way we share code is by putting it into packages. Packages can have type definitions for arrays and records as well as functions and procedures and constants. Packages can also reference further packages, thus functions can be built as part of other functions.

In hardware this means that we are chaining together logic without registers. This is a fantastic feature since we can trivially pipeline a chain of functions by just reigistering the function outputs. 
