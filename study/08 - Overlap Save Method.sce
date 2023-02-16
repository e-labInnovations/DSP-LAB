clc;
clear;
close;

disp('x')
x = input('Values of x(n): ')

disp('h')
h = input('Values of impulse responce: ')

lx=length(x)
lh=length(h)

x=[x,zeros(1,16)]

Blen=input("enter block length: ")
i=0
stop=0
y=[]
while(stop==0)
    b=x(i*Blen+1:(i+1)*Blen)
    if(i==0)
        b=[zeros(1,lh-1),b]
        disp(b)
    else
        b=x(i*Blen+1-(lh-1):(i+1)*Blen)
        disp(b)
    end
    if(sum(abs(b))==0) then
        stop=1
    end
    if(stop==0)then
        B=fft(b)
        H=fft([h,zeros(1,Blen-1)])
        Y=B.*H
        y1=ifft(Y)
        y=[y,y1(lh:Blen+lh-1)]
    end
    
        
    i=i+1
end

disp("out", y(1:lh+lx-1))

