%% Question 4

clear all;
close all;
clc;

a = [1 2 0 1];
b = [2 2 1 1];

d = dftmtx(4);

h = (a*d).*(b*d)

ans = ifft(h,4)

stem(ans),title('Circular Convolution');