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

a = input("Enter coefficient of x. a: ")
b = input("Enter coefficient of y. b: ")

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


LHS = sum(abs(x) .* abs(x))
RHS = (1/n) * sum(abs(fft(x) .* fft(x)))

disp('LHS = sum(abs(x) * abs(x)) = ')
disp(LHS)
disp('RHS = (1/N) * sum(abs(fft(x) * fft(x))) = ')
disp(RHS)

if LHS == RHS then
    disp('LHS = RHS')
    disp('Hence Parseval''s theorem proved')
end
