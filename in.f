C FORTRAN 77 SUBROUTINE GET N BYTE CHARACTER ARRAY
      SUBROUTINE IN(A, N)
      IMPLICIT NONE
      CHARACTER A(*)
      INTEGER N,I

      DO 10 I=1,N
5     WRITE(*,*) I,':'
      READ(*,*) A(I)
      IF((A(I) .NE. '0') .AND. (A(I) .NE. '1')) THEN
       WRITE(*,*) 'NOT A VALID BOOLEAN NUMBER.'
       GOTO 5
      ENDIF
10    CONTINUE

      RETURN
      END
