%% Program 7
% Prewitt horizontal edge-empa=hasis filter


I = imread('Image.jpg');

I = rgb2gray(I);


kernel_horizontal = [1 2 1;0 0 0;-1 -2 -1];

M1 = conv2(double(I), double(kernel_horizontal));

subplot(211),imshow(I),title('ORIGINAL');
subplot(212),imshow(abs(M1),[]),title('EDGE EMPHASIZED');
