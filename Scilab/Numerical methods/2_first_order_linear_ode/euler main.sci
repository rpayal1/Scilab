function [X,Y]=euler(fu,x_i,x_f,y_i,h)
    X=[x_i:h:x_f]
    Y(1)=y_i;
    for j=2:length(X)
        Y(j)=Y(j-1)+h*fu(X(j-1),Y(j-1))
    end
    
    endfunction

