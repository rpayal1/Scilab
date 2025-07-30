function [X,Y]=rk4(fu,x_i,x_f,y_i,h)
    X=[x_i:h:x_f]
    Y(1)=y_i;
    for j=2:length(X)
    
  K_1=fu(X(j-1),Y(j-1))
  alpha=(2/3)
  W_1=(1/6)
  W_2=(2/6)
  W_3=(2/6)
  W_4=(1/6)
  
  K_2=fu(X(j-1)+h/2,Y(j-1)+K_1*h/2)
  K_3=fu(X(j-1)+h/2,Y(j-1)+K_2*h/2)
  K_4=fu(X(j-1)+h,Y(j-1)+K_3*h)
    Y(j)=Y(j-1)+h*(W_1*K_1+(W_2*K_2)+(W_3*K_3)+(W_4*K_4))
    
    end
    endfunction
