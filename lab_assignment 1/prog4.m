%% Program 4

% Circular convolution

clear all;
clc;

signal_1 = [1 2 3 2 1 4];
signal_2 = [2 0 0 1 0 3];

result = cconv(signal_1,signal_2,6);

disp('Circular convolution');
disp(signal_1);
disp(signal_2);
disp(result);
