clc;
close;
clear;
t=0:0.1:10;

function []= my_plot(x_values, y_values, plot_pos, x_start, x_end, y_start, y_end, heading, plot_type)
    subplot(3,3,plot_pos);
    mtlb_axis([x_start x_end y_start y_end])
    title(heading)
    if plot_type == "both" then
        plot(x_values, y_values);
        plot2d3(x_values, y_values);
    end
    if plot_type == "dis" then
        plot2d3(x_values, y_values);
    end
endfunction

x = sin(%pi*t);
my_plot(t,x,1,0,10,-1.5,1.5,"Sine","both");

cos_y = cos(%pi*t);
my_plot(t,cos_y,2,0,10,-1.5,1.5,"Cos","both");

y = (squarewave(t)+1)/2;
my_plot(t,y,3,0,10,-1.5,1.5,"Square Uni","both");

z = squarewave(t);
my_plot(t,z,4,0,10,-1.5,1.5,"Square Bi","both");

step_t = [-6:1:6]
step = [zeros(1,6),ones(1,7)]
my_plot(step_t,step,5,-6,6,0,1.5,"Step","dis");

impulse = [zeros(t)]
impulse(1,1) = 1
my_plot(t,impulse,6,-5,10,0,1.5,"Impulse","dis");

sin_t=0:0.025:0.5;
sin_y=sin(2*%pi*10*sin_t)
my_plot(sin_t,sin_y,7,0,0.5,0,1.5,"Triangle","both");

ramp_t = 0:1:10
my_plot(ramp_t,ramp_t,8,0,10,0,1.5,"Ramp","both");

my_plot(t,%e^t,9,0,10,0,1.5,"Exponential","both");
