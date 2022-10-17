clc;
close;
clear;
s = 0
t = 0:0.01:2;
n = input("no. of harmonics: ")
for i=1:2:n
    s = (sin(2*%pi*i*t))/i + s
end
plot(t,s)
