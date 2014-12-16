%% System Tester (Partial)
% Only meant to test idle, sitting and standing situations

clear all;
close all;
clc;

disp('System Tester Partial');

obj = sensorgroup('AndroidMobile');

quit = 0;

load('D:\Education\sem - V\dsp-matlab\project\training data\feature_vector_partial.mat')

while (1)
    pause(2.5);
    [a, t] = accellog(obj);
    feature_vector_latest = mean(a);
    
    % match
    [a, d] = knnsearch(feature_vector_partial,feature_vector_latest);
    
   
    % result
    if d < 8
    if a == 1
        disp('IDLE');
    elseif a == 2
            disp('SITTING');
    else
        disp('STANDING');
    end
    else 
        disp('NO MATCH');
    end
    disp(d);
   
end

    

