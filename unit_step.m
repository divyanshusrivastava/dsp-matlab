%% Experiment 9

%% Unit Step Function

y = -15:15;
x = zeros(size(y));

for i = 1:length(y)
    if y(i)<0
        x(i) = 0;
    else x(i) = 1;
    end
end

stem(y,x),title('Unit Stem Fuction')
        