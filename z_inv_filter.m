%% Experiment 28

%% Z-Inverse using inbuilt filter ()
% Using matlab's inbuilt function filter() 

clear al;
clc;
close all;

N = 4;

num = [1 2 1];
den = [2];

x = [1 zeros(1, N-1)];
y = filter(num, den, x);

stem(y),title('Coefficients of the power series expansion');

%% Conclusion
% Inverse z transformation using inbuilt filter() method computed correctly.