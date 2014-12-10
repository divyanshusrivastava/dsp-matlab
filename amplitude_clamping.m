%% Experiment 3
%% Amplitude Clamping
% Adding a scalar to the entire sequence

X = [1 2 3 4 5 6 7];

%%
% Original signal clamped to a factor of 10;

subplot(121),stem(X),title('Original signal')
subplot(122),stem(X+10),title('Amplitude clamped signal')