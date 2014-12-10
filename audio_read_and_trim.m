%% Experiment 29

%% MFCC of voiced speech signal
clear all;
fp = fopen('test.wav');
fseek(fp,224000,-1);
a = fread(fp,256);

subplot(2,1,1);plot(a);title('voiced part of audio');
xlabel('sample no. ');ylabel('Amplitude');
b = fft(a);
b1 = abs(b);
c = log(b1);
for i = 1:256,
    f(i) = 22100/256*i;
end
for i = 1:256,
    c1(i) = c(i);
end
 
for i = 1:256,
    m(i) = 2595*log(1+f(i)/700);
end

subplot(2,1,2);plot(m,c1);title('Log spectrum');
xlabel('Frequency in Mel scale');ylabel('Amplitude in');
 
x=melcepst(a);
figure;
plot(x);title('MFCC using inbuilt functions');
xlabel('Frequency in MEL scale');ylabel('Amplitude in dB');

%% Conclusion
% Mel Frequency computation is correctly done

