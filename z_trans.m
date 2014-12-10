%% Exoeriment 26

%% z-transform
% Uses inbuilt functions for z, inverse z, transform and to plot poles and
% zeros in z plane
% Function: (1/4)^n

clear all;clc;close all;
syms z n;

X = ztrans((1/4)^n);
x = iztrans((4*z)/(4*z-1));

b = 1;
a = [1 -1/4];
A = roots(a);

B = roots(b);
zplane(b,a),title('poles - zeros plot in z plane');

%% Conclusion
% Z-transform of a signal and its inverse transform were computed
% correctly. Poles and Roots are also plotted on z-plane.