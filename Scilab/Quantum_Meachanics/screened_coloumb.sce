
clear
hcut = 1973
n = 5
m = 0.511e6
e = 3.795
l1 = 1e-10
l2 = 6
h = (l2 - l1)/(n-1)
r = linspace(l1,l2,n)
a = input("value of a")
A = zeros(n,n)
for i =1:n
    A(i,i) = -2
end
for i =2:n
    A(i,i-1) = 1
end
for i = 1:n-1
    A(i,i+1) =1
end

K = -(((hcut^2)/(2*m))/(h^2))*A
disp(K)
V = zeros(n,n)
for i =1:n
    V(i,i)= -(e^2/r(i))*exp(-r(i)/a)
end
E = K + V
[vec,val] =spec(E)
plot(r',vec(:,2))
plot(r',vec(:,3))
disp(val(2,2))
disp(val(3,3))
