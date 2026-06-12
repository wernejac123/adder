A FORTRAN 77 program simulating a 4 bit adder logic gates
binary numbers are entered as characters starting at bit 1 ( low
bit). The output is LOGICAL  so T means 1 and F means 0. Output is
4 bits (read answer top down). S is sum and C is Carry. the answer
is bits: c s(1) s(2) s(3) s(4).

compile
linux:
   gfortran -std=legacy -g -Wall -Werror -Wextra -Wconversion -fsanitize=address in.f cvt.f adder.f -o adder

FreeDOS:
   C:\DEVEL\WATCOMF\OWSETENV.BAT
   WFL *.f

   I included a screenshot of the digital simulation I made in Qucs-s, which is whatthis FORTRAN program is simulating. 
