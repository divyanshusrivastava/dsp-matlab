%% System trainer
% This script is used to record accelerometer data for various activities for 5 seconds and store
% it in a specified format.

clear all;
close all;
clc;

disp('System Trainer');


%%MyMobileSensorExplorer();

obj = sensorgroup('AndroidMobile');

clc;
disp('Logging');

pause(5);

[a, t] = accellog(obj);

%a(:,4) = t;

%filename = 'training data\standing\log_10.mat';

%save(filename,'a','-mat');

%disp('Saved Successfully!');

signal = a(:,1);
len = length(signal);

omega = linspace(0,pi,100);
X = zeros(size(omega));

for i = 1:length(omega)
    X(i) = 0;
    for k=1:len
        X(i) = X(i) + signal(k)*exp(-1i*omega(i)*(k-1));
    end
end

subplot(211),stem(signal),title('Signal (Time Domain)');
subplot(212),plot(omega,X),title('DTFT of signal (Freq. Domain)');




