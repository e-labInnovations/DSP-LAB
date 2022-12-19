//BPF
close;
clc;
clear;
fs=2*10^3
fc1=250
fc2=500
wc1=2*fc1/fs
wc2=2*fc2/fs
wc=[wc1 wc2]
subplot(2,1,1)
title("Rectangular window")
[h,hm,fr]=wfir("bp",11,wc/2,"re",[0,0])
plot(2*fr,20*log10(hm))
xgrid();
subplot(2,1,2)
title("Hamming window")
[h,hm,fr]=wfir("bp",11,wc/2,"hm",[0,0])
plot(2*fr,20*log10(hm))
xgrid();
