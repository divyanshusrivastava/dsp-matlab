%% this script computes the inverse z-transform using long division methond
% uses matlab's inbuilt function impz() 

clear al;
clc;
close all;


L = input('Enter the length of output vector: ');

num = input('Type in the numerator coefficients: ');
den = input('Type in the denominator coefficients: ');

[y,t] = impz(num,den,L);

disp('Coefficients of the power series expansion ');
disp(y');