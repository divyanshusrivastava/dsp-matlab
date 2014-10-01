%% linear convolution of x(n) with h(n)

clc;
clear all;
close all;

x0 = input('Enter the starting point of x(n): ');
x = input('Enter the coefficeints of x(n): ');

h0 = input('Enter the starting point of h(n): ');
h = input('Enter the coefficeints of h(n): ');

y = conv(x,h);

subplot(311),stem(x0:(x0+length(x)-1),x);
xlabel('Time');
ylabel('Amplitude');
title('Input: x(n)');

subplot(312),stem(h0:(h0+length(h)-1),h);
xlabel('Time');
ylabel('Amplitude');
title('Impulse Response x(n)');

subplot(313),stem(x0+h0:length(y)+x0+h0-1,y);
xlabel('Time');
ylabel('Amplitude');
title('LINEAR CONVOLUTION x(n) * h(n)');
