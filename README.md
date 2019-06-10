# dnlo

A solver for Doubly-NonLinear Obstacle problems.

This project is an extract from my book draft (https://github.com/bueler/p4pdes).

I have decided not to include this content in the book.  Instead, in Chapter 12 I will only present the classical Laplacian obstacle problem.  By copying files into here, from p4pdes/c/ch12/ and from p4pdes-book/chaps/obstacle.tex, history is lost.  However, see also https://github.com/bueler/sia-fve and its published version.

Some day this could be a paper.  Some TODOs are:
  * move .tex documentation from p4pdes-book/chaps/obstacle.tex to a doc/ folder here
  * add an exact solution for a porous medium, zero obstacle case; I can probably make do with three exact solutions, namely one for classical obstacle, one for zero-obstacle porous medium (which will have lower regularity), and third the usual ice sheet steady profile
  * test GMG and GAMG solvers
  * try to add smoothing based on NGS, and/or try to implement PFAS
  * goal is to establish optimality across a range of doubly-nonlinear cases


