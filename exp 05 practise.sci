clc;
clear;
close;
x=input("Ener the sequence ");
h=input("Enter the sequence ");
m=length(x);
n=length(h);
y= conv(x,h);
disp("Linear convoluition is ")
disp(y);
L=max(m,n);
for i=1:1:(m+n-1-L);
    y(i)=y(i)+y(i+L);
       
end
disp("Circular convolution is ");
disp(y(1:L));
