C FORTRAN 77 PROGRAM SIMULATE 4 BIT ADDER

      PROGRAM ADDER
      IMPLICIT NONE
      CHARACTER CA(4), CB(4)
      LOGICAL A(4), B(4), C(4), S(4), X, Y, Y2
C X,Y,Y2 TEMP VARIABLES
      INTEGER N,I
      PARAMETER(N=4)

C INPUT
      WRITE(*,*) 'A'
      CALL IN(CA,N)
      CALL CVT(CA,A,N)

      WRITE(*,*) 
      WRITE(*,*) 'B'
      CALL IN(CB,4)
      CALL CVT(CB,B,N)

C S(1) AND C(1)
      S(1)=A(1) .XOR. B(1)
      C(1)=A(1) .AND. B(1)
C S(2) AND C(2)
      X=A(2) .XOR. B(2)
      Y=A(2) .AND. B(2)
      S(2) = C(1) .XOR. X
      Y2 = C(1) .AND. X
      C(2) = Y2 .OR. Y
C S(3) AND C(3)
      X = A(3) .XOR. B(3)
      Y = A(3) .AND. B(3)
      S(3) = C(2) .XOR. X
      Y2 = C(2) .AND. X
      C(3) = Y .OR. Y2

C S(4) AND C(4)
      X = A(4) .XOR. B(4)
      Y = A(4) .AND. B(4)
      S(4) = C(3) .XOR. X
      Y2 = C(3) .AND. X
      C(4) = Y .OR. Y2

C PRINT RESULT
      WRITE(*,*) 'S(1)', S(1), 'C(1)', C(1)
      DO 30 I=1,N
       WRITE(*,*) 'S[',I,']:',S(I)
 30   CONTINUE
      WRITE(*,*) 'C:', C(4)

      STOP
      END
