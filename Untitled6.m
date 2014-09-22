%% break a function in even and odd parts

x = -2:2;
y = [3 4,2,8,5];

figure(1)
stem(x,y)
label('ACTUAL PLOT')

%%calc flip
for i=0:length(y)-1
    y_flip(i) = y(end-i)
end


figure(2)
%% calc even
y_even = (y + y_flip)/2;

stem(y_even,x)
label('EVEN PART')



figure(3)
%% calc odd
y_even = (y - y_flip)/2;

stem(y_even,x)
label('ODD PART')
