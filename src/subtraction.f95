SUBROUTINE subtraction(sub1,sub2,sub3) BIND(C , NAME = "subtraction")
  USE ISO_C_BINDING
  IMPLICIT NONE
  REAL (C_DOUBLE) , VALUE , INTENT(IN) :: sub1 , sub2
  REAL (C_DOUBLE) , INTENT(OUT) :: sub3
  sub3 = sub1 - sub2
  PRINT *, sub3
END SUBROUTINE subtraction
