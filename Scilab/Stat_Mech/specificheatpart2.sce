clc
clear
T = linspace(1,500,100) // temprature
// debye law

function Y_d =dtdb(T_d)
x = linspace(1,500,100)
function b =f(x)
b = ((x^4)*(exp(x)))/((exp(x)-1)^2)
endfunction
for i = 1:length(T)
    G(i) = T_d/T(i)
Y_d(i) =3*((T(i)/T_d)^3)*integrate('f(x)','x',0,G(i)) 
end
endfunction

Y_d1 = dtdb(645)   // at  645k
plot(T',Y_d1)
xstring(150,0.4,"at 645 K (Si)")

Y_d2 = dtdb(343)   // at  343k
plot(T',Y_d2)
xstring(100,0.5,"at 343 K (Cu)")

Y_d3 = dtdb(105)   // at  105k
plot(T',Y_d3,"b")
xstring(50,0.6,"at 105 K (Pb)")
xgrid
