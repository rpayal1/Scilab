clc 
clf 
funcprot(0) 
clear 
x=[10,20,40,60,80,100] 
l=length(x) 
for j=1:6 
n=x(j) 
micro=2^n 
for i=0:n 
macro=(factorial(n))/(factorial(i)*factorial(n-i)) 
p(i+1)=macro/micro 
h(i+1)=i 
disp([h(i+1) p(i+1)]) 
end 
subplot(2,3,j) 
plot(h,p,'r') 
xgrid 
title("Probability Distribution of Coin Tossing"); 
xlabel("No. of heads----->"); 
ylabel("Probability----->"); 
end
