clc; //Clear Command Window
clear; //kills variables
close; //Close graphic window

x = input("Enter input x: ")
N = input("Enter N: ")

//Matrix Method ------------
x = [x, zeros(1, N-length(x))]
Wnk = []
for r=0:1:N-1
    for c=0:1:N-1
        n = c*r
        Wnk(r+1, c+1) = exp(-1*%i*2*%pi*n/N)
    end
end

X = Wnk * x'
disp("DFT without builti function", X')
//-----------------------------

X = fft(x)
disp("DFT with fft() function", X)

