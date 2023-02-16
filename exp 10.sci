//Filter a signal
close;
clc;
clear;
t = 0:(1/4000):0.08
x1 = sin(2*%pi*20*t)
subplot(5,1,1)
title("Original Signal")
plot(t, x1)

x2 = sin(2*%pi*1000*t)
subplot(5,1,2)
title("Noise Signal")
plot(t, x2)


x = x1 + x2
subplot(5,1,3)
title("Noisy Signal")
plot(t, x)

fs=4*10^3
fc=100
wc=2*fc/fs

subplot(5,1,4)
title("Hamming window")
[h,hm,fr]=wfir("lp",11,wc/2,"hm",[0,0])
plot(2*fr,20*log10(hm))
xgrid();

subplot(5,1,5)
title("Filtered Signal")
y = filter(h, 1, x)
plot(t, y)
