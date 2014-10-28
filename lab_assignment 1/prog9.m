%% Program 9

% finding formants of a speech signal

clear all;
clc;.


%% recording audio signal
fs = 48000;
recobj = audiorecorder(fs, 16, 1, -1);
disp('start speaking');
recordblocking(recobj,2);
disp('End of Recording');
data = getaudiodata(recobj);
wavwrite(data,fs,16,'record.wav');


% plot waveform
t=(0:length(data)-1)/fs;        % times of sampling instants
subplot(211),plot(t,data),legend('Waveform'),xlabel('Time (s)'),ylabel('Amplitude');
%
% get Linear prediction filter
ncoeff=2+fs/1000;           % rule of thumb for formant estimation
a=lpc(data,ncoeff);
%
% plot frequency response
[h,f]=freqz(1,a,512,fs);
subplot(212),plot(f,20*log10(abs(h)+eps)),legend('LP Filter'),xlabel('Frequency (Hz)'),ylabel('Gain (dB)');

r=roots(a);                  % find roots of polynomial a
r=r(imag(r)>0.01);           % only look for roots >0Hz up to fs/2
ffreq=sort(atan2(imag(r),real(r))*fs/(2*pi));
                             % convert to Hz and sort
for i=1:length(ffreq)
    fprintf('Formant %d Frequency %.1f\n',i,ffreq(i));
end