clc;
clear;
close;

n = input("Enter the no. of elements in your x: ") //Input length of x
x = []
//Enter elements of x
for k=1:1:n
    x(1, k) = input('Enter ' + string(k) + 'th value: ') 
end

N = input("Enter the value of N: ") //Input N

if N < n then
    halt("N must greater than length of x")
end

x = [x, zeros(1,N-length(x))]
W = []
for i=0:1:N-1
    for j=0:1:N-1
        k = i*j
        W(i+1, j+1) = exp(-1*%i*2*%pi*k/N)
    end
end

X = W * x'
t = 0:1:N-1
amp = abs(X')
title(string(N) + ' - DFT')
plot(t, amp)
plot2d3(t, amp)
