//Bandpass Filter
clc
clear
close

Fs = 20*10^3 //Sampling Frq
Fl = 1*10^3 //lower cut off frq
Fh = 5*10^3 //higher cut off frq

Wl = 2*Fl/Fs
Wh = 2*Fh/Fs
Wc = [Wl Wh]

[h, hm, fr] = wfir("bp", 11, Wc/2, "re", [0 0])
subplot(3, 1, 1)
plot(fr*Fs/2, 20*log10(hm))
title("Rectangular Window")

[h, hm, fr] = wfir("bp", 11, Wc/2, "hm", [0 0])
subplot(3, 1, 2)
plot(fr*Fs, 20*log10(hm))
title("Hamming Window")


[h, hm, fr] = wfir("bp", 11, Wc/2, "hn", [0  0])
subplot(3, 1, 3)
plot(fr*Fs, 20*log10(hm))
title("Hanning Window")
