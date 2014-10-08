%% exercise -- sharpen image

clear all;
clc;

GaussianFilter = [1 4 7 4 1;4 20 33 20 4;7 33 55 33 7;4 20 33 20 4;1 4 7 4 1]

im = imread('myself.jpg');

sharp = imfilter(im, GaussianFilter,'replicate');

imshow(im);
figure
imshow(sharp);