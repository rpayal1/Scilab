clc
clear

T = linspace(1,500,100) // temprature

// Dulong petit law
for i = 1:length(T)
    Y_dp(i) = 1     // Y_dp stands for Cv/3R in case ofr dulong petit law
end
plot(T',Y_dp,"r")
ax= gca()
//ax.data_bounds = [0,0;800,1.1]
ax.data_bounds(:,2) = [0,1.1]
// einstein law
Te = 100 //in K
for i =1:length(T)
Y_e(i) = (((Te/T(i))^2)*exp(Te/T(i)))/((exp(Te/T(i))-1)^2)
end
plot(T',Y_e)
// debye law
T_d = 100
x = linspace(1,500,100)
function b =f(x)
b = ((x^4)*(exp(x)))/((exp(x)-1)^2)
endfunction
for i = 1:length(T)
    G(i) = T_d/T(i)
Y_d(i) =3*((T(i)/T_d)^3)*integrate('f(x)','x',0,G(i)) 
end
plot(T',Y_d)
