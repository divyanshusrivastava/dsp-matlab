function generate_delay( shift )
% this function generates digital unit impulse function
% it takes in argument "shift" which is the shift in origin 
% for the function.'
% THE SHIFT IS SUBTRACTED
range = shift-2:shift+2;
signal = [0 0 1 0 0];
stem(range,signal)

end