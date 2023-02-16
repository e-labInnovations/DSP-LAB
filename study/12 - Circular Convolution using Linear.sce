//Circular Convolution using Linear
clc
clear
close

x = input("x(t): ")
h = input("h(t): ")
linear = conv(x, h)

circ_length = max(length(x), length(h))
circ = []
for i=1:1:circ_length
    circ(1, i) = linear(1, i)
end
for i=1:1:length(linear)-circ_length
    circ(1, i) = circ(1, i) + linear(1, circ_length+i)
end
disp("Linear", linear)
disp("Circular", circ)
