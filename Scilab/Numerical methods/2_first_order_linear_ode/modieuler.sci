function [X,Y]=modieuler(fu,a,b,alpha,h)
    X=[a:h:b]
    Y(1)=alpha;
    for j=2:length(X)
        X(j)=X(j-1)+h
        Y(j)=Y(j-1)+h*fu(X(j-1),Y(j-1))
        Y(j)=Y(j-1)+(h/2)*(fu(X(j-1),Y(j-1))+fu(X(j),Y(j)))
    end
    endfunction
