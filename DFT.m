%% finding digital fourirs transform of a 1-D signal

clear all;
clc;

x = input('Enter the signal: ');

N = input('Enter the length of DFT N ');

L = length(x);

if N>L
    x = [x zeros(1,N-1)];
elseif N<L
    x = x(1:N);
end

w = exp(-j*2*pi/N);

n = 0:1:N-1;

k = 0:1:N-1;

nk = n'*k;

W = w.^nk;

disp('N-point DFT');

X = x*W

