%%Compressing Higher frequencies
pom = imread('myself.jpg');
gaussianfilter = fspecial ('gaussian',[7,7],5);
gaussianpom = imfilter(pom, gaussianfilter, 'symmetric', 'conv');
subplot(1, 2, 1), image(pom)
subplot(1, 2, 2), image(gaussianpom), title('Blured image, blurmatrix7');