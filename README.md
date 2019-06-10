# dnlo

A solver for Doubly-NonLinear Obstacle problems.

## build the code

To build you need a functioning [PETSc](https://www.mcs.anl.gov/petsc/) installation.  Then do

        $ make dnlo
        $ make test

## origin

This project is an extract from my book draft (https://github.com/bueler/p4pdes) which I decided not to include.  (Thus Chapter 12 only presents the classical Laplacian obstacle problem.)  By copying files here, from p4pdes/c/ch12/ and from p4pdes-book/chaps/obstacle.tex, git history is lost.  See also https://github.com/bueler/sia-fve and its published version.

Some day this could be a paper, using introductory text already in `doc/`.

## TODO

  * add an exact solution for a porous medium, zero obstacle case; I can probably make do with three exact solutions, namely one for classical obstacle, one for zero-obstacle porous medium (which will have lower regularity), and third the usual ice sheet steady profile
  * test GMG and GAMG solvers
  * try to add smoothing based on NGS, and/or try to implement PFAS
  * goal is to establish optimality across a range of doubly-nonlinear cases


