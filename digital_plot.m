close all
clear all
n = 0:1:50;
f = 0.03;
a = 1;
y = a*sin(2*pi*(f*n));
stem(n,y)
xlabel('Time');
ylabel('Amplitude');
title('DIGITAL SINE SIGNAL');