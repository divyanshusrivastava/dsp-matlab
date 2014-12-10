%% Experiment 24

%% High Pass Filter

clear all;
clc;
close all;

%% Reading image (grayscale)
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

%% Finding H(u,v)
H = zeros(size(I));
for u = 1:M
    for v = 1:N
        H(u,v) = 1/(1 + (D(u,v)/20)^-4);
    end
end

%% Processing
F = fft2(I);
F = fftshift(F);
Y  = F.*H;
Y1 = ifftshift(Y);
y = ifft2(Y1);

%% Displaying the results
subplot(121),imshow(I),title('Original Image');
subplot(122),imshow(uint8(y)),title('Output image');

%% Conclusion
% High Pass Filter Blocks low frequencies on the image, hence the image
% looses its definitions.