// 871 Rahul
// Question 2
//paert a
function C_w=C(w)
 C_w=integrate('cos(%pi*q^2/2)','q',0,w) // C(w)
endfunction
function S_w=S(w)
 S_w=integrate('sin(%pi*q^2/2)','q',0,w) // S(w)
endfunction
w=[0:0.1:5]
disp([' w',' C(w)',' S(w) '])
for i=1:length(w)
 disp([w(i),C(i),S(i)])
end
// part b
function C_w=C(w)
 C_w=integrate('cos(%pi*q^2/2)','q',0,w) // C(w)
endfunction
function S_w=S(w)
 S_w=integrate('sin(%pi*q^2/2)','q',0,w) // S(w)
endfunction
w=[2,4,7]
for i=1:length(w)
 disp(w(i),"When w=")
 disp("(i) Property: C(-w)=-C(w)")
 LHS=C(-w(i))
 disp(LHS,"LHS=")
 RHS=-C(w(i))
 disp(RHS,"RHS=")
 if LHS==RHS then
 disp("LHS=RHS")
 disp("Hence LHS=RHS, proved")
 end
 
 disp("(ii) Property: S(-w)=-S(w)")
 LHS=S(-w(i))
 disp(LHS,"LHS=")
 RHS=-S(w(i))
 disp(RHS,"RHS=")
 if LHS==RHS then
 disp("LHS=RHS")
 disp("Hence LHS=RHS, proved")
 end
end
//part c
function C_w=C(w)
 C_w=integrate('cos(%pi*q^2/2)','q',0,w) // C(w)
endfunction
function S_w=S(w)
 S_w=integrate('sin(%pi*q^2/2)','q',0,w) // S(w)
endfunction
w=65
// for larger value like w=-65 or w=65 the integral tend to -0.5 or 0.5
disp("(i) Property: C(-infinity)= S(-infinity)=-1/2")
C_w=C(-w)
disp(C_w,"C(-infinity)")
S_w=S(-w)
disp(S_w,"S(-infinity)")
disp('C(-infinity)= S(-infinity)=-1/2')
disp("(ii) Property: C(infinity)= S(infinity)=1/2")
C_w=C(w)
disp(C_w,"C(infinity)")
S_w=S(w)
disp(S_w,"S(infinity)")
disp('C(infinity)= S(infinity)=1/2')
// part d
function C_w=C(w)
 C_w=integrate('cos(%pi*q^2/2)','q',0,w) // C(w)
endfunction
function S_w=S(w)
 S_w=integrate('sin(%pi*q^2/2)','q',0,w) // S(w)
endfunction
w=[-5:0.2:5]
for i=1:length(w)
 x(i)=S(w(i))
 y(i)=C(w(i))
end
plot(w,x,'b',) //S(w)
plot(w,y,'g') // C(w)
title('$Plot \: of \: x=S(w) \: \& \: y=C(w)$','fontsize',4)
xlabel('$w$','fontsize',2)
ylabel('$S(w) \: \& \: C(w)$','fontsize',2)
legend(["$x=S(w)$","$y=C(w)$"],pos=1)
xgrid
