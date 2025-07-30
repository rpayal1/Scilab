clc
clear
h = 4.13*10^(-15)
m = 0.056*10^(-10)
NbyV = 8.48*10^(28)
k = 8.61*10^(-5)
E = linspace(0,14,1000)
function g_e =den(E)   // factor of dividing by V is removed
    g_e = (8*%pi*sqrt(2)*( (m)^(3/2)) *((E)^(1/2)) )/(h^3)
endfunction

for i = 1:length(E)
newnbyv(i) =intg(0,E(i),den)
if newnbyv(i)>NbyV then
    disp(E(i))
    Ef=E(i)
    break
end
end


T =[0,1200,12000]
E = linspace(1,14,1000)
    alpha = 1 // for fermi dirac distribution
for j = 1:length(T)   
for i = 1:length(E)

 f(j,i)= 1/(exp((E(i)-Ef)/(k*T(j)))+alpha)   
end
    for i = 1:length(E)
   
   g_e(i) =den(E(i))
   N_e(j,i) =f(j,i).*g_e(i) 
  
end
subplot(2,1,1)
plot(E',f(j,:)')
xlabel("ENERGY")

subplot(2,1,2)
plot(E',N_e(j,:)')
xlabel("ENERGY")
end


