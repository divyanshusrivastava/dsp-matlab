function Factors = factorize(polyn)
format long; Factors = [];
% Use threshold of 1e-8 instead of 0 to account for
% precision effects
THRESH = 1e-8;
%
proots = roots(polyn); % get the zeroes of the polynomial
len = length(proots); % get the number of zeroes
%
while(len > 1)
   if(abs(imag(proots(1))) < THRESH) % if the zero is a real zero
       fac = [1 -real(proots(1))];
       % construct the factor with proots(1) as zero
       Factors = [Factors;[fac 0]];
   else  % if the zero has imaginary part get all zeroes whose
       %  imag part is -ve of imaginary part of proots(1)
       negimag = imag(proots)+imag(proots(1));
       % get all zeroes which have same real part as proot(1)
       samereal = real(proots)-real(proots(1));
       %find the complex conjugate zero
       index = find(abs(negimag) <THRESH & abs(samereal)<THRESH);
           if(index) % if the complex conjugate exists
               fac = [1 -2*real(proots(1)) abs(proots(1))^2];
               %form 2nd order factor
               Factors = [Factors;fac];
           else % if the complex conjugate does not exist
               fac = [1 -proots(1)];
               Factors = [Factors;[fac 0]];
           end
   end
   polyn = deconv(polyn,fac);
   %deconvolve the 1st/2nd order factor from polyn
   proots = roots(polyn); %determine the new zeros
   len = length(polyn); %determine the number of zeros
end