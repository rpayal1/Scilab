// 871 Rahul
// Question 5
t=[1:1:10]*60 // time in s
v=[5,6,5.5,7,8.5,8,6,7,7,5] // v in m/s
//inttrap
I1=inttrap(t,v)
disp(I1,"By inttrap() distance (in m)")
//intsplin
I2=intsplin(t,v)
disp(I2,"By intsplin() distance (in m)")
