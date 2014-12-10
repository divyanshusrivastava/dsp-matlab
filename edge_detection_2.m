%% Experiment 11

%% Edge detection
% Detecting edges in an image using sobel filter

clear all;
clc;

pic = imread('image.jpg');
edges = [];

% applying sobel filter on individual layers
edges(:,:,1) = edge(pic(:,:,1),'sobel');
edges(:,:,2) = edge(pic(:,:,2),'sobel');
edges(:,:,3) = edge(pic(:,:,3),'sobel');

% plotting the results channel wise
subplot(221),imshow(pic),title('Original image');
subplot(222),imshow(edges(:,:,1)),title('Red channel');
subplot(223),imshow(edges(:,:,2)),title('Green channel');
subplot(224),imshow(edges(:,:,3)),title('Blue channel');


% plotting alltoghether
figure(2)
subplot(121),image(edges),title('Combined edges');
subplot(122),imshow(edges(:,:,1)+edges(:,:,2)+edges(:,:,3)),title('Combined edges intensity');