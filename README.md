# dnlo

A solver for Doubly-NonLinear Obstacle problems.

This project is an extract of my book (https://github.com/bueler/p4pdes).  I have decided not to include this content, but only present the classical Laplacian obstacle problem in Chapter 12.  By copying into here history is lost but see also https://github.com/bueler/sia-fve and its published version.

Someday this could be a paper.  Some TODOs are:
  * add an exact solution for a porous medium, zero obstacle case; I can probably make do with three exact solutions, namely one for classical obstacle, one for zero-obstacle porous medium (which will have lower regularity), and third the usual ice sheet steady profile
  * test GMG and GAMG solvers
  * try to add smoothing based on NGS, and/or try to implement PFAS


