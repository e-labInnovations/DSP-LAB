clc
clear 
close

n = input("Enter the no. of elements in your x & y: ") //Input length of x
x = []
y = []

disp('x')
//Enter elements of x
for k=1:1:n
    x(1, k) = input('Enter x(' + string(k) + ') value: ') 
end

disp('y')
//Enter elements of y
for k=1:1:n
    y(1, k) = input('Enter y(' + string(k) + ') value: ') 
end

a = input("Enter coefficient of x: ")
b = input("Enter coefficient of y: ")

LHS = a*fft(x)+b*fft(y)
RHS = fft(a*x +b*y)

disp('LHS = a*fft(x)+b*fft(y) = ')
disp(LHS)
disp('RHS = fft(a*x +b*y) = ')
disp(RHS)

if LHS == RHS then
    disp('LHS = RHS')
    disp('Hence linearity proved')
end
