clc
clear
n = 1000
T = linspace(1,5000,1000)
k = 8.61*10^(-5)
E1 = 0.00
E2 = 0.01
E3 = 0.05
//

h = T(2)-T(1)

//
for i = 1 :n
    z(i)= exp(-(E1+E1)/(k*T(i)))+exp(-(E2+E2)/(k*T(i)))+ exp(-(E3+E3)/(k*T(i)))+exp(-(E1+E2)/(k*T(i)))+exp(-(E1+E3)/(k*T(i)))+ exp(-(E3+E2)/(k*T(i)))
    F(i)=-k*T(i)*log(z(i))
end
// for derivative
A = zeros(n,n)
for j =1:n
    A(j,j)=0
end
for j = 2:n
    A(j,j-1)= -1
end
for j = 1:n-1
    A(j,j+1)= 1
end
K =A/(2*h)
preS = -K*F
for i =1:n-2
    S(i) =preS(i+1)
    Tnew(i) = T(i+1)
end

////////
for i =1:n
    preU(i) = F(i)+T(i)*preS(i)
end

preCV = K*preU


for i =1:n-2
    S(i) =preS(i+1)
    Tnew(i) = T(i+1)
    U(i)= preU(i+1)
    CV(i) = preCV(i+1)
end

scf(1)
subplot(2,2,1)
plot(T,z)
title("partition fn") 
subplot(2,2,2)
plot(T,F)
title("free energy")
subplot(2,2,3)
plot(Tnew,S)
title("entropy")
subplot(2,2,4)
plot(Tnew,U)
title("internal energy")


scf(2)

plot(Tnew,CV)
title("specific heat")
zoom_rect([2,0,999,0.0001])
