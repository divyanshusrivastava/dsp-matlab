%% Experiment 21

%% Digital Fourier Transform
% Finding digital fourier transform of a 1-D signal

clear all;
clc;

x = [1 2 3 4 5];
N = 4;  % length of the DFT signal
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
X = x*W;

subplot(211),stem(x),title('Signal (Time Domain)');
subplot(212),stem(X),title('DFT of signal');

%% Conclusion
% Digital Fourier Transformation of the signal converted the digital
% time-domain signal to a digital frequency domain signal. The signal is
% now ready for digital computations in frequency domains.

