# Simple-Command-Line-Calculator
This is a simple calculator I made on my free time. It is nothing crazy, but it took a long time to make (about 4 hours). I made this in C and Fortran. If you know any of those lauguages you can contribute to this project!

# Installation
In order to install you must have the gcc and gfortran compiler.
  
``` bash
gfortran -c addition.f95 -o addition.o
gfortran -c subtraction.f95 -o subtraction.o
gfortran -c multiplication.f95 -o multiplication.o
gfortran -c division.f95 -o division.o
gcc main.c addition.o subtraction.o multiplication.o division.o -lgfortran -o calc
```
