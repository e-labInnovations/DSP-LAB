//Circular Convoluttion
clc
clear
close

//PROPERTY
//x(n) ⨂ h(n) ---> X(n).H(n)

x = input("input x(t): ")
h = input("input h(t): ")

cir_leng = max(length(x), length(h))
x = [x, zeros(1, cir_leng - length(x))]
h = [h, zeros(1, cir_leng - length(h))]

lin_conv = convol(x, h)
cir_conv = []
for i=1:1:cir_leng
    cir_conv(1, i) = lin_conv(i)
end
for i=1:1:length(lin_conv) - cir_leng
    cir_conv(1, i) = cir_conv(1, i)+lin_conv(cir_leng+i)
end

LHS = cir_conv
RHS = ifft(fft(x) .* fft(h))

disp("LHS = ", LHS)
disp("RHS = ", RHS)

if(LHS == RHS)
    disp("LHS = RHS")
end
