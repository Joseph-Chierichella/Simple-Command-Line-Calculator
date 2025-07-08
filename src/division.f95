SUBROUTINE division(div1,div2,div3) BIND(C , NAME = "division")
  USE ISO_C_BINDING
  IMPLICIT NONE
  REAL (C_DOUBLE) , VALUE , INTENT (IN) :: div1 , div2
  REAL (C_DOUBLE) , INTENT(OUT) :: div3
  IF (div2 == 0) THEN
    PRINT *, "Can't divide by 0"
  ELSE
    div3 = div1 / div2
    PRINT *, div3
  END IF
END SUBROUTINE division
