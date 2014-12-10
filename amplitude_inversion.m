%% <h1>Experiment 1
% Amplitude Conversion

%% Rading the signal
X = [1 2 3 4 5 6 7];

%% Inverting the signal
Y = -1 .* X;

%% Displaying results
subplot(121),stem(X),title('Original signal');
subplot(122),stem(Y),title('Amplitude inverted signal');

