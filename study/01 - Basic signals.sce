//Generate basic signals

clc; //Clear Command Window
clear; //kills variables
close; //Close graphic window

//Sine wave
//sin(2*pi*f*t)
//f=1=> complete cycle 1s
t = 0:0.01:10
a_sine = sin(2*%pi*1*t)

subplot(2, 2, 1)
plot(t, a_sine) //For plotting
title("Sine Wave") //For title
xlabel("Time") //For x-axis label
ylabel("Sine(2*pi*f*t)")//For y-axis label

//Cos wave
a_cos = cos(2*%pi*1*t)
subplot(2, 2, 2)
plot(t, a_cos)

a_square = squarewave(t)
subplot(2, 2, 3)
plot(t, a_square)
