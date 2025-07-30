clear 
clc
p = (input("value of p"))
n= 500 // number of iterations
e = 3.795   // (evA)^(.5)
//factor = -3.81 // value of -hcut^2/2m
factor =(-1973*1973)/(2*0.511e6)
l2= 6  // in ang
l1 =1e-10 //  tends to zero (in ang)
r = linspace(1e-10,6,n)
h = (l2 -l1)/(n-1)
b=-2,a =1,c=1
    A = zeros(n,n)
for i=1:n
    A(i,i) =b
end
for i = 1:n-1
    A(i,i+1)= a
end
for i = 2:n
    A(i,i-1)= c
end
K = factor*A/(h^2)
disp(factor)
//disp(K)
for i=1:n //Potential Energy
V(i,i)= -((e*e)/r(i))*exp(-r(i)/p)
//disp(v(i))
end
E = K+V
[v,e]=spec(E)
disp(p,"for p =")
disp(e(2,2),'Ist Eigenvalue')
disp(e(3,3),'IInd Eigenvalue')
subplot(2,1,1)
plot(r',v(:,2).*v(:,2),'bl')
plot(r',v(:,3).*v(:,3),'r')
legend("PD at gr sate","PD at 1st excited sate")
title("Probbability density")
xlabel("distance")
ylabel("Probability density")
subplot(2,1,2)
plot(r',v(:,2),'bl')
plot(r',v(:,3),'r')
legend("Wavefunction at gr sate","Wavefunction at 1st excited sate")
title("Wavefunction")
xlabel("distance")
ylabel("Energy Level")
