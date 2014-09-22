clear all;
clc;

plotter = zeros(6,16);

plotter(1,:) = 0:15;
plotter(2,:) = 1;
plotter(3,11:16) = 1;
plotter(4,:) = plotter(2,:) - plotter(3,:);
plotter(5,:) = (plotter(4,:) + fliplr(plotter(4,:)))/2;
plotter(6,:) = (plotter(4,:) - fliplr(plotter(4,:)))/2;


subplot(3,2,1),stem(plotter(1,:),plotter(2,:));
title('u(n)');

subplot(3,2,2),stem(plotter(1,:),plotter(3,:));
title('u(n-10)');

subplot(3,2,3:4,'align'),stem(plotter(1,:),plotter(4,:));
title('u(n) - u(n-10)');

subplot(3,2,5),stem(plotter(1,:),plotter(5,:));
title('EVEN PART');

subplot(3,2,6),stem(plotter(1,:),plotter(6,:));
title('ODD PART');

range = -15:15;
plotter2 = zeros(4,31);
plotter2(1,:) = range;
plotter2(2,16:31) = plotter(4,:);
plotter2(3,:) = (plotter2(2,:) + fliplr(plotter2(2,:)))/2;
plotter2(4,:) = (plotter2(2,:) - fliplr(plotter2(2,:)))/2;



figure(2)
subplot(311),stem(plotter2(1,:),plotter2(2,:));
title('u(n)-u(n-10)');

subplot(312),stem(plotter2(1,:),plotter2(3,:));
title('EVEN PART');

subplot(313),stem(plotter2(1,:),plotter2(4,:));
title('ODD PART');