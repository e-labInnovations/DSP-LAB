clc
clear 
close

[y,fs]=wavread("C:\Users\acer\Desktop\ANAS\DSP-LAB\audio_identification\hello-there.wav")
y = y(1,:)
t=0:1:length(y)-1
subplot(2,2,1)
plot(t,y)

Y=fft(y)
amp=abs(Y)
subplot(2,2,2)
plot2d3(t,amp)

Y=fft(y)
Y=Y(:,1:(length(y)/2))
amp=abs(Y)
t=1:1:(length(y))/2
for x=1:1:5
subplot(2,2,3)
plot2d3(t,amp)
