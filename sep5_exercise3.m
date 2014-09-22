clear all;
clc;

range = -10:10;
c = complex(-0.1,0.3);
x = exp(c*range);

stem(range,x);
title('x(n) = exp((-0.1 + 0.3 j)*n)');