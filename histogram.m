%% Experiment 16

%% Image Histogram

clc;
clear all;
close all;


%% reading image (grayscale)
I = imread('myself.jpg');
I = rgb2gray(I);

imshow(I),title('Input Image');
h = imhist(I,256);
figure
subplot(121),imhist(I),title('Histrogram - imhist function'),ylim('auto');


%Plotting using bar function
h1 = h(1:10:256);
horz = 1:10:256;

subplot(122),bar(horz,h1),title('Histogram - bar function.');
