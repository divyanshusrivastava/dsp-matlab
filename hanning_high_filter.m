%% Experiment 34

%% Hanning Window High Pass Filter
% Plot magnitude response and phase response of a high pass filter of
% desired parameters using Hanning window

clc;
clear all;
close all;

N = 10;
wc = 0.6*pi;    % cutoff frequency
h = fir1(N,wc/pi,'high',hanning(N+1));
freqz(h);

%% Conclusion
% The required filter was successfully obtained using rectangular window.
% Its magnitude and phse plot are displayed.