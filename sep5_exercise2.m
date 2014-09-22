clear all;
clc;

plotter = zeros(3,51);

plotter(1,:) = 0:50;
plotter(2,:) = normrnd(0,1,1,51);
plotter(3,:) = cos(0.04*pi*plotter(1,:));

subplot(311),stem(plotter(1,:),plotter(2,:));
title('GAUSSIAN RANDOM SEQUENCE');

subplot(312),stem(plotter(1,:),plotter(3,:));
title('COS(0.04 * pi * n)');

subplot(313),stem(plotter(1,:),plotter(3,:)+0.2*plotter(2,:));
title('COS (0.04 * pi * n) + 0.2 * omega(n)');
