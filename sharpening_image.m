%% Experiment 14


%% Sharpening an image using fspecial()
im = imread('image.jpg');
sharpfilter = fspecial('unsharp');
subplot(131),imshow(im),title('ORIGINAL');
sharp = imfilter(im,sharpfilter,'replicate');
subplot(132),imshow(sharp),title('Sharpened image');
sharpmore = imfilter(sharp,sharpfilter,'replicate');
subplot(133),imshow(sharpmore),title('Excessive sharped image');