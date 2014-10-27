%% Program 8

clc;
clear all;
close all;


%% reading image (grayscale)
I = imread('image.jpg');
I = rgb2gray(I);

subplot(121),imshow(I),title('Input Image');

J = histeq(I);

subplot(122),imshow(J),title('Output Image');