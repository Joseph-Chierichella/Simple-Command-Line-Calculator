// This is the main file for this project, below shows the steps of how
// to compile and start using the calculator!

  // gfortran -c addition.f95 -o addition.o
  // gfortran -c subtraction.f95 -o subtraction.o
  // gfortran -c multiplication.f95 -o multiplication.o
  // gfortran -c division.f95 -o division.o
  // gcc main.c addition.o subtraction.o multiplication.o division.o -lgfortran -o calc

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

extern void addition(double add1,double add2,double *add3);
extern void subtraction(double sub1,double sub2,double *add3);
extern void multiplication(double tim1,double tim2,double *tim3);
extern void division(double div1,double div2,double *div3);

int main() {
  int i = 0;
  while (i == 0) {
    char input[50];
    double num1, num2, num3;
    char operation;
    printf("!:~$ ");
    fgets(input, sizeof(input), stdin);
    if (sscanf(input, "%lf %c %lf", &num1, &operation, &num2) == 3) {
      if (operation == '+') {
        addition(num1,num2,&num3);
        printf("\n");
      }
      else if (operation == '-') {
        subtraction(num1,num2,&num3);
        printf("\n");
      }
      else if (operation == '*' || operation == 'X' || operation == 'x') {
        multiplication(num1,num2,&num3);
        printf("\n");
      }
      else if (operation == '/') {
        division(num1,num2,&num3);
        printf("\n");
      }
    }
    else if (strcmp(input, "quit\n") == 0 || strcmp(input, "exit\n") == 0) {
      printf("Quiting the program!\n");
      i++;
      exit(0);
    }
    
    
  }
  return 0;
}
