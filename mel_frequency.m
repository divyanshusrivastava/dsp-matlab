%% 

clear all;
clc;
close all;

fp = fopen('test.wav');
fseek(fp,224000,-1);

a = fread(fp,256);

plot(a),title('plot of voiced part'),xlabel('sample no.'),ylabel('amplitude');

b = fft(a);
b1 = abs(b);
c = log(b1);

for i = 1:256
    f(i) = 22100/256*i;
end

for i = 1:256
    c1(i) = c(i);
end

for i = 1:256
    m(i) = 2595*log(1+f(i)/700);
end
figure;
subplot(211),plot(m,c1),title('plot of log spectrum'),xlabel('Freq in mel scale'),ylabel('Amplitude');

x = melcepst(a);

subplot(212),plot(m,c1),title('plot of MFCC using MATLAB'),xlabel('Freq in mel scale'),ylabel('Amplitude');