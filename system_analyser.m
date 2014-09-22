clear all;
clc;

b = 1;
a = [1 -1 0.9];
n = (-20:120);

h = impz(b,a,n);

subplot(311),stem(n,h);
title('Impulse Response');
xlabel('n');

x = stepseq(0,-20, 120);
subplot(312),stem(x);
s = filter(b, a, x);
subplot(313),stem(n,s);
title('step response');
xlabel('n');
ylabel('s(n)');
