function[x]=NGE(A,B)
    //for triangular matrix
    
    n=length(B)
    C=[A,B]
   disp("initially")
    disp(C)
    disp("then")
    for k=1:n-1
        for i=k+1:n
            fact=C(i,k)/C(k,k)
            for j=k:n+1
                C(i,j)=C(i,j)-C(k,j)*fact
            end
        end
    disp("after step "+string(k))
      disp(C)  
    end
   disp("after end")
    disp(C)
    disp("triangular matrix obtained above")
    //triangular matrix is obtained till here
    //now for reducing it 
 x(n)=C(n,n+1)/C(n,n)
 for i=n-1:-1:1
     SUM=0.0
     for j=1:n
     SUM =SUM +C(i,j)*x(j)    
 end
 x(i)=(C(i,n+1)-SUM)/C(i,i)
end
disp("final matrix obtained is")
 disp(x)
endfunction 































































