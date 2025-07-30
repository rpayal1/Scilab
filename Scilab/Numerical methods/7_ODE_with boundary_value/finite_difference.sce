clc
clear
h = 0.1
xf =2
xi =0
yi= 10
yf =1
n = (xf - xi)/h + 1;
function func = p(x)
    func = 6;
endfunction

function func = q(x)
    func = -1;
endfunction

function func = r(x)
    func = 2;
endfunction
//px =6
//qx =-1
//rx =2
Y = zeros(n,1)
X = linspace(xi,xf,n)
Y(1)=yi
Y(n)=yf
for iter = 1:100
    m = Y
    for i = 2:n-1
    Y(i)= (((2*r(i)*(h^2))-(m(i+1)*(2+h*p(i)))-(m(i-1)*(2-h*p(i))))/(2*q(i)*(h^2)-4))
end
end
disp(Y)
disp(X)
plot(X,Y)
