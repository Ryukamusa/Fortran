!gfortran -o study study.f95 && ./study
!“>” (greater than), “<” (less than), “==” (equal to), “>=” (greater or equal), “<=” (less or equal), and “/=”(not equal)

PROGRAM teste

REAL :: eta(0:nx+1) ! sea-level elevation
REAL :: w(0:nz+1,0:nx+1) ! vertical velocity

! write(6,*)"Hello world!"
DO k = 0,nx+1
  IF(k > 50) THEN
    eta(k) = 1.0
  ELSE
    eta(k) = 0.0
  END IF
END DO

! open(10, file = ‘Ex1a.txt’, form = ‘formatted’, status = ‘unknown’)

END PROGRAM teste