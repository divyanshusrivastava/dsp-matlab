%% Experiment 33

%% Hanning window Low Pass Filter
% Plot magnitude response and phase response of Low Pass filter with
% desired parameters using Hanning window

clc;
clear all;
close all;

N = 10;
wc = 0.6*pi;    % cutoff frequency
h = fir1(N,wc/pi,hanning(N+1));
freqz(h);

%% Conclusion
% The required filter was successfully obtained using rectangular window.
% Its magnitude and phse plot are displayed.