%% Discrete Cosine Transform
% Discrete cosine transformation is widely as used an place of DFT quite
% often, as it directly deals with the cosine, or the real part of the DFT

I = imread('myself.jpg');

subplot(131),imshow(I),title('Original image');

F = dct2(rgb2gray(I));

subplot(132),imshow(F),title('DCT transformed image');

I_recostructed = idct2(F);

subplot(133),imshow(I_recostructed),title('Reconstructed image');