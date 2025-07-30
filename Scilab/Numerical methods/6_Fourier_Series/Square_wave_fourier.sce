clc
clear

x = linspace(-%pi,%pi,100)
//h = input("enter size of wave ")
h = 5
n = input(" value of n is ")
function y =f(x)
    if x>=-%pi & x<0 then
        y = -h
    elseif x>= 0 & x<=%pi then
        y = h
    end
endfunction
a0 = (1/%pi)*(integrate("f(x)","x",-%pi,0,1e-6)+integrate("f(x)","x",0,%pi,1e-6))


for i = 1:n
    a(i) = (1/%pi)*(integrate("f(x)*cos(i*x)","x",-%pi,0,1e-6)+integrate("f(x)*cos(i*x)","x",0,%pi,1e-6))
    b(i) = (1/%pi)*(integrate("f(x)*sin(i*x)","x",-%pi,0,1e-6)+integrate("f(x)*sin(i*x)","x",0,%pi,1e-6))
end
s=0
for j = 1:n
    s = s  + (a(j)*cos(j*x)+b(j)*sin(j*x))
end
s = s +a0/2
for k = 1:length(x)
  fun(k) = f(x(k))  

end

plot(x',s)
plot(x',fun)
