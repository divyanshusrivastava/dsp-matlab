%% Program 1
% This program computes the dtft of the signal and plots it

clear all;
clc;

signal = [1 1 1 1];

len = length(signal);

%%%%%%% Part a %%%%%%%%%%% 


omega = linspace(0,pi,100);
X = zeros(size(omega));

for i = 1:length(omega)
    X(i) = 0;
    for k=1:len
        X(i) = X(i) + signal(k)*exp(-1i*omega(i)*(k-1));
    end
end

plot(omega,X);


%%%%%%% Part b %%%%%%%%%%%
figure(2)



N = 4;
x = signal;
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


