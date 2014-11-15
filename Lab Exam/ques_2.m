%% Question 2

clear all;
clc;
close all;

range = -15:15;
plotter = zeros(4,31);

plotter(1,:) = range;
plotter(2,16:25) = 1;      % u(n) - u(n-10)
plotter(3,:) = (plotter(2,:) + fliplr(plotter(2,:)))/2; % EVEN PART
plotter(4,:) = (plotter(2,:) - fliplr(plotter(2,:)))/2; % ODD PART




subplot(311),stem(plotter(1,:),plotter(2,:));
title('u(n)-u(n-10)');

subplot(312),stem(plotter(1,:),plotter(3,:));
title('EVEN PART');

subplot(313),stem(plotter(1,:),plotter(4,:));
title('ODD PART');