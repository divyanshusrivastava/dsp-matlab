%% sharpening an image

im = imread('image.jpg');

sharpfilter = fspecial('unsharp');

subplot(311),image(im),title('ORIGINAL');

sharp = imfilter(im,sharpfilter,'replicate');
subplot(312),image(sharp),title('Sharpened image');

sharpmore = imfilter(sharp,sharpfilter,'replicate');
subplot(313),image(sharpmore),title('Excessive sharped image');