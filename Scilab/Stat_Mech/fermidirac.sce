clc
clear
k = 8.61d-5
E = linspace(0,.05,1000)

function f = fn(T)
alpha = 1 // for fermi dirac distribution
    U = 0.025  //FERMI ENERGY HERE
for i = 1:length(E)

 f(i) = 1/(exp((E(i)-U)/(k*T))+alpha)   
end
plot(E',f)
xlabel("$\large\bold ENERGY$")
ylabel("$\large\bold OCCUPATION\ NUMBER $")
xgrid
endfunction
f1 = fn(0)
f2 = fn(10)
f3 = fn(50)
f4 = fn(500)
