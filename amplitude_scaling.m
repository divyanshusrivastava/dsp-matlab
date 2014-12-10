%% Experiment 2
% Amplitude Scaling

X = [1 2 3 4 5 6 7];
%%
% Scaling factor: 10

subplot(121),stem(X),title('Original signal')
subplot(122),stem(X.*10),title('Amplitude scaled signal')