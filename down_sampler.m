%% Experiment 11

%% Down Sampler
% Remove L samples from the sequence peridically.

clear all;
clc;

signal = [1 2 3 2 1 2 3 4 5 3 4];
L = length(signal);

factor = 2;

i = 1;
count = 1;
while (i<=L)
    if (mod((i-1),3)==0)
        new(count) = signal(i);
        count = count+1;
    end
    i = i+1;
end

figure(1)
subplot(211),stem(signal),title('Original Signal');
subplot(212),stem(new),title('Down Sampled signal (factor:2)');


%% Conclusion
% Input signal successfully down-sampled by a factor of 2