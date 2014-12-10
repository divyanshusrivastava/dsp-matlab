%% Experiment 15

%% Linear convolution of x(n) with h(n)

clc;
clear all;
close all;

x = [1 2 1 2 3];
x0 = 1;

h = [0 1 3 1];
h0 = 2;

y = conv(x,h);

subplot(311),stem(x0:(x0+length(x)-1),x),xlabel('Time'),ylabel('Amplitude'),title('Input: x(n)');
subplot(312),stem(h0:(h0+length(h)-1),h),xlabel('Time'),ylabel('Amplitude'),title('Impulse Response h(n)');
subplot(313),stem(x0+h0:length(y)+x0+h0-1,y),xlabel('Time'),ylabel('Amplitude'),title('LINEAR CONVOLUTION x(n) * h(n)');
