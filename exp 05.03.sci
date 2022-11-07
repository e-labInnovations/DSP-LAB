clc
clear 
close

disp('x')
x = input('Values of x(n): ')

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

y = []
for i=1:1:e
    y(1,i) = y1(1,i)
end

for i=1:1:length(y1)-e
    y(1,i) = y(1,i) + y1(1,i+e)
end

LHS = y
RHS = ifft(fft(x) .* fft(h))
disp('LHS = circular convolution = ')
disp(LHS)
disp('RHS = ifft(fft(x) .* fft(h))  = ')
disp(RHS)

if LHS == RHS then
    disp('LHS = RHS')
    disp('Hence Convolution propety verified')
end
