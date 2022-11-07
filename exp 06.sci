clc
clear 
close

disp('x(n)')
x = input("enter the input x : ")
disp('h(n)')
h = input('Values of impulse responce: ')
group_length = input('No of elements in blocks: ')

if modulo(length(x),group_length) then
    block_no = ceil(length(x)/group_length)
else
    block_no = (ceil(length(x)/group_length))+1 //use one more block
end


x = [x, zeros(1, group_length*block_no-length(x))]
blocks = []
for i=1:1:block_no
    if i==1 then
        tempSeq = zeros(1,length(h)-1)
    else
        last_pos = group_length + length(h)-1
        tempSeq = blocks(i-1, group_length+1:last_pos)
    end
    start_pos = group_length*(i-1)+1
    end_pos = start_pos+group_length-1
    blockSeq = [tempSeq, x(1, start_pos:end_pos)]
    blocks(i,:) = blockSeq
end



disp(blocks)
