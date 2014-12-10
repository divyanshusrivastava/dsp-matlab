%% Experiment 10

%% Up Sampler
% Insert L - 1 number of zeros in in the signal
clear all;clc;
raw = [1 2 3 2];
L = 2;
len = length(raw);

new_len = ((len-1)*(L-1))+len;

data = zeros(1,new_len);

for i=0:new_len-1
    if ((mod(i,L)==0))
        data(i+1) = raw((i/L)+1);
    end
end


subplot(211),stem(raw),title('Original Signal');
subplot(212),stem(data),title('Up sampled signal (factor:2)');

%% Conclusion
% Input signal successfully up-sampled by a factor of 2