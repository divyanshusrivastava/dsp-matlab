%% Experiment 25

%% System Analysis
% Analyse the system using impulse input response.

clear all;
clc;

b = 1;
a = [1 -1 0.9];
n = (-20:120);

h = impz(b,a,n);

subplot(311),stem(n,h);
title('Impulse Response');
xlabel('n');

%% Conclusion
% For a given system as a difference equation, impz() computes its unit
% impulse response h(x).