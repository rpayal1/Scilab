clc
clear
hc = 1973 // eV ang   {this is hcutc}
m = 938.27208816*10^6 // in MeV/c^2
e= 6*10^(-19) // in eV
V= 0 // potential inside the well
l1= 5 // initial value of boundary
l2 = 10 // final value of boundary (in ang)
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

//disp(H)
// finding eigen values and eigen vectors
[c,d]= spec(H)
disp("eigen vector is",c)
disp("eigen values are",diag(d))
xi1 = c(:,1)
xi2 = c(:,2)
xin = c(:,10)
// plotting eigen vectors
[e,f]=size(K)
g= linspace(l1,l2,n)
//plot(g,xi1)
//plot(g,xi2)
//plot(g,xin)
conj1 = conj(xi1)
xi1sq = xi1.*conj1
//disp((xi1sq))
//plot(g',xi1sq)
for i =1 : length(xi1sq)/4
    xi1sqquat(i)=xi1sq(i)
    gdash(i) = g(i)
end 

//disp(sum(xi1sqquat)
