program wave
    
    real,parameter :: A0=1.0  !amplitude máxima de ambas as ondas
    real,parameter :: T1=60.0  !período da onda principal
    real,parameter :: lambd1=10.0  !período da onda principal
    real :: time(0:6000) !tempo de teste
    real :: O1(0:6000) !onda estacionária
    real :: O2(0:6000) !onda que altera
    real :: A(0:6000) !onda somada
    real :: x(0:6000)
    
    A(0)=A0*(sin(0))
    O1(0)= sin(0)
    O2(0)= sin(0)
    open(1,file='wave_1.txt',form='formatted',status='unknown')
    write(1,*) time(0),A(0),O1(0),O2(0)
    do k=1,6000
      A(k)=A0*(sin((100/lambd1)-(k/T1))+sin((100/100)-(k/50)))
      O1(k) = A0*sin((100/lambd1)-(k/T1))
      O2(k) = A0*sin((100/100)-(k/50))
      time(k)=time(k-1)+1
      write(1,*) time(k),A(k),O1(k),O2(k)
    end do
end program wave