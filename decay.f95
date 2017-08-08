program decay
  real :: c_inic=100  !concentração inicial
  real :: conc(0:3600) !vetor de tempo
  real :: dec  !taxa de decaimento
  real :: time(0:3600)

  !c_inic = 100
  dec = 0.0001
  conc(0) = c_inic
  time(0) = 0
  open(1,file='decay_out.txt',form='formatted',status='unknown')
  write(1,*) time(0),conc(0)
  do k = 1,3600
    conc(k)  = conc(k-1)-dec
    time(k) = k
    write(1,*) time(k),conc(k)
  end do


end program decay