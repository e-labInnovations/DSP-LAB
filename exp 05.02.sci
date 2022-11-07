clc
clear 
close

disp('x')
x = input('Values of x(n): ')

LHS = sum(abs(x) .* abs(x))
N = length(x)
RHS = (1/N) * sum(abs(fft(x) .* fft(x)))

disp('LHS = sum(abs(x) * abs(x)) = ')
disp(LHS)
disp('RHS = (1/N) * sum(abs(fft(x) * fft(x))) = ')
disp(RHS)

if LHS == RHS then
    disp('LHS = RHS')
    disp('Hence Parseval''s theorem verified')
end
