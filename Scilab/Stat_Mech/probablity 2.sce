clc 
clf 
funcprot(0) 
clear 
n=100 
micro=2^n 
for i=1:1:n 
macro=(factorial(n))/(factorial(i)*factorial(n-i)) 
p(i)=macro*((0.75)^i)*(0.25^(n-i)) 
h(i)=i 
end 
plot(h,p,'r') 
xgrid 
title("Probability Distribution of Coin Tossing"); 
xlabel("No. of heads----->"); 
ylabel("Probability----->");
