// 871 rahul
// Question 9
function fn=bessel(c, n)
 p=poly([0,1/2],"x","c")
 j=0
 for k=0:c
 j=j+((((-1)^k)*(p^(n+2*k)))/(factorial(k)*factorial(n+k)))
 end
 fn=j
endfunction
//Bessel Functions usingself made algorithm 
c=50
for n=0:6
 j=bessel(c,n)
 s=linspace(0,20,100)
 J=horner(j,s)
 subplot(1,2,1)
 plot2d(s,J,n+1)
end
xgrid
xlabel("$x$",'fontsize',2)
ylabel("$J_n(x)$","fontsize",2)
title("$Bessel \: functions \:(using \: self \: algorithm)$","fontsize",3)
xstring(9,0.6,"$\Large Rahul \: 871$")
legend(["$J_0(x)$","$J_1(x)$","$J_2(x)$","$J_3(x)$","$J_4(x)$","$J_5(x)$"],pos=1)
/// using scilab inbuilt function
for i=0:5
 x=linspace(0,20,100)
 BJ=besselj(i,x)
 subplot(1,2,2)
 plot2d(x,BJ,i+1)
end
xgrid
xlabel("$x$",'fontsize',2)
ylabel("$J_n(x)$","fontsize",2)
title("$Bessel \: functions(Using \: Scilab \: inbuilt \: function)$","fontsize",3)
xstring(9,0.6,"$\Large Rahul \: 871$")
legend(["$J_0(x)$","$J_1(x)$","$J_2(x)$","$J_3(x)$","$J_4(x)$","$J_5(x)$"],pos=1)