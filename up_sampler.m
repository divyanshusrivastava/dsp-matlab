%% up sampler...put L - 1 number of zeros in in the signal
%% try to implement down sampling..

clear all;
clc;


raw = input('Enter the sequence: ');
L = input('Enter the value of L: ');
len = length(raw);

new_len = ((len-1)*(L-1))+len;

data = zeros(1,new_len);

for i=0:new_len-1
    if ((mod(i,L)==0))
        data(i+1) = raw((i/L)+1);
    end
end


subplot(211),stem(raw);
subplot(212),stem(data);