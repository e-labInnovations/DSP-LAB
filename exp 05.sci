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

if LHS == RHS then
    disp('LHS = RHS')
    disp('Hence linearity verified')
end


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

disp('h')
h = input('Values of impulse responce: ')
y1 = convol(h,x)
if length(h)>length(x) then
    e = length(h)
    x = [x, zeros(1, e-length(h))]
else
    e = length(x)
    h = [h, zeros(1, e-length(h))]
end

y2 = []
for i=1:1:e
    y2(1,i) = y1(1,i)
end

for i=1:1:length(y1)-e
    y2(1,i) = y2(1,i) + y1(1,i+e)
end

LHS = y2
RHS = ifft(fft(x) .* fft(h))
disp('LHS = circular convolution = ')
disp(LHS)
disp('RHS = ifft(fft(x) .* fft(h))  = ')
disp(RHS)

if LHS == RHS then
    disp('LHS = RHS')
    disp('Hence Convolution propety verified')
end
