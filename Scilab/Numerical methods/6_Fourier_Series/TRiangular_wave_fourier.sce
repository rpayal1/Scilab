clc
clear
u = -%pi
v = %pi
l = (v-u)
m = u+(l/2)
//h = input("enter size of wave ")
h = 5
n = 5 //input(" value of n is ")
x = u:0.1:v
x2 = 4*u:0.1 :4*v
function y =f(x)
    
    if (x>=u) && (x<m) then
        y = x
    elseif (x>= m) && (x<=v) then
        y = -x
    end
endfunction
 a0= (2/l)*integrate("f(x)","x",u,v,1e-6)



for i = 1:n
    a(i) = (2/l)*integrate("f(x)*cos(i*x*2*%pi/l)","x",u,v,1e-6)
    b(i) = (2/l)*integrate("f(x)*sin(i*x*2*%pi/l)","x",u,v,1e-6)
end
s=0
for j = 1:n
    s = s  + (a(j)*cos(j*x*2*%pi/l)+b(j)*sin(j*x*2*%pi/l))
end
s = s +a0/2
for k = 1:length(x)
  fun(k) = f(x(k))  

end
subplot(2,1,1)
plot(x',s)
plot(x',fun)

s2=0
for j = 1:n
    s2 = s2  + (a(j)*cos(j*x2*2*%pi/l)+b(j)*sin(j*x2*2*%pi/l))
end
s2 = s2 +a0/2


arg = x2
for k = 1:length(arg)
    if (arg(k)>u) && (arg(k)<v) then
  fun2(k) = f(arg(k))  
elseif arg(k)<u
    while arg(k)<u  
        arg(k)= arg(k)+l
        
    end 
    fun2(k) = f(arg(k))
elseif arg(k)>v
    while arg(k)>v 
    arg(k)  = arg(k)-l
 end
  fun2(k) = f(arg(k))
end
end
subplot(2,1,2)
plot(x2',s2)
plot(x2',fun2)
