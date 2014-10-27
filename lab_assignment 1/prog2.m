%% Program 2
% Matlab program to find sum of sinosoidal signals

clear all;
clc;

x = linspace(0,2*pi);

% signal 1
result = sin(x);
disp('SIGNAL : sin(x)');
disp(sum(result));

% signal 2
result = (1/3)*sin(3*x);
disp('SIGNAL : sin(3x)/3');
disp(sum(result));

% signal 3
result = (1/5)*sin(5*x);
disp('SIGNAL : sin(5x)/5');
disp(sum(result));

% signal 4
result = (1/7)*sin(7*x);
disp('SIGNAL : sin(7x)/7');
disp(sum(result));

% signal 5
result = (1/9)*sin(9*x);
disp('SIGNAL : sin(9x)/9');
disp(sum(result));