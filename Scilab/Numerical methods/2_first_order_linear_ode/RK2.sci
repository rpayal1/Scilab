function [X,Y]=rk2(fu,x_i,x_f,y_i,h)
    X=[x_i:h:x_f]
    Y(1)=y_i;
    for j=2:length(X)
    
  K_1=fu(X(j-1),Y(j-1))
  alpha=(2/3)
  W_1=(1/4)
  W_2=(3/4)
  K_2=fu(X(j-1)+alpha*h,Y(j-1)+alpha*h*K_1)
    Y(j)=Y(j-1)+h*(W_1*K_1+(W_2*K_2))
end
    endfunction
