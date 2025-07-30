clc
clear
data = [222.4, 0.1278;262.4,0.1922;283.7, 0.2271;306.4, 0.2653;331.3, 0.3082;358.5, 0.3552;413.0, 0.4463;479.2, 0.5501;520.0, 0.6089;879.7, 0.8871;1079.7, 0.9034;1258, 0.9235]
temp = data(:,1)
CvbyR = data(:,2)
plot(temp,CvbyR,"*")

// debye law
T = linspace(3,1300,100) // temeprature

//T_d =[1600:100:2000]
//for j =1:length(T_d)
T_d = 1800
x = linspace(0,1300,100)
function b =f(x)
b = ((x^4)*(exp(x)))/((exp(x)-1)^2)
endfunction
for i = 1:length(T)
    G(i) = T_d/T(i)
Y_d(i) =3*((T(i)/T_d)^3)*integrate('f(x)','x',0,G(i)) 
end
plot(T',Y_d)
xlabel("TEMPERATURE")
ylabel("Cv/R")
//end

