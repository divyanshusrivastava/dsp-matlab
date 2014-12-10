%% Experiment 20

%% Discrete Time Fourier Transform
clear all;
clc;

signal = [1 2 3 4 5];
len = length(signal);

omega = linspace(0,pi,100);
X = zeros(size(omega));

for i = 1:length(omega)
    X(i) = 0;
    for k=1:len
        X(i) = X(i) + signal(k)*exp(-1i*omega(i)*(k-1));
    end
end

subplot(211),stem(signal),title('Signal (Time Domain)');
subplot(212),plot(omega,X),title('DTFT of signal (Freq. Domain)');

%% Conclusion
% DTFT of a Digital ignal transforms it to a continuous signal in
% frequency domain. Freqency components of the signal are hence visible.


