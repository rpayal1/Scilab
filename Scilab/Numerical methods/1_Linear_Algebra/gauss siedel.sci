// Name:RAHUL
//Roll no:871
function X =gauss_siedel(A,B)
    [m,n]=size(A)
    [r,s]=size(B)
    disp(A,"A")
    disp(B,"B")
    C=[A B]
   disp("the augumentd matriX is:")
   disp(C)
    tol=0.05
    X=zeros(n,1)
   disp("X=")
   // disp(X)
    for k=1:20
       disp("after " +string(k)+ " iterations")
            X_old=X
        for i=1:n
            sum=0
            for j=1:n
                if(i<>j) then
                    sum=sum+C(i,j)*X(j)
                end
            end
            X(i)=(C(i,n+1)-sum)/C(i,i)
          disp(X(i),"X("+string(i)+")=")
        end
        if abs(X_old-X)/abs(X)<=tol then
            break;
        else
            continue;
    end
end
disp("for displaying in tabular form")
for i=1:length(X)
mprintf('%s%i%s\t%.4f\n',"X(",i,")=",X(i))
end
endfunction
