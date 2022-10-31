clc;
clear;
close;

n = input("Enter the no. of elements in your x: ")
x = []
for k=1:1:n
    x(1, k) = input('Enter ' + string(k) + 'th value: ') 
end

disp(x)
