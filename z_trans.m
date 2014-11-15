%% First script for z-transform
% uses inbuilt functions for z, inverse z, transform and to plot poles and
% zeros in z plane


clear all;
clc;
close all;


syms z n;

disp('z-transform of (1/4)^n is ');

X = ztrans((1/4)^n);
disp(X);


disp('inverse z-transform of (4*z)/(4*z-1) is ');

x = iztrans((4*z)/(4*z-1));
disp(x);

b = 1;
a = [1 -1/4];
disp('poles are: ');
A = roots(a);
disp(A);

disp('zeros are: ');
B = roots(b);
disp(B);

zplane(b,a);
title('poles - zeros plot in z plane');
