// Name:Rahul   
//Roll no:871

function[x]=GE(A,B)
    //for triangular matrix
    n=length(B)
    C=[A,B]
    disp("initially")
    disp(C)
    disp("then")
    for k=1:1:n-1
        if abs(C(k,k))==0 then 
            disp(k,"shifting needed in step ")
           disp("current matrix is")
           disp(C)
           disp("after shifting")
          for r=k+1:n
         if abs(C(k,k))<abs(C(r,k)) then
temp(k,:)=C(k,:)
C(k,:)=C(r,:)
C(r,:)=temp(k,:)
else
    continue
end
disp(C)
end
end
        for i=k+1:1:n
            fact=C(i,k)/C(k,k)
            for j=k:1:n+1
                C(i,j)=C(i,j)-C(k,j)*fact
            end
        end
 // disp(k,"matrix after step ")  
 // disp(C)    
    end
   // disp("after end")
 //   disp(C)
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
 disp(x)
endfunction 




