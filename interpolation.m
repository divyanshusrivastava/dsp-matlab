%% Experiment 30

%% Interpolation 
% Illustration of Interpolation process

clc; close all; clear all;
% up sampling factor
L1 = 2;
L2 = 4;
%number of samples
N = 10;

n = 0:N-1; 
x = sin(2*pi*0.043*n) + sin(2*pi*0.031*n);
y = interp(x,L1);
subplot(311),stem(n,x(1:N)),title('Input Sequence'),xlabel('Time index n'),ylabel('Amplitude');
m = 0:(N*L1)-1;
subplot(312),stem(m,y(1:N*L1)),title('Interpolated output (factor:2)'),xlabel('Time index n'),ylabel('Amplitude');
y1 = interp(x,L2);
m1 = 0:(N*L2)-1;
subplot(313),stem(m1,y1(1:N*L2)),title('Interpolated output (factor:4)'),xlabel('Time index n'),ylabel('Amplitude');
%% Conclusion
% MATLAB's inbuilt function interp() interpolated the signal by a factor of
% 2 and 4. Thsi tecnique is often used to rebuild a signal.