SUBROUTINE addition(add1,add2,add3) BIND(C , NAME = "addition")
  USE ISO_C_BINDING
  IMPLICIT NONE
  REAL (C_DOUBLE) , VALUE , INTENT(IN) :: add1 , add2
  REAL (C_DOUBLE) , INTENT(OUT) :: add3
  add3 = add1 + add2
  PRINT *, add3
END SUBROUTINE addition
