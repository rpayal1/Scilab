clc
clear
funcprot(0)
T_i = 40
T_f = 200
h= 0.01 
X_i = 0.0
X_f = 10
T_a = 20

function der2 = g(X,T,Z)
    der2 = -h*(T_a - T)
endfunction
function der1 = f(X,T,Z)
    der1 = Z
endfunction
X=[X_i:h:X_f];
   n = length(X)
function [X,Y,Z]=rk4_2o(f,g,X_i,Y_i,Z_i,h,X_f)
    
    Y(1)=Y_i;
    Z(1)=Z_i;
    for j=2:n;
      K_1=f(X(j-1),Y(j-1),Z(j-1))
      L_1=g(X(j-1),Y(j-1),Z(j-1))
      K_2=f(X(j-1)+h/2,Y(j-1)+K_1/2,Z(j-1)+L_1/2)
      L_2=g(X(j-1)+h/2,Y(j-1)+K_1/2,Z(j-1)+L_1/2)
      K_3=f(X(j-1)+h/2,Y(j-1)+K_2/2,Z(j-1)+L_2/2) 
      L_3=g(X(j-1)+h/2,Y(j-1)+K_2/2,Z(j-1)+L_2/2)
      K_4=f(X(j-1)+h,Y(j-1)+K_3,Z(j-1)+L_3) 
      L_4=g(X(j-1)+h,Y(j-1)+K_3,Z(j-1)+L_3)
      Y(j)=Y(j-1)+(h/6)*(K_1+2*K_2+2*K_3+K_4)
      Z(j)=Z(j-1)+(h/6)*(L_1+2*L_2+2*L_3+L_4)
    end
endfunction
// applying shooting method
// guess 1
    g1 = input("enter guess 1    ")
    [X,T,Z] = rk4_2o(f,g,X_i,T_i,g1,h,X_f)
    b1 = T(n)
disp(b1)

// guess 2
    g2 = input("enter guess 2    ")
    [X,T,Z] = rk4_2o(f,g,X_i,T_i,g2,h,X_f)
    b2 = T(n)
disp(b2)

// exact
gf = g2 +(((T_f - b2)/(b2-b1))*(g2-g1))
[X,T,Z] = rk4_2o(f,g,X_i,T_i,gf,h,X_f)

disp([X',T])
plot(X',T)
