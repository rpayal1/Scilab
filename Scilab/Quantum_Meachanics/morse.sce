clc
clear
clf
function [V,vec,val]=mjalo(mu,D,alpha,r0)
n = 1000
h = 1973 // hcut given in MeV
m = mu*931.5e6 // mass of particle
const = (h^2/(2*m))
l1= 1d-10 // initial value of boundary
l2 = 2 // final value of boundary (in ang)
h = (l2 -l1)/(n-1)
b = -2
a =1
c = 1
r = linspace(l1,l2,n)
for i = 1:n
    rdash(i) = ((r(i)-r0)/r0)
end
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
//disp(K*const)
for i =1:n
    V(i,i) = (D*(exp(-2*alpha*rdash(i))-2*exp(-alpha*rdash(i))))
end
H = -(const*K)+V
//disp(V)
[vec,val] = spec(H)
eigenvalue = diag(val)
disp(eigenvalue(1))
disp(eigenvalue(2))
endfunction
r = linspace(1d-10,2,1000)
disp("for h2")
[V1,vec1,val1]=mjalo(0.50391,4.7446,1.44055,0.7416)
subplot(3,2,1)
plot(r',vec1(:,1),"r")
plot(r',vec1(:,2),"b")
ylabel("Energy")
xlabel("r")
legend("at ground state","at first excited state")
title("wave function for h2 molecule")
subplot(3,2,2)
plot(r',vec1(:,1).*vec1(:,1),"r")
plot(r',vec1(:,2).*vec1(:,2),"b")
ylabel("Probability Density")
xlabel("r")
legend("at ground state","at first excited state")
title("probability density for H2 molecule")
disp("for LiH ")
[V2,vec2,val2]=mjalo(0.8801,2.5152,1.7998,1.595)
subplot(3,2,3)
plot(r',vec2(:,1),"r")
plot(r',vec2(:,2),"b")
ylabel("Energy")
xlabel("r")
legend("at ground state","at first excited state")
title("wave function for LiH molecule")
subplot(3,2,4)
plot(r',vec2(:,1).*vec2(:,1),"r")
plot(r',vec2(:,2).*vec2(:,2),"b")
ylabel("Probability Density")
xlabel("r")
legend("at ground state","at first excited state")
title("probability density  for LiH molecule")

disp("for CO ")
[V3,vec3,val3]=mjalo(0.8606,11.225,2.5944,1.128)
subplot(3,2,5)
plot(r',vec3(:,1),"r")
plot(r',vec3(:,2),"b")
ylabel("Energy")
xlabel("r")
legend("at ground state","at first excited state")
title("wave function for CO molecule")
subplot(3,2,6)
plot(r',vec3(:,1).*vec3(:,1),"r")
plot(r',vec3(:,2).*vec3(:,2),"b")
ylabel("Probability Density")
xlabel("r")
legend("at ground state","at first excited state")
title("probability density  for CO molecule")
show_window(1)
subplot(3,1,1)
plot(r',V1,"r")
title("Potential for h2 molecule")
subplot(3,1,2)
plot(r',V2,"r")
title("Potential for LiH molecule")
subplot(3,1,3)
plot(r',V3,"r")
title("Potential for CO molecule")
