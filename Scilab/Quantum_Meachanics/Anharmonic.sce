clc
clear
clf
function [vec,val,V]=mjalo(B)

n = 1000
h = 197.3 // hcut given in MeV
m = 940 // mass of particle

k = 100 // 100 MeVfm-2
const = (h^2/(2*m))

l1= -5 // initial value of boundary
l2 = 5 // final value of boundary (in ang)
h = (l2 -l1)/(n-1)
b = -2
a =1
c = 1
r = linspace(l1,l2,n)
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

for i =1:n
    V(i,i) = (0.5)*k*r(i)^2 + (1/3)*B*r(i)^3
end
//disp(V,"V")
H = -(const*K)+V
[vec,val] = spec(H)
eigenvalue = diag(val)
disp(eigenvalue(1))
disp(eigenvalue(2))

endfunction
r = linspace(-5,5,1000)
//disp("at B= 0")
//[vec1,val1,v1]=mjalo(0)
//subplot(4,2,1)
//plot(r',vec1(:,1),'bl')
//plot(r',vec1(:,2),'r')
//ylabel("Energy")
//xlabel("r")
//legend("at ground state","at first excited state")
//title("wave function at b = 0")
//subplot(4,2,2)
//plot(r',vec1(:,1).*vec1(:,1),'bl')
//plot(r',vec1(:,2).*vec1(:,2),'r')
//ylabel("Probability Density")
//xlabel("r")
//legend("at ground state","at first excited state")
//title("probability density at b=0")
//disp("at B= 10")
[vec2,val2,v2]=mjalo(10)
//subplot(4,2,3)
plot(r',vec2(:,1),'bl')
plot(r',vec2(:,2),'r')
ylabel("Energy")
xlabel("r")
title("wave function at b = 10")
//legend("at ground state","at first excited state")
//subplot(4,2,4)
//plot(r',vec2(:,1).*vec2(:,1),'bl')
//plot(r',vec2(:,2).*vec2(:,2),'r')
//ylabel("Probability Density")
//xlabel("r")
//legend("at ground state","at first excited state")
//title("probability density at b = 10")
//
//disp("at B= 20")
//[vec3,val3,v3]=mjalo(20)
//subplot(4,2,5)
//plot(r',vec3(:,1),'bl') 
//plot(r',vec3(:,2),'r')
//ylabel("Energy")
//xlabel("r")
//legend("at ground state","at first excited state")
//title("wave function at b = 20")
//subplot(4,2,6)
//plot(r',vec3(:,1).*vec3(:,1),'bl')
//plot(r',vec3(:,2).*vec3(:,2),'r')
//ylabel("Probability Density")
//xlabel("r")
//legend("at ground state","at first excited state")
//title("probability density at b = 20")
//disp("at B= 30")
//[vec4,val4,v4]=mjalo(30)
//subplot(4,2,7)
//plot(r',vec4(:,1),'bl')
//plot(r',vec4(:,2),'r')
//ylabel("Energy")
//xlabel("r")
//legend("at ground state","at first excited state")
//title("wave function at b = 30")
//subplot(4,2,8)
//plot(r',vec4(:,1).*vec4(:,1),'bl')
//plot(r',vec4(:,2).*vec4(:,2),'r')
//ylabel("Probability Density")
//xlabel("r")
//legend("at ground state","at first excited state")
//title("probability density at b = 30")
//
//
