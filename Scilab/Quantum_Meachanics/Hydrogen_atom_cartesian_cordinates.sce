clc
clear
n= 500// number of iterations
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
////disp(K)
for i=1:n //Potential Energy
V(i,i)= -(e*e)/r(i)
//disp(v(i))
end
E = K+V

[v,e]=spec(E)
//disp(E)
disp(e(2,2),'Ist Eigenvalue')
disp(e(3,3),'IInd Eigenvalue')
subplot(2,1,1)
plot(r',v(:,2),'bl')
plot(r',v(:,3),'r')
title("Wave function")
xlabel("X (in angstrom)")
ylabel("Energy level in eV")
subplot(2,1,2)
plot(r',v(:,2).*v(:,2),'bl')
plot(r',v(:,3).*v(:,3),'r')
title("Proability density")
xlabel("X (in angstrom)")
ylabel("Probability density")
