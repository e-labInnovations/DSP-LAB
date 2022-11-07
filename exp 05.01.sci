clc
clear 
close

disp('x')
x = input('Values of x(n): ')

disp('y')
y = input('Values of y(n): ')

a = input("Enter coefficient of x. a: ")
b = input("Enter coefficient of y. b: ")

LHS = a*fft(x)+b*fft(y)
RHS = fft(a*x +b*y)

disp('LHS = a*fft(x)+b*fft(y) = ')
disp(LHS)
disp('RHS = fft(a*x +b*y) = ')
disp(RHS)
