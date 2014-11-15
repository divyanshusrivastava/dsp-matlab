%% Blurring an image
% this function loads a picture and blurrs it.

%%Compressing Higher frequencies
clc;

im = imread('myself.jpg');
gaussianfilter = fspecial ('gaussian',[7,7],5)


gausspom = filter2(gaussianfilter,im(:,:,1))

% only red components of the image is getting blurred

%gaussianpom = imfilter(im, gaussianfilter, 'symmetric', 'conv');
subplot(1, 2, 1), image(im(:,:,1));
subplot(1, 2, 2), image(uint8(gaussianpom)), title('Blured image, blurmatrix7');