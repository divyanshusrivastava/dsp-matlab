%% Program 6

% Cross correlation and Auto correlation


clear all;
clc;

a = [1 3 2 3 4 2];
b = [4 3 0 0 1 1];

%% Cross - Correlation
r = xcorr(a,b)


%% Auto Correlation
s1 = xcorr(a,a)
s2 = xcorr(b,b)