% this script computes the decrete time fourier transform of a digital
% signal 
% it assumes that the signal starts ftom n = 0;

clear all;
clc;

signal = input('Enter the signal: ');

len = length(signal);

omega = linspace(0,pi,100);
X = zeros(size(omega));

for i = 1:length(omega)
    X(i) = 0;
    for k=1:len
        X(i) = X(i) + signal(k)*exp(-1i*omega(i)*(k-1));
    end
end

plot(omega,X);


