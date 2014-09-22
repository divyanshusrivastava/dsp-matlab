%% down sampler

clear all;
clc;

signal = input('Enter the signal: ');
L = length(signal);

factor = input('Enter L :');

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
subplot(211),stem(signal);
subplot(212),stem(new);