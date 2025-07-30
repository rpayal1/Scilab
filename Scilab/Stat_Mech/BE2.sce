clc
clear
k = 8.61d-5
E = linspace(-0.14,0.14,1000)

function f = fn(U)
    T =300
alpha = -1 // for BOSS EINSTEIN distribution
  // U =  //CHEMICAL POTENTIAL HERE varied so left

for i = 1:length(E)

 f(i) = 1/(exp((E(i)-U)/(k*T))+alpha)   
end
plot(E',f)
xlabel("$\large\bold ENERGY$")
ylabel("$\large\bold OCCUPATION\ NUMBER $")
xgrid
endfunction
f1 = fn(-0.15)
f1 = fn(-0.16)
f1 = fn(-0.18)

