SUBROUTINE multiplication(tim1,tim2,tim3) BIND(C , NAME = "multiplication")
  USE ISO_C_BINDING
  IMPLICIT NONE
  REAL (C_DOUBLE) , VALUE , INTENT(IN) :: tim1 , tim2
  REAL (C_DOUBLE) , INTENT(OUT) :: tim3
  tim3 = tim1 * tim2
  PRINT *, tim3
END SUBROUTINE multiplication
