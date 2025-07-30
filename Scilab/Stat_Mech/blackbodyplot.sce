clc
clear

t=5800
hc = 1240
k = 8.61*(10)^-5
x = linspace(1,7000,1000)
// planck's law
for i = 1:length(x)
    y(i) = (8*%pi*hc)/((x(i)^5)*(exp(hc/(x(i)*k*t))-1))
end
//plot by plank's law
plot(x',y,'black')
ylabel("$\large\bold INTENSITY$")
xlabel("$\large\bold\lambda$")
xgrid
// total radiation 
totrad = inttrap(x,y)
// UV region 200-400 nm
for i =29:58
     yuv(i)=y(i)
     xuv(i)=x(i)
end
totraduv = inttrap(xuv,yuv)
percuv = (totraduv/totrad)*100
disp(percuv,"percentage radiation in U V region")

// visible from 400 to 780 nm
for i =58:112
     yvis(i)=y(i)
     xvis(i)=x(i)
end
totradvis = inttrap(xvis,yvis)
percvis = (totradvis/totrad)*100
disp(percvis,"percentage radiation in visible region")


// peak at
[n,m] = max(y)
disp(x(m) ,"peak is at")

// percent rad before 
for i = 1:m
    ybef(i) = y(i)
    xbef(i) = x(i) 
end
totradbef = inttrap(xbef,ybef)
percbef = (totradbef/totrad)*100
disp(percbef,"total percentage radiation before")
// percent rad after
for i = 1:length(x)-m
    yaf(i) = y(m+i)
    xaf(i) = x(m+i) 
end
totradaf = inttrap(xaf,yaf)
percaf = (totradaf/totrad)*100
disp(percaf,"total percentage radiation after")

