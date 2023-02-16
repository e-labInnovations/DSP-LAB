//Linearity Property
clc; //clear console
clear; //clear variables
close; //close graphic window

//PROPERTY
//ax1(t) + bx2(t) ---> aX1(k) + bX2(k)
a = input("value of a: ")
b = input("value of b: ")
x1 = input("value of x1(t): ")
x2 = input("value of x2(t): ")

LHS = fft(a*x1 + b*x2)
RHS = a*fft(x1) + b*fft(x2)

disp("LHS = ", LHS)
disp("RHS = ", RHS)

if(LHS == RHS)
    disp("LHS = RHS")
end
