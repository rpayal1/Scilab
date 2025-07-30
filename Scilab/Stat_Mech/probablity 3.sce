clc 
clear 
clf 
n=3//(a)part 
//n=20//(b)part 
//n=100//(c)part 
Ph=1/2 
Pt=1/2 
r=1:n+1 
for i=1:n+1 
y(i)=(factorial(n)*Ph^(r(i)-1)*Pt^(n-(r(i)-1)))/(factorial(n-(r(i)-1))*factorial((r(i)-1))) 
end 
plot(r,y') 
title("Plot of Probability Distribution") 
xlabel('no.of heads','fontsize',4) 
ylabel('Probabiity Distribution','fontsize',4)
