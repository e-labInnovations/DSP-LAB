//Filtering a signal using FIR LPF
clc
clear
close

//Aim: create a 1KHz sine wave, add a high freq. noice and filter using FIR LPF 

F = 1*10^3
Fs = 60*10^6
t = 0:F/Fs:0.002 //F/Fs=0.00004
input = sin(2*%pi*F*t)
subplot(4, 1, 1)
plot(t, input)
title("Input")

noicy = input + sin(5*%pi*5000*t)
subplot(4, 1, 2)
plot(t, noicy)
title("Noicy Signal")

Fc = 2*10^3
Wc = 2*Fc/Fs
[h, hm, fr] = wfir("lp", 11, Wc/2, "hm", [0 0])
subplot(4, 1, 3)
plot(fr*Fs, 20*log10(hm))
title("Filter Response")
xgrid()

y = filter(h, 1, noicy)
subplot(4, 1, 4)
plot(t, y)
