//Sampling Theorem
clc;
clear;
close;

//Sine Wave
f = 10 //Frequency
F = 1000 //Sampling Frequency
t = 0:(1/F):0.2 //Two cycles
a = sin(2*%pi*f*t)
subplot(2, 2, 1)
plot(t, a)
title("Sine Wave")

//Under Sampling
F = 18
t = 0:1/F:0.2 //Two cycles
a = sin(2*%pi*f*t)
subplot(2, 2, 2)
plot(t, a)
plot2d3(t, a)
title("F = 18 Under Sampling")

//Over Sampling
F = 200
t = 0:1/F:0.2 //Two cycles
a = sin(2*%pi*f*t)
subplot(2, 2, 3)
plot(t, a)
plot2d3(t, a)
title("F = 200 Over Sampling")

//Nyquist Rate
F = 30
t = 0:1/F:0.2 //Two cycles
a = sin(2*%pi*f*t)
subplot(2, 2, 4)
plot(t, a)
plot2d3(t, a)
title("F = 30 Nyquist Rate")


