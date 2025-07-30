clc
clear
// x stands for lambada

hc = 1240  // ev nm
k = 8.61*(10)^-5
x = linspace(1,50000,1000)
function y =tempchange(t)
for i = 1:length(x)
    y(i) = (8*%pi*hc)/((x(i)^5)*(exp(hc/(x(i)*k*t))-1))
end
endfunction
y1 =tempchange(300)
y2 =tempchange(400)
y3 =tempchange(500)
plot(x',y1,'b')
plot(x',y2,'b')
plot(x',y3,'b')
xstring(9000,3e-18,["$\large \bold t =300$"])
xstring(6000,1.3e-17,["$\large \bold t =400$"])
xstring(5000,3.3e-17,["$\large \bold t =500$"])
xlabel("$\bold\lambda$")
xgrid

// for wein's displacement law
[n1,m1] = max(y1)
[n2,m2] = max(y2)
[n3,m3] = max(y3)
c1= 300*x(m1)
c2= 400*x(m2)
c3= 500*x(m3)

disp(c1,"c1")
disp(c2,"c2")
disp(c3,"c3")


// for stefan's law
F1 = inttrap(x,y1)
F2 = inttrap(x,y2)
F3 = inttrap(x,y3)
ratio12 = F1/F2
ratio23 = F2/F3
disp(ratio12^(.25),"ratio of flux 1,2^0.25")
disp(ratio23^(.25),"ratio of flux 2,3^0.25")
