%% Question 5

clear all;
close all;
clc;

x = [1 3 0 4];

y = x;
y=fliplr(y);            % reversing the matrix

if length(x)<length(y)
    x = [x zeros(1,length(y)-length(x))];
elseif length(y)<length(x)
    y = [y zeros(1,length(x)-length(y))];
end

O = zeros(1,2*length(x)-1);
L = 2;
P = 1;

for i = 1:2*length(x)-1
   if i <= ceil((2*length(x)-1)/2)
        k = 0;
        for j = 1:i
            O(i) = O(i) + x(i-k)*y(j);
            k = k+1;
        end
   else
       k = P;
       for j = L:length(x)
            O(i) = O(i) + x(i-k)*y(j);
            k = k+1;
       end
       L = L+1;
       P = P+1;
   end
end

disp('Auto Correlation Correlation of [1 3 0 4]');
disp(O);

stem(O);