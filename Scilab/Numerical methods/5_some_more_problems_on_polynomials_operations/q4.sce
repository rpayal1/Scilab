// 871 Rahul
// Question 4
function F=f(x)
 F=1/(1+x^2)
endfunction
for n=2:6
 //creating n order legendre polynomial
 x=poly(0,'x')
 Q=(x^2-1)^n
 for i=1:n
 Q=derivat(Q)
 end
 P=(1/(2^n*factorial(n)))*Q //legendre polynomial
 
 //finding roots
 xr=roots(P)
 
 //coordinate transformation
 a=-3
 b=3
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
 disp(n,"number of points :")
 disp(I,"Required value of integral :")
 disp(2*n, "Truncation error order in this approximation :")
end
