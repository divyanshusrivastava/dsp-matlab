%% Program 5
% NOISE REDUCTION
% three point moving average algorithm

clear all;
clc;

%% recording audio signal
recobj = audiorecorder(48000, 16, 1, -1);
disp('start speaking');
recordblocking(recobj,5);
disp('End of Recording');
data = getaudiodata(recobj);
wavwrite(data,48000,16,'record.wav');

%% Playing the original sound
disp('Playing original recording..');
sound(data,48000)

%% Noise reduction

% trimming audio
data = data(1:end-(mod(length(data),3)));

% three point moving average algorithm

result = zeros(size(data));
result(1) = data(1);
result(end) = data(end);
for i = 2:length(data)-1
    result(i) = (1/3)*(data(i-1) + data(i) + data(i+1));
end

%% Playing noise redused sound
pause(6);
disp('Playing recording with reduced noise...');
sound(result,48000);