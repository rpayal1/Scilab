clc
clear 
n= 500 // number of iterations
e = 3.795   // (evA)^(.5)
factor = -3.81 // value of -hcut^2/2m
l2= 6  // in ang
l1 =1*e-16 //  tends to zero (in ang)
r = linspace(1*e-16,6,n)
h = (l2 -l1)/(n-1)
function A=tri(a,b,c)
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
endfunction
K1 = tri(1,0,-1)
H1 = (1/(2*h))*K1 
K2 = tri(1,-2,1)
H2 = (1/(h^2))*K2
pe =zeros(n,n)
for i=1:n //Potential Energy
pe(i,i)= -e*e/r(i)
end
val= zeros(n,n)
for i=1:n //2uponr
val(i,i)= 2/r(i)
end

H = factor*(val*H1+H2) + pe    

//disp(H)
// finding eigen values and eigen vectors
[c,d]= spec(H)
//disp("eigen vector is",c)
disp("eigen values are",diag(d))

plot(r,c(:,2))

