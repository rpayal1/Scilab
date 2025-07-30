function [X,Y,Z]=euler_2o(f,g,X_i,Y_i,Z_i,h,X_f)
    X=[X_i:h:X_f]
        Y(1)=Y_i;
    Z(1)=Z_i;
     for j=2:length(X)
        Y(j)=Y(j-1)+h*f(X(j-1),Y(j-1),Z(j-1))
        
       Z(j)=Z(j-1)+h*g(X(j-1),Y(j-1),Z(j-1))
    end
    
endfunction
