%% Experiment 8
%% Time shifting a signal
% Signal Delay/Advance

X = 1:7;
Y = 0:6;
subplot(131),stem(X,Y),title('ORIGINAL SIGNAL');

%% delay signal by 2 units
shift = 2;
subplot(132),stem(X+shift,Y),title('DELAYED SIGNAL');

%% advance signal by 2 units
shift = -2;
subplot(133),stem(X+shift,Y),title('ADVANCED SIGNAL')