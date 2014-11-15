%% this script computes the inverse z-transform using long division methond
% uses matlab's inbuilt function filter() 

clear al;
clc;
close all;


N = input('Enter the length of output vector: ');

num = input('Type in the numerator coefficients: ');
den = input('Type in the denominator coefficients: ');


x = [1 zeros(1, N-1)];
y = filter(num, den, x);

disp('Coefficients of the power series expansion: ');
disp(y)