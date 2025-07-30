function [X,Y,Z]=rk2_2o(f,g,X_i,Y_i,Z_i,h,X_f)
    X=[X_i:h:X_f]
        Y(1)=Y_i;
    Z(1)=Z_i;
        for j=2:length(X)
  K_1=f(X(j-1),Y(j-1),Z(j-1))
   L_1=g(X(j-1),Y(j-1),Z(j-1))
   K_2=f(X(j-1)+(2/3)*h,Y(j-1)+(2/3)*h*K_1+Z(j-1)+(2/3)*h*L_1)
 L_2=g(X(j-1)+(2/3)*h,Y(j-1)+(2/3)*h*K_1+Z(j-1)+(2/3)*h*L_1)
 Y(j)=Y(j-1)+h*((1/4)*K_1+((3/4)*K_2))
 Z(j)=Z(j-1)+h*((1/4)*L_1+((3/4)*L_2))
 
    
    end
    disp(X)
    disp(Y)
    endfunction
