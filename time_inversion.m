%% Experiment 7

%% Time Inversion
% Flipping the signal about the y-axis

y = 0:8;
x = -2:6;


subplot(121),stem(x,y),title('Original signal')
subplot(122),stem(x*-1,y),title('Time inverted signal')