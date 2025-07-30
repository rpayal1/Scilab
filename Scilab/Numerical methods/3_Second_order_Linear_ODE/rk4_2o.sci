function [X,Y,Z]=rk4_2o(f,g,X_i,Y_i,Z_i,h,X_f)
    X=[X_i:h:X_f];
    Y(1)=Y_i;
    Z(1)=Z_i;
    for j=2:length(X);
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
