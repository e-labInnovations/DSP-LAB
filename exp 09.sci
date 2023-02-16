//Circular convolution using linear convolution
clc
clear 
close

N = input("Enter the first sequence : ")
h = input("Enter the second sequence : ")
m = length(N)
n = length(h)
y = conv(N,h)
disp('Linear convolution')
disp(y)
L = max(m,n)
for i=1:1:(m+n-1-L)
    y(i) = y(i) + y(i+L)
end

disp('Circular convolution')
disp(y(1:L))
