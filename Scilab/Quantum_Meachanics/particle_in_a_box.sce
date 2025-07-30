clc
clear
hc = 1973 // eV ang   {this is hcutc}
m = 0.511*10^6 // in MeV/c^2
e= 6*10^(-19) // in eV
V= 0 // potential inside the well
l1= 0 // initial value of boundary
l2 = 1 // final value of boundary (in ang)
n = input("value of n")
h = (l2 -l1)/(n-1)
b = -2
a =1
c = 1
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
K=(1/h^2)*A

//disp(K)
// generating hemiltonian matriux
H = -hc^2/(2*m)*K

//disp(H,"Hamiltonian matrix obtained is")
// finding eigen values and eigen vectors
[c,d]= spec(H)
D = diag(d)
//disp("values of psi ",c)
//disp("corresponding energy is",D)
xi1 = c(:,1)
disp(xi1,"values of psi 1 ")
disp(D(1),"corresponding energy is")
xi2 = c(:,2)
disp(xi2,"values of psi 2 ")
disp(D(2),"corresponding energy is")
xin = c(:,10)
disp(xin,"values of psi 10 ")
disp(D(10),"corresponding energy is")
// plotting eigen vectors
[e,f]=size(K)
g= linspace(0,1,n)
subplot(2,2,1)
plot(g',xi1)
title("psi1")
subplot(2,2,2)
plot(g',xi2)
title("psi2")
subplot(2,2,3)
plot(g',xin)
title("psi10")
conj1 = conj(xi1)
xi1sq = xi1.*conj1
for i =1 : length(xi1sq)/4
    xi1sqquat(i)=xi1sq(i)
    gdash(i) = g(i)
end 
disp(sum(xi1sqquat),"probability of finding electron in 1 to l/4")
for i= length(xi1sq)/4 :3*length(xi1sq)/4
    xi1sqquat(i)=xi1sq(i)
    gdash(i) = g(i)
end 
disp(sum(xi1sqquat),"probability of finding electron in 1/4 to 3/4")
subplot(2,2,4)
plot(g',xi1sq)
title("probability curve is")
