clc
clear
k = 8.61d-5
E = linspace(-0.14,0.14,1000)

function f = fn(T)
alpha = -1 // for BOSS EINSTEIN distribution
    U = -0.15  //CHEMICAL POTENTIAL HERE
for i = 1:length(E)

 f(i) = 1/(exp((E(i)-U)/(k*T))+alpha)   
end
plot(E',f)
xlabel("$\large\bold ENERGY$")
ylabel("$\large\bold OCCUPATION\ NUMBER $")
xgrid
endfunction
f1 = fn(300)
f2 = fn(400)
f3 = fn(500)


