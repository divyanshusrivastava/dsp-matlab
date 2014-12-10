clear all;
clc;

plotter = zeros(4,11);
plotter(1,:) = -5:5;

plotter(2,6) = 1;
plotter(3,4) = 1;
plotter(4,10) = 1;

subplot(4,1,1),stem(plotter(1,:),plotter(2,:))
title('UNIT DIGITAL IMPULSE delta(n)');

subplot(4,1,2),stem(plotter(1,:),plotter(3,:))
title('UNIT DIGITAL IMPULSE delta(n+2) ');

subplot(4,1,3),stem(plotter(1,:),plotter(4,:))
title('UNIT DIGITAL IMPULSE delta(n-4) ');

subplot(4,1,4),stem(plotter(1,:),2*plotter(3,:)-plotter(4,:))
title('X(n) = 2 * delta(n+2) - delta(n-4) ');