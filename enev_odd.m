%% break a function in even and odd parts
clear all;
clc;
x = -2:2;
y = [3 4,2,8,5]


subplot(3,1,1),stem(x,y)
title('ACTUAL PLOT')

%%calc flip
for i=1:length(y)
    y_flip(i) = y(end-i+1);
end
y_flip


%% calc even
y_even = (y + y_flip)/2


subplot(3,1,2),stem(x, y_even)
title('EVEN PART')
%% calc odd
y_odd = (y - y_flip)/2

subplot(3,1,3),stem(y_odd,x)
title('ODD PART')
