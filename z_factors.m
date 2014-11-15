num = input('Type in the numerator coefficients: ');
den = input('Type in the denominator coefficients: ');

K = num(1)/den(1);

Numfactors = factorize(num);
Denfactors = factorize(den);

disp('Numerator factors');
disp(Numfactors);

disp('Denominator factors');
disp(Denfactors);

disp('Gain Constant');
disp(K);

zplane(num,den);
[z,p,k] = tf2zp(num,den);