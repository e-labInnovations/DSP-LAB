clc; //Clear Command Window
clear; //kills variables
close; //Close graphic window

function sampling(samp_freq,heading,pos,plot_type)
    f=10; //frequency
    F=samp_freq; //sampling frequency
    t=0:1/F:0.2 //2cycles
    x=sin(2*%pi*f*t)
    subplot(2,2,pos)
    title(heading)
    if plot_type=='both'
        plot(t,x)
        plot2d3(t,x)
    end
    if plot_type=='continues'
        plot(t,x)
    end
endfunction

//sine wave
sampling(1000,'Sine Wave',1,'continues' )

//under sampling
sampling(18,'Under Sampling',2,'both' )

//over sampling
sampling(200,'Over Sampling',3,'both' )

//nyquist rate
sampling(30,'Nyquist Rate',4,'both' )
