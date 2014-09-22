%% time shifting a signal

%% delay signal by 2 units

clc;
clear all;

shift = input('Enter the shift: ')

X = 1:7
Y = 0:6

figure(1)
stem(X,Y);
title('ORIGINAL PLOT')

figure(2)
stem(X+shift,Y)
title('TIME SHIFTED PLOT')