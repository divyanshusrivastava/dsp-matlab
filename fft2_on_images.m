%% Experiment 22

%% Fast-Fourier Transform

clc;
clear all;
close all;

I = imread('image.jpg');
I = im2double(I);

subplot(221),imshow(I),title('Original Image');
F = fftshift(fft2(I));
subplot(222),imshow(abs(F)),title('Magnitude spectrum');

G = mat2gray(log10(1+abs(F)));
subplot(223),imshow(G),title('Log Scaled magitude spectrum');

I_recons = ifft2(ifftshift(F));
subplot(224),imshow(I_recons),title('Reconstructed image');

%% Conclusion
% Fast-Fourier Tansform of image produces the same results as Digital
% Fourier Transform, however it as faster in computations.