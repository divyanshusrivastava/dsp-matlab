%% Experiment 27

%% Computing the inverse z-transform using long division methond
% using matlab's inbuilt function impz() 

clear al;
clc;
close all;


L = 4;

num = [1 2 1];
den = [2];

[y,t] = impz(num,den,L);

stem(y'),title('Coefficients of the power series expansion');

%% Conclusion
% Inverse z transformation using long division method computed correctly.