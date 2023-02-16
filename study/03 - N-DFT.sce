clc; //Clear Command Window
clear; //kills variables
close; //Close graphic window

x = [-4, 1, 4, 4, 2, 8]
N = 16
x = [x, zeros(1, N - length(x))] //zero padding
k = 0:1:N-1
X = fft(x)
amp = abs(X)
subplot(3, 1, 1)
plot(k, amp)
plot2d3(k, amp)
title("16-DFT")

N = 64
x = [x, zeros(1, N - length(x))] //zero padding
k = 0:1:N-1
X = fft(x)
amp = abs(X)
subplot(3, 1, 2)
plot(k, amp)
plot2d3(k, amp)
title("64-DFT")

subplot(3 , 1, 3)
titlepage("As N increases the resolution of spectrum increased");
