%% Experiment 23

%% Low-Pass Filter
clear all;
clc;
close all;

%% reading image (grayscale)
I = imread('myself.jpg');
I = rgb2gray(I);

[M,N] = size(I);

%% Finding D(u,v)
D = zeros(size(I));
for u = 1:M
    for v = 1:N
        D(u,v) = ((u-(M/2))^2 + (v-(N/2))^2)^(1/2);
    end
end

%% finding H(u,v)
H = zeros(size(I));
for u = 1:M
    for v = 1:N
        H(u,v) = 1/(1 + (D(u,v)/20)^4);
    end
end

%% Processing
F = fft2(I);
F = fftshift(F);
Y  = F.*H;
Y1 = ifftshift(Y);
y = ifft2(Y1);

%% Displaying results
subplot(121),imshow(I),title('Original Image');
subplot(122),imshow(uint8(y)),title('Output image');

%% Result
% Low Pass Filter allows only low frequencies of the image, and bocks
% higher freqencies. As our eyes more sensitive to low frequencies, hence
% the output is not much different to the input.