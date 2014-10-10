%% compressing an image
% our eyes only see low frequencies, so we can remove higher frequencies
% without affecting the image mush to the end user.

clear all;
close all;
clc;


%pic = imread('myself.jpg');
pic = imread(uigetfile('../*.jpg'));

origWidth = size(pic, 2);

samplesHalf = floor(origWidth / 2);
samplesQuater = floor(origWidth / 4);
samplesEighth = floor(origWidth / 8);

picCompressed2 = [];
picCompressed4 = [];
picCompressed8 = [];

for k = 1:3
    for i = 1:size(pic, 1)
        rowDCT = dct(double(pic(i,:,k)));
        picCompressed2(i,:,k) = idct(rowDCT(1:samplesHalf),origWidth); 
        picCompressed4(i,:,k) = idct(rowDCT(1:samplesQuater),origWidth);
        picCompressed8(i,:,k) = idct(rowDCT(1:samplesEighth),origWidth);
    end
end

subplot(221),image(uint8(pic)),title('Original Image');
subplot(222),image(uint8(picCompressed2)),title('Compression Factor : 2');
subplot(223),image(uint8(picCompressed4)),title('Compression Factor : 4');
subplot(224),image(uint8(picCompressed8)),title('Compression Factor : 8');
