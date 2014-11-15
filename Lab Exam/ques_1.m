%% Question 1
clear all;
clc;

b = [1 -0.6 0.08]; % coefficients of y
a = 1;             % coefficients of x

n = -1:4;          % number and range of samples 

h = impz(a,b,n);    

stem(n,h),title('Impulse Response of the system'),xlabel('n'),ylabel('x(n)');
