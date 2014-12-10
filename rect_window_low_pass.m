%% Experiment 32

%% Rectangular Window Low Pass Filter
clc;
clear all;
close all;

N = 10;
wc = 0.6*pi;    % cutoff frequency
h = fir1(N,wc/pi,rectwin(N+1));
freqz(h);

%% Conclusion
% The required filter was successfully obtained using rectangular window.