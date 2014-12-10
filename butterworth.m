%% Experiment 31

%% Butter Worth Low Pass Filter
% Make a Butter Worth low-pass filter on an image by taking required
% inputs.

clc;
clear all;
close all;

rp = 0.4;   % passband attenuation
rs = 30;    % stop band attenuation
wp = 0.2*pi;    % pass band frequency
ws = 0.4*pi;    % stop band frequency

[N,wn] = buttord(wp/pi,ws/pi,rp,rs);
[b,a] = butter(N,wn);

freqz(b,a);

%% Conclusion
% Magnitude and Phase Plot of the resultant low pass filter are obtained
% using MATLAB's inbuilt function.