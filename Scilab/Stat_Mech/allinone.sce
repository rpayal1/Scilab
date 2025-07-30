clc
clear
// x stands for lambada
t=400
hc = 1240
k = 8.61*(10)^-5



x = linspace(1,30000,1000)
// planck's law
for i = 1:length(x)
    y(i) = (8*%pi*hc)/((x(i)^5)*(exp(hc/(x(i)*k*t))-1))
end
//plot by plank's law
plot(x',y,'g')

xlabel("$\bold\lambda$")
xgrid


//rayleigh jeans law 
x = linspace(12000,30000,1000)
for i = 1:length(x)
    y(i) = (8*%pi*k*t)/(x(i)^4)
end
plot(x',y,'r')



//weins law


x = linspace(1,30000,1000)
for i = 1:length(x)
    y(i) = (8*%pi*hc)/(x(i)^5)*exp(-hc/(x(i)*k*t))
end
plot(x',y,'b')

