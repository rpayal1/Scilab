// 871 Rahul
// Question 1
function F=f(t)
 F=100*t*(%e)**(-2*t) // Force Function
endfunction
[p,err]=intg(1,2,f) // momentum chnage from t=1 to t=2
disp(p,"Momentum change (in kgms^-2):")
t1=[0:0.1:6]
for i=1:length(t1)
 v(i)=intg(0,t1(i),f) // momentum function point calculation
 F(i)=f(t1(i)) // force function point calculation
end
subplot(2,1,1)
plot(t1,v,'r')
title('$Variation \: of \: valocity \: with \: time$','fontsize',4)
xlabel('$Time \: (in \: s)$','fontsize',2)
ylabel('$valocity \: (in \: m/s)$','fontsize',2)
xgrid
subplot(2,1,2)
plot(t1,F,'r')
title('$Variation \: of \: force \: with \: time$','fontsize',4)
xlabel('$Time \: (in \: s)$','fontsize',2)
ylabel('$Force \: (in \: N)$','fontsize',2)
xgrid
