clc
clear
data = [222.4, 0.1278;262.4,0.1922;283.7, 0.2271;306.4, 0.2653;331.3, 0.3082;358.5, 0.3552;413.0, 0.4463;479.2, 0.5501;520.0, 0.6089;879.7, 0.8871;1079.7, 0.9034;1258, 0.9235]
temp = data(:,1)
CvbyR = data(:,2)
plot(temp,CvbyR,"*")

// einstein law
//Te = [1000:100:1400]
//for j=1:length(Te)


T = linspace(1,1300,100)

for i =1:length(T)
Y_e(i) = (((Te/T(i))^2)*exp(Te/T(i)))/((exp(Te/T(i))-1)^2)
end
plot(T',Y_e)
xlabel("TEMPRATURE")
ylabel("Cv/R")
//end
