clc
clear 
close

[y,fs]=wavread("C:\Users\acer\Desktop\ANAS\DSP-LAB\audio_identification\hello-there.wav")
t=0:1:(length(y)/2)-1
subplot(2,2,1)
plot(t,y)

Y=fft(y)
amp=abs(Y)
subplot(2,2,2)
plot2d3(t,amp)