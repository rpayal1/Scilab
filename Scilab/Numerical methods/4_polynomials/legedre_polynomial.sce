function [R]=f(x,n)      //creating ploynomial
    R=(((x^2-1)^n)/((2^n)*factorial(n)))
endfunction
s = -1:0.05:1     // taking the interval of -1 to 1
u = -0.99:0.01:0.99

x = poly(0,'x')  // defining x as polynomial

for n = 1:5  // usig loop for the order till we want to calculate
    [R(n)] = f(x,n)
    dr = R(n)
    for k = 1:n
        dr = derivat(dr)
end
P(n) = dr
K(n) = n // vector containing the order of polynomial
for j=1:length(s)
    S(j) = horner(dr,s(j))
end
subplot(3,1,1)
plot2d(s,S,n,rect=[-1,-1,1,1])//plotting the poly
title("Legendre poly of kind 1")
xlabel("x")
ylabel('function')
legend(["p1x","p2x","p3x","p4x","p5x"],-4)
end
disp(['Order','Polynomial'])
disp([K P])



// Polynomial of second kind 
W(1) = 1.5 * x
for n = 3:5
    w = P(n-1)+(P(n-1))/n
    for m=2:n-1
        w = w +( P(m-1)*P(n-m))/m
end
w(n-1) = w
end
disp(length(w))
disp(w)
// Plotting Polymials of second Kind 
for j=1:length(u)
    Q_1(j) = 0.5*horner(P(1),u(j))*log((1+u(j))/(1-u(j)))-1
end
for n=2:5
for i=1:length(u)
    q(i) = 0.5*horner(P(n),u(i))*log((1+u(i))/(1-u(i))-horner(W(n-1),u(i))
end 
subplot(3,1,2)
plot2d(u,Q_1,rect=[-1,-1,1,1])
title('Legendre Polynomials of Second kind')
xlabel('x')
ylabel('Q_(n)')
legend(['Q_1(x)'])
subplot(3,1,3)
plot2d(u,q,rect=[-1,-1,1,1])
title('Legendre Polynomials of Second kind')
xlabel('x')
ylabel('Q_(n)')
legend(['Q_2(x)','Q_3(x)','Q_4(x)','Q_5(x)'])
end
