%% Question 3

clear all;
close all;
clc;

x = [1 2 3 0];      % signal
N = 4;              % length of DFTs

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
X = x*W;

disp(X);

subplot(211),stem(0:L-1,abs(X)),title('magnitude plot');

a = angle(X);
subplot(212),stem(a),title('phase plot');
