//Parseval's Theorem
clc
clear
close

//Property
//∑x(t)² --> 1/N * ∑X(k)²

x = input("enter values of x(t): ")
LHS = sum(abs(x) .* abs(x))
N = length(x)
RHS = (1/N) * sum(abs(fft(x) .* fft(x)))

disp("LHS = ", LHS)
disp("RHS = ", RHS)

if(LHS == RHS)
    disp("LHS = RHS")
end
