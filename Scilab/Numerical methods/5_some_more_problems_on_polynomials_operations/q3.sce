// 871 Rahul
// Question 3
function F=f(x)
 F=(%e)^x*sin(x)/(1+x^2)
endfunction
//creating n order legendre polynomial
n=5
x=poly(0,'x')
Q=(x^2-1)^n
for i=1:n
 Q=derivat(Q)
end
P=(1/(2^n*factorial(n)))*Q //legendre polynomial
//finding roots
xr=roots(P)
//coordinate transformation
a=0
b=2
tr=(b+a)/2+(b-a)*xr/2
//integration using gauss lengendre quardeture formula
pd=derivat(P)
for i=1:n
 p=(horner(pd,xr(i)))^2
 c(i)=2/((1-xr(i)^2)*p)
 s(i)=((b-a)/2)*f(tr(i))
 m(i)=c(i)*s(i)
end
I=sum(m)
disp(I,"Required value of integral=")
