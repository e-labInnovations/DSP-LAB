clc
clear 
close

x=[1,2,3,4]
N=16//16-DFT
x=[x,zeros(1,N-length(x))]//
k=0:1:N-1
X=fft(x)
amp=abs(X)
subplot(1,2,1)
title("16-DFT")
plot(k,amp) //DFT
plot2d3(k,amp) //DTFT

N=64//64-DFT
x=[x,zeros(1,N-length(x))]//
k=0:1:N-1
X=fft(x)
amp=abs(X)
subplot(1,2,2)
title("64-DFT")
plot(k,amp)
plot2d3(k,amp)
