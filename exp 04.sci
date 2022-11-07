clc;
clear;
close;

x = []
//Enter elements of x
x = input("enter the input x : ")
N = input("Enter the value of N: ") //Input N
n = length(x)
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

disp("Wthout fft() function")
disp(X.')

disp("With fft() function")
disp(fft(x))
