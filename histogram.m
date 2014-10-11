clc;
clear all;
close all;


%% reading image (grayscale)
I = imread('myself.jpg');
I = rgb2gray(I);

subplot(131),imshow(I),title('Input Image');
h = imhist(I,256);

subplot(132),imhist(I),title('Histrogram - imhist function'),ylim('auto');


%Plotting using bar function
h1 = h(1:10:256);
horz = 1:10:256;

subplot(133),bar(horz,h1),title('Histogram - bar function.');
