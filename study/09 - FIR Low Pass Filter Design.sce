//FIR LPF Design
clc
clear
close

Fs = 2*10^3 //Sampling frequenc 2KHz
Fc = 250 //Cut off frequency 250Hz

Wc = 2*Fc/Fs
[h, hm, fr] = wfir("lp", 11, Wc/2, "re", [0 0])
subplot(2, 1, 1)
title("Rectangular Window")
plot(fr*Fs, 20*log10(hm))
xgrid()

[h, hm, fr] = wfir("lp", 11, Wc/2, "hm", [0 0])
subplot(2, 1, 2)
title("Hamming Window")
plot(fr*Fs, 20*log10(hm))
xgrid()
