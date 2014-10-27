%% program 3
% to find the impulse response of a given system as a difference equation

% Given difference equation
% y(n)+0.7y(n-1)-0.45y(n-2)-0.6y(n-3) =
% 0.8x(n)-0.44x(n-1)+0.36x(n-2)+0.2x(n-3).

clear all;
clc;

a = [1 0.7 -0.45 -0.6];
b = [0.8 -0.44 0.36 0.2];

r = impz(b,a);

stem(r)