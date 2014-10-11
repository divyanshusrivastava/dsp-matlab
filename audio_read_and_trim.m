%% Audio recording and trimming

recobj = audiorecorder(48000, 16, 1, -1);

disp('start speaking');

recordblocking(recobj,5);

disp('End of Recording');

data = getaudiodata(recobj);

wavwrite(data,48000,16,'test1.wav');

siz = wavread('test1.wav','size');

tot = siz(1);

s = ceil(tot*0.2);
e = ceil(tot*0.7);

[y, fs] = wavread('test1.wav',[s e]);

wavwrite(y, 48000, 16, 'test.wav');

disp('Sound is saved in test.wav file');