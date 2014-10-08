%% 

clear all;
clc;

pic = imread('image.jpg');
edges = [];

% applying sobel filter on individual layers
edges(:,:,1) = edge(pic(:,:,1),'sobel');
edges(:,:,2) = edge(pic(:,:,2),'sobel');
edges(:,:,3) = edge(pic(:,:,3),'sobel');

% plotting the results
subplot(221),imshow(pic);
subplot(222),imshow(edges(:,:,1));
subplot(223),imshow(edges(:,:,2));
subplot(224),imshow(edges(:,:,3));


% plotting alltoghether
figure(2)
subplot(121), image(edges);
subplot(122),imshow(edges(:,:,1)+edges(:,:,2)+edges(:,:,3));