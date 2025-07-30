clc
clear
k = 8.61d-5
E = linspace(0,13,1000)

function f = fn(T)
alpha = 1 // for fermi dirac distribution
    U = 7 //FERMI ENERGY HERE
for i = 1:length(E)

 f(i) = 1/(exp((E(i)-U)/(k*T))+alpha)   
end
plot(E',f)
xlabel("$\large\bold ENERGY$")
ylabel("$\large\bold OCCUPATION\ NUMBER $")
xgrid
endfunction
f1 = fn(0)
f2 = fn(300)
f3 = fn(500)
f4 = fn(12000)
